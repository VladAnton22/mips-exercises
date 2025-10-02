.data
newline: .asciiz "\n"		#newline string
	
.text
main:
	li $t0, 16		# load number 1
	li $t1, 8		# load number 2
	
	add $t2, $t0, $t1	#add number 1 and 2
	li $v0, 1		#load syscall code for print integer
	move $a0, $t2		#move result
	syscall
	
	la $a0, newline     	# load address of newline
   	li $v0, 4           	# syscall code for print string
   	syscall
	
	sub $t2, $t0, $t1	#subtract number 1 and 2
	li $v0, 1
	move $a0, $t2
	syscall
	
	la $a0, newline     	# load address of newline
  	li $v0, 4           	# syscall code for print string
    	syscall

	mul $t2, $t0, $t1	#multiply number 1 and 2
	li $v0, 1
	move $a0, $t2
	syscall
	
	la $a0, newline    	# load address of newline
  	li $v0, 4           	# syscall code for print string
    	syscall	
	
	div $t2, $t0, $t1	# divide number 1 and 2
	li $v0, 1
	move $a0, $t2
	syscall
	
  	li $v0, 10		#syscall code for exit
  	syscall