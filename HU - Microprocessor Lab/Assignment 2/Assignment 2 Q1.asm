.MODEL SMALL

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;               GROUP G                     ;;;;
;                                           ;;;;
;     Zaid Abdullah Abu-Tarboush 1537512    ;;;; 
;                                           ;;;;
;      Anas Amajd Zaki 1437178              ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


.DATA

X DB 0
Y DB 0
Z DB 0  
R DB 0

.CODE
.STARTUP

MOV AX, 700h
MOV DS, AX

MOV AL, DS:50h
MOV X, AL

MOV AL, DS:51h
MOV Y, AL

MOV AL, DS:52h
MOV Z, AL

; Calculate X & Z and save it in AL

MOV AL, Z
AND X, AL
MOV AL, X

; Calculate Y xor (X&Z) which is contained in AL and save it in AL

XOR Y, AL
MOV AL, Y

; Calculate Z or (Y xor (X&Z)) which is contained in AL and save it in AL
OR AL, Z

; Move the result to location 0700:70

MOV DS:70h, AL


.EXIT
END