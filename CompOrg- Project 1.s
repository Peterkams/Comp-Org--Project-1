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

	addi $a0, $a0, -4 #0 is calculated
	syscall		#0 is printed

	addi $a0, $a0, 6 #6 is calculated
	syscall		#6 is printed

	addi $a0, $a0, 0 #6 is calculated
	syscall		#6 is printed

	addi $a0, $a0, 3 #9 is calculated
	syscall		#9 is printed

	addi $a0, $a0, 1 #new line is calculated
	li $v0, 11	#updates to print using the character system call
	syscall		#new line is printed

	addi $a0, $a0, 65 #Letter K is calculated here
	syscall		#Letter K is printed

	addi $a0, $a0, 22 #Letter a is calculated here
	syscall		#Letter a is printed

	addi $a0, $a0, 12 #Letter m is calculated here
	syscall 	#Letter m is printed

	addi $a0, $a0, -1 #Letter l is calculated here
	syscall 	#Letter l is printed

	addi $a0, $a0, -7 #Letter e is calculated here
	syscall		#Letter e is printed here

	addi $a0, $a0, 18 #Letter w is calculater here
	syscall 	#Letter w is printed

	addi $a0, $a0, -18 #Letter e is calculated here
	syscall 	#Letter e is printed

	addi $a0, $a0, -2 #Letter c is calculated here
	syscall		#Letter c is printed
	
	addi $a0, $a0, 5 #Letter h is calculated here
	syscall		#Letter h is printed

	addi $a0, $a0, 1 #Letter i is calculated here
	syscall		#Letter i is printed

	addi $a0, $a0, -61 #, is calculated here to seperate last nd first name
	syscall		#, is printed

	addi $a0, $a0, -12 #space is calculated here
	syscall		#space is printed to seperate the names

	addi $a0, $a0, 48 #Letter P is calculated here
	syscall 	#Letter P is printed 



	jr $ra 		#return statement
