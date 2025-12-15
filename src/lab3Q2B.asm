;Lab 3-Q2-B

.386
.model flat, stdcall
.stack 4096
.data
	var_a sdword 84
	var_b sdword 24
	var_c sdword 65
	var_d sdword 90
.code
main proc
	mov eax, var_a
	mov ebx, var_b
	mov ecx, var_c
	mov edx, var_d
	.if eax > ebx
	    dec eax
		mov var_a, eax
	.else
		.if ebx>=ecx
		    sub ebx, 2
			mov var_b, ebx
		.else 
		    .if ecx > edx
				add ecx, edx
				mov var_c, ecx
			.else
				mov eax, var_d
				mov ebx, 2
				cdq
				idiv ebx
				mov var_d, eax
			.endif
		.endif
	.endif
	ret
main endp
end main