.MODEL SMALL
.DATA       

EXTRN DATAx:WORD
EXTRN Result:BYTE


.CODE

PUBLIC EvenOdd
PUBLIC FinishEvenOdd 

EvenOdd PROC FAR    

    MOV Result, 0 
    MOV AX, DATAx
    MOV DX, 0
    MOV CX, 2
    DIV CX
    CMP DX, 0
    JZ FinishEvenOdd
    MOV Result, 1
    
    ; If the "Result" is 0, then it's even. Otherwise it's odd.
    
    FinishEvenOdd:
    RET
EvenOdd ENDP


END