
section .text
	global _ft_tolower

_ft_tolower:
	cmp	rdi, 0;
	jle	error
	cmp rdi, 'A'
	jl  error
	cmp rdi, 'Z'
	jg  error
	add rdi, 32
	mov rax, rdi
	ret

error:
	mov rax, rdi
	ret
