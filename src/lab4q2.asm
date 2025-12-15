; Lab 04

.386
.model flat, stdcall
.stack 4096

.data
    data   sdword 12h
    result sdword ?

.code
main proc
    mov eax, data
    shl eax, 3
    mov result, eax

    ret
main endp
end main