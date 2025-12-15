.386
.model flat, stdcall
.stack 4096

.data
    num     byte 5Ah        
    result  byte ?          ; 1's complement result

.code
main proc
    mov     al, num        
    not     al              
    mov     result, al      
    ret
main endp
end main