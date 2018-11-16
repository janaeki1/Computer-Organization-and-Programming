COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 7, Part 1
Description: This program uses user input to read an unsigned number and calculates the factorial (n!).
$

INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
p1 BYTE "Enter unsigned integer (n!): ",0

.code
main proc
	mov edx,OFFSET p1
	call WriteString		;prints the string
	call ReadDec			;takes user input of an unsigned integer
	push eax				;pushes N
	call Factorial			;calls procedure
	call WriteDec			;prints N! calculation from EAX
	call Crlf				;creates new line

	invoke ExitProcess,0
main endp

Factorial proc
	push ebp			
	mov ebp,esp			
	mov eax,[ebp+8]		;moves N to EAX
	cmp eax,0			;checks if N=0
	ja L1				;if N>0, continue factorial
	mov eax,1			;if N=0, set N=1 to calculate 0!
	jmp L2				;return to caller
L1: 
	dec eax				;N-1
	push eax			;N=N-1, Factorial(N-1)
	call Factorial		;recursive call
FactorialReturn:		;recursive label
	mov ebx,[ebp+8]		;moves N to EBX
	mul ebx				;N*EAX
L2: 
	pop ebp				;returns EAX
	ret 4				;unwinds recursive calls and cleans up stack
Factorial endp

end main