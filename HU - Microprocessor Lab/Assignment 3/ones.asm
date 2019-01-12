.MODEL SMALL
.DATA           

EXTRN DATAx:WORD
EXTRN Result:BYTE

.CODE

PUBLIC FindOnes
PUBLIC FindOnesLoop
PUBLIC FinishOnesLoop   

FindOnes PROC FAR  
    
    MOV CX, 10h
    MOV Result, 0
    FindOnesLoop:    
    ROR DATAx, 1
    JNC FinishOnesLoop
    INC Result
    
    FinishOnesLoop:
    LOOP FindOnesLoop
             
    RET
             
FindOnes ENDP


END