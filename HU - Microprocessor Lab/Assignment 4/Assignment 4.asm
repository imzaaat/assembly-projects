.MODEL SMALL
.STACK 32
.DATA
cline dw ?
dline dw ?
linecounter dw ?
width dw ?
mouseclick dw ?
happyfacepath db 'D:/happyface.txt', 0
sadfacepath db 'D:/sadface.txt', 0      
happyfacemsg db "happy face$"
sadfacemsg db "sad face$"

Happy db "Happy$"

 
.CODE
.STARTUP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   SET GRAPHICS MODE      
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MOV AH, 00
MOV AL, 13h
INT 10h 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   INITALIZE MOUSE AND POINTER     
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MOV AX, 00
INT 33h 

MOV AX, 1
INT 33h


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   REGISTER CLICK
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Check:
MOV AX, 3
INT 33h
CMP BX, 1
MOV mouseclick, 1
JZ LeftClick
CMP BX, 2
MOV mouseclick, 2
JZ RightClick 

JMP Check




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   RIGHT CLICK PROC
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RightClick:       


SHR CX, 1 
SHR CX, 1 
SHR CX, 1 
SHR CX, 1 
SHR DX, 1
SHR DX, 1
SHR DX, 1

MOV AH, 2
MOV BH, 0 
MOV DH, DL
MOV DL, CL
INT 10h


MOV AH, 0Eh
MOV AL, 'H'
INT 10h
MOV AH, 0Eh
MOV AL, 'a'
INT 10h
MOV AH, 0Eh
MOV AL, 'p'
INT 10h
MOV AH, 0Eh
MOV AL, 'p'
INT 10h
MOV AH, 0Eh
MOV AL, 'y'
INT 10h



MOV AH, 3Ch
MOV CX, 0
MOV DX, OFFSET happyfacepath
INT 21h


MOV BX, AX
MOV AH, 40h
MOV CX, 0Ah
MOV DX, OFFSET happyfacemsg
INT 21h
   

JMP DrawFace

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   LEFT CLICK PROC
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LeftClick:  
 

SHR CX, 1 
SHR CX, 1 
SHR CX, 1 
SHR CX, 1 
SHR DX, 1
SHR DX, 1
SHR DX, 1

MOV AH, 2
MOV BH, 0 
MOV DH, DL
MOV DL, CL
INT 10h 

MOV AH, 0Eh
MOV AL, 'S'
INT 10h
MOV AH, 0Eh
MOV AL, 'a'
INT 10h
MOV AH, 0Eh
MOV AL, 'd'
INT 10h

MOV AH, 3Ch
MOV CX, 0
MOV DX, OFFSET sadfacepath
INT 21h

MOV BX, AX
MOV AH, 40h
MOV CX, 8
MOV DX, OFFSET sadfacemsg
INT 21h 

JMP DrawFace


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   FACE       
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DrawFace:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   Face Top Right      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV CX, 160
MOV DX, 25
MOV BX, 75 

FaceTopRight:
MOV AH, 0Ch
MOV AL, 0Eh
INT 10h
INC CX
INC DX
CMP BX, 0
DEC BX
JNZ FaceTopRight


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   Face Top Left      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 

MOV CX, 160
MOV DX, 25
MOV BX, 75  

FaceTopleft:
MOV AH, 0Ch
MOV AL, 0Eh
INT 10h
DEC CX
INC DX
CMP BX, 0
DEC BX
JNZ FaceTopLeft      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   Face Bottom Right      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV CX, 235
MOV DX, 100
MOV BX, 75   

FaceBottomRight:
MOV AH, 0Ch
MOV AL, 0Eh
INT 10h
DEC CX
INC DX
CMP BX, 0
DEC BX
JNZ FaceBottomRight      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   Face Bottom Left
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
 
MOV CX, 160
MOV DX, 175
MOV BX, 76
 
FaceBottomLeft:
MOV AH, 0Ch
MOV AL, 0Eh
INT 10h
DEC CX
DEC DX
CMP BX, 0
DEC BX
JNZ FaceBottomLeft


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   NOSE      
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV cline, 155
MOV dline, 95
MOV linecounter, 10

Nose:
MOV CX, cline 
MOV DX, dline
MOV BX, 10

NoseLine:
MOV AH, 0Ch
MOV AL, 0Eh
INT 10h

INC CX
CMP BX, 0 
DEC BX
JNZ NoseLine

INC dline
CMP linecounter, 0
DEC linecounter
JNZ Nose

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   RIGHT EYE FRAME      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV CX, 179
MOV DX, 90
MOV BX, 22


RightEyeHorizontal:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
DEC BX
CMP BX, 0
JNZ RightEyeHorizontal
          
          
          
MOV CX, 179
MOV DX, 90
MOV BX, 11
RightEyeTopLeft:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
DEC DX
CMP BX, 0
DEC BX
JNZ RightEyeTopLeft
 
 
 
MOV CX, 190
MOV DX, 80
MOV BX, 10
RightEyeTopRight:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
CMP BX, 0 
DEC BX
JNZ RightEyeTopRight  


MOV CX, 200
MOV DX, 90
MOV BX, 11
RightEyeBottomRight:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
CMP BX, 0 
DEC BX
JNZ RightEyeBottomRight 

MOV CX, 189
MOV DX, 100
MOV BX, 11
RightEyeBottomLeft:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
DEC DX
CMP BX, 0 
DEC BX
JNZ RightEyeBottomLeft  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   RIGHT EYE DRAWING      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV cline, 181
MOV dline, 91
MOV width, 18
MOV AX, width
MOV linecounter, AX
SHR linecounter, 1

RightEyeBottom:
MOV CX, cline
MOV DX, dline
MOV BX, width

DrawRightEyeBottom:
MOV AH, 0Ch
MOV Al, 2
INT 10h

INC CX
CMP BX, 0
DEC BX
JNZ DrawRightEyeBottom


DEC width
DEC width
INC cline
INC dline
DEC linecounter

CMP linecounter, 0
JNZ RightEyeBottom 
 
                    
                    
MOV cline, 181
MOV dline, 89
MOV width, 18
MOV AX, width
MOV linecounter, AX
SHR linecounter, 1

RightEyeTop:
MOV CX, cline
MOV DX, dline
MOV BX, width

DrawRightEyeTop:
MOV AH, 0Ch
MOV Al, 0Eh
INT 10h

INC CX
CMP BX, 0
DEC BX
JNZ DrawRightEyeTop


DEC width
DEC width
INC cline
DEC dline
DEC linecounter

CMP linecounter, 0
JNZ RightEyeTop 
                    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   LEFT EYE FRAME      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV CX, 119
MOV DX, 90
MOV BX, 21


LeftEyeHorizontal:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
DEC BX
CMP BX, 0
JNZ LeftEyeHorizontal
          
          
          
MOV CX, 119
MOV DX, 90
MOV BX, 11
LeftEyeTopLeft:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
DEC DX
CMP BX, 0
DEC BX
JNZ LeftEyeTopLeft
 
 
 
MOV CX, 130
MOV DX, 80
MOV BX, 10
LeftEyeTopRight:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
CMP BX, 0 
DEC BX
JNZ LeftEyeTopRight  


MOV CX, 140
MOV DX, 90
MOV BX, 11
LeftEyeBottomRight:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
CMP BX, 0 
DEC BX
JNZ LeftEyeBottomRight 

MOV CX, 129
MOV DX, 100
MOV BX, 11
LeftEyeBottomLeft:
MOV Ah, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
DEC DX
CMP BX, 0 
DEC BX
JNZ LeftEyeBottomLeft  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   LEFT EYE DRAWING      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV cline, 121
MOV dline, 91
MOV width, 18
MOV AX, width
MOV linecounter, AX
SHR linecounter, 1

LeftEyeBottom:
MOV CX, cline
MOV DX, dline
MOV BX, width

LeftEyeEyeBottom:
MOV AH, 0Ch
MOV Al, 2
INT 10h

INC CX
CMP BX, 0
DEC BX
JNZ LeftEyeEyeBottom


DEC width
DEC width
INC cline
INC dline
DEC linecounter

CMP linecounter, 0
JNZ LeftEyeBottom 
 
                    
                    
MOV cline, 121
MOV dline, 89
MOV width, 18
MOV AX, width
MOV linecounter, AX
SHR linecounter, 1

LeftEyeTop:
MOV CX, cline
MOV DX, dline
MOV BX, width

LeftEyeEyeTop:
MOV AH, 0Ch
MOV Al, 0Eh
INT 10h

INC CX
CMP BX, 0
DEC BX
JNZ LeftEyeEyeTop


DEC width
DEC width
INC cline
DEC dline
DEC linecounter

CMP linecounter, 0
JNZ LeftEyeTop 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   Hair      
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MOV CX, 155
MOV DX, 45
MOV BX, 15

LeftHair:
MOV AH, 0Ch
MOV AL, 6
INT 10h

DEC CX
INC DX
CMP BX, 0
DEC BX
JNZ LeftHair


MOV CX, 160
MOV DX, 45
MOV BX, 15

MiddleHair:
MOV AH, 0Ch
MOV AL, 6
INT 10h

INC DX
CMP BX, 0
DEC BX
JNZ MiddleHair


MOV CX, 165
MOV DX, 45
MOV BX, 15

RightHair:
MOV AH, 0Ch
MOV AL, 6
INT 10h

INC CX
INC DX
CMP BX, 0
DEC BX
JNZ RightHair    


CMP mouseclick, 1
JZ SadSmile
CMP mouseclick, 2
JZ HappySmile

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;
;;;;;   Happy Smile      
;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
HappySmile:

MOV CX, 119
MOV DX, 119
MOV BX, 82
HappySmileFrame:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
DEC BX
CMP BX, 0
JNZ HappySmileFrame

MOV CX, 118
MOV DX, 119
MOV BX, 42
HappySmileFrame2:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
DEC BX
CMP BX, 0
JNZ HappySmileFrame2

MOV CX, 201
MOV DX, 119
MOV BX, 42
HappySmileFrame3:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
DEC BX
CMP BX, 0
JNZ HappySmileFrame3


         
MOV cline, 120
MOV dline, 120
MOV width, 80
MOV AX, width
MOV linecounter, AX
SHR linecounter, 1

HappyFace:
MOV CX, cline
MOV DX, dline
MOV BX, width
 

DrawHappyFace:
MOV AH, 0Ch
MOV AL, 4
INT 10h

INC CX
CMP BX, 0 
DEC BX
JNZ DrawHappyFace


DEC width
DEC width
INC cline
INC dline
DEC linecounter


CMP linecounter, 0
JNZ HappyFace

JMP FINISH 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   Sad Smile Border
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SadSmile:


MOV CX, 160
MOV DX, 119
MOV BX, 24

SadSmileFrame1:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame1


MOV CX, 160
MOV DX, 119
MOV BX, 24

SadSmileFrame2:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame2


MOV CX, 160
MOV DX, 140
MOV BX, 13

SadSmileFrame3:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame3    



MOV CX, 160
MOV DX, 140
MOV BX, 13

SadSmileFrame4:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame4


MOV CX, 137
MOV DX, 142
MOV BX, 11

SadSmileFrame5:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

INC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame5 

MOV CX, 183
MOV DX, 142
MOV BX, 11

SadSmileFrame6:
MOV AH, 0Ch
MOV AL, 0Fh
INT 10h

DEC CX
INC DX
DEC BX 
CMP BX, 0
JNZ SadSmileFrame6

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;   SAD SMILE DRAWING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV cline, 160
MOV dline, 120
MOV linecounter, 23
SadLeft:
MOV CX, cline
MOV DX, dline
MOV BX, 10

SadLeftDraw:

MOV AH, 0Ch
MOV AL, 4
INT 10h

INC CX
INC DX
CMP BX, 0
DEC BX
JNZ SadLeftDraw

DEC cline
INC dline
CMP linecounter, 0
DEC linecounter
JNZ SadLeft   



MOV cline, 170
MOV dline, 130
MOV linecounter, 13
SadRight:
MOV CX, cline
MOV DX, dline
MOV BX, 10

SadRightDraw:

MOV AH, 0Ch
MOV AL, 4
INT 10h

DEC CX
INC DX
CMP BX, 0
DEC BX
JNZ SadRightDraw

INC cline
INC dline
CMP linecounter, 0
DEC linecounter
JNZ SadRight



JMP FINISH

FINISH:
END