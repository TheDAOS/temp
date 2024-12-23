section .data
    hello db 'Hello, World!', 0    ; The string to print, null-terminated

section .text
    global _start                   ; Entry point for the program

_start:
    ; sys_write (system call number 4)
    mov eax, 4                      ; sys_write (system call number)
    mov ebx, 1                      ; File descriptor 1 (stdout)
    mov ecx, hello                  ; Pointer to the string
    mov edx, 13                     ; Length of the string
    int 0x80                         ; Interrupt to invoke the system call

    ; sys_exit (system call number 1)
    mov eax, 1                      ; sys_exit (system call number)
    xor ebx, ebx                    ; Exit code 0
    int 0x80                         ; Interrupt to invoke the system call
