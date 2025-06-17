## 📊 macOS và Linux (ARM64)

| Thành phần                   | macOS (ARM64)                                                | Linux (ARM64)                                  |
| ---------------------------- | ------------------------------------------------------------ | ---------------------------------------------- |
| **Định dạng nhị phân**       | Mach-O                                                       | ELF                                            |
| **Assembler (`as`)**         | Apple `as` (LLVM/Clang-based)                                | GNU `as` (trong `binutils`)                    |
| **Linker (`ld`)**            | Apple `ld`                                                   | GNU `ld`                                       |
| **Cú pháp section**          | `.section __TEXT,__text`<br>`.section __DATA,__data`         | `.section .text`<br>`.section .data`           |
| **Entry point**              | `_main` hoặc `_start` (tuỳ cách link)                        | `_start`                                       |
| **In ra màn hình**           | Gọi `_printf` từ libc (dùng `.extern _printf`, `bl _printf`) | Gọi syscall `write` (x8 = 64, `svc #0`)        |
| **Thoát chương trình**       | Gọi `_exit` từ libc (hoặc `svc #0x80`, ít dùng)              | Syscall `exit` (x8 = 93, `svc #0`)             |
| **Gọi hàm C**                | Cần `.extern`, ví dụ: `_printf`, `_exit`                     | Tuỳ chọn (có thể dùng hoặc tránh hoàn toàn)    |
| **Syscall trực tiếp**        | Không chuẩn hóa, hạn chế dùng (`x16`, `svc #0x80`)           | Rõ ràng, dùng `x8 = syscall_number`, `svc #0`  |
| **Biên dịch bằng clang**     | `clang -arch arm64 -o main main.s`                           | Dùng `as` + `ld`, hoặc `gcc -nostdlib -static` |
| **Thư viện hệ thống**        | libc của macOS                                               | glibc, musl, hoặc khác                         |
| **Calling convention (ABI)** | ARM64 macOS ABI (Apple)                                      | AArch64 SysV ABI                               |
