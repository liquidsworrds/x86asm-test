section .data
    text db "Hello, World!", 0xa

section .text
    global _start

_start:
    mov rax, text
    call _printString
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
        
_printString:
    push rax
    mov rbx, 0

_lenLoop:
    inc rax
    inc rbx
    mov cl , [rax]
    cmp cl, 0
    jne _lenLoop

    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall 
    ret
