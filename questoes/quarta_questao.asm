addi x4, x0, 0x20
addi x11, x0, 0
# la x10, buffer
# O end de buffer eh mudado smpr
addi x10, x0, 0xa0
lb   x5,0(x10)
lb   x6,1(x10)
lb   x7,2(x10)
lb   x12,3(x10)
lb   x13,4(x10)
lb   x14,5(x10)
lb   x28,6(x10)
lb   x29,7(x10)
lb   x30,8(x10)
lb   x31,9(x10)

# load added
gets: 
lb x15, 1025(x0)
sb x15, 1024(x0)
beq x15, x0, sair

beq x5, x15,  somar
beq x6, x15,  somar
beq x7, x15,  somar
beq x12, x15, somar
beq x13, x15, somar
beq x14, x15, somar
beq x28, x15, somar
beq x29, x15, somar
beq x30, x15, somar
beq x31, x15, somar
beq x0, x0, gets
somar:
  addi x11, x11, 1
  beq x0, x0, gets
sair:
 addi x12, x0, 0
 addi x13, x0, 10
divisao:
 blt x11, x13, output
 addi x12, x12, 1
 addi x11, x11, -10
 beq x0, x0, divisao
output:
 addi x12, x12, 48
 addi x11, x11, 48
 sb x12, 1024(x0)
 sb x11, 1024(x0)
 halt   
# declaring vogals 
buffer: .string "AEIOUaeiou"


