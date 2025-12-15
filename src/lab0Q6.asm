;Lab 0-Q6-Printing hello students
.386
.model flat, stdcall
.stack 096

MessageBoxA proto :dword, :dword, :dword, :dword
ExitProcess proto :dword

.data
caption db "Lab 0: DLD", 0
message db "Hello Students", 0

.code
main proc
	invoke MessageBoxA, 0, addr message, addr caption, 0
	invoke ExitProcess, 0
main endp
end main