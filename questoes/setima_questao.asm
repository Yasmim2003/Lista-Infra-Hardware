addi x10, x0, 0
sb x10, 1030(x0) # inicializando A0 como endereço de leitura
addi x12, x0, 0

addi x5, x0, 0xcc
addi x6, x0, 0x132
addi x7, x0, 0x199
addi x28, x0, 0x1ff
addi x29, x0, 0x265

    lh x11, 1031(x0)
loop:
	
    blt x11, x5, vm_esq
    beq x11, x5, vm_esq
    blt x11, x6, am_esq
    beq x11, x6, am_esq
    blt x11, x7, am_dir
    beq x11, x7, am_dir
    blt x11, x28,vd_esq
    beq x11, x28, vd_esq
    blt x11, x29, vd_dir
    beq x11, x29, vd_dir
    beq x0, x0, vm_dir 
vm_esq:
    addi x13, x0, 3
    sb x13, 1033(x0)
    addi x13, x0, 255
    sb x13, 1034(x0)
    sb x12, 1034(x0)
    lh x11, 1031(x0)
    beq x0, x0, loop
am_esq:
    addi x13, x0, 5
    sb x13, 1033(x0)
    addi x13, x0, 255
	sb x13, 1034(x0)
	sb x12, 1034(x0)
	lh x11, 1031(x0)
	beq x0, x0, loop
am_dir:
	addi x13, x0, 10
    sb x13, 1033(x0)
	addi x13, x0, 255
	sb x13, 1034(x0)
	sb x12, 1034(x0)
    lh x11, 1031(x0)
	beq x0, x0, loop
vd_esq:
	addi x13, x0, 6
	sb x13, 1033(x0)
	addi x13, x0, 255
	sb x13, 1034(x0)
	sb x12, 1034(x0)
    lh x11, 1031(x0)
    beq x0, x0, loop
vd_dir:
	addi x13, x0, 11
	sb x13, 1033(x0)
	addi x13, x0, 255
    sb x13, 1034(x0)
	sb x12, 1034(x0)
    lh x11, 1031(x0)
	beq x0, x0, loop
vm_dir:
    addi x13, x0, 9
	sb x13, 1033(x0)
	addi x13, x0, 255
	sb x13, 1034(x0)
	sb x12, 1034(x0)
	lh x11, 1031(x0)
    beq x0, x0, loop
	

