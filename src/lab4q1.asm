; Lab 04

.386
.model flat, stdcall
.stack 4096

.data
    data1  sdword 23h
    data2  sdword 84h
    resAND sdword ?
    resOR  sdword ?
    resXOR sdword ?

.code
main proc
    mov eax, data1
    mov ebx, data2
    and eax, ebx
    mov resAND, eax

    mov eax, data1
    or eax, ebx
    mov resOR, eax

    mov eax, data1
    xor eax, ebx
    mov resXOR, eax

    ret
main endp
end main