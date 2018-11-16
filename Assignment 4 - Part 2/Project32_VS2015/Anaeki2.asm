COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 4, Part 2
Description: This program uses a loop with indirect addressing to swap elements of an 
integer array.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 1,2,3,4,5,6,7,8,9,10,11,12

.code
main proc
	mov esi,OFFSET array		;ESI=1
	mov ecx,LENGTHOF array/2	;ECX=12/2=6
	L1:							;label for loop
	mov eax,[esi]				;moves value of ESI from array into EAX
	add esi,TYPE array			;ESI moves right and points to next value in array
	xchg eax,[esi]				;swaps the value in EAX with value pointed to with ESI
	sub esi,TYPE array			;ESI moves left and points to previous value in array
	xchg eax,[esi]				;swaps the value in EAX with value pointed to with ESI
	add esi,TYPE array*2		;ESI skips the next value and points to the value after
	loop L1						;decrements ECX, then compares to zero

	invoke ExitProcess,0
main endp
end main