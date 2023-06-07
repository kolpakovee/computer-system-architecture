	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%c => %d\n"            #строка-формат для вывода в функции print
.LC1:
	.string	"%d"                    #строка-формат для вывода в функции print
	.text
	.globl	print
	.type	print, @function
print:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	mov	DWORD PTR -8[rbp], 0
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	cmp	DWORD PTR -4[rbp], 31
	jle	.L3
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -8[rbp], 1
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L4
	mov	eax, DWORD PTR -8[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print, .-print
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	r11, -999424[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0                  
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 1120
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdx, -1000528[rbp]                 #хранение counts[]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
	mov	DWORD PTR -1000536[rbp], 0         #хранение переменной i
.L6:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -1000532[rbp], eax
	mov	eax, DWORD PTR -1000536[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -1000536[rbp], edx
	mov	edx, DWORD PTR -1000532[rbp]
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], dl
	mov	eax, DWORD PTR -1000532[rbp]
	cdqe
	mov	eax, DWORD PTR -1000528[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -1000532[rbp]
	cdqe
	mov	DWORD PTR -1000528[rbp+rax*4], edx
	cmp	DWORD PTR -1000532[rbp], -1
	jne	.L6
	mov	eax, DWORD PTR -1000536[rbp]
	sub	eax, 1
	cdqe
	mov	BYTE PTR -1000016[rbp+rax], 0
	lea	rax, -1000528[rbp]
	mov	esi, 128
	mov	rdi, rax
	call	print
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
