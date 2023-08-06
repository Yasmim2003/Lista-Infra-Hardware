addi x5, x0, 0
addi x6, x0, 0
addi x16, x0, 0 

gets:
	lb x10, 1025(x0)
	sb x10, 1024(x0)
	beq x10, x0, sair
	addi x10, x10, -48
	add x11, x0, x10
	add x12, x0, x10

# zerar x_12 no primeiro incremento 
acumula_x15:

    addi x5, x0, 0
    addi x11, x11, -1
    addi x15, x0, 0
    addi x16, x0, 0
    add x12, x0, x10
    beq x0, x0, fat

# decrementa valor fat (fat !)
loop:
    addi x5, x0, 0
    addi x11, x11, -1
    add x15, x0, x16
    addi x12, x0, 0
    # beq x11, x6, sair
# fatorial de cada digito
# loop para simular multipli
   
fat:
    add x12, x12, x15
    addi x5, x5, 1
    beq x5, x11, acumula
    blt x5, x11, fat

# acumula fatorial
acumula:
     add x16, x16, x12
     blt x6, x11, loop
     beq x11, x6, gets

# conversao hex in ASCII
sair: 
    addi x12, x0, 0
    addi x13, x0, 10
divisao:
    blt x15, x13, output
    addi x12, x12, 1
    addi x15, x15, -10
    beq x0, x0, divisao
output:
    addi x12, x12, 48
    addi x15, x15, 48
    sb x12, 1024(x0)
    sb x15, 1024(x0)
    halt 


 
  
  











