.data

.text
.globl main
		

exp2:	
	move $at,$a1
	addi $v0,$zero,1
do:	sll $v0,$v0,1
	addi $at,$at,-1
	bne $at,$zero,do
	nop
		
	jr $ra
	nop
	
main:
	addi $sp,$sp,-4
	sw $ra,0($sp)
	addi $a1,$zero,3
	jal exp2
	nop
	lw $ra,0($sp)
	jr $ra
	addi $sp,$sp,4
	
	