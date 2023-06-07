	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%c => %d\n"
.LC1:
	.string	"%d"
	.text
	.globl	print
	.type	print, @function
print:                              #функция print
	endbr64
	push	rbp                     #сохранение rbp на стек
	mov	rbp, rsp                    #rbp := rsp
	sub	rsp, 32                     #rbp -= 32
	mov	r15, rdi     #указывает где на стеке разместить 1-й аргумент функции
	mov	r14d, esi     #указывает где на стеке разместить 2-й аргумент функции
	mov	r12d, 0        #count := 0
	mov	r13d, 0        #i := 0 (переменная цикла)
	jmp	.L2                         #переход к .L2
.L4:                                #тело цикла
	mov	eax, r13d      #eax := переменная цикла
	cdqe
	lea	rdx, 0[0+rax*4]             #rdx := array[i]
	mov	rax, r15
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	cmp	r13d, 31       #сравнение i и 31
	jle	.L3                         #если i <= 31, переход в .L3
	mov	eax, r13d
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, r15
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, r13d
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT              #вызов функции printf
	add	r12d, 1        #count += 1
.L3:
	add	r13d, 1        #i += 1
.L2:                                #цикл for
	mov	eax, r13d
	cmp	eax, r14d     #сравнение i и size
	jl	.L4                         #если i < size, то переходим .L4
	mov	eax, r12d
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT              #вызов функции printf
	nop
	leave                           #очистка стека
	ret                             #возврат в вызывающую функцию
	.size	print, .-print
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp                     #сохранение rbp на стек
	mov	rbp, rsp                    #rbp := rsp
	lea	r11, -999424[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 1104
	lea	rdx, -528[rbp]          # хранение counts[]
	mov	eax, 0
	mov	ecx, 64
	mov	rdi, rdx
	rep stosq
	mov	r12d, 0    # ханение переменной i = 0
.L6:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	r13d, eax
	mov	eax, r12d  #eax := i
	lea	edx, 1[rax]
	mov	r12d, edx  #i := edx
	mov	edx, r13d
	cdqe
	mov	BYTE PTR -1000528[rbp+rax], dl  #str[i++] := ch
	mov	eax, r13d          #eax := ch
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, r13d          #eax := ch
	cdqe
	mov	DWORD PTR -528[rbp+rax*4], edx  #получение counts[ch]
	cmp	r13d, -1           #сравнение ch и -1
	jne	.L6                             #если ch != -1, переходим к .L6
	mov	eax, r12d          #eax := i
	sub	eax, 1                          #i -= 1
	cdqe
	mov	BYTE PTR -1000528[rbp+rax], 0   #str[i-1] := 0
	lea	rax, -528[rbp]                  #rax := counts
	mov	esi, 128                        #esi := 128
	mov	rdi, rax
	call	print                       #вызов функции print  с аргументами counts и 128
	mov	eax, 0                          #eax := 0
	leave                               #очистка стека
	ret                                 #возврат значения
#DWORD PTR -4[rbp] -> r12d
#DWORD PTR -8[rbp] -> r13d
#DWORD PTR -28[rbp] -> r14d
#QWORD PTR -24[rbp] -> r15
