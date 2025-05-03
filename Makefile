asm:
	nasm -fwin32 hello.asm

bin:
	gcc -m32 hello.obj -o hello.exe

run:
	./hello.exe