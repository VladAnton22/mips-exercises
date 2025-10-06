.data
newline: .asciiz "\n"
A_label: .asciiz "A = "
B_label: .asciiz "B = "
AND_label: .asciiz "AND = "
OR_label: .asciiz "OR  = "
XOR_label: .asciiz "XOR = "
NOR_label: .asciiz "NOR = "

.text
.globl main
main:
	# Initialize values
	li $t0, 0xCCAABAF0	# hex for 11001100101010101010101011110000
    	li $t1, 0xAAF0F00F	# hex for 10101010111100001111000000001111
    	
    	# Perform Operations
    	and $t2, $t0, $t1
    	or  $t3, $t0, $t1
    	xor $t4, $t0, $t1
    	nor $t5, $t0, $t1
    	
    	# Print results
    	la $a0, A_label
    	li $v0, 4
    	syscall
    	move $a0, $t0
    	jal print_binary
    	
    	la $a0, B_label
    	li $v0, 4
    	syscall
    	move $a0, $t1
    	jal print_binary
    	
    	la $a0, AND_label
    	li $v0, 4
    	syscall
    	move $a0, $t2
    	jal print_binary
    	
    	la $a0, OR_label
    	li $v0, 4
    	syscall
    	move $a0, $t3
    	jal print_binary
    	
    	la $a0, XOR_label
    	li $v0, 4
    	syscall
    	move $a0, $t4
    	jal print_binary
    	
    	la $a0, NOR_label
    	li $v0, 4
    	syscall
    	move $a0, $t5
    	jal print_binary
    	
    	li $v0, 10   # syscall 10 = exit
	syscall
    	
# Print values in binary
print_binary:
	li $t6, 32
	li $t7, 0x80000000
	move $t9, $a0
print_loop:
	and $t8, $t9, $t7
	beq $t8, $zero, print_zero
	li $a0, '1'
	j print_char
print_zero:
	li $a0, '0'
print_char:
	li $v0, 11
	syscall
	
	srl $t7, $t7, 1
	addi $t6, $t6, -1
	bgtz $t6, print_loop
	
	li $v0, 4
    	la $a0, newline
    	syscall
    	jr $ra

	
