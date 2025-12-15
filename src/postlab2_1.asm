;Lab 2-Post Lab	Q1-equation w=x*y+z*2

.386
.model flat, C
.stack 4086
.data
	x dd 12
	y dd 24
	z dd 32
	w dd ?

.code
main proc
	mov eax, x
	imul eax, y
	mov ebx, z
	imul ebx, 2
	add eax, ebx
	mov w, eax
	ret
main endp
end main