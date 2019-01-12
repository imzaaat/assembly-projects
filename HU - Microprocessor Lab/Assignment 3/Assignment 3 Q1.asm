.MODEL SMALL

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;               GROUP G                     ;;;;
;                                           ;;;;
;     Zaid Abdullah Abu-Tarboush 1537512    ;;;; 
;                                           ;;;;
;      Anas Amajd Zaki 1437178              ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.DATA   
Found DB ?
FindString DB "JackHammer"
String1 DB "GoodLuckKA"
String2 DB "GOOdLuckKA"
Result DB ?

.CODE
.STARTUP

; Find Macro takes one input character, 
; and searches for matches.
; The result is saved in Found.    

Find MACRO C

LOCAL FindLoop
LOCAL FinishLoop

MOV BL, 00
MOV CX, 0Ah 
LEA SI, FindString

FindLoop:
CMP [SI], C
JNZ FinishLoop:
INC BL

FinishLoop:   
INC SI
LOOP FindLoop

MOV Found, BL

ENDM            

; Concatenate Macro takes two strings, String1 and String2,
; and concatenates them and saves them in Result

Concatenate MACRO Str1,Str2

LOCAL LoopStr1
LOCAL LoopStr2      

LEA SI, Str1
LEA DI, Result
MOV CX, 0Ah 

LoopStr1:
MOV BL, [SI]
MOV [DI], BL
INC SI
INC DI
LOOP LoopStr1

LEA SI, Str2
MOV CX, 0Ah
LoopStr2:
MOV BL, [SI]
MOV [DI], BL
INC SI
INC DI
LOOP LoopStr2

                           
ENDM 

; Compare Macro takes two strings and compares
; character-wise. Saved in Result

Compare MACRO Str1, Str2 

LOCAL CmpLoop 
LOCAL FinishLoop
LOCAL WriteZero

MOV CX, 0Ah
LEA DI, Result
PUSH DI

LEA SI, Str1
LEA DI, Str2

CmpLoop:  
MOV DL, [DI]
MOV DH, [SI]
CMP DH, DL   

JNZ WriteZero
MOV DX, DI
POP DI
MOV [DI], '1'
JMP FinishLoop
             
WriteZero: 
MOV DX, DI
POP DI
MOV [DI], '0'

FinishLoop:
INC DI
PUSH DI
MOV DI, DX
INC SI
INC DI             
LOOP CmpLoop    
    
ENDM  

;
; WRITE YOUR TEST CODE HERE
;

.EXIT
END