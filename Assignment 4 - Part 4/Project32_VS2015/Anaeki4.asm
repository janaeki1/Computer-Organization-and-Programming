COMMENT $Student: Jerome Anaeki 
Class: CSC 3210 
Assignment#: 4, Part 4
Description: This program computes the expression: 
for (i = 6; i > 0; i--)
	{
	for(j = 3; j > 0; j--)
		{
		y = i + j ;
		}
	}
The variables i, j and y are 32-bit registers.$

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
i DWORD 6
j DWORD 3
y DWORD ?
count DWORD ?

.code
main proc
	mov edx,y		;moves y into EDX
	mov ecx,i		;moves 6 into ECX
	L1:				;label for loop
	mov count,ecx	;saves count of outer loop
	mov ecx,j		;moves 3 into ECX
	L2:				;label for loop
	mov eax,i		;moves i into EAX
	mov ebx,j		;moves j into EBX
	add eax,ebx		;adds EBX to EAX
	mov edx,eax		;moves EAX to EDX and EDX=2(eventually)
	dec j			;decrements j
	loop L2			;decrements ECX, then compares to zero
	mov j,2			;moves 3 to j
	dec i			;decrements i
	mov ecx,count	;moves saved count to ECX
	loop L1			;decrements ECX, then compares to zero

	invoke ExitProcess,0
main endp
end main