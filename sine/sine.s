.globl sine

.section .data

var:
.align 8
.space 100

.section .text

sine:
    lb t1, (a1)
    li t2, 49
    bne t1, t2, copy_input
    sb t2, (a2)
    ret

copy_input:
    lb t0, (a1)
    sb t0, (a2)
    addi a1, a1, 1
    addi a2, a2, 1
    bnez t0, copy_input
    ret
