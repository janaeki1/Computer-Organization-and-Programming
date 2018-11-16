COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 Assignment: 3, Part 1 
Description: This program adds 3 to the EAX register and adds 8 to the EDX register to demonstrate 
a difference in the machine code between the two.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	add	eax,3	;adds 3 to EAX register	
	add	edx,8	;adds 8 to EDX register	

	invoke ExitProcess,0
main endp
end main