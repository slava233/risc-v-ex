.globl sine

.section .data

var:
.align 8
.space 100

one:
.asciz "1"

.section .text

sine:
    lb a3, (a1)
    lb t1, (one)
    bne a3, t1, copy_input
    beq a3, t1, copy_one
    ret

copy_input:
    input_loop:
        lb t2, 0(a1)
        sb t2, 0(a2)
        addi a1, a1, 1
        addi a2, a2, 1
        bnez t2, input_loop
        ret

copy_one:
	la a1, one
    one_loop:
        lb t0, 0(a1)
        sb t0, 0(a2)
        addi a1, a1, 1
        addi a2, a2, 1
        bnez t0, one_loop
        ret
