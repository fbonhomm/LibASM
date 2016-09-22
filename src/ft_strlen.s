
section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	jle exit
	mov rcx, 0
	not rcx
	mov rax, 0
	cld
	repnz scasb
	not rcx
	dec rcx
	mov rax, rcx
	ret

exit:
	mov rax, 0
	ret
