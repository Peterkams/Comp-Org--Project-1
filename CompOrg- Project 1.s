.data	# Data declaration section
at_output:	.word 64 #@ address is passed here

.text			#Aseembly language instruction
.globl main

main:	#Code starts off here
	lw $a0, at_output
	li $v0, 11
	syscall		#prints @ 

	
	li $v0, 1	#updates to print using the integer system call
	addi $a0, $a0, -64 
	syscall		#0 is printed

	addi $a0, $a0, 2 #2 is calculated
	syscall		#2 is printed

	addi $a0, $a0, 6 #8 is calculated
  	syscall		#8 is printed

	addi $a0, $a0, -4 #4 is calculated
	syscall		#4 is printed



	jr $ra 		#return statement
