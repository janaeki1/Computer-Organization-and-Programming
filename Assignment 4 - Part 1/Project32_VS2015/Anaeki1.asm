COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 4, Part 1 
Description: This program calculates the sum of the value's bytes from left to right using the PTR 
operator. The result is stored in the appropriate register.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
value QWORD 0102030405060708h

.code
main proc
	mov al,BYTE PTR [value+7]	;AL=01h
	add al,BYTE PTR [value+6]	;AL=03h
	add al,BYTE PTR [value+5]	;AL=06h
	add al,BYTE PTR [value+4]	;AL=0Ah
	add al,BYTE PTR [value+3]	;AL=0Fh
	add al,BYTE PTR [value+2]	;AL=15h
	add al,BYTE PTR [value+1]	;AL=1Ch
	add al,BYTE PTR value		;AL=24h			

	invoke ExitProcess,0
main endp
end main