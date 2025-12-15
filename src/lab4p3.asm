;Lab4 Postlab3
.386
.model flat, stdcall
.stack 4096

.data
num16    word 2048h     
result   word ?         

.code
main proc
    mov     ax, num16    
    shr     ax, 2        
    mov     result, ax   
    ret
main endp
end main