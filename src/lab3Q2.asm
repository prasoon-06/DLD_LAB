;Lab 03

.386                   ;Processor 
.model flat, C         ;Total Memory space
.stack 4096            ;stack for programming
.data                  ;moved into data segment

    Var_a sdword 64    ;taken Var_a = 64 
    Var_b sdword 34    ;taken Var_b = 34    
    Var_c sdword 89    ;taken Var_c = 89 
    Var_d sdword 29    ;taken Var_d = 28
    
.code
main proc
if01:
    mov eax, Var_a       ; load Var_a into EAX
    mov ebx, Var_b       ; load Var_b into EBX
    cmp eax, ebx         ; compare a and b
    jle else01           ; if a <= b, jump to else
then01:
    dec eax              ; a = a - 1
    mov Var_a, eax
    jmp endif01
else01:
    nop
endif01:
if02:
    mov ebx, Var_b       ; load Var_b into EBX
    mov ecx, Var_c       ; load Var_c into ECX
    cmp ebx, ecx         ; compare b and c
    jl else02            ; if b < c, jump to else
then02:
    sub ebx, 2           ; b = b - 2
    mov Var_b, ebx
    jmp endif02
else02:
    nop
endif02:
if03:
    mov ecx, Var_c       ; load Var_c into ECX
    mov edx, Var_d       ; load Var_d into EDX
    cmp ecx, edx         ; compare c and d
    jle else03           ; if c <= d, jump to else
then03:
    add ecx, edx         ; c = c + d
    mov Var_c, ecx
    jmp endif03
else03:
    mov eax, Var_d       ; d = d / 2
    cdq
    mov ebx, 2
    idiv ebx
    mov Var_d, eax
endif03:
    ret                  ; return from main
main endp
end main
