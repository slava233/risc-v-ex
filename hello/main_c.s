# System calls numbers

exit 	= 93
write 	= 64
read 	= 63 


.section .data 

hello:  .asciz "Hello, World!\n"
  
size =  .-hello

.section .text 

.globl main

main:     

	la	a0, hello
	call	printf

	li	a7, exit	
	ecall
