.data
numbers: .word 7, 6
result: .word 0

.text 
main:
	la $t0, numbers		# load address
	lw $t1, 0($t0)		# load number1 into register
	lw $t2, 4($t0)		# load number2 into register
	add $t3, $t1, $t2
	sw $t3, result		# save result into an address
	
	li $v0, 1
	lw $a0, result
	syscall
	
	li $v0, 10		#exit
	syscall