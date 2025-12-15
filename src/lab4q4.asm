; Lab 04
.386
.model flat, stdcall
.stack 4096
.data
    data1 sdword 0B8h
    x     sdword ?
    y     sdword ?
    resA  sdword ?
    resS  sdword ?
    resM  sdword ?
.code
main proc
    mov eax, data1
    and eax, 0F0h
    shr eax, 4
    mov x, eax
    mov ebx, data1
    and ebx, 0Fh
    mov y, ebx
    mov eax, x
    add eax, y
    mov resA, eax
    mov eax, x
    sub eax, y
    mov resS, eax
    mov eax, x
    imul eax, y
    mov resM, eax
    ret
main endp
end main