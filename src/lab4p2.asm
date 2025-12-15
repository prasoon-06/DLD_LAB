;Lab 4 Postlab2: Masking Nibble
.386
.model flat, stdcall
.stack 4096
.data
num     byte 5Ah       
result  byte ?         

.code
main proc
    mov     al, num        
    and     al, 0F0h       
    mov     result, al     
    ret
main endp
end main