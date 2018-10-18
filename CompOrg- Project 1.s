.data	# Data declaration section
at_output:	.word 64 #@ address is passed here

.text			#Aseembly language instruction
.globl main

main:	#Code starts off here
	lw $a0, at_output
	li $v0, 11
	syscall		#prints @ 


	jr $ra 		#return statement
