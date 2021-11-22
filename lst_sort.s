section .text
    global _lst_sort
    extern _malloc

_lst_sort:
        push rcx
        push rdx
        push rax
        push rdi
        mov rdi, 16
        call _malloc
        cmp rax, 0
        je return
        mov rdx, rax
        call _malloc
        cmp rax, 0
        je return
        pop rdi
        mov rdx, [rdi]
        mov rcx, rsi
    lp1:
        cmp rdx, 0
        je return
        mov rax, [rdi]
    lp2:
        cmp [rax+8], 0
        je lp1
        push rax
        mov rdi, [rax]
        mov rsi, [rax + 8]
        mov rsi, [rsi]
        call rcx
        cmp rax, 0
        je swap
    sh:
        pop rax
        mov rax, [rax+8]
        jmp lp2
    return: 
        pop rdi
        pop rax
        pop rdx
        pop rcx
        ret
    swap:
        push r8
        push r12
        mov r8, [rax]
        mov r12, [rax + 8]
        mov r12, [r12]
        mov [rax], r12
        mov r12, r8
        pop r12
        pop r8
        jmp sh