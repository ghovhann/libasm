  section .text
	global _ft_strcpy

_ft_strcpy:
	    push rdx 
	    push rcx 
	    mov rdx, 0x0
	    mov rcx, 0x0
	    cmp rsi, byte 0x0
	    je _is_null

	_start_loop:
		mov dl, byte [rsi + rcx] 
		mov byte [rdi + rcx], dl 
		cmp [rsi + rcx], byte 0x0 
		je _end_loop 
		inc rcx
		jmp _start_loop 

	_end_loop:
	    mov rax, rdi 
	    pop rdx
	    pop rcx
	    ret

    _is_null:
	    mov rax, rsi
	    pop rdx
	    pop rcx
	    ret
