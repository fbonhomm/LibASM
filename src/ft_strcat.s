
section .text
	global _ft_strcat

_ft_strcat:
	cmp rdi, 0
	jle error
	cmp rsi, 0
	jle error
	push rdi
	jmp len

len:
	cmp [rdi], byte 0
	je suite
	inc rdi
	jmp len

suite:
	cmp [rsi], byte 0
	je	exit
	mov cl, [rsi]
	mov [rdi], cl
	inc rdi
	inc rsi
	jmp suite

error:
	mov rax, 0
	ret

exit:
	mov byte [rdi], 0
	pop rdi
	mov rax, rdi
	ret
