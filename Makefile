asm:
	nasm -fwin32 main.asm

bin:
	gcc -m32 main.obj -o main.exe

run:
	./main.exe