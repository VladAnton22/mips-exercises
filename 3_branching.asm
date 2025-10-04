.data
prompt: .asciiz "Type in a number: "
user_input: .word 0
evenmsg: .asciiz "Even"
oddmsg: .asciiz "Odd"

.text
main:
	li $v0, 4		# print prompt
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall			# read integer
	move $t0, $v0		# move result to $t0
	li $t1, 2
	
	div $t0, $t1		# divide by 2
	mfhi $t2		# $t2 = remainder
	
	beq $t2, $zero, even	# check if there is no remainder
odd:	li $v0,  4		# else block (for printing odd)
	la $a0, oddmsg
	syscall
	j endif			# skip past "even" block if odd
even:	li $v0, 4		# if block (for printing even)
	la $a0, evenmsg		
	syscall
endif:
	# Exit
	li $v0, 10
	syscall