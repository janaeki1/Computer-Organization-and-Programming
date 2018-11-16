COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 6, Part 1
Description: This program tests if the MSB is set in the al register.
$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov al,18h		;moves 24 into AL
	test al,80h		;tests MSB with 10000000
	jz L1			;if ZF=1, jump to L1 ; else, continue
	shl al,3		;AL=24*8
	jmp L2			;jump to L2
	L1:
	shr al,2		;AL=24/4
	L2:				;exit

	invoke ExitProcess,0
main endp
end main