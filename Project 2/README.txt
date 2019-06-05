Srinivas C Lingutla
655115444
CS 474

As of the submission, this program works. 

Environment: Windows 10
VisualWorks Smalltalk 64-bit program


The program displays 

- An Input Editor:	This is where the user will enter the instructions
- Data Memory: 		This is where the memory will be displayed and each location will be numbered
- Register A: 		Contents of the register A (Accumulator) will be shown in the text box
- Register B: 		Contents of the register B will be shown in the text box
- Overflow Bit: 	Shows 0 or 1 depending on whether the bit is set or not.
- Zero bit: 		Shows 0 or 1 depending on whether the bit is set or not.
- Progrm Counter: 	This shows the location of the next instruction to be executed by the program. 
- Execute All: 		This is a button which will execute from PC till it reaches halt.
- Execute Line: 	This is a button which will execute the current PC starting from 0 for the first time. 
- Clear All: 		This is a button which will clear all contents of all the textboxes and values. 

Please for each input, clear the contents before the next input. Don't change the contents of the input editor while executing the instructions. As for the Execute Line by line, the instructions that have already been incremented will be in bold. I have attempted certain error checking, but I am under the impression that the instructions entered will be correct. I have tested with the test case, and it works.


Test Case: 

DEC S
DEC X
LDI -10
ST S
JVS 13
LDI 10
ST X
LDI 20
LDA X
LDB S
XCH
ADD
JVS 14
JZS 15
ADD
JZS 14
ADD 
LDA S
LDB X
ADD
JZS 22
ADD
HLT 

Result: -10 and 10 in the first 2 spots of data memory. Register A : 0, Register B: 10, Zero Bit : 1