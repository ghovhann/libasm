
section .text
    global _ft_strlen


_ft_strlen:  
        xor rax, rax
    lp:
        cmp byte [rdi + rax], 0x0
        je done
        inc rax
        jmp lp
    done:
        ret
