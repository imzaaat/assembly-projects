
   ;;;      SECTION 3       ;;;
   ;;;      GROUP G         ;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                            ;;;
;;; Zaid Abdullah Abu-Tarboush ;;;
;;;         1537512            ;;;
;;;                            ;;;
;;;     Anas Amjad Zaki        ;;;
;;;         1437178            ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




.MODEL SMALL
.STACK 32
.DATA

X DW ?
Y DW ?
T DB ?
linecounter dw ?

LastRow DB ?
LastCol DB ?
LastX DW ?
LastY DW ?

msg DB "START$"
winMSG DB "WIN$"
lossMSG DB "GOODLOOK!$"

PixelClr DB ?
Phase DW 1

.CODE
.STARTUP



MOV AH, 00
MOV AL, 13h
INT 10h

;;;
;;; START
;;;  

START:

;;;
;;; SQUARE 1
;;;

MOV X, 150
MOV Y, 100
MOV T, 20
MOV linecounter, 10

Square1Top:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 4h

DrawSquare1Top:
INT 10h

INC CX
DEC BL
CMP BL, 0
JNZ DrawSquare1Top

INC X
DEC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square1Top

MOV X, 150
MOV Y, 100
MOV T, 20
MOV linecounter, 10

Square1Bot:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 4h

DrawSquare1Bot:
INT 10h

INC CX
DEC BL
CMP BL, 0
JNZ DrawSquare1Bot

INC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square1Bot

;;;
;;; SQUARE 2
;;;


MOV X, 160
MOV Y, 70
MOV T, 13
MOV linecounter, 5

Square2TopRight:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2TopRight:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2TopRight

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square2TopRight


;;
;;
;;

MOV X, 172
MOV Y, 82
MOV T, 13
MOV linecounter, 8

Square2TopRight2:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2TopRight2:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2TopRight2

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square2TopRight2


;;;;;;;;;;;;;;;

MOV X, 160
MOV Y, 130
MOV T, 13
MOV linecounter, 20

Square2BotRight:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2BotRight:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2BotRight

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square2BotRight
  


;;;;;;;;;;;;;;;


MOV X, 180
MOV Y, 90
MOV T, 21
MOV linecounter, 10

Square2RightTri:
MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2RightTri:
INT 10h
INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2RightTri

INC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square2RightTri


;;;;;;;;;;;;;;;



MOV X, 140
MOV Y, 100
MOV T, 13
MOV linecounter, 20

Square2BotLeft:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2BotLeft:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2BotLeft

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square2BotLeft                    


;;;;;;;;;;;;;;;



MOV X, 140
MOV Y, 100
MOV T, 13
MOV linecounter, 20

Square2TopLeft:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2TopLeft:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2TopLeft

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square2TopLeft     


;;;;;;;;;;;;;;;


MOV X, 140
MOV Y, 88
MOV T, 25
MOV linecounter, 13

Square2LeftTri:
MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 0Eh

DrawSquare2LeftTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare2LeftTri

DEC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square2LeftTri



;;;
;;; SQUARE 3
;;;


MOV X, 117
MOV Y, 100
MOV T, 13
MOV linecounter, 43

Square3TopLeft:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 02h

DrawSquare3TopLeft:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3TopLeft

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square3TopLeft 


;;;;;;;;;;;;;;;


MOV X, 117
MOV Y, 100
MOV T, 13
MOV linecounter, 10

Square3BotLeft:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 02h

DrawSquare3BotLeft:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3BotLeft

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square3BotLeft

;;
;;
;;

MOV X, 134
MOV Y, 117
MOV T, 13
MOV linecounter, 26

Square3BotLeft2:

MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 02h

DrawSquare3BotLeft2:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3BotLeft2

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square3BotLeft2


;;;;;;;;;;;;;;;   


MOV X, 117
MOV Y, 88
MOV T, 25 
MOV linecounter, 13

Square3LeftTri:
MOV AH, 0Ch
MOV AL, 02h
MOV CX, X
MOV DX, Y
MOV BH, 0
MOV BL, T

DrawSquare3LeftTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3LeftTri

DEC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square3LeftTri
               
               
;;;;;;;;;;;;;;;
               
               
MOV X, 160
MOV Y, 47
MOV T, 13
MOV linecounter, 43

Square3TopRight:
MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 02h

DrawSquare3TopRight:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3TopRight

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square3TopRight


;;;;;;;;;;;;;;;
               

MOV X, 160
MOV Y, 153
MOV T, 13
MOV linecounter, 43

Square3BotRight:
MOV CX, X
MOV DX, Y
MOV BL, T
MOV BH, 0
MOV AH, 0Ch
MOV AL, 02h

DrawSquare3BotRight:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3BotRight

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square3BotRight


;;;;;;;;;;;;;;;


MOV X, 203
MOV Y, 90
MOV T, 21 
MOV linecounter, 11

Square3RightTri:
MOV AH, 0Ch
MOV AL, 02h
MOV CX, X
MOV DX, Y
MOV BH, 0
MOV BL, T

DrawSquare3RightTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare3RightTri

INC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square3RightTri


;;;
;;; SQUARE4
;;; 
 
MOV X, 94
MOV Y, 100
MOV T, 13
MOV linecounter, 66

Square4TopLeft:
MOV AH, 0Ch
MOV AL, 01h
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare4TopLeft:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4TopLeft

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square4TopLeft


;;;;;;;;;;;;;;;


MOV X, 94
MOV Y, 100
MOV T, 13
MOV linecounter, 66

Square4BotLeft:
MOV AH, 0Ch
MOV AL, 01h
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare4BotLeft:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4BotLeft

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square4BotLeft


;;;;;;;;;;;;;;;



MOV X, 94
MOV Y, 88
MOV T, 25 
MOV linecounter, 13

Square4LeftTri:
MOV AH, 0Ch
MOV AL, 01h
MOV CX, X
MOV DX, Y
MOV BH, 0
MOV BL, T

DrawSquare4LeftTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4LeftTri

DEC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square4LeftTri


;;;;;;;;;;;;;;;



MOV X, 160
MOV Y, 34
MOV T, 13
MOV linecounter, 66

Square4TopRight:
MOV AH, 0Ch
MOV AL, 01h
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare4TopRight:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4TopRight

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square4TopRight 


;;;;;;;;;;;;;;;


MOV X, 160
MOV Y, 176
MOV T, 13
MOV linecounter, 15


Square4BotRight:
MOV AH, 0Ch
MOV AL, 01h
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare4BotRight:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4BotRight

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square4BotRight
  
  
;;
;;
;;
  
  
MOV X, 182
MOV Y, 154
MOV T, 13
MOV linecounter, 44

Square4BotRight2:
MOV AH, 0Ch
MOV AL, 01h
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare4BotRight2:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4BotRight2

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square4BotRight2


;;;;;;;;;;;;;;;


MOV X, 226
MOV Y, 87
MOV T, 24 
MOV linecounter, 12

Square4RightTri:
MOV AH, 0Ch
MOV AL, 01h
MOV CX, X
MOV DX, Y
MOV BH, 0
MOV BL, T

DrawSquare4RightTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare4RightTri

INC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square4RightTri


;;;
;;; SQUARE 5
;;;

MOV X, 71
MOV Y, 100
MOV T, 13
MOV linecounter, 60

Square5TopLeft:
MOV AH, 0Ch
MOV AL, 0Bh
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare5TopLeft:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5TopLeft

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square5TopLeft


;;
;;
;;


MOV X, 139
MOV Y, 32
MOV T, 13
MOV linecounter, 21

Square5TopLeft2:
MOV AH, 0Ch
MOV AL, 0Bh
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare5TopLeft2:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5TopLeft2

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square5TopLeft2


;;;;;;;;;;;;;;;



MOV X, 71
MOV Y, 100
MOV T, 13
MOV linecounter, 89



Square5BotLeft:
MOV AH, 0Ch
MOV AL, 0Bh
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare5BotLeft:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5BotLeft

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square5BotLeft
               
 
;;;;;;;;;;;;;;;              


MOV X, 71
MOV Y, 88
MOV T, 25
MOV linecounter, 13

Square5LeftTri:
MOV AL, 0Bh
MOV AH, 0Ch
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare5LeftTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5LeftTri

DEC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square5LeftTri


;;;;;;;;;;;;;;;


MOV X, 160
MOV Y, 1
MOV T, 13
MOV linecounter, 89

Square5TopRight:
MOV AH, 0Ch
MOV AL, 0Bh
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y

DrawSquare5TopRight:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5TopRight

INC X
INC Y
DEC linecounter
CMP linecounter, 0
JNZ Square5TopRight


;;;;;;;;;;;;;;;


MOV X, 160
MOV Y, 199
MOV T, 13
MOV linecounter, 89

Square5BotRight:
MOV AH, 0Ch
MOV AL, 0Bh
MOV BH, 0
MOV BL, T
MOV CX, X
MOV DX, Y


DrawSquare5BotRight:
INT 10h

DEC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5BotRight

INC X
DEC Y
DEC linecounter
CMP linecounter, 0
JNZ Square5BotRight


;;;;;;;;;;;;;;;



MOV X, 249
MOV Y, 90
MOV T, 21 
MOV linecounter, 11

Square5RightTri:
MOV AH, 0Ch
MOV AL, 0Bh
MOV CX, X
MOV DX, Y
MOV BH, 0
MOV BL, T

DrawSquare5RightTri:
INT 10h

INC DX
DEC BL
CMP BL, 0
JNZ DrawSquare5RightTri

INC X
INC Y
DEC T
DEC T
DEC linecounter
CMP linecounter, 0
JNZ Square5RightTri


;;
;; DRAW START LABEL
;;

MOV X, 12
MOV Y, 12
MOV linecounter, 16

StartLabel:
MOV CX, X
MOV DX, Y
MOV BX, 48
MOV AH, 0Ch
MOV AL, 06h

DrawStartLabel:
INT 10h

INC CX
DEC BX
CMP BX, 0
JNZ DrawStartLabel

INC Y
DEC linecounter
CMP linecounter, 0
JNZ StartLabel


;;;
;;; Draw Star
;;;


MOV DH, 1
MOV DL, 15
MOV BH, 0
MOV AH, 2
INT 10h

MOV AL, '*'
MOV AH, 0Ah
MOV BH, 0
MOV CX, 1
INT 10h


;;;
;;; START MESSAGE
;;;

MOV DH, 2
MOV DL, 2
MOV BH, 0
MOV AH, 2
INT 10h

MOV DX, OFFSET msg
MOV AH, 9
INT 21h



;;;
;;; INITIALIZE MOUSE
;;; 

MOV AX, 0000
INT 33h

MOV AX, 1
INT 33h


;;;
;;; Get Coordinates
;;;

MouseAgain:
MOV AX, 3
INT 33h

CMP BX, 1
JNZ MouseAgain

SHR CX, 1
MOV LastX, CX
MOV LastY, DX

SHR CX, 1
SHR CX, 1
SHR CX, 1
MOV LastCol, CL

SHR DX, 1
SHR DX, 1
SHR DX, 1
MOV LastRow, DL

CMP Phase, 1
JZ Phase1

CMP Phase, 2
JZ Phase2

CMP Phase, 3
JZ Phase3

CMP Phase, 4
JZ Phase4


;;
;; BLACK TO BLUE
;;
Phase1:

MOV CX, LastX
MOV DX, LastY

MOV AH, 0Dh
INT 10h

MOV PixelClr, AL
CMP PixelClr, 01h
JNZ SHOWLOSEMSG

CMP LastX, 125
JL SHOWLOSEMSG
CMP LastX, 165
JG SHOWLOSEMSG
CMP LastY, 30 
JL SHOWLOSEMSG
CMP LastY, 60
JG SHOWLOSEMSG


INC Phase
JMP WriteStar


;;
;; BLUE TO GREEN
;;

Phase2:       

MOV CX, LastX
MOV DX, LastY

MOV AH, 0DH
INT 10h

MOV PixelClr, Al
CMP PixelClr, 01h
JZ WriteStar
CMP PixelClr, 02h
JNZ SHOWLOSEMSG

CMP LastX, 155
JL SHOWLOSEMSG
CMP LastX, 185
JG SHOWLOSEMSG
CMP LastY, 155
JG SHOWLOSEMSG
CMP LastY, 130
JL SHOWLOSEMSG




INC Phase
JMP WriteStar



;;
;; GREEN TO YELLOW
;;

Phase3:

MOV CX, LastX
MOV DX, LastY
 

MOV AH, 0Dh
INT 10h

MOV PixelClr, AL
CMP PixelClr, 02h
JZ WriteStar
CMP PixelClr, 0Eh
JNZ SHOWLOSEMSG 

CMP LastX, 130
JL SHOWLOSEMSG
CMP LastX, 185 
JG SHOWLOSEMSG
CMP LastY, 95
JL SHOWLOSEMSG
CMP LastY, 120
JG SHOWLOSEMSG


INC Phase
JMP WriteStar


Phase4:

MOV CX, LastX
MOV DX, LastY

MOV AH, 0Dh
INT 10h  

MOV PixelClr, AL
CMP PixelClr, 0Eh
JZ WriteStar
CMP PixelClr, 04h
JNZ SHOWLOSEMSG
INC Phase
JMP WriteStar


;;; 
;;; WRITE STAR
;;;

WriteStar:
MOV DH, LastRow
MOV DL, LastCol
MOV BH, 0
MOV AH, 2
INT 10h

MOV AL, '*'
MOV AH, 0Ah
MOV BH, 0
MOV CX, 1
INT 10h

CMP PixelClr, 04h
JZ SHOWWINMSG

JMP MouseAgain
;;;
;;; WIN MESSAGE
;;;            

SHOWWINMSG:
MOV DH, 6
MOV DL, 2
MOV BH, 0
MOV AH, 2
INT 10h

MOV DX, OFFSET winMSG
MOV AH, 9
INT 21h

JMP LoadNewGame

;;;
;;; LOSS MESSAGE
;;;            

SHOWLOSEMSG:
MOV DH, 6
MOV DL, 2
MOV BH, 0
MOV AH, 2
INT 10h

MOV DX, OFFSET lossMSG
MOV AH, 9
INT 21h


JMP LoadNewGame



;;;
;;; LOAD NEW GAME
;;;

LoadNewGame:
MOV AX, 3
INT 33h

CMP BX, 1
JNZ LoadNewGame

CMP CX, 60
JG LoadNewGame
CMP CX, 12
JL LoadNewGame
CMP DX, 12
JL LoadNewGame
CMP DX, 28
JG LoadNewGame

JMP START


FINISH:
END