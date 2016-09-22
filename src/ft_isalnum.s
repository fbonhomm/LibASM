
section .text
	global _ft_isalnum

_ft_isalnum:
	cmp	rdi, 0
	jle	error
	cmp rdi, '0'
	jl	error
	cmp	rdi, '9'
	jle	success
	cmp rdi, 'A'
	jl	error
	cmp	rdi, 'Z'
	jle success
	cmp rdi, 'a'
	jl	error
	cmp rdi, 'z'
	jle success
	jmp error

success:
	mov	rax, 1
	ret

error:
	mov	rax, 0
	ret
