section .text
global _main
extern _printf
extern _system

_main:

l1:
    mov bl, '.'
    mov msg[eax], bl
    inc eax

    push msg
    call _printf
    add esp, 4
    
    push clear
    call _system

    loop l1
ret
    
section .data
    msg db "############", 10, 0
    clear db "cls", 0
    num db "0", 10, 0

