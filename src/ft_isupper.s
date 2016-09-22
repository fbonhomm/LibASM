
section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 0
	jle error
	cmp rdi, 'A'
	jl  error
	cmp rdi, 'Z'
	jg  error     
	mov rax, 1
	ret

error:
	mov rax , 0
	ret
