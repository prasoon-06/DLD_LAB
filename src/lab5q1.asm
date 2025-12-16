¡LAB 05-Q1- Exchange of two memory variables using a stack
.386
.model flat, stdcall
.stack 4096
.data
    var1 dw 1234H
    var2 dw 5678H
.code
main PROC
    mov ax, var1     ; AX = var1
    push ax          ; push var1
    mov ax, var2     ; AX = var2
    mov var1, ax     ; var1 = var
    pop ax           ; AX = old var1
    mov var2, ax     ; var2 = old var1
    ret
main endp
end main
