COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 6, Part 2
Description: This program implements the following expression:	val = (val2/val3)*(val4+val2)-(val4*3)
$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 SDWORD ?
val2 SDWORD +40
val3 SDWORD +20
val4 SDWORD +10

.code
main proc
	mov	eax,val2	;EAX=40
	cdq				;extends EAX to EDX
	idiv val3		;EAX=40/20=2
	mov ebx,val4	;EBX=10
	add ebx,val2	;EBX=10+40=50
	imul ebx		;EAX=2*50=100
	mov ebx,val4	;EBX=10
	imul ebx,3		;EAX=10*3=30
	sub eax,ebx		;EAX=100-30=70
	mov val1,eax	;val1=70

	invoke ExitProcess,0
main endp
end main