section .text
    global _lst_del_if
    extern _malloc
    extern _free

_lst_del_if:
        push rax
        push rdi
        push r8
        mov rdi, 16
        call _malloc
        cmp rax, 0
        je return
        mov r8, rax
        call _malloc
        cmp rax, 0
        je return
        pop rdi
        mov rax, [rdi]
    lp:
        cmp rax, 0
        je next
        cmp [rax + 8], 0
        je next
        push rdi
        mov rdi, [rax+8]
        mov rdi, [rdi]
        push rax
        call rdx
        pop rdi
        cmp rax, 0
        je del
        pop rax
        mov rax, [rax + 8]
        jmp lp
    next:
        mov rax, [rdi]
        cmp rax, 0
        je return
        push rdi
        mov rdi, [rax]
        push rax
        call rdx
        pop rdi
        cmp rax, 0
        jne return
        pop rax
        push r12
        mov r12, [rax+8]
        mov [rdi], r12
        push rdi
        mov rdi, [rax]
        call rcx
        mov rdi, rax
        call _free
        pop rdi
    return: 
        pop r12
        pop r8
        pop rax
        pop rdi
        ret
    del:
        mov r8, [rax+8]
        mov r12, [rax + 8]
        mov r12, [r12 + 8]
        mov [rax + 8], r12
        push rdi
        mov rdi, [r8]
        call rcx
        mov rdi, r8
        call _free
        pop rdi
        jmp return