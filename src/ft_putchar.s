%define MATCH_SYSCALL(nb)	0x2000000 | nb
%define WRITE				4

section .text
	global _ft_putchar

_ft_putchar:
	cmp rdi, 0
	jle error
	cmp rdi, 10
	je  newline
	push rdi
	mov rsi, rsp
	mov rdi, 1
	mov rdx, 1
	mov rax, MATCH_SYSCALL(WRITE)
	syscall
	pop rdi
	ret

newline:
	mov rdi, 10
	push rdi
	mov rsi, rsp
	mov rdi, 1
	mov rdx, 1
	mov rax, MATCH_SYSCALL(WRITE)
	syscall
	pop rdi
	ret

error:
	mov rax, 0
	ret
