
addi x10, x0, 0x20
addi x15, x0, 2
addi x14, x0, 0
addi x17, x0, 0
addi x28, x0, 0
addi x29, x0, 0
addi x30, x0, 0
addi x31, x0, 0
# inicializando
jal x11, gets
addi x14, x14, 1 # count
addi x17, x0, 0
gets:
  lb   x12, 1025(x0)
  sb   x12, 1024(x0)
  beq  x12, x10, next
  addi x17, x17, 1
  addi x12, x12, -48 # p->decimal
  add  x16, x0, x12
  bge  x0, x5, label1
  bge  x0, x6, label2
  bge  x0, x7, label3
label1:
  add x5, x0, x16
  addi x16, x0, -48# beq x0, x0, gets
  bne x16, x5, gets
  addi x17, x17, -1
  addi x5, x0, 0
  beq x14, x15, next
label2:
  add x6, x0, x16
  addi x16, x0, -48

  bne x16, x6, gets
  addi x17, x17, -1
  addi x6, x0, 0
  beq x14, x15, next
label3:
  add  x7, x0, x16
  addi x16, x0, -48
  bne x16, x7, gets
  addi x17, x17, -1
  addi x7, x0, 0
  beq x14, x15, next
next:
   addi x12, x0, 3
   beq x17,x12, reg_one
   addi x12, x0, 2
   addi x31, x0, 0
   beq x17, x12, logica_dois
   beq x0, x0, label4
logica_dois:
   addi x12, x0, 4
   addi x31, x31, 1
   add x5, x5, x5
   bne x31, x12, logica_dois
   beq x0, x0, label4
reg_one:
   addi x12, x0, 8
   addi x31, x31, 1
   add x5, x5, x5
   bne x31, x12, reg_one
   addi x31, x0, 0
reg_dois:
   addi x12, x0, 4
   addi x31,x31, 1
   add x6, x6, x6
   bne x31, x12, reg_dois
label4:
   bge x0, x28, aloca_reg1
   bge x0, x29, aloca_reg2
   bge x0, x30, aloca_reg3
aloca_reg1:
   addi x16, x0, 1
   beq x14, x16, aloca_reg2
   addi x16, x0, 2
   beq x14, x16, aloca_reg2
   add x28, x0, x5
   add x28, x28, x6
   add x28, x28, x7
   beq x0, x0, ENTER
aloca_reg2:
   addi x16, x0, 2
   beq x14, x16, aloca_reg3
   add x29, x0, x5
   add x29, x29, x6
   add x29, x29, x7
   beq x0, x0, ENTER
aloca_reg3:
   add x30, x0, x5
   add x30, x30, x6
   add x30, x30, x7
   addi x31, x0, 0
   beq x0, x0, proximo   
ENTER:
   addi x31, x0, 0
   addi x5, x0, 0
   addi x6, x0, 0
   addi x7, x0, 0
   xor x12, x12, x12
   jalr x13, 0(x11)
proximo:
 
   addi x5, x0, 0x0
   addi x6, x0, 0x64
   addi x7, x0, 0x23
  
   bge   x28, x5, continua
   addi x31, x0, 0
   beq x0, x0, sair
continua:
   beq  x29, x6, last_verifc
   beq x0, x0, sec_verifc
sec_verifc:
   blt x29, x6, last_verifc
   addi x31, x0, 0
   beq x0, x0, sair
last_verifc:
   bge x30, x7, finaly
   addi x31, x0, 0
   beq x0, x0, sair
finaly:
   beq x30, x7, zerar
   addi x31, x0, 1
   beq x0, x0, sair 
zerar:
   addi x31, x0, 0 
sair:
    halt





