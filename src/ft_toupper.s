
section .text
	global _ft_toupper

_ft_toupper:
	cmp	rdi, 0
	jle	error
	cmp	rdi, 'a'
	jl	error
	cmp rdi, 'z'
	jg	error
	sub	rdi, 32
	mov rax, rdi
	ret

error:
	mov rax, rdi
	ret
