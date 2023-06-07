	.file	"part1_e.c"
	.intel_syntax noprefix
	.text
	.globl	randomValue
	.type	randomValue, @function
randomValue:
	endbr64
	push	rax
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	divsd	xmm0, QWORD PTR .LC0[rip]
	mulsd	xmm0, QWORD PTR .LC1[rip]
	subsd	xmm0, QWORD PTR .LC2[rip]
	pop	rdx
	ret
	.size	randomValue, .-randomValue
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%lf"
.LC5:
	.string	"r"
.LC6:
	.string	"Invalid input!"
.LC12:
	.string	"w"
.LC13:
	.string	"Result: %.50lf\n"
.LC15:
	.string	"Precision: %.20lf%%\n"
.LC16:
	.string	"Time: %lld ns\n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	endbr64
	push	r15                 #использование регистров
	push	r14                 #использование регистров
	push	r13                 #использование регистров
	push	r12                 #использование регистров
	mov	r12d, edi               #помещаем argc в регистр r12d вместо DWORD PTR -116[rbp]
	push	rbp
	push	rbx
	mov	rbx, rsi                #хранение парметра функции char** argv в регистре
	sub	rsp, 88
	cmp	edi, 2
	jne	.L4
	mov	rax, QWORD PTR 8[rsi]
	mov	al, BYTE PTR [rax]
	cmp	al, 49
	jne	.L5
	xor	eax, eax
	call	randomValue
	movsd	QWORD PTR 40[rsp], xmm0
	jmp	.L6
.L5:
	cmp	al, 50
	jne	.L7
	lea	rsi, 40[rsp]
	lea	rdi, .LC4[rip]
	xor	eax, eax
	call	__isoc99_scanf@PLT
	jmp	.L6
.L4:
	cmp	edi, 4
	jne	.L7
	mov	rax, QWORD PTR 8[rsi]
	cmp	BYTE PTR [rax], 51
	jne	.L7
	mov	rdi, QWORD PTR 16[rsi]
	lea	rsi, .LC5[rip]
	call	fopen@PLT
	lea	rdx, 40[rsp]
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	xor	eax, eax
	call	__isoc99_fscanf@PLT
	jmp	.L6
.L7:
	lea	rsi, .LC6[rip]
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
	jmp	.L8
.L6:
	lea	rsi, 48[rsp]
	mov	edi, 1
	mov	ebp, 1000
	call	clock_gettime@PLT
.L11:
	xorps	xmm1, xmm1
	movaps	xmm2, xmm1
.L10:
	movsd	xmm0, QWORD PTR .LC7[rip]
	movsd	QWORD PTR 24[rsp], xmm2
	movsd	QWORD PTR 16[rsp], xmm1
	call	pow@PLT
	movsd	xmm1, QWORD PTR 16[rsp]
	movsd	QWORD PTR 8[rsp], xmm0
	movsd	xmm0, QWORD PTR 40[rsp]
	call	pow@PLT
	mulsd	xmm0, QWORD PTR 8[rsp]
	movsd	xmm1, QWORD PTR 16[rsp]
	movq	r13, xmm0                           #r13 := xmm0
	movaps	xmm0, xmm1
	call	factorial@PLT
	movsd	xmm2, QWORD PTR 24[rsp]
	movaps	xmm3, xmm0
	movq	xmm0, r13                           #xmm0 := r13
	divsd	xmm0, xmm3
	movsd	QWORD PTR 8[rsp], xmm2
	addsd	xmm2, xmm0
	comisd	xmm2, QWORD PTR .LC8[rip]
	ja	.L9
	andps	xmm0, XMMWORD PTR .LC10[rip]
	xorps	xmm3, xmm3
	movsd	xmm1, QWORD PTR 16[rsp]
	addsd	xmm1, QWORD PTR .LC9[rip]
	comisd	xmm0, xmm3
	ja	.L10
	movsd	QWORD PTR 8[rsp], xmm2
.L9:
	dec	ebp
	jne	.L11
	lea	rsi, 64[rsp]
	mov	edi, 1
	lea	r15, .LC13[rip]                     #использование регистров
	call	clock_gettime@PLT
	cvtsi2sd	xmm0, QWORD PTR 64[rsp]
	cmp	r12d, 4                             #использование регистров
	movsd	xmm2, QWORD PTR .LC11[rip]
	cvtsi2sd	xmm1, QWORD PTR 72[rsp]
	lea	r14, .LC15[rip]                     #использование регистров
	lea	r12, .LC16[rip]                     #использование регистров
	mulsd	xmm0, xmm2
	addsd	xmm0, xmm1
	cvtsi2sd	xmm1, QWORD PTR 48[rsp]
	mulsd	xmm1, xmm2
	subsd	xmm0, xmm1
	cvtsi2sd	xmm1, QWORD PTR 56[rsp]
	subsd	xmm0, xmm1
	cvttsd2si	r13, xmm0
	jne	.L12
	mov	rdi, QWORD PTR 24[rbx]
	lea	rsi, .LC12[rip]
	call	fopen@PLT
	movsd	xmm0, QWORD PTR 8[rsp]
	mov	rdx, r15                            #rdx := r15
	mov	esi, 1
	mov	rdi, rax
	mov	rbp, rax
	mov	al, 1
	call	__fprintf_chk@PLT
	movsd	xmm1, QWORD PTR 40[rsp]
	xorps	xmm1, XMMWORD PTR .LC14[rip]
	movaps	xmm0, xmm1
	movsd	QWORD PTR 24[rsp], xmm1
	call	exp@PLT
	movsd	xmm1, QWORD PTR 24[rsp]
	movsd	QWORD PTR 16[rsp], xmm0
	movaps	xmm0, xmm1
	call	exp@PLT
	mov	rdx, r14                                #rdx := r14
	mov	rdi, rbp
	mov	esi, 1
	movaps	xmm1, xmm0
	movsd	xmm0, QWORD PTR 8[rsp]
	subsd	xmm0, QWORD PTR 16[rsp]
	mov	al, 1
	andps	xmm0, XMMWORD PTR .LC10[rip]
	divsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR .LC2[rip]
	call	__fprintf_chk@PLT
	mov	rcx, r13                                #rcx := r13
	mov	rdx, r12                                #использование регистров
	mov	esi, 1
	mov	rdi, rbp
	xor	eax, eax
	call	__fprintf_chk@PLT
	jmp	.L8
.L12:
	movsd	xmm0, QWORD PTR 8[rsp]
	mov	rsi, r15                                #rsi := r15
	mov	edi, 1
	mov	al, 1
	call	__printf_chk@PLT
	movsd	xmm1, QWORD PTR 40[rsp]
	xorps	xmm1, XMMWORD PTR .LC14[rip]
	movaps	xmm0, xmm1
	movsd	QWORD PTR 24[rsp], xmm1
	call	exp@PLT
	movsd	xmm1, QWORD PTR 24[rsp]
	movsd	QWORD PTR 16[rsp], xmm0
	movaps	xmm0, xmm1
	call	exp@PLT
	mov	rsi, r14                                #rsi := r14
	mov	edi, 1
	mov	al, 1
	movaps	xmm1, xmm0
	movsd	xmm0, QWORD PTR 8[rsp]
	subsd	xmm0, QWORD PTR 16[rsp]
	andps	xmm0, XMMWORD PTR .LC10[rip]
	divsd	xmm0, xmm1
	mulsd	xmm0, QWORD PTR .LC2[rip]
	call	__printf_chk@PLT
	mov	rdx, r13                                #rdx := r13
	mov	rsi, r12                                #использование регистров
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk@PLT
.L8:
	add	rsp, 88
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-4194304
	.long	1105199103
	.align 8
.LC1:
	.long	0
	.long	1079820288
	.align 8
.LC2:
	.long	0
	.long	1079574528
	.align 8
.LC7:
	.long	0
	.long	-1074790400
	.align 8
.LC8:
	.long	-1
	.long	2146435071
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	0
	.long	1104006501
	.section	.rodata.cst16
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
