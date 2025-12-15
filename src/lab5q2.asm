;Lab No- 5-Q2-Write ALP to get the square of a number using a function call/subroutine
.386
.model flat, stdcall
.stack 4096
.data
	var1 dw 5H
	square dw ?
.code
main proc
	mov ax, var1
	call sqr_sub
	mov square, ax
	ret
main endp
sqr_sub proc
	imul ax, ax
	ret
sqr_sub endp
end main