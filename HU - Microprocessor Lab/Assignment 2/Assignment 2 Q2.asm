TITLE "MY PROGRAM"
.MODEL SMALL

.STACK 32 

.DATA

MULT1 EQU 20H
MULT2 DW 6

.CODE

MOV AX, @DATA
MOV DS, AX
MOV AX, 00
MOV BX, MULT1
MOV CX, MULT2

MULT: 
ADD AX, BX
DEC CX
JNZ MULT
MOV DX, AX
MOV CX, 4C00H
INT 21H

END