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

#--------------------------------	
			
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
	
#-------------------------------
	
log2:
	move $at,$a1
	addi $t1,$zero,1
	add $v0,$zero,$zero
	
liop:
	addi $v0,$v0,1
	srl $at,$at,1	
	bne $at,$t1,liop
	nop
	jr $ra
	nop

#------------------------------

func:
	addi $sp,$sp,-12
	sw $ra,0($sp)
	sw $a0,4($sp)
			
	jal exp2
	nop
	move $a0,$v0
	
	jal log2
	nop
	
	sw $v0,8($sp)
	
	lw $a0,4($sp)
	jal fact
	nop
	
	lw $t0,8($sp)
	add $v0,$v0,$t0
	
	lw $ra,0($sp)
	jr $ra
	addi $sp,$sp,12


#-----------------------------

main:
	addi $a1,$zero,6
	jal func
	nop
	