	.data
S:	.asciiz "es feia"
	
	.text
	
main: 	
	add $t2,$zero,$zero
	la $t1,S
loop:	lb $t0,0($t1)
	beq $t0,$zero,FIM
	addi $t1,$t1,1
	addi $t2,$t2,1
	j loop
	
FIM:	