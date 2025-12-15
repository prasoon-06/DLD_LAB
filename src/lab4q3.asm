; Lab 04

.386
.model flat, stdcall
.stack 4096

.data
    data0   sdword 12h
    resGREY sdword ?

.code
main proc
    mov ebx, data0
    mov eax, data0
    shr eax, 1
    xor eax, ebx
    mov resGREY, eax

    ret
main endp
end main