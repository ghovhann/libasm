

section .text
    global _ft_write


_ft_write:
        cmp rsi, byte 0x0
        je _err
        mov rax, 0x2000004
        syscall
        jc _err
    _err:
        mov rax, -1
        ret
