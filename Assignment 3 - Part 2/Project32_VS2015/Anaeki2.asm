COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 Assignment: 3, Part 2 
Description: This program calculates the expression: "EAX = -val2 + 7 - val3 + val1". It is assumed 
that val1, val2, and val3 are 16-bit integer variables$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 WORD 1
val2 SWORD -2
val3 SWORD -3

.code
main proc
	mov	eax,7			;moves 7 to EAX register
	movzx ebx,val1		;moves val1 to EBX register
	movsx ecx,val2		;moves val2 to ECX register
	movsx edx,val3		;moves val3 to EDX register

	add eax,ebx			;adds EBX register to EAX register
	add eax,ecx			;adds ECX register to EAX register
	add eax,edx			;adds EDX register to EAX register

	invoke ExitProcess,0
main endp
end main