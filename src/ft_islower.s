
section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 0
	jle error
	cmp rdi, 'a'
	jl  error
	cmp rdi, 'z'
	jg  error
	mov rax, 1
	ret

error:
	mov rax , 0
	ret
