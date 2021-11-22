section .text
    global _lst_size

_lst_size:
        mov rsi, rdi
        xor rax, rax
        jmp count
    count:
        cmp rdi, 0
        je return
        mov rdi, [rdi + 8]
        inc rax
        jmp count
    return:
        mov rdi, rsi
        ret