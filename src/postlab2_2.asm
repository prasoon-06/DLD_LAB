;Lab 2-Post lab Q2- equation r = -s + t++

.386
.model flat, C
.stack 4086
.data
	s dd 11
	t dd 13
	r dd ?
.code
main proc
	mov eax, s
	neg eax
	mov ebx, t
	add eax, ebx
	mov r, eax
	inc t
	ret
main endp
end main