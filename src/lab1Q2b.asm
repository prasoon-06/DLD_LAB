;Lab 1-subtraction of numbers data from memory

.386
.model flat, C
.stack 4086
.data
	num1 dword 25
	num2 dword 20
	data1 dword ?
.code
main proc
	mov eax,num1
	sub eax,num2
	mov data1,eax
	ret
main endp
end main