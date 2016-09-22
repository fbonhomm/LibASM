
section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 0
	jle error
	cmp rdi, 'A'
	jl	error
	cmp rdi, 'Z'
	jg	suite
	jmp	success

success:
	mov rax, 1
	ret

suite:
	cmp rdi, 'a'
	jl	error
	cmp rdi, 'z'
	jg	error
	mov rax, 1
	ret

error:
	mov rax, 0
	ret
