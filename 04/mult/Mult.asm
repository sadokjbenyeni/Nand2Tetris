// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
@i                      
M=0         //Initalize a counter        
@R2        
M=0         //Initalize result holder
(LOOP)      
@i
D=M
@R1
D=M-D
@END        //If counter value is equal to R1
D;JEQ       // then exit the loop
@R0
D=M         
@R2
M=M+D       //Otherwise add to result holder
@i          // R0 value each time
M=M+1       // Increment counter each time 
@LOOP       // until equal to R1
0;JMP
(END)
@END
0;JEQ