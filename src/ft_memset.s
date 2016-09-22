
section .text
	global _ft_memset

_ft_memset:
	cmp rdi, 0
	jle	error
	cmp rsi, 0
	jle error
	cmp rdx, 0
	jle	error
	push rdi
	mov	rax, rsi
	mov rcx, rdx
	cld
	rep stosb
	pop rdi
	mov rax, rdi
	ret

error:
	mov rax, rdi
	ret
