      .include "address_map_arm.s"


          .text
          .global _start
.data
SegNum:.word	0x3F, 0x6, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x7, 0x7F, 0x67 //Array to hold 7-Segment Display values
ScoreMap:.word 0b1111111111, 0b11000000, 0b110000, 0b11110000, 0b1100, 0b11001100, 0b111100, 0b11111100, 0b11, 0b11000011, 0b110011,0b11110011, 0b1111, 0b11001111, 0b111111, 0b11111111
PlayerScore:.word 0x0, 0x0, 0x0, 0x0
NoteArr1:.word 0b00, 0b00, 0b00, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b11000000,0b11,0b1100, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b1100, 0b11, 0b11000000,0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b1100, 0b11, 0b110000, 0b11, 0b11000000, 0b11, 0b110000, 0b11, 0b11000000, 0b110000, 0b1100, 0b11, 0b11, 0b1100, 0b110000, 0b11000000, 0b11000000, 0b110000, 0b1100, 0b11, 0b1100, 0b0, 0b0, 0b0, 0b1111111111
NoteArr2:.word 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b1100, 0b1100, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b11, 0b11, 0b00, 0b00, 0b00, 0b1111111111 
NoteArr3:.word 0b1100, 0b11, 0b1100, 0b110000, 0b1100, 0b110000, 0b11000000, 0b110000, 0b1100, 0b1100, 0b1100, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b1100, 0b1100, 0b11, 0b11, 0b1100, 0b1100, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11000000, 0b11000000, 0b11, 0b11, 0b11000000, 0b11000000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b11, 0b11, 0b110000, 0b110000, 0b11, 0b11, 0b11000000, 0b110000, 0b1100, 0b110000, 0b11000000, 0b1100, 0b110000, 0b11000000, 0b110000, 0b1100, 0b11, 0b1100, 0b110000, 0b1100, 0b110000, 0b11000000, 0b110000, 0b11000000, 0b110000, 0b11000000, 0b110000, 0b11000000, 0b110000, 0b11000000, 0b110000, 0b11000000, 0b11001100, 0b00, 0b00, 0b00, 0b1111111111 

_start:		LDR R0, =LEDR_BASE// address of leds stored into R0
			LDR R1, =MPCORE_PRIV_TIMER// address of the private timer
			LDR R3, =JP1_BASE// address of GPIO 1 (Cols HIGH)
			LDR R4, =JP2_BASE// address of GPIO 2 (Rows GND)
			MOV R5, #0b11111111// set first Eight bits as output on gpio1
			STR R5, [R3, #4]
			MOV R9, #0
			MOV R10, #0
			MOV R12, #0

Loop:		MOV R5, #0
			STR R5, [R3]
			LDR R7, =NoteArr1
			LDR R5, [R7]
			MOV R6, #0b11000000
			MOV R2, #0

FourNotes:	PUSH {R6}
			STR R6, [R4, #4]
			MOV R5, #0
			STR R5, [R4]
			LDR R5, [R7, #12]
			STR R5, [R3]
			CMP R9, #0
			BLEQ InputCheck
			BL DelaySet
//-------------------
			MOV R5, #0
			STR R5, [R3]
			LSR R6, #2
			STR R6, [R4, #4]
			MOV R5, #0
			STR R5, [R4]
			LDR R5, [R7,#8]
			STR R5, [R3]
			BL DelaySet
//----------------------
			MOV R5, #0
			STR R5, [R3]
			LSR R6, #2
			STR R6, [R4, #4]
			MOV R5, #0
			STR R5, [R4]
			LDR R5, [R7,#4]
			STR R5, [R3]
			BL DelaySet
//----------------------
			MOV R5, #0
			STR R5, [R3]
			LSR R6, #2
			STR R6, [R4, #4]
			MOV R5, #0
			STR R5, [R4]
			LDR R5, [R7]
			STR R5, [R3]
			BL DelaySet
			POP {R6}
			ADD R2, #1
			CMP R2, #35
			BNE FourNotes
			ADD R7, #4
			LDR R2, [R7, #16]
			CMP R2, #0b11111111
		    BLGT NextArr
			MOV R2,#0
			MOV R9, #0

			B FourNotes
//---------Four notes at a time delay timer
DelaySet:	PUSH {R2,LR}
			MOVW R2, #0xE100 // load into timer
		    MOVT R2, #0x0003 // load into timer
			STR R2, [R1] // Time loaded into timer
			MOV R2, #0b011 // start led sequencer
			STR R2, [R1, #0x8]//Load enable, and autoreload into timer
Delay:		LDR R2, [R1, #0xC]//load status flag
			CMP R2, #0
			BEQ Delay

			STR R2, [R1, #0xC] // Reset Interrupt
			POP {R2,LR}
			BX LR
//-------- Array Switching for segments of song -----------------------------------------------------------
NextArr:	PUSH {LR}
			ADD R12, #1
			CMP R12, #1
			BLEQ Change1
		    CMP R12, #2
			BLEQ Change2
			CMP R12, #3
			BLEQ Change3
			POP {LR}
			BX LR

Change1:	PUSH {LR}
			LDR R7, =NoteArr2
			POP {LR}
			BX LR

Change2:	PUSH {LR}
			LDR R7, =NoteArr3
			POP {LR}
			BX LR

Change3:	PUSH {LR}
			LDR R7, =NoteArr1
			MOV R12, #0
			POP {LR}
			BX LR
//---------	CHECK THE INPUT VS THE CURRENT NOTE--------------------------------
InputCheck: PUSH {R5, LR}
			LDR R8, =KEY_BASE
			LDR R8, [R8]
			MOV R5, #4
			MUL R8, R5
			LDR R5, =ScoreMap
			LDR R8, [R5, R8]
			POP {R5}
	
			CMP R8, R5
			BL Correct

			POP {LR}
			BX LR

Correct:	PUSH {LR}

			LDR R9, [R10]
			ADD R9, #1
			CMP R9, #9
			BLGT SecondDigit
			STR R9, [R10]
			BL UpdateScore
			
			POP {LR}
			BX LR

SecondDigit:PUSH {LR}
			
			MOV R9, #0
			STR R9, [R10]
			LDR R9, [R10, #4]
			ADD R9, #1
			CMP R9, #9
			BLGT ThirdDigit
			STR R9, [R10, #4]
			MOV R9, #0			

			POP {LR}
			BX LR

ThirdDigit:PUSH {LR}
			
			MOV R9, #0
			LDR R9, [R10, #8]
			ADD R9, #1
			CMP R9, #9
			BLGT FourthDigit
			STR R9, [R10, #8]
			MOV R9, #0			

			POP {LR}
			BX LR

FourthDigit:PUSH {LR}
			
			MOV R9, #0
			LDR R9, [R10, #12]
			ADD R9, #1
			STR R9, [R10, #12]
			MOV R9, #0			

			POP {LR}
			BX LR
UpdateScore:
.end
