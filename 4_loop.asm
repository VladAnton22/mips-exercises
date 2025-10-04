.text
.main:
	li $t0, 10
	li $t1, 1
	loop:
		li $v0, 1
		move $a0, $t1		# move the value to print in $a0 (HAVE TO USE MOVE, ONLY USE LW IF YOU HAVE THE MEMORY ADDRESS!!!)
		syscall
		addi $t1, $t1, 1
		addi $t0, $t0, -1
		bgtz $t0, loop		# if counter is greater than 0, loop back
		
	li $v0, 10
	syscall