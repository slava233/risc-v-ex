# System calls numbers

exit 	= 93
write 	= 64
read 	= 63 


.section .data 

hello:  .asciz "Hello, World!\n"
  
size =  .-hello

.section .text 

.globl _start

_start:     

	li	a0, 1
	la	a1, hello
	li	a2, size
	li	a7, write
	ecall

	li	a0, 0
	li	a7, exit
	ecall
