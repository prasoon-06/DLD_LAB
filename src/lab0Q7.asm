;Lab 0- Addition of two numbers
.386
.model flat, C
.stack 4086
.data
	num1 dword 15
	num2 dword 20
	data1 dword ?
.code
main proc
	mov eax,num1
	add eax,num2
	add eax,ebx
	mov data1,eax
	ret
main endp
end main