
section .text
	global _ft_isascii

_ft_isascii:
	cmp	rdi, 0
	jl	error
	cmp rdi, 127
	jg	error
	mov rax, 1
	ret

error:
	mov rax, 0
	ret
