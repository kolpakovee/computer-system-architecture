	.file	"part2_e.c"
	.intel_syntax noprefix
	.text
	.globl	factorial
	.type	factorial, @function
factorial:
	endbr64
	movsd	xmm1, QWORD PTR .LC0[rip]           #use register xmm1 instead of QWORD PTR -24[rbp]
	xorps	xmm2, xmm2
	movaps	xmm3, xmm1
.L2:
	comisd	xmm0, xmm2
	jbe	.L5
	mulsd	xmm1, xmm0      #use register xmm1
	subsd	xmm0, xmm3      #use register xmm3
	jmp	.L2
.L5:
	movaps	xmm0, xmm1
	ret
	.size	factorial, .-factorial
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248

