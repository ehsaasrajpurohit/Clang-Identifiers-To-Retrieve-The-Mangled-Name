## Comparison between the assembly and the IR of a transformed and an unaltered C code

Commands:

  ```bash
  clang -emit-llvm -S test.c -o test.ll
  opt -load-pass-plugin ../build/ManglePass.so -passes=manglepass test.ll -S -o mangled-test.ll
  clang test.c -o normal-exe
  clang mangled-test.ll -o mangled-exe
  objdump -d normal-exe > normal-assembly.asm
  objdump -d mangled-exe > mangled-assembly.asm
  ```

ASM Diff:

![asm-diff](assembly-diff.png)

IR Diff:

![IR-diff](IR-diff.png)
