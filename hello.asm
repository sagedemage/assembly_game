section .text
global _main
extern _printf
extern _system

_main:
    mov eax, 0

    push top
    call _printf
    add esp, 4
    
    push msg
    call _printf
    add esp, 4
    
    push bottom
    call _printf
    add esp, 4
    
    push newline
    call _printf
    add esp, 4

    push clear
    call _system

    add eax, 1
    jmp _main
    ret
    
section .data
    top db "------------", 10, 0
    msg db "Hello World!", 10, 0
    bottom db "____________", 10, 0
    newline db "", 10, 0
    clear db "cls", 0

