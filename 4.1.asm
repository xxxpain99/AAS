%include "io.inc" ; �� ������ 4 (������ 4)
section .data
section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging 
again: 
mov ah,0x01  ;DOS�������� ������ ������� 
GET_CHAR ah ;����� DOS
mov dl, al;����������� ���������� ������� � DL 
cmp dl, 0x21; ����� enter?
jz endprog ; ���� ��, �� ������� � ����� ��������� 
PRINT_CHAR ah ; DOS� ������� ������ ������� 
jz endprog ; ���� ��, �� ������� � ����� ��������� 
PRINT_CHAR ah ; DOS� ������� ������ �������
mov ah,0x01 ;DOS�������� ������ ������� 
GET_CHAR ah;����� DOS
mov dl, al;����������� ���������� ������� � DL 
cmp dl, 0x21; ����� enter?
jz endprog;
PRINT_CHAR ah;����� DOS
mov ah,0x01  ;DOS�������� ������ ������� 
GET_CHAR ah;����� DOS
mov dl, al;����������� ���������� ������� � DL 
cmp dl, 0x21; ����� enter?
jz endprog;
PRINT_CHAR ah;����� DOS
jz endprog;
PRINT_CHAR ah;����� DOS
GET_CHAR ah;����� DOS
mov dl, al;����������� ���������� ������� � DL 
cmp dl, 0x21; ����� enter?
jz endprog;
PRINT_CHAR ah;����� DOS
endprog:;
mov ah, 0x4C;
int 0x21; ����� enter?
jz endprog;
xor eax, eax
ret