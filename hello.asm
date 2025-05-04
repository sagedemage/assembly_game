section .text
    global _main
extern _printf
extern _system

_main:
    mov eax, 0 ; Inititalize counter to 0

    loop:
        push eax ; Save current value on the stack

        mov bl, '#'
        mov msg[eax], bl

        push msg
        call _printf
        add esp, 4
    
        ;push clear
        ;call _system
        ;add esp, 4

        pop eax ; Restore eax (for the loop)
        inc eax ; Increment counter

        cmp eax, 11 ; Compare counter with 11
        jbe loop
    
section .data
    msg db "............", 10, 0
    clear db "cls", 0
    num db "0", 10, 0

