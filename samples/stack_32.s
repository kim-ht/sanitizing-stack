	.section	.text
	.align	16
	#Procedure 0x80483b0

	# 0x80483b0:	movl	$0x804a023, %eax [IMM <DATAREF>, REG]
	.globl deregister_tm_clones
	.type deregister_tm_clones, @function
deregister_tm_clones:
	movl	$label_24,  %eax
	# 0x80483b5:	subl	$0x804a020, %eax [IMM <DATAREF>, REG]
	subl	$__TMC_END__,  %eax
	# 0x80483ba:	cmpl	$6, %eax [IMM, REG]
	cmpl	$6, %eax
	# 0x80483bd:	jbe	0x80483d9 [IMM <CODEREF>]
	jbe	.label_25
	# 0x80483bf:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x80483c4:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80483c6:	je	0x80483d9 [IMM <CODEREF>]
	je	.label_25
	# 0x80483c8:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x80483c9:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80483cb:	subl	$0x14, %esp [IMM, REG]
	subl	$0x14, %esp
	# 0x80483ce:	pushl	$0x804a020 [IMM <DATAREF>]
	pushl	$__TMC_END__
	# 0x80483d3:	calll	*%eax [REG]
	calll	*%eax
	# 0x80483d5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80483d8:	leave	 []
	leave	
	# 0x80483d9:	retl	 []
.label_25:
	retl	
	.section	.text
	.align	16
	#Procedure 0x80483e0
	.globl register_tm_clones
	.type register_tm_clones, @function
register_tm_clones:

	# 0x80483e0:	movl	$0x804a020, %eax [IMM <DATAREF>, REG]
	movl	$__TMC_END__,  %eax
	# 0x80483e5:	subl	$0x804a020, %eax [IMM <DATAREF>, REG]
	subl	$__TMC_END__,  %eax
	# 0x80483ea:	sarl	$2, %eax [IMM, REG]
	sarl	$2, %eax
	# 0x80483ed:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x80483ef:	shrl	$0x1f, %edx [IMM, REG]
	shrl	$0x1f, %edx
	# 0x80483f2:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x80483f4:	sarl	$1, %eax [IMM, REG]
	sarl	$1, %eax
	# 0x80483f6:	je	0x8048413 [IMM <CODEREF>]
	je	.label_26
	# 0x80483f8:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x80483fd:	testl	%edx, %edx [REG, REG]
	testl	%edx, %edx
	# 0x80483ff:	je	0x8048413 [IMM <CODEREF>]
	je	.label_26
	# 0x8048401:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x8048402:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8048404:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x8048407:	pushl	%eax [REG]
	pushl	%eax
	# 0x8048408:	pushl	$0x804a020 [IMM <DATAREF>]
	pushl	$__TMC_END__
	# 0x804840d:	calll	*%edx [REG]
	calll	*%edx
	# 0x804840f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8048412:	leave	 []
	leave	
	# 0x8048413:	retl	 []
.label_26:
	retl	
	.section	.text
	.align	16
	#Procedure 0x8048420

	# 0x8048420:	cmpb	$0, 0x804a020 [IMM, MEM]
	.globl __do_global_dtors_aux
	.type __do_global_dtors_aux, @function
__do_global_dtors_aux:
	cmpb	$0, __TMC_END__
	# 0x8048427:	jne	0x804843c [IMM <CODEREF>]
	jne	.label_27
	# 0x8048429:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804842a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804842c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804842f:	calll	0x80483b0 [IMM <CODEREF>]
	calll	deregister_tm_clones
	# 0x8048434:	movb	$1, 0x804a020 [IMM, MEM]
	movb	$1, __TMC_END__
	# 0x804843b:	leave	 []
	leave	
	# 0x804843c:	retl	 []
.label_27:
	retl	
	.section	.text
	.align	16
	#Procedure 0x804846b
	.globl main
	.type main, @function
main:

	# 0x804846b:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804846c:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804846e:	subl	$0x30, %esp [IMM, REG]
	subl	$0x30, %esp
	# 0x8048471:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x8048477:	movl	%eax, -4(%ebp) [REG, MEM]
	movl	%eax, -4(%ebp)
	# 0x804847a:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804847c:	pushl	$0x8048580 [IMM <DATAREF>]
	pushl	$label_29
	# 0x8048481:	calll	0x8048340 [IMM <CODEREF>]
	calll	puts
	# 0x8048486:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x8048489:	movl	$7, -0x30(%ebp) [IMM, MEM]
	movl	$7, -0x40(%ebp)
	# 0x8048490:	pushl	$0x8048590 [IMM <DATAREF>]
	pushl	$label_28
	# 0x8048495:	calll	0x8048340 [IMM <CODEREF>]
	calll	puts
	# 0x804849a:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x804849d:	leal	-0x30(%ebp), %eax [MEM, REG]
	leal	-0x30(%ebp), %eax
	# 0x80484a0:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x80484a3:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x80484a6:	movl	$9, 0(%eax) [IMM, MEM]
	movl	$9, 0(%eax)
	# 0x80484ac:	pushl	$0x80485b0 [IMM <DATAREF>]
	pushl	$label_33
	# 0x80484b1:	calll	0x8048340 [IMM <CODEREF>]
	calll	puts
	# 0x80484b6:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x80484b9:	movl	$0, -0x2c(%ebp) [IMM, MEM]
	movl	$0, -0x2c(%ebp)
	# 0x80484c0:	jmp	0x80484d1 [IMM <CODEREF>]
	jmp	.label_31
	# 0x80484c2:	leal	-0x24(%ebp), %edx [MEM, REG]
.label_30:
	leal	-0x24(%ebp), %edx
	# 0x80484c5:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x80484c8:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x80484ca:	movb	$0x41, 0(%eax) [IMM, MEM]
	movb	$0x41, 0(%eax)
	# 0x80484cd:	addl	$1, -0x2c(%ebp) [IMM, MEM]
	addl	$1, -0x2c(%ebp)
	# 0x80484d1:	cmpl	$0x1e, -0x2c(%ebp) [IMM, MEM]
.label_31:
	cmpl	$0x1e, -0x2c(%ebp)
	# 0x80484d5:	jle	0x80484c2 [IMM <CODEREF>]
	jle	.label_30
	# 0x80484d7:	movb	$0, -4(%ebp) [IMM, MEM]
	movb	$0, -4(%ebp)
	# 0x80484db:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x80484e0:	movl	-4(%ebp), %ecx [MEM, REG]
	movl	-4(%ebp), %ecx
	# 0x80484e3:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x80484ea:	je	0x80484f1 [IMM <CODEREF>]
	je	.label_32
	# 0x80484ec:	calll	0x8048330 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x80484f1:	leave	 []
.label_32:
	leave	
	# 0x80484f2:	retl	 []
	retl	
	.section .plt.got
	.align 32
	# data @ 0x8048368
	.label_45:
	.section .text
	.align 16
	# data @ 0x8048562
	.label_46:
	.section .rodata
	.align 8
	# data @ 0x8048578
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8048580
label_29:
	.asciz "assign 7 to a"
	# data @ 0x804858e
	.byte 0
	.byte 0
	# data @ 0x8048590
label_28:
	.asciz "assign 9 to a using point a_ptr"
	# data @ 0x80485b0
label_33:
	.asciz "fill buf with 'A'"
	# data @ 0x80485c2
	.label_47:
	.section .data
	.align 8
	# data @ 0x804a018
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.section .bss
	.align 32
	# data @ 0x804a021
	.byte 0
	.byte 0
label_24:
	.byte 0
	# data @ 0x804a024
		.globl _end
	.type _end, @notype
_end:
