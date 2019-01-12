#  Assembly Tic-Tac-Toe
ATTT, is a simple tic-tac-toe game developed by x86 assembly with the help of various interrupts such as, 10h and 21h.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See Preview section for a video preview. 

### Prerequisites
You need a x86 assembly compiler such as MASM, FASM, TASM, or simplest of all Emu8086. To get a copy of Emu8086 please head to [Microprocessor Emulator](http://www.emu8086.com/). 

### Installing
Get a copy of the [ATTT.asm](https://github.com/ZaidxC/ATTT/blob/master/ATTT.asm) file, and open it up by Emu8086. After that, click on Emulate, then let it compile, this may take a few seconds. You are ready to start the actual program, just click on run and you have yourself a live copy of the program.

### Preview
If you do not wish to install any software on your machine, I have made a YouTube video that previews the game.
You can find the video here: https://youtu.be/eSaycpIEdmE

## License
This project is licensed under the MIT LICENSE - see the  [LICENSE.md](LICENSE.md)  file for details

## Why Assembly?
I took this course in university that discussed microprocessor systems, and x86 assembly was taught in that class. I made the game mainly to experience how hard (and fun, maybe?) it was to develop computer software in the early days of computers.

## Problems With Assembly
I am very aware of the dot (instead of O) problem, it is listed in the "issues" section of the project. But you need to understand how hard it is to draw a circle on a 1979 machine, the Intel 8086 processor.
Also, the drawing is slow because it is being emulated on Emu8086. It would draw faster if you compiled the code using MASM, TASM, or FASM. It would be even faster if you tried it on the actual hardware (any processor from the x86 family). 

## What's next?
As I stated previously, I will try to keep developing and maintaining the game until it reaches the point where no further development is possible.
I thought about making an operating system, or something more simple, like Paint program. But I do not think I am doing that anytime soon as I have to focus on other things.

