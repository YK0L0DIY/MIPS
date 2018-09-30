.data

.text
.globl main


fact:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	#add a0
	
	addi $t0,$zero,1
	beq $a0,$t0,end
	nop

loop:	jal fact
	addi $a0,$a0,-1
	#repor a0
	mult $a0,$v0
	mflo $v0
	lw $ra,0($sp)
	jr $ra
	nop	
	
end:
	addi $v0,$zero,1
	lw $ra,0($sp)
	jr $ra
	addi $sp,$sp,4


main:



