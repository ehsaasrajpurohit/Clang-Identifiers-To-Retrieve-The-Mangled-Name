#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <random>
#include <string>

using namespace llvm;

namespace {
struct ManglePass : public PassInfoMixin<ManglePass> {
  // Random generator setup
  std::mt19937 generator;
  std::uniform_int_distribution<> distribution;

  ManglePass() 
    : generator(std::random_device{}()), 
      distribution(0, 61) // 26 (a-z) + 26 (A-Z) + 10 (0-9)
  {}

  // Function to generate a random string of given length
  std::string getRandomString(size_t length) {
    auto getRandomChar = [&]() -> char {
      int random_value = distribution(generator);
      if (random_value < 26) return 'a' + random_value;
      if (random_value < 52) return 'A' + (random_value - 26);
      return '0' + (random_value - 52);
    };

    std::string random_str(length, 0);
    std::generate_n(random_str.begin(), length, getRandomChar);
    return random_str;
  }

  // Mangle function names, global variable names, and struct names
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
    bool changed = false;

    // Mangle function names
    for (Function &F : M) {
      if (!F.isDeclaration() && F.getName() != "main") {
        F.setName(getRandomString(10)); // 10-character random name
        changed = true;
      }
    }

    // Mangle global variable names
    for (GlobalVariable &GV : M.globals()) {
      GV.setName(getRandomString(10)); // 10-character random name
      changed = true;
    }

    // Mangle struct type names
    for (StructType *ST : M.getIdentifiedStructTypes()) {
      if (ST->hasName()) {
        ST->setName(getRandomString(10)); // 10-character random name
        changed = true;
      }
    }

    return (changed ? PreservedAnalyses::none() : PreservedAnalyses::all());
  }
};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "ManglePass", LLVM_VERSION_STRING, 
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
        [](StringRef Name, ModulePassManager &MPM, 
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "manglepass") {
            MPM.addPass(ManglePass());
            return true;
          }
          return false;
        }
      );
    }
  };
}
