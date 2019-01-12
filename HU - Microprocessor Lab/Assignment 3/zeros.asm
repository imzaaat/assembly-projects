.MODEL SMALL
.DATA       

EXTRN DATAx:WORD   
EXTRN Result:BYTE

.CODE

PUBLIC FindZeros
PUBLIC FindZerosLoop
PUBLIC FinishZerosLoop

FindZeros PROC FAR
    
    MOV CX, 10h
    MOV Result, 0
    FindZerosLoop:    
    ROR DATAx, 1
    JC FinishZerosLoop
    INC Result
    
    FinishZerosLoop:
    LOOP FindZerosLoop
    
    RET

FindZeros ENDP


END