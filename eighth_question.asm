addi x17, x0, 0

loop:
	lb x12, 1025(x0)
	addi x17, x17, 1
	beq x12, x0, sair
analise:
    addi x13, x0, 1
    beq x17, x13, bit_1
    addi x13, x0, 2
    beq x17, x13, bit_2
    addi x13, x0, 3
    beq x17, x13, bit_3
	addi x13, x0, 4
    beq x13, x17, bit_4
    addi x17, x0, 0
    beq x0, x0, sair
# falta alocar os valores
# multiplica e soma para alocar
sair:
	halt 
