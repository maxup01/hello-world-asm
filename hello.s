.section __TEXT, __cstring

msg:    .ascii "Hello, World!\n"
len = . - msg

.text
.global _main
.align 2

_main:
        mov x0, #1
        adrp x1, msg@PAGE
        add x1, x1, msg@PAGEOFF
        mov x2, #len
        mov x16, #4
        svc 0x80

        mov x0, #0
        mov x16, #1
        svc 0x80
