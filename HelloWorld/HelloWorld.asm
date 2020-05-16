;Hello World! program using x86 assembly language
;Os: Ubuntu
;*************************************************
; nasm -f elf32 -o HelloWorld.o HelloWorld.asm
; ld -o HelloWorld HelloWorlld
;*************************************************
global _start

section: .text
_start:
    mov eax, 0x4 ; sys call write
    mov ebx, 0x1 ; first arg: std_out => 1
    mov ecx, message
    mov edx, mlen
    int 0x80 ; Interrupt sys call table to run sys call 0x4 routine


    ;Exit from the program
    mov eax, 0x1 ; sys call exit
    mov ebx, 0x5
    int 0x80


section: .data
    message: db "Hello world!" ; db: define bytes to store the string
    mlen:    equ $-message ; equ: away that nasm understand to store message length
