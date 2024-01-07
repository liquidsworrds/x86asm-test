section .data
    prompt db "Enter your name: "
    plen equ $ - prompt
    hello db "Hello, "
    hlen equ $ - hello

section .bss
    name resb 16

section .text
    global _start:

_start:
    
    call _printPrompt
    call _readName
    call _printHello
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_printPrompt:
    mov rax, 1
    mov rdi, 1
    mov rsi, prompt
    mov rdx, plen
    syscall 
    ret

_readName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret

_printHello:
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, hlen
    syscall
    ret

_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall 
    ret


