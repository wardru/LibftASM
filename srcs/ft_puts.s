global	_ft_puts
extern	ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	and rdi, rdi
	je	_null
	mov rsi, rdi
	call ft_strlen
	mov rdi, 0x1
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	cmp rax, -1
	je _exit
	mov rax, 0x2000004
	lea rsi, [rel endline]
	mov rdx, 0x1
	syscall
	jmp _exit

_null:
	mov rax, 0x2000004
	mov rdi, 0x1
	lea rsi, [rel null]
	mov rdx, 0x7
	syscall
	jmp	_exit

_exit:
	mov rsp, rbp
	pop rbp
	ret

section .data
endline	db 0xa
null	db "(null)", 0xa
