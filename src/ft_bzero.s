
section .text
	global _ft_bzero

_ft_bzero:
	cmp		rdi, 0
	jle		error
	cmp		rsi, 0
	jle		error
	push	rdi
	jmp		boucle

boucle:
	cmp		rsi, 0
	je		exit
	mov		[rdi], byte 0
	inc		rdi
	dec		rsi
	jmp		boucle

exit:
	pop		rdi
	mov		rax, rdi
	ret

error:
	mov		rax, 0
	ret
