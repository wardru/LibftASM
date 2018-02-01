global	_ft_isalpha

_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 0x41
	jl	_fail
	cmp rdi, 0x5A
	jle	_success
	cmp rdi, 0x61
	jl	_fail
	cmp rdi, 0x7A
	jle	_success
	jmp _fail

_success:
	mov rax, 0x1
	jmp _exit

_fail:
	xor rax, rax
	jmp _exit

_exit:
	mov rsp, rbp
	pop rbp
	ret
