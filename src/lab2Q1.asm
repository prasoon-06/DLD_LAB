;Lab 2-Objective 1-Ohms law & watts law

.386                    ;Processor
.model flat, stdcall    ;total memory space
.stack 4096             ;stack for programming
.data                   ;moved intodata segment

	amp dd 23           ;taken amp = 23
	ohm dd 12           ;taken ohm = 12 
	vol dd ?            ;to find vol ?
	watt dd ?           ;to find watt ?
.code
main proc
	mov eax,amp         ;move value of amp in eax
	mov ebx,ohm         ;move value of ohm in ebx
	imul ebx            ;ebx by eax and store it in eax
	mov vol,eax         ;store result in vol
	mov eax,amp         ;move value of amp in ebx
	imul eax,amp        ;multiply eax by amp
	imul eax,ohm        ;multiply ohm by eax
	mov watt,eax        ;store result in vol
	ret         
main endp
end main