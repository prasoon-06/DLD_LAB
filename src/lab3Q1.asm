;Lab 3-Q1-Smallest Number

.386                     ;Processor
.model flat, C			 ;total memory space	
.stack 4098				 ;stack for programming
.data					 ;moved into data segement

	data1 sdword 3       ;taken data1=3
	data2 sdword -2      ;taken data2=-2
	resSmall sdword ?    ;to find resSmall ?
.code
main proc
	mov eax, data1       ;move value of data1 in eax
	mov ebx, data2       ;move value of data2 in ebx
	cmp eax, ebx         ;comparing eax and ebx
	jl result            ;jump if eax<ebx
	mov eax, ebx         ;move value of ebx in eax(if eax=ebx)
result:
	mov resSmall, eax    ;move value of eax in resSmall
	ret
main endp
end main