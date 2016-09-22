
section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

_ft_strdup:
	push rdi
	mov rax, 0
	cmp rdi, 0
	je error
	call _ft_strlen
	inc rax
	mov r12, rax
	mov rdi, r12
	call _malloc
	jnc copy
	jmp error

copy:
	mov rdi, rax
	pop rsi
	mov rdx, r12
	call _ft_memcpy

exit:
	ret

error:
	pop rdi
	mov rax, 0
	jmp exit
