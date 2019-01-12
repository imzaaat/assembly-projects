.MODEL SMALL     
.STACK 32
.DATA       

PUBLIC DATAx   
PUBLIC Result
DATAx DW 0ABCDh
Result DB ?

.CODE         
EXTRN FindZeros:FAR
EXTRN FindOnes:FAR
EXTRN EvenOdd:FAR


CALL FindZeros 
CALL Display

MOV AH, 0Eh
MOV AL, 0Ah
INT 10h
       

CALL FindOnes
CALL Display

MOV AH, 0Eh
MOV AL, 0Ah
INT 10h


CALL EvenOdd
CALL Display
             
JMP FINISH             
             
Display PROC
MOV AH, 0
MOV AL, Result
MOV BL, 0Ah
DIV BL
MOV BL, AL
MOV BH, AH
ADD BL, 30h
ADD BH, 30h
MOV AH, 0Eh
MOV AL, BL
INT 10h
MOV AL, BH
int 10h
RET
Display ENDP

FINISH:

END