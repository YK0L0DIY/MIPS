.data

.text
.globl main

fact:	
	addi $v0,$v0,1
	move $at,$zero

loop:	addi $at,$at,1
	mult $v0,$at
	mflo $v0
	bne $at,$a1,loop
	nop
	jr $ra
	nop

main:
	addi $a1,$a1,5
	jal fact
	nop