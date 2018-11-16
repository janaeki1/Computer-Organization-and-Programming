COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 Assignment: 3, Part 3 
Description: This program reorders the byte values of "10113A1Ch" in little-endian order.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myDWORD BYTE 1Ch,3Ah,11h,10h

.code
main proc
	mov	al,myDWORD		;stores "1C" in al register
	mov	bl,myDWORD+1	;stores "3A" in bl register
	mov	cl,myDWORD+2	;stores "11" in cl register
	mov dl,myDWORD+3	;stores "10" in dl register

	invoke ExitProcess,0
main endp
end main