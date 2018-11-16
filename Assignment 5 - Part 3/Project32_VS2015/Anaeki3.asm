COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 5, Part 3
Description: This program computes the following: y = 3x + 9x - 10
X and Y are 32-bit integer variables.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
x DWORD 1
y DWORD 4 DUP(?)
sum DWORD ?

.code
main proc
	mov esi,0
	whileLoop:
	cmp x,8
	ja endWhile
	mov eax,x
	mov ebx,3
	mul ebx
	mov sum,eax
	mov eax,x
	mov ebx,9
	mul ebx
	add sum,eax
	sub sum,10
	mov edx,x
	and edx,1
	jz whenEven
	mov eax,sum
	mov y[esi],eax
	add esi,TYPE y
	whenEven:
	inc x
	jmp whileLoop
	endWhile:
			

	invoke ExitProcess,0
main endp
end main