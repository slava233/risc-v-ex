exit = 93

.section .data

memory: 
	.asciz "1" 
	.space 10

.section .text

.globl _start
_start:

	li	a2, 1
	la	a3, memory

while:	
	lw	a1, 0(a3)
	sub	a1, a1, a2
	sw	a1, 0(a3)

	beq	a1, a2, end
	j	while

end:	
	li	a7, exit
	ecall	




