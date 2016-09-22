%define MATCH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

section .data
hello:
	.string db "(null)", 10
	.len equ $ - hello.string

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0
	jle null
	push rdi
	call _ft_strlen
	mov rdx, rax
	pop rdi
	mov rsi, rdi
	mov rdi, STDOUT
	mov rax, MATCH_SYSCALL(WRITE)
	syscall
	mov rax, MATCH_SYSCALL(WRITE)
	mov	r11, 10
	push r11
	mov rsi, rsp
	mov rdi, 1
	mov	rdx, 1
	syscall
	pop r11
	mov rax, 10
	ret

null:
	lea rsi, [rel hello.string]
	mov rdi, 1
	mov rdx, hello.len
	mov rax, MATCH_SYSCALL(WRITE)
	syscall
	mov rax, 10
	ret
