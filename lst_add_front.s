section .text
    global _lst_add_front
    extern _malloc

_lst_add_front:
        push rsp
        push rdi
        push rsi
        mov rdi, 16
        xor rax, rax
        call _malloc
        pop rsi
        pop rdi
        cmp rax, 0
        je return
        mov [rax], rsi
        mov rcx, [rdi]
        mov [rax + 8], rcx
        mov [rdi], rax

    return:
        pop rsp
        ret