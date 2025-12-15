;Lab 2-Objective 3-solve equation y=23*a+(b/4)-d^2

.386                    ;Processor
.model flat, stdcall    ;toatl memory space
.stack 4096             ;stack for programming
.data                   ;moved into data segment

	a dd 5              ;taken a = 5
	b dd 24             ;taken b = 24
	d dd 6              ;taken c = 6
	answer dd ?         ;to find answer ?
.code 
main proc
	mov eax, 23         ;move value of 23 in eax
	imul a              ;multiplying a by eax
	mov ebx,eax         ;store result in ebx
	mov eax,b           ;move value of b in eax
	cdq                 ;convert eax into edx:eax
	mov ecx,4           ;move value of 4 in ecx
	idiv ecx            ;divide edx:eax by 4           
	add ebx,eax         ;add the contents of eax to ebx
	mov eax,d           ;store c in eax
	imul eax,eax        ;multiply c by eax
 	sub ebx,eax         ;subtract eax from ebx 
	mov answer,ebx      ;store result in aswer
	ret
main endp
end main