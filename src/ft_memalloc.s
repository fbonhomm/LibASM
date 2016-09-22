
section .text
	global _ft_memalloc
	extern _malloc

_ft_memalloc:
	cmp rdi, 0
	jle error
	push rdi
	mov rax, 0
	call _malloc
	pop rdi
	ret

error:
	mov rax, 0
	ret
