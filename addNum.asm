section .data
    r1 db "Enter num1: "
    r1_len equ $ - r1
    r2 db "Enter num2: "
    r2_len equ $ - r2
    result db 2

section .bss
    num1 resb 2
    num2 resb 2


section .text
    global _start

_start:

    call _printPrompt1
    call _printPrompt2
    call _readNum1
    call _readNum2

    mov eax, num1
    cmp eax, num2
    je _printPrompt1

    mov rax, 60
    mov rdi, 0
    syscall 



_printPrompt1:
    mov rax, 1
    mov rdi, 1
    mov rsi, r1
    mov rdx, r1_len
    syscall 
    ret

_printPrompt2:
    mov rax, 1
    mov rdi, 1
    mov rsi, r2
    mov rdx, r2_len
    syscall 
    ret

_readNum1:
    mov rax, 0
    mov rdi, 0
    mov rsi, num1
    mov rdx, 2
    syscall 
    ret

_readNum2:
    mov rax, 0
    mov rdi, 0
    mov rsi, num2
    mov rdx, 2
    syscall 
    ret

_addNum:
    mov eax, num1
    add eax, num2
    mov [result], eax
    syscall
    ret

