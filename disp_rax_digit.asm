section .data
    res db 0, 10

section .text
    global _start:

_start:
    
    mov rax, 1
    add rax, 10
    call _printRAXdigit

    mov rax, 60
    mov rdi, 0
    syscall


_printRAXdigit:
    
    add rax, 48
    mov [res], al 
    mov rax, 1
    mov rdi, 1
    mov rsi, res 
    mov rdx, 2
    syscall 
    ret

