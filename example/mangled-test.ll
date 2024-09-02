; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%Q0LLGEbJlO = type { i32, i32 }

@rdYjrO4s7h = global i32 666, align 4
@Q1Bqo4sKIV = private unnamed_addr constant [9 x i8] c"Sum: %d\0A\00", align 1
@IOGNPCwzY5 = private unnamed_addr constant [26 x i8] c"Global variableuuuuh: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @qiKj69tUae(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = add nsw i32 %5, %6
  %8 = call i32 (ptr, ...) @printf(ptr noundef @Q1Bqo4sKIV, i32 noundef %7)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %Q0LLGEbJlO, align 4
  store i32 0, ptr %1, align 4
  %3 = getelementptr inbounds %Q0LLGEbJlO, ptr %2, i32 0, i32 0
  store i32 400, ptr %3, align 4
  %4 = getelementptr inbounds %Q0LLGEbJlO, ptr %2, i32 0, i32 1
  store i32 20, ptr %4, align 4
  %5 = load i32, ptr @rdYjrO4s7h, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef @IOGNPCwzY5, i32 noundef %5)
  %7 = getelementptr inbounds %Q0LLGEbJlO, ptr %2, i32 0, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %Q0LLGEbJlO, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  call void @qiKj69tUae(i32 noundef %8, i32 noundef %10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+complxnum,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+jsconv,+lse,+neon,+pauth,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 18.1.8"}
