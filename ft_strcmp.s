

section .text
    global _ft_strcmp  ;str1=rdi str2=rsi, ret=rax

_ft_strcmp:
        push rcx
        cmp rdi, 0x0
        je is_null
        cmp rsi, 0x0
        je is_null
        xor rcx, rcx
    lp:
        mov dl, byte [rsi + rcx]
        cmp byte [rdi + rcx], dl
        jl less
        jg great
        cmp byte [rdi + rcx], 0x0
        je equal
        inc rcx
        jne lp

    is_null:
        cmp rdi, rsi
        je equal
        jl less
        jg great

    equal:
        mov rax, 0
        pop rcx
        ret

    great:
        mov rax, 1
        pop rcx
        ret

    less:
        mov rax, -1
        pop rcx
        ret
