.globl sine

default_answer = 0x312d

.text
# if you need some data, put it here

.section .text

# Sine
#   Params
#	a1 -- input buffer will contain string with the argument
#	a2 -- output string buffer for the string result
sine:
	# implement here
	
	li	a3, default_answer
	sw	a3, 0(a2)


	ret
	
