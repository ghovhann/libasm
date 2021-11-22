

section .text
    global _ft_read

_ft_read:
       cmp rsi, byte 0x0
       je _err
       mov rax, 0x2000003
       syscall
       jc _err
       ret

_err:
        mov rax, -1
        ret
