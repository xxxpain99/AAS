%include "io.inc" ; на оценку 4 (работа 4)
section .data
section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging 
again: 
mov ah,0x01  ;DOS­функция чтения символа 
GET_CHAR ah ;вызов DOS
mov dl, al;копирование считанного символа в DL 
cmp dl, 0x21; нажат enter?
jz endprog ; если да, то переход к концу программы 
PRINT_CHAR ah ; DOS­ функция вывода символа 
jz endprog ; если да, то переход к концу программы 
PRINT_CHAR ah ; DOS­ функция вывода символа
mov ah,0x01 ;DOS­функция чтения символа 
GET_CHAR ah;вызов DOS
mov dl, al;копирование считанного символа в DL 
cmp dl, 0x21; нажат enter?
jz endprog;
PRINT_CHAR ah;вызов DOS
mov ah,0x01  ;DOS­функция чтения символа 
GET_CHAR ah;вызов DOS
mov dl, al;копирование считанного символа в DL 
cmp dl, 0x21; нажат enter?
jz endprog;
PRINT_CHAR ah;вызов DOS
jz endprog;
PRINT_CHAR ah;вызов DOS
GET_CHAR ah;вызов DOS
mov dl, al;копирование считанного символа в DL 
cmp dl, 0x21; нажат enter?
jz endprog;
PRINT_CHAR ah;вызов DOS
endprog:;
mov ah, 0x4C;
int 0x21; нажат enter?
jz endprog;
xor eax, eax
ret