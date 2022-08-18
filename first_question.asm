lw x10, v1
lw x11, v2
add x12, x0,x10
beq x11, x12, label1
sub x12, x10, x11
beq x0, x0, sair
label1: sub x12, x11,x10
sair:
halt
v1: .word 0x10
v2: .word 0x10


