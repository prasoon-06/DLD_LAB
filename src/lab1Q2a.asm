;Lab 1-subtraction of numbers using immediate data

.386
.model flat, C
.stack 4086
.data
	difference dword ?
.code
main proc
	mov eax,15
	sub eax,10
	mov difference,eax
	ret
main endp
end main