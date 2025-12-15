;Lab 2-Post lab Q3- equation total = num1/num2-(num3*num4)

.386
.model flat, C
.stack 4086
.data
	num1 dd 11
	num2 dd 13
	num3 dd 15
	num4 dd 24
	total dd ?
.code
main proc
	mov eax, num1
	cdq
	idiv num2
	mov ebx, eax
	mov eax, num3
	imul num4
	sub ebx, eax
	mov total, ebx
	ret
main endp
end main