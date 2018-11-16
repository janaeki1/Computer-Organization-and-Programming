COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 6, Part 3
Description: This program is a subroutine that multiplies any unsigned 32-bit integer by the EAX.
$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov eax,10					;(used to test subroutine)
	mov ebx,20					;(used to test subroutine)
	call ShiftMultiplication	;(used to test subroutine)

ShiftMultiplication proc
	mov ecx,8			;traversing eight digits
	mov edx,eax			;saves multiplicand
	mov eax,0			;clears EAX
multiplier:
	shr ebx,1			;shifts multiplier right
	jnc multiplicand	;if carry flag clear, skip addition to result
	add eax,edx			;addition to result
multiplicand:	
	shl edx,1			;shifts multiplicand left
	dec ecx				;decrements count
	cmp ecx,0			;tests if ECX=0
	jnz multiplier		;ends subroutine if ECX=0
	ret
ShiftMultiplication endp

	invoke ExitProcess,0
main endp
end main