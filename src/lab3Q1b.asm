;Lab 3-Q1(b)

.386
.model flat, stdcall
.stack 4096
.data
	num1 sdword 85
	num2 sdword 69
	resSmall sdword ?
.code
main proc
	mov eax, num1
	mov ebx, num2
	.if eax > ebx
		mov resSmall, ebx
	.else
		mov resSmall, eax
	.endif
	ret
main endp
end main