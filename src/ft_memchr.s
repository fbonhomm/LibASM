
section .text
	global _ft_memchr

_ft_memchr:
	cmp rdi, 0
	jle error
	cmp rsi, 0
	jle error
	cmp rdx, 0
	jle error
	mov rax, rsi
	mov rcx, rdx
	jmp boucle

boucle:
	cld
	repne scasb
	jne error
	dec rdi
	mov rax, rdi
	ret

end:
	mov rax, rdi
	ret

error:
	mov rax, 0
	ret
