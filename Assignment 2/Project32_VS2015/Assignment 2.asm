COMMENT $Student: Jerome Anaeki
Class: CSC 3210
Assignment: 2
Description: This program calculates the expression: "A = (A + B) - (C + D)" by assigning integer values 
to the EAX, EBX, ECX, and EDX registers.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov	eax,1	;moves 1 to the eax register
	mov	ebx,2	;moves 2 to the ebx register
	add eax,ebx	;adds ebx register to eax register

	mov	ecx,3	;moves 3 to the ecx register
	mov	edx,4	;moves 4 to the edx register
	add ecx,edx	;adds edx register to ecx register
	
	sub eax,ecx	;removes ecx register from eax register

	invoke ExitProcess,0
main endp
end main