	AREA mydata, DATA
X0 	EQU 	0x10000100
X1  EQU     0x10000104
Y0 	EQU 	0x10000108
Y1  EQU     0x1000010C
RE0 	EQU 	0x10000110
RE1  EQU     0x10000114
	
	

	
		
		
	AREA gpio, CODE, READONLY, ALIGN=2

	EXPORT __main
ENTRY
__main

	LDR R0, =X0   ;Get the address of Least significant word(X0)'s address
	LDR R1, [R0]
	LDR R0, =X1   ;Get the address of Most significant word(X1)'s address
	LDR R2, [R0]	

	LDR R0, =Y0   ;Get the address of Least significant word(Y0)'s address
	LDR R3, [R0]
	LDR R0, =Y1   ;Get the address of Most significant word(Y1)'s address
	LDR R4, [R0]	
	
	ADDS R1, R1,R3
	ADC  R2, R2, R4
	
	LDR R0, =RE0
	STR R1, [R0]
	LDR R0, =RE1
	STR R2, [R0]
	
L   B L
	END
 