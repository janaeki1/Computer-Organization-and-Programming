COMMENT $
Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 5, Part 1
Description: This program finds the largest element by searching an array.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
ary SBYTE 1,5,-3,-4,0,6,11,-9,18
arraySize = ($-ary)
max SBYTE ?

.code
main proc
	mov esi,0
	mov al,ary[esi]
	mov max,al
	whileLoop:
	inc esi
	cmp esi,arraySize
	jge endWhile
	mov al,ary[esi]
	cmp al,max
	jle whileLoop
	mov max,al
	jmp whileLoop
	endWhile:
	
			

	invoke ExitProcess,0
main endp
end main