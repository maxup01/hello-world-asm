.section __TEXT, __cstring

msg:    .ascii "Hello, World!\n"

.global _main
.align 2

_main: 
        svc 0x80
