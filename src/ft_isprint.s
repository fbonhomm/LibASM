
section .text
	global _ft_isprint

_ft_isprint:
	cmp	rdi, 32
	jl	error
	cmp rdi, 126
	jg	error
	mov rax, 1
	ret

error:
	mov rax, 0
	ret
