	.section	.text
	.align	16
	#Procedure 0x400526

	# 0x400526:	pushq	%rbp [REG]
	.globl .bio_inst 
	.type .bio_inst, @function
.bio_inst:
	push %ebp
	mov	%esp, %ebp
	push %eax
	push %ecx
	push %edx
#	pushq %esi
#	pushq %rdi
#	pushq %rax
#	pushq %rdx
	push	0x8(%ebp)
	push	$label_inst_msg
#	movl	$0, %eax
	call	printf
	add	$8, %esp
	nop	
#	popq 	%rdx
#	popq 	%rax
#	popq	%rdi
#	popq	%rsi
	pop %edx
	pop %ecx
	pop %eax
	mov %ebp, %esp
	pop %ebp
	ret	

label_inst_msg:
	.asciz "addr:%08x\n"
