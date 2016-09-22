%define MATCH_SYSCALL(nb)   0x2000000 | nb
%define STDOUT              1
%define WRITE               4
%define READ				3
%define SIZE				255

segment .bss
	buf		resb SIZE

section .text
	global _ft_cat

_ft_cat:
	cmp rdi, -1
	jle error
	cmp rdi, 0
	jle error
	push rdi
	mov rdx, SIZE
	lea  rsi, [rel buf]
	mov rax, MATCH_SYSCALL(READ)
	syscall
	jc end
	cmp rax, 0
	jle	end
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MATCH_SYSCALL(WRITE)
	syscall
	pop rdi
	cmp rax, -1
	jle  error
	jmp _ft_cat

error:
	ret

end:
	pop rdi
	ret
