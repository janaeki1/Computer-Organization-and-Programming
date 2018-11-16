COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 4, Part 3
Description: This program computes the expression: z = -x + 6 - y + 17, where x, y and z 
are 16-bit integer variables.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
x SWORD 0
y WORD 10
z WORD 4 DUP(?)

.code
main proc
	mov esi,0				;ESI points to first position of z list
	mov ecx,LENGTHOF z		;ECX=4
	L1:						;label for loop
	inc x					;increments the current value of x
	mov ax,x				;moves value of x into AX
	neg ax					;negates AX
	add ax,6				;adds 6 to value in AX
	sub ax,y				;subtracts 10 from value in AX
	add ax,17				;adds 17 to value in AX
	mov z[esi],ax			;moves value of AX to current position of z list
	add esi,TYPE z			;ESI points to next position in z list
	loop L1					;decrements ECX, then compares to zero

	invoke ExitProcess,0
main endp
end main