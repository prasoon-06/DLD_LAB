;Lab 1-divison of numbers

.386
.model flat, stdcall
.stack 4096
.data
	number dword 5
	amount dword 2
	answer dword ?
.code
main proc
	mov eax,number
	mov ebx,amount
	cdq
	idiv amount
	mov answer,eax
	ret
main endp
end main