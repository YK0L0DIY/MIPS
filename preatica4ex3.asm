	.data
S:	.asciiz "hello"
	
	.text
	
main:
	add $t2,$zero,$zero
	lui $t6,0x0000
	ori $t6,0x0060
	lui $t7,0x0000
	ori $t7,0x007b
	la $t1,S
loop:	lb $t0,0($t1)
	beq $t0,$zero,FIM
	addi $t1,$t1,1
	addi $t2,$t2,1
	
	slt $t3,$t0,$t7
	slt $t4,$t6,$t0
	
	beq $t3,$zero,loop
	nop
	beq $t4,$zero,loop
	nop
	
	subi $t0,$t0,32
	sb $t0,-1($t1)
	
	j loop
	nop
	
FIM:	