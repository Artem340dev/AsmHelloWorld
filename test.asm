format ELF64
public _start

msg db "Hello, World!", 0xA
len = $-msg

_start:
    call print
    call exit

print:
    mov rax, 4
    mov rbx, 1
    mov rcx, msg
    mov rdx, len
    int 0x80
    ret

exit:
    mov rax, 1
    mov rbx, 0
    int 0x80
