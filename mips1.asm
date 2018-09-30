#addi $t0,$zero,3
#addi $t0,$t0,4
#addi $t0,$t0,5

#sll $t1,$t0,1
#addi $t1,$t1,1

#sll $t2,$t0,3
#add $t2,$2,$t0
#addi $t2,$t2,5

#addi $t3,$t0,-1

addi $t0,$zero,4
addi $t1,$zero,5

sll $t3,$t0,1
sub $t4,$t0,$t1
sll $t5,$t4,1
add $t5,$t5,$t4

add $t2,$t3,$t5