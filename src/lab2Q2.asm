;Lab 2-Objective 2-Fahrenheit to Celsius

.386                    ;Processor
.model flat, stdcall    ;total memory space
.stack 4096             ;stack for programming
.data                   ;moved intodata segment

	farh dd 150         ;taken farh = 150
	cel dd ?            ;to find cel ?
	diff dd ?           ;to find diff ?
.code
main proc
	mov eax,farh        ;mov value of farh in eax
	sub eax,32          ;subtracting 32 from eax
	mov diff,eax        ;store result in diff
	mov ebx,5           ;mov value of 5 in ebx
	imul ebx            ;multiplying ebx by eax
	mov ebx,9           ;mov value of 9 in ebx
	cdq                 ;convert double to quad word
	idiv ebx            ;divide edx:ebx by 9 
	mov cel,eax         ;store eax in cel
	ret
main endp
end main