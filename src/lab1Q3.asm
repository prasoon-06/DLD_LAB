;Lab 1-multiplication of numbers

.386
.model flat, stdcall
.stack 4096
.data
	result_low dword ?
	result_high dword ?
.code
main proc
	mov eax,12345678
	mov ebx,98765432
	imul ebx
	mov result_low,eax
	mov result_high,edx
	ret
main endp
end main