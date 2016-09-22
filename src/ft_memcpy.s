
section .text
	global _ft_memcpy

_ft_memcpy:
	cmp	rdi, 0
	jle error
	cmp rsi, 0
	jle error
	cmp rdx, 0
	push rdi
	mov rcx, rdx
	cld
	rep movsb
	pop rdi
	mov rax, rdi
	ret

error:
	mov rax, rdi
	ret
