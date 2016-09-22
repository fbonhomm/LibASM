
section .text
	global _ft_isdigit

_ft_isdigit:
	cmp	rdi, 0
	jle	error
	cmp	rdi, '0'
	jl	error
	cmp rdi, '9'
	jg	error
	mov	rax, 1
	ret

error:
	mov rax, 0
	ret
