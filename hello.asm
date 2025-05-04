section .text
    global _main
extern _printf
extern _system
extern _sleep

_main:
    mov eax, 0 ; Inititalize counter to 0

    loop:
        push eax ; Save current value on the stack

        mov bl, '#'
        mov msg[eax], bl

        push 1
        call _sleep
        add esp, 4 ; clear the stack

        push clear
        call _system
        add esp, 4 ; clear the stack

        push title
        call _printf
        add esp, 4 ; clear the stack

        push top
        call _printf
        add esp, 4 ; clear the stack

        push msg
        call _printf
        add esp, 4 ; clear the stack

        push bottom
        call _printf
        add esp, 4 ; clear the stack

        push 1
        call _sleep
        add esp, 4 ; clear the stack

        pop eax ; Restore eax (for the loop)
        inc eax ; Increment counter
        cmp eax, 11 ; Compare counter with 11
        jbe loop
    
section .data
    title db "Progress Bar", 10, 0
    top db "------------", 10, 0
    msg db "............", 10, 0
    bottom db "____________", 10, 0
    clear db "cls", 0
    num db "0", 10, 0

