
.section __TEXT,__text
.global _main
.extern _printf
.extern _exit   

_main:
    adrp    x0, helloworld@PAGE
    add     x0, x0, helloworld@PAGEOFF
    bl      _printf       

    mov     x0, #0         
    bl      _exit        

.section __TEXT,__cstring
helloworld:
    .asciz "helloworld!\n"
