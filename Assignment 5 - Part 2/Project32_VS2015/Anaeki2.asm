COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 5, Part 2
Description: This program implements the following: 
while (X>0)
	{
	if (X!=3  AND (X<A OR X>B)
		{
		X=X-2
		}
	else
		{
		X=X-1
		}
	}
	endwhile

A, B, and X are 32-bit signed integer variables.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
a SDWORD 5
b SDWORD 6
x SDWORD 11

.code
main proc
	mov eax,a
	mov ebx,b
	whileLoop:
	cmp x,0
	jle endWhile
	cmp x,3
	je L2
	cmp x,eax
	jl L1
	cmp x,ebx
	jle L2
	L1:
	sub x,2
	jmp whileLoop
	L2:
	dec x
	jmp whileLoop
	endWhile:
			

	invoke ExitProcess,0
main endp
end main