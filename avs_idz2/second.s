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
	mov	QWORD PTR -24[rbp], rdi     #указывает где на стеке разместить 1-й аргумент функции
	mov	DWORD PTR -28[rbp], esi     #указывает где на стеке разместить 2-й аргумент функции
	mov	DWORD PTR -4[rbp], 0        #count := 0
	mov	DWORD PTR -8[rbp], 0        #i := 0 (переменная цикла)
	jmp	.L2                         #переход к .L2
.L4:                                #тело цикла
	mov	eax, DWORD PTR -8[rbp]      #eax := переменная цикла
	cdqe
	lea	rdx, 0[0+rax*4]             #rdx := array[i]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	cmp	DWORD PTR -8[rbp], 31       #сравнение i и 31
	jle	.L3                         #если i <= 31, переход в .L3
	mov	eax, DWORD PTR -8[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -8[rbp]
	movsx	eax, al
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT              #вызов функции printf
	add	DWORD PTR -4[rbp], 1        #count += 1
.L3:
	add	DWORD PTR -8[rbp], 1        #i += 1
.L2:                                #цикл for
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -28[rbp]     #сравнение i и size
	jl	.L4                         #если i < size, то переходим .L4
	mov	eax, DWORD PTR -4[rbp]
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
	mov	DWORD PTR -4[rbp], 0    # ханение переменной i = 0
.L6:
	mov	rax, QWORD PTR stdin[rip]
	mov	rdi, rax
	call	fgetc@PLT
	mov	DWORD PTR -8[rbp], eax
	mov	eax, DWORD PTR -4[rbp]  #eax := i
	lea	edx, 1[rax]
	mov	DWORD PTR -4[rbp], edx  #i := edx
	mov	edx, DWORD PTR -8[rbp]
	cdqe
	mov	BYTE PTR -1000528[rbp+rax], dl  #str[i++] := ch
	mov	eax, DWORD PTR -8[rbp]          #eax := ch
	cdqe
	mov	eax, DWORD PTR -528[rbp+rax*4]
	lea	edx, 1[rax]
	mov	eax, DWORD PTR -8[rbp]          #eax := ch
	cdqe
	mov	DWORD PTR -528[rbp+rax*4], edx  #получение counts[ch]
	cmp	DWORD PTR -8[rbp], -1           #сравнение ch и -1
	jne	.L6                             #если ch != -1, переходим к .L6
	mov	eax, DWORD PTR -4[rbp]          #eax := i
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
