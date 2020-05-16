```
        +-------------------+
	|	Data        |
	|    "Hello World"  |
	|-------------------+
	|	Text        |
	| +---------------+ +
	| | print message | | System call write -> vi +8 /usr/include/x86_64-linux-gnu/asm/unistd_32.h
	| +---------------+ |
	|                   |
	| +---------------+ |
	| |     Exit      | | System call exit -> vi +5 /usr/include/x86_64-linux-gnu/asm/unistd_32.h
	| +---------------+ |
	|                   |
	+-------------------+


```

###Invoking system call with (int 0x80)

```
mov eax, [system call number it could be in hex or decemal but don't mix]

mov ebx, [1sr argument]
mov ecx, [2nd argument]
mov edx, [3rd argument]
mov esi, [4th argument]
mov edi, [5th argument]
```

### Running the code by nasm:
`nasm -f elf32 -o HelloWorld.o HelloWorld.asm`
#linking the object to executable:
`ld -o HelloWorld HelloWorld.o`
