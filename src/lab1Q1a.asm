;lab 1-addition of numbers using immediate data

.386
.model flat, C
.stack 4086
.data
	sum dword ?
.code
main proc
	mov eax,15
	add eax,10
	mov sum,eax
	ret
main endp
end main