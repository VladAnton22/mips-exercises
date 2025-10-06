.data
newline: .asciiz "\n"
A_LABEL: .asciiz "A= "
B_LABEL: .asciiz "B= "
AND_label: .asciiz "AND = "
OR_label: .asciiz "OR  = "
XOR_label: .asciiz "XOR = "
NOR_label: .asciiz "NOR = "

.text
.main
	# Initialize values
	li $t0, 0b11001100101010101010101011110000
    	li $t1, 0b10101010111100001111000000001111
    	
    	# Perform Operations
    	and $t2, $t0, $t1
    	or  $t3, $t0, $t1
    	xor $t4, $t0, $t1
    	nor $t5, $t0, $t1
    	
    	# Print values
    	
    	
# Print values in binary
print_binary:
	li $t6, 32
	li $t7, 0x80000000
print_loop:
	