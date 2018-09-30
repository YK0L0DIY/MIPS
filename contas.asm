# recebe o ultimo valor da pilha e calcula o seu simetrico
# guardando o resultado no ultimo lugar da pilha

	addi $a0,$zero,-5

neg:
	sub $v0,$zero,$a0
	jr $ra
	sw $v0,0($s1)
	