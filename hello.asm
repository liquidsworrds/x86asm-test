section .data
    var db "Hello, World!", 0xa
    len equ $ - var

section .text
    global _start:

_start:
    
    call _printHello

    mov rax, 60
    mov rdi, 0
    syscall

_printHello:
    mov rax, 1
    mov rdi, 1
    mov rsi, var
    mov rdx, len 
    syscall
    ret
