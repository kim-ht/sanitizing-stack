	.section	.text
	.align	32
	#Procedure 0x80490db

	# 0x80490db:	pushl	%ebp [REG]
	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	pushl	%ebp
	# 0x80490dc:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80490de:	cmpl	$1, 8(%ebp) [IMM, MEM]
	cmpl	$1, 8(%ebp)
	# 0x80490e2:	je	0x80490ec [IMM <CODEREF>]
	je	.label_5
	# 0x80490e4:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80490e7:	movl	%eax, 0x8053108 [REG, MEM]
	movl	%eax, exit_failure
	# 0x80490ec:	nop	 []
.label_5:
	nop	
	# 0x80490ed:	popl	%ebp [REG]
	popl	%ebp
	# 0x80490ee:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80490ef

	# 0x80490ef:	pushl	%ebp [REG]
	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	pushl	%ebp
	# 0x80490f0:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80490f2:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x80490f3:	subl	$0x64, %esp [IMM, REG]
	subl	$0x64, %esp
	# 0x80490f6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80490f9:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x80490fc:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x8049102:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049105:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x8049107:	movl	$0x804eea8, -0x44(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_12, -68(%ebp)
	# 0x804910e:	movl	$0x804eeaa, -0x40(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_13, -64(%ebp)
	# 0x8049115:	movl	$0x804eeba, -0x3c(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_14, -60(%ebp)
	# 0x804911c:	movl	$0x804eec4, -0x38(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_15, -56(%ebp)
	# 0x8049123:	movl	$0x804eeda, -0x34(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_16, -52(%ebp)
	# 0x804912a:	movl	$0x804eee4, -0x30(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_17, -48(%ebp)
	# 0x8049131:	movl	$0x804eef3, -0x2c(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_18, -44(%ebp)
	# 0x8049138:	movl	$0x804eee4, -0x28(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_17, -40(%ebp)
	# 0x804913f:	movl	$0x804eefd, -0x24(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_19, -36(%ebp)
	# 0x8049146:	movl	$0x804eee4, -0x20(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_17, -32(%ebp)
	# 0x804914d:	movl	$0x804ef07, -0x1c(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_20, -28(%ebp)
	# 0x8049154:	movl	$0x804eee4, -0x18(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_17, -24(%ebp)
	# 0x804915b:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x8049162:	movl	$0, -0x10(%ebp) [IMM, MEM]
	movl	$0, -0x10(%ebp)
	# 0x8049169:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x804916c:	movl	%eax, -0x50(%ebp) [REG, MEM]
	movl	%eax, -0x50(%ebp)
	# 0x804916f:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049172:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x8049175:	jmp	0x804917b [IMM <CODEREF>]
	jmp	.label_21
	# 0x8049177:	addl	$8, -0x4c(%ebp) [IMM, MEM]
.label_10:
	addl	$8, -0x4c(%ebp)
	# 0x804917b:	movl	-0x4c(%ebp), %eax [MEM, REG]
.label_21:
	movl	-0x4c(%ebp), %eax
	# 0x804917e:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049180:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049182:	je	0x804919c [IMM <CODEREF>]
	je	.label_30
	# 0x8049184:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x8049187:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049189:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804918c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804918d:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x8049190:	calll	0x8048c50 [IMM <CODEREF>]
	calll	strcmp
	# 0x8049195:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049198:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804919a:	jne	0x8049177 [IMM <CODEREF>]
	jne	.label_10
	# 0x804919c:	movl	-0x4c(%ebp), %eax [MEM, REG]
.label_30:
	movl	-0x4c(%ebp), %eax
	# 0x804919f:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x80491a2:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80491a4:	je	0x80491af [IMM <CODEREF>]
	je	.label_22
	# 0x80491a6:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x80491a9:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x80491ac:	movl	%eax, -0x50(%ebp) [REG, MEM]
	movl	%eax, -0x50(%ebp)
	# 0x80491af:	subl	$0xc, %esp [IMM, REG]
.label_22:
	subl	$0xc, %esp
	# 0x80491b2:	pushl	$0x804ef11 [IMM <DATAREF>]
	pushl	$label_27
	# 0x80491b7:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x80491bc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80491bf:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80491c2:	pushl	$0x804ef28 [IMM <DATAREF>]
	pushl	$label_28
	# 0x80491c7:	pushl	$0x804ef50 [IMM <DATAREF>]
	pushl	$label_31
	# 0x80491cc:	pushl	%eax [REG]
	pushl	%eax
	# 0x80491cd:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x80491d2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80491d5:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x80491d8:	pushl	$0 [IMM]
	pushl	$0
	# 0x80491da:	pushl	$5 [IMM]
	pushl	$5
	# 0x80491dc:	calll	0x8048f20 [IMM <CODEREF>]
	calll	setlocale
	# 0x80491e1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80491e4:	movl	%eax, -0x48(%ebp) [REG, MEM]
	movl	%eax, -0x48(%ebp)
	# 0x80491e7:	cmpl	$0, -0x48(%ebp) [IMM, MEM]
	cmpl	$0, -0x48(%ebp)
	# 0x80491eb:	je	0x8049225 [IMM <CODEREF>]
	je	.label_24
	# 0x80491ed:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80491f0:	pushl	$3 [IMM]
	pushl	$3
	# 0x80491f2:	pushl	$0x804ef5e [IMM <DATAREF>]
	pushl	$label_26
	# 0x80491f7:	pushl	-0x48(%ebp) [MEM]
	pushl	-0x48(%ebp)
	# 0x80491fa:	calll	0x8048f70 [IMM <CODEREF>]
	calll	strncmp
	# 0x80491ff:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049202:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049204:	je	0x8049225 [IMM <CODEREF>]
	je	.label_24
	# 0x8049206:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049209:	pushl	$0x804ef64 [IMM <DATAREF>]
	pushl	$label_6
	# 0x804920e:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049213:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049216:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049219:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x804921c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804921d:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x8049222:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049225:	subl	$0xc, %esp [IMM, REG]
.label_24:
	subl	$0xc, %esp
	# 0x8049228:	pushl	$0x804efac [IMM <DATAREF>]
	pushl	$label_25
	# 0x804922d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049232:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049235:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049238:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x804923b:	pushl	$0x804ef28 [IMM <DATAREF>]
	pushl	$label_28
	# 0x8049240:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049241:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x8049246:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049249:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804924c:	cmpl	-0x5c(%ebp), %eax [MEM, REG]
	cmpl	-0x5c(%ebp), %eax
	# 0x804924f:	jne	0x8049258 [IMM <CODEREF>]
	jne	.label_7
	# 0x8049251:	movl	$0x804efcb, %ebx [IMM <DATAREF>, REG]
	movl	$label_8,  %ebx
	# 0x8049256:	jmp	0x804925d [IMM <CODEREF>]
	jmp	.label_9
	# 0x8049258:	movl	$0x804efd7, %ebx [IMM <DATAREF>, REG]
.label_7:
	movl	$label_11,  %ebx
	# 0x804925d:	subl	$0xc, %esp [IMM, REG]
.label_9:
	subl	$0xc, %esp
	# 0x8049260:	pushl	$0x804efd8 [IMM <DATAREF>]
	pushl	$label_23
	# 0x8049265:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804926a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804926d:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049270:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049271:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x8049274:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049275:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x804927a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804927d:	nop	 []
	nop	
	# 0x804927e:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049281:	xorl	%gs:0x14, %eax [MEM, REG]
	xorl	%gs:0x14, %eax
	# 0x8049288:	je	0x804928f [IMM <CODEREF>]
	je	.label_29
	# 0x804928a:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804928f:	movl	-4(%ebp), %ebx [MEM, REG]
.label_29:
	movl	-4(%ebp), %ebx
	# 0x8049292:	leave	 []
	leave	
	# 0x8049293:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049294

	# 0x8049294:	pushl	%ebp [REG]
	.globl mpz_clear
	.type mpz_clear, @function
mpz_clear:
	pushl	%ebp
	# 0x8049295:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049297:	nop	 []
	nop	
	# 0x8049298:	popl	%ebp [REG]
	popl	%ebp
	# 0x8049299:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804929a

	# 0x804929a:	pushl	%ebp [REG]
	.globl mpz_init_set_ui
	.type mpz_init_set_ui, @function
mpz_init_set_ui:
	pushl	%ebp
	# 0x804929b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804929d:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x80492a0:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x80492a5:	movl	8(%ebp), %ecx [MEM, REG]
	movl	8(%ebp), %ecx
	# 0x80492a8:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x80492aa:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x80492ad:	nop	 []
	nop	
	# 0x80492ae:	popl	%ebp [REG]
	popl	%ebp
	# 0x80492af:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80492b0

	# 0x80492b0:	pushl	%ebp [REG]
	.globl mpz_init_set_str
	.type mpz_init_set_str, @function
mpz_init_set_str:
	pushl	%ebp
	# 0x80492b1:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80492b3:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x80492b6:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80492b9:	pushl	$0 [IMM]
	pushl	$0
	# 0x80492bb:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x80492be:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x80492c1:	pushl	$0 [IMM]
	pushl	$0
	# 0x80492c3:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x80492c6:	calll	0x804dfe3 [IMM <CODEREF>]
	calll	xstrtoimax
	# 0x80492cb:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x80492ce:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80492d0:	jne	0x80492d9 [IMM <CODEREF>]
	jne	.label_33
	# 0x80492d2:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x80492d7:	jmp	0x80492de [IMM <CODEREF>]
	jmp	.label_32
	# 0x80492d9:	movl	$0xffffffff, %eax [IMM, REG]
.label_33:
	movl	$0xffffffff, %eax
	# 0x80492de:	leave	 []
.label_32:
	leave	
	# 0x80492df:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80492e0

	# 0x80492e0:	pushl	%ebp [REG]
	.globl mpz_add
	.type mpz_add, @function
mpz_add:
	pushl	%ebp
	# 0x80492e1:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80492e3:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x80492e4:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x80492e7:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x80492ea:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80492ed:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80492ef:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x80492f2:	movl	%edx, -0x1c(%ebp) [REG, MEM]
	movl	%edx, -0x1c(%ebp)
	# 0x80492f5:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x80492f8:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80492fb:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80492fd:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x8049300:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x8049303:	movl	-0x20(%ebp), %ecx [MEM, REG]
	movl	-0x20(%ebp), %ecx
	# 0x8049306:	movl	-0x1c(%ebp), %ebx [MEM, REG]
	movl	-0x1c(%ebp), %ebx
	# 0x8049309:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804930c:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804930f:	addl	%ecx, %eax [REG, REG]
	addl	%ecx, %eax
	# 0x8049311:	adcl	%ebx, %edx [REG, REG]
	adcl	%ebx, %edx
	# 0x8049313:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x8049316:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x8049319:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804931e:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x8049321:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x8049324:	cmpl	-0x1c(%ebp), %edx [MEM, REG]
	cmpl	-0x1c(%ebp), %edx
	# 0x8049327:	jl	0x8049338 [IMM <CODEREF>]
	jl	.label_34
	# 0x8049329:	cmpl	-0x1c(%ebp), %edx [MEM, REG]
	cmpl	-0x1c(%ebp), %edx
	# 0x804932c:	jg	0x8049333 [IMM <CODEREF>]
	jg	.label_36
	# 0x804932e:	cmpl	-0x20(%ebp), %eax [MEM, REG]
	cmpl	-0x20(%ebp), %eax
	# 0x8049331:	jb	0x8049338 [IMM <CODEREF>]
	jb	.label_34
	# 0x8049333:	movl	$0, %ecx [IMM, REG]
.label_36:
	movl	$0, %ecx
	# 0x8049338:	movl	-0x14(%ebp), %eax [MEM, REG]
.label_34:
	movl	-0x14(%ebp), %eax
	# 0x804933b:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x804933e:	xorl	%ecx, %eax [REG, REG]
	xorl	%ecx, %eax
	# 0x8049340:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049342:	je	0x804934e [IMM <CODEREF>]
	je	.label_35
	# 0x8049344:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049347:	pushl	$0x2b [IMM]
	pushl	$0x2b
	# 0x8049349:	calll	0x8049d0f [IMM <CODEREF>]
	calll	integer_overflow
	# 0x804934e:	movl	8(%ebp), %ecx [MEM, REG]
.label_35:
	movl	8(%ebp), %ecx
	# 0x8049351:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x8049354:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x8049357:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x8049359:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804935c:	nop	 []
	nop	
	# 0x804935d:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x8049360:	leave	 []
	leave	
	# 0x8049361:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049362

	# 0x8049362:	pushl	%ebp [REG]
	.globl mpz_sub
	.type mpz_sub, @function
mpz_sub:
	pushl	%ebp
	# 0x8049363:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049365:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x8049368:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804936b:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804936e:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049370:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x8049373:	movl	%edx, -0x1c(%ebp) [REG, MEM]
	movl	%edx, -0x1c(%ebp)
	# 0x8049376:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x8049379:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804937c:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804937e:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x8049381:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x8049384:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x8049387:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804938a:	subl	-0x18(%ebp), %eax [MEM, REG]
	subl	-0x18(%ebp), %eax
	# 0x804938d:	sbbl	-0x14(%ebp), %edx [MEM, REG]
	sbbl	-0x14(%ebp), %edx
	# 0x8049390:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x8049393:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x8049396:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804939b:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804939e:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x80493a1:	cmpl	-0xc(%ebp), %edx [MEM, REG]
	cmpl	-0xc(%ebp), %edx
	# 0x80493a4:	jl	0x80493b5 [IMM <CODEREF>]
	jl	.label_37
	# 0x80493a6:	cmpl	-0xc(%ebp), %edx [MEM, REG]
	cmpl	-0xc(%ebp), %edx
	# 0x80493a9:	jg	0x80493b0 [IMM <CODEREF>]
	jg	.label_39
	# 0x80493ab:	cmpl	-0x10(%ebp), %eax [MEM, REG]
	cmpl	-0x10(%ebp), %eax
	# 0x80493ae:	jb	0x80493b5 [IMM <CODEREF>]
	jb	.label_37
	# 0x80493b0:	movl	$0, %ecx [IMM, REG]
.label_39:
	movl	$0, %ecx
	# 0x80493b5:	movl	-0x14(%ebp), %eax [MEM, REG]
.label_37:
	movl	-0x14(%ebp), %eax
	# 0x80493b8:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x80493bb:	xorl	%ecx, %eax [REG, REG]
	xorl	%ecx, %eax
	# 0x80493bd:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x80493bf:	je	0x80493cb [IMM <CODEREF>]
	je	.label_38
	# 0x80493c1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80493c4:	pushl	$0x2d [IMM]
	pushl	$0x2d
	# 0x80493c6:	calll	0x8049d0f [IMM <CODEREF>]
	calll	integer_overflow
	# 0x80493cb:	movl	8(%ebp), %ecx [MEM, REG]
.label_38:
	movl	8(%ebp), %ecx
	# 0x80493ce:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x80493d1:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x80493d4:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x80493d6:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x80493d9:	nop	 []
	nop	
	# 0x80493da:	leave	 []
	leave	
	# 0x80493db:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80493dc

	# 0x80493dc:	pushl	%ebp [REG]
	.globl mpz_mul
	.type mpz_mul, @function
mpz_mul:
	pushl	%ebp
	# 0x80493dd:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80493df:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x80493e2:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x80493e5:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80493e8:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80493ea:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x80493ed:	movl	%edx, -0x1c(%ebp) [REG, MEM]
	movl	%edx, -0x1c(%ebp)
	# 0x80493f0:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x80493f3:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80493f6:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80493f8:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x80493fb:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x80493fe:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x8049401:	imull	-0x18(%ebp), %eax [MEM, REG]
	imull	-0x18(%ebp), %eax
	# 0x8049405:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x8049407:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804940a:	imull	-0x20(%ebp), %eax [MEM, REG]
	imull	-0x20(%ebp), %eax
	# 0x804940e:	leal	0(%edx, %eax), %ecx [MEM, REG]
	leal	0(%edx, %eax), %ecx
	# 0x8049411:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x8049414:	mull	-0x20(%ebp) [MEM]
	mull	-0x20(%ebp)
	# 0x8049417:	addl	%edx, %ecx [REG, REG]
	addl	%edx, %ecx
	# 0x8049419:	movl	%ecx, %edx [REG, REG]
	movl	%ecx, %edx
	# 0x804941b:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804941e:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x8049421:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x8049424:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x8049427:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804942a:	orl	-0x20(%ebp), %eax [MEM, REG]
	orl	-0x20(%ebp), %eax
	# 0x804942d:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804942f:	je	0x8049488 [IMM <CODEREF>]
	je	.label_40
	# 0x8049431:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x8049434:	orl	-0x18(%ebp), %eax [MEM, REG]
	orl	-0x18(%ebp), %eax
	# 0x8049437:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049439:	je	0x8049488 [IMM <CODEREF>]
	je	.label_40
	# 0x804943b:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804943e:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x8049441:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x8049444:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x8049447:	shrl	$0x1f, %edx [IMM, REG]
	shrl	$0x1f, %edx
	# 0x804944a:	movzbl	%dl, %ecx [REG, REG]
	movzbl	%dl, %ecx
	# 0x804944d:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x8049450:	shrl	$0x1f, %edx [IMM, REG]
	shrl	$0x1f, %edx
	# 0x8049453:	movzbl	%dl, %edx [REG, REG]
	movzbl	%dl, %edx
	# 0x8049456:	xorl	%ecx, %edx [REG, REG]
	xorl	%ecx, %edx
	# 0x8049458:	cmpl	%edx, %eax [REG, REG]
	cmpl	%edx, %eax
	# 0x804945a:	jne	0x804947e [IMM <CODEREF>]
	jne	.label_41
	# 0x804945c:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804945f:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x8049462:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x8049465:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x8049468:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x804946d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049470:	movl	%edx, %ecx [REG, REG]
	movl	%edx, %ecx
	# 0x8049472:	xorl	-0x14(%ebp), %ecx [MEM, REG]
	xorl	-0x14(%ebp), %ecx
	# 0x8049475:	xorl	-0x18(%ebp), %eax [MEM, REG]
	xorl	-0x18(%ebp), %eax
	# 0x8049478:	orl	%ecx, %eax [REG, REG]
	orl	%ecx, %eax
	# 0x804947a:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804947c:	je	0x8049488 [IMM <CODEREF>]
	je	.label_40
	# 0x804947e:	subl	$0xc, %esp [IMM, REG]
.label_41:
	subl	$0xc, %esp
	# 0x8049481:	pushl	$0x2a [IMM]
	pushl	$0x2a
	# 0x8049483:	calll	0x8049d0f [IMM <CODEREF>]
	calll	integer_overflow
	# 0x8049488:	movl	8(%ebp), %ecx [MEM, REG]
.label_40:
	movl	8(%ebp), %ecx
	# 0x804948b:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804948e:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x8049491:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x8049493:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x8049496:	nop	 []
	nop	
	# 0x8049497:	leave	 []
	leave	
	# 0x8049498:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049499

	# 0x8049499:	pushl	%ebp [REG]
	.globl mpz_tdiv_q
	.type mpz_tdiv_q, @function
mpz_tdiv_q:
	pushl	%ebp
	# 0x804949a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804949c:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804949f:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x80494a2:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80494a5:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80494a7:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x80494aa:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x80494ad:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x80494b0:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80494b3:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80494b5:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x80494b8:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x80494bb:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x80494be:	xorl	$0x80000000, %eax [IMM, REG]
	xorl	$0x80000000, %eax
	# 0x80494c3:	orl	-0x18(%ebp), %eax [MEM, REG]
	orl	-0x18(%ebp), %eax
	# 0x80494c6:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80494c8:	jne	0x80494e8 [IMM <CODEREF>]
	jne	.label_42
	# 0x80494ca:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x80494cd:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x80494d0:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x80494d2:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x80494d5:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x80494d8:	orl	%edx, %eax [REG, REG]
	orl	%edx, %eax
	# 0x80494da:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80494dc:	jne	0x80494e8 [IMM <CODEREF>]
	jne	.label_42
	# 0x80494de:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80494e1:	pushl	$0x2f [IMM]
	pushl	$0x2f
	# 0x80494e3:	calll	0x8049d0f [IMM <CODEREF>]
	calll	integer_overflow
	# 0x80494e8:	pushl	-0xc(%ebp) [MEM]
.label_42:
	pushl	-0xc(%ebp)
	# 0x80494eb:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x80494ee:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x80494f1:	pushl	-0x18(%ebp) [MEM]
	pushl	-0x18(%ebp)
	# 0x80494f4:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x80494f9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80494fc:	movl	8(%ebp), %ecx [MEM, REG]
	movl	8(%ebp), %ecx
	# 0x80494ff:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x8049501:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x8049504:	nop	 []
	nop	
	# 0x8049505:	leave	 []
	leave	
	# 0x8049506:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049507

	# 0x8049507:	pushl	%ebp [REG]
	.globl mpz_tdiv_r
	.type mpz_tdiv_r, @function
mpz_tdiv_r:
	pushl	%ebp
	# 0x8049508:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804950a:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804950d:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x8049510:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x8049513:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049515:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x8049518:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x804951b:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804951e:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x8049521:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049523:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x8049526:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x8049529:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804952c:	xorl	$0x80000000, %eax [IMM, REG]
	xorl	$0x80000000, %eax
	# 0x8049531:	orl	-0x18(%ebp), %eax [MEM, REG]
	orl	-0x18(%ebp), %eax
	# 0x8049534:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049536:	jne	0x804954c [IMM <CODEREF>]
	jne	.label_43
	# 0x8049538:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804953b:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x804953e:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x8049540:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x8049543:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x8049546:	orl	%edx, %eax [REG, REG]
	orl	%edx, %eax
	# 0x8049548:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804954a:	je	0x8049564 [IMM <CODEREF>]
	je	.label_44
	# 0x804954c:	movl	-0x18(%ebp), %eax [MEM, REG]
.label_43:
	movl	-0x18(%ebp), %eax
	# 0x804954f:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x8049552:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x8049555:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x8049558:	pushl	%edx [REG]
	pushl	%edx
	# 0x8049559:	pushl	%eax [REG]
	pushl	%eax
	# 0x804955a:	calll	0x804ec20 [IMM <CODEREF>]
	calll	__moddi3
	# 0x804955f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049562:	jmp	0x804956e [IMM <CODEREF>]
	jmp	.label_45
	# 0x8049564:	movl	$0, %eax [IMM, REG]
.label_44:
	movl	$0, %eax
	# 0x8049569:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x804956e:	movl	8(%ebp), %ecx [MEM, REG]
.label_45:
	movl	8(%ebp), %ecx
	# 0x8049571:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x8049573:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x8049576:	nop	 []
	nop	
	# 0x8049577:	leave	 []
	leave	
	# 0x8049578:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049579

	# 0x8049579:	pushl	%ebp [REG]
	.globl mpz_get_str
	.type mpz_get_str, @function
mpz_get_str:
	pushl	%ebp
	# 0x804957a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804957c:	subl	$0x38, %esp [IMM, REG]
	subl	$0x38, %esp
	# 0x804957f:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049582:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x8049585:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x8049588:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804958b:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x8049591:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049594:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x8049596:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x8049599:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804959c:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804959e:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80495a1:	leal	-0x21(%ebp), %ecx [MEM, REG]
	leal	-0x21(%ebp), %ecx
	# 0x80495a4:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x80495a5:	pushl	%edx [REG]
	pushl	%edx
	# 0x80495a6:	pushl	%eax [REG]
	pushl	%eax
	# 0x80495a7:	calll	0x804b268 [IMM <CODEREF>]
	calll	imaxtostr
	# 0x80495ac:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80495af:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80495b2:	pushl	%eax [REG]
	pushl	%eax
	# 0x80495b3:	calll	0x804de92 [IMM <CODEREF>]
	calll	xstrdup
	# 0x80495b8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80495bb:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x80495be:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x80495c5:	je	0x80495cc [IMM <CODEREF>]
	je	.label_46
	# 0x80495c7:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x80495cc:	leave	 []
.label_46:
	leave	
	# 0x80495cd:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80495ce

	# 0x80495ce:	pushl	%ebp [REG]
	.globl mpz_sgn
	.type mpz_sgn, @function
mpz_sgn:
	pushl	%ebp
	# 0x80495cf:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80495d1:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x80495d2:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80495d5:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80495d8:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80495da:	testl	%edx, %edx [REG, REG]
	testl	%edx, %edx
	# 0x80495dc:	js	0x8049605 [IMM <CODEREF>]
	js	.label_48
	# 0x80495de:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80495e1:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x80495e4:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x80495e6:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x80495e8:	movl	%edx, %ebx [REG, REG]
	movl	%edx, %ebx
	# 0x80495ea:	movl	%ebx, %ebx [REG, REG]
	movl	%ebx, %ebx
	# 0x80495ec:	sarl	$0x1f, %ebx [IMM, REG]
	sarl	$0x1f, %ebx
	# 0x80495ef:	movl	%ebx, %ecx [REG, REG]
	movl	%ebx, %ecx
	# 0x80495f1:	subl	%eax, %ecx [REG, REG]
	subl	%eax, %ecx
	# 0x80495f3:	sbbl	%edx, %ebx [REG, REG]
	sbbl	%edx, %ebx
	# 0x80495f5:	movl	%ecx, %eax [REG, REG]
	movl	%ecx, %eax
	# 0x80495f7:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x80495f9:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x80495fb:	xorl	%edx, %edx [REG, REG]
	xorl	%edx, %edx
	# 0x80495fd:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x8049600:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x8049603:	jmp	0x804960a [IMM <CODEREF>]
	jmp	.label_47
	# 0x8049605:	movl	$0xffffffff, %eax [IMM, REG]
.label_48:
	movl	$0xffffffff, %eax
	# 0x804960a:	popl	%ebx [REG]
.label_47:
	popl	%ebx
	# 0x804960b:	popl	%ebp [REG]
	popl	%ebp
	# 0x804960c:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804960d

	# 0x804960d:	pushl	%ebp [REG]
	.globl mpz_fits_ulong_p
	.type mpz_fits_ulong_p, @function
mpz_fits_ulong_p:
	pushl	%ebp
	# 0x804960e:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049610:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049613:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x8049616:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049618:	testl	%edx, %edx [REG, REG]
	testl	%edx, %edx
	# 0x804961a:	js	0x804962f [IMM <CODEREF>]
	js	.label_50
	# 0x804961c:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804961f:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x8049622:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049624:	testl	%edx, %edx [REG, REG]
	testl	%edx, %edx
	# 0x8049626:	jg	0x804962f [IMM <CODEREF>]
	jg	.label_50
	# 0x8049628:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804962d:	jmp	0x8049634 [IMM <CODEREF>]
	jmp	.label_49
	# 0x804962f:	movl	$0, %eax [IMM, REG]
.label_50:
	movl	$0, %eax
	# 0x8049634:	popl	%ebp [REG]
.label_49:
	popl	%ebp
	# 0x8049635:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049636

	# 0x8049636:	pushl	%ebp [REG]
	.globl mpz_get_ui
	.type mpz_get_ui, @function
mpz_get_ui:
	pushl	%ebp
	# 0x8049637:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049639:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804963c:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804963f:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049641:	popl	%ebp [REG]
	popl	%ebp
	# 0x8049642:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049643

	# 0x8049643:	pushl	%ebp [REG]
	.globl mpz_out_str
	.type mpz_out_str, @function
mpz_out_str:
	pushl	%ebp
	# 0x8049644:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049646:	subl	$0x38, %esp [IMM, REG]
	subl	$0x38, %esp
	# 0x8049649:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804964c:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804964f:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x8049652:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x8049655:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804965b:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804965e:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x8049660:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x8049663:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x8049666:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049668:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804966b:	leal	-0x21(%ebp), %ecx [MEM, REG]
	leal	-0x21(%ebp), %ecx
	# 0x804966e:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804966f:	pushl	%edx [REG]
	pushl	%edx
	# 0x8049670:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049671:	calll	0x804b268 [IMM <CODEREF>]
	calll	imaxtostr
	# 0x8049676:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049679:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804967c:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804967f:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049680:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049685:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049688:	cmpl	$-1, %eax [IMM, REG]
	cmpl	$-1, %eax
	# 0x804968b:	setne	%al [REG]
	setne	%al
	# 0x804968e:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x8049691:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x8049694:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804969b:	je	0x80496a2 [IMM <CODEREF>]
	je	.label_51
	# 0x804969d:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x80496a2:	leave	 []
.label_51:
	leave	
	# 0x80496a3:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80496a4

	# 0x80496a4:	pushl	%ebp [REG]
	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	pushl	%ebp
	# 0x80496a5:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80496a7:	subl	$0x98, %esp [IMM, REG]
	subl	$0x98, %esp
	# 0x80496ad:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80496b0:	movl	%eax, -0x8c(%ebp) [REG, MEM]
	movl	%eax, -0x8c(%ebp)
	# 0x80496b6:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x80496b9:	movl	%eax, -0x90(%ebp) [REG, MEM]
	movl	%eax, -0x90(%ebp)
	# 0x80496bf:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x80496c5:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x80496c8:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x80496ca:	movl	$0, -0x84(%ebp) [IMM, MEM]
	movl	$0, -0x84(%ebp)
	# 0x80496d4:	movl	-0x90(%ebp), %eax [MEM, REG]
	movl	-0x90(%ebp), %eax
	# 0x80496da:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x80496dd:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x80496df:	jne	0x80496eb [IMM <CODEREF>]
	jne	.label_61
	# 0x80496e1:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x80496e6:	jmp	0x80498b4 [IMM <CODEREF>]
	jmp	.label_70
	# 0x80496eb:	calll	0x8048d80 [IMM <CODEREF>]
.label_61:
	calll	__ctype_get_mb_cur_max
	# 0x80496f0:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x80496f3:	jbe	0x804987a [IMM <CODEREF>]
	jbe	.label_74
	# 0x80496f9:	movl	-0x8c(%ebp), %eax [MEM, REG]
	movl	-0x8c(%ebp), %eax
	# 0x80496ff:	movl	%eax, -0x6c(%ebp) [REG, MEM]
	movl	%eax, -0x6c(%ebp)
	# 0x8049702:	movb	$0, -0x7c(%ebp) [IMM, MEM]
	movb	$0, -0x7c(%ebp)
	# 0x8049706:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049709:	pushl	$8 [IMM]
	pushl	$8
	# 0x804970b:	pushl	$0 [IMM]
	pushl	$0
	# 0x804970d:	leal	-0x7c(%ebp), %eax [MEM, REG]
	leal	-0x7c(%ebp), %eax
	# 0x8049710:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049713:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049714:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x8049719:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804971c:	movb	$0, -0x70(%ebp) [IMM, MEM]
	movb	$0, -0x70(%ebp)
	# 0x8049720:	jmp	0x804983e [IMM <CODEREF>]
	jmp	.label_58
	# 0x8049725:	addl	$1, -0x84(%ebp) [IMM, MEM]
.label_53:
	addl	$1, -0x84(%ebp)
	# 0x804972c:	movl	-0x68(%ebp), %eax [MEM, REG]
	movl	-0x68(%ebp), %eax
	# 0x804972f:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x8049732:	jne	0x8049762 [IMM <CODEREF>]
	jne	.label_62
	# 0x8049734:	movl	-0x6c(%ebp), %eax [MEM, REG]
	movl	-0x6c(%ebp), %eax
	# 0x8049737:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804973a:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804973d:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049740:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049741:	pushl	-0x90(%ebp) [MEM]
	pushl	-0x90(%ebp)
	# 0x8049747:	calll	0x804b411 [IMM <CODEREF>]
	calll	mbschr
	# 0x804974c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804974f:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049751:	je	0x804982f [IMM <CODEREF>]
	je	.label_68
	# 0x8049757:	movl	-0x84(%ebp), %eax [MEM, REG]
	movl	-0x84(%ebp), %eax
	# 0x804975d:	jmp	0x80498b4 [IMM <CODEREF>]
	jmp	.label_70
	# 0x8049762:	movl	-0x90(%ebp), %eax [MEM, REG]
.label_62:
	movl	-0x90(%ebp), %eax
	# 0x8049768:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804976b:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x804976f:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049772:	pushl	$8 [IMM]
	pushl	$8
	# 0x8049774:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049776:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049779:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804977c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804977d:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x8049782:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049785:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x8049789:	jmp	0x80497fa [IMM <CODEREF>]
	jmp	.label_52
	# 0x804978b:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
.label_64:
	movzbl	-0x2c(%ebp), %eax
	# 0x804978f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049791:	je	0x80497a8 [IMM <CODEREF>]
	je	.label_55
	# 0x8049793:	movzbl	-0x64(%ebp), %eax [MEM, REG]
	movzbl	-0x64(%ebp), %eax
	# 0x8049797:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049799:	je	0x80497a8 [IMM <CODEREF>]
	je	.label_55
	# 0x804979b:	movl	-0x28(%ebp), %edx [MEM, REG]
	movl	-0x28(%ebp), %edx
	# 0x804979e:	movl	-0x60(%ebp), %eax [MEM, REG]
	movl	-0x60(%ebp), %eax
	# 0x80497a1:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x80497a3:	sete	%al [REG]
	sete	%al
	# 0x80497a6:	jmp	0x80497dc [IMM <CODEREF>]
	jmp	.label_60
	# 0x80497a8:	movl	-0x30(%ebp), %edx [MEM, REG]
.label_55:
	movl	-0x30(%ebp), %edx
	# 0x80497ab:	movl	-0x68(%ebp), %eax [MEM, REG]
	movl	-0x68(%ebp), %eax
	# 0x80497ae:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x80497b0:	jne	0x80497d4 [IMM <CODEREF>]
	jne	.label_65
	# 0x80497b2:	movl	-0x30(%ebp), %ecx [MEM, REG]
	movl	-0x30(%ebp), %ecx
	# 0x80497b5:	movl	-0x6c(%ebp), %edx [MEM, REG]
	movl	-0x6c(%ebp), %edx
	# 0x80497b8:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x80497bb:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80497be:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x80497bf:	pushl	%edx [REG]
	pushl	%edx
	# 0x80497c0:	pushl	%eax [REG]
	pushl	%eax
	# 0x80497c1:	calll	0x8048d10 [IMM <CODEREF>]
	calll	memcmp
	# 0x80497c6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80497c9:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x80497cb:	jne	0x80497d4 [IMM <CODEREF>]
	jne	.label_65
	# 0x80497cd:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x80497d2:	jmp	0x80497d9 [IMM <CODEREF>]
	jmp	.label_69
	# 0x80497d4:	movl	$0, %eax [IMM, REG]
.label_65:
	movl	$0, %eax
	# 0x80497d9:	andl	$1, %eax [IMM, REG]
.label_69:
	andl	$1, %eax
	# 0x80497dc:	testb	%al, %al [REG, REG]
.label_60:
	testb	%al, %al
	# 0x80497de:	je	0x80497eb [IMM <CODEREF>]
	je	.label_72
	# 0x80497e0:	movl	-0x84(%ebp), %eax [MEM, REG]
	movl	-0x84(%ebp), %eax
	# 0x80497e6:	jmp	0x80498b4 [IMM <CODEREF>]
	jmp	.label_70
	# 0x80497eb:	movl	-0x34(%ebp), %edx [MEM, REG]
.label_72:
	movl	-0x34(%ebp), %edx
	# 0x80497ee:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x80497f1:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x80497f3:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x80497f6:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x80497fa:	subl	$0xc, %esp [IMM, REG]
.label_52:
	subl	$0xc, %esp
	# 0x80497fd:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049800:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049801:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x8049806:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049809:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x804980d:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x8049810:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049812:	jne	0x804981b [IMM <CODEREF>]
	jne	.label_54
	# 0x8049814:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x8049817:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049819:	je	0x8049822 [IMM <CODEREF>]
	je	.label_57
	# 0x804981b:	movl	$1, %eax [IMM, REG]
.label_54:
	movl	$1, %eax
	# 0x8049820:	jmp	0x8049827 [IMM <CODEREF>]
	jmp	.label_59
	# 0x8049822:	movl	$0, %eax [IMM, REG]
.label_57:
	movl	$0, %eax
	# 0x8049827:	testl	%eax, %eax [REG, REG]
.label_59:
	testl	%eax, %eax
	# 0x8049829:	jne	0x804978b [IMM <CODEREF>]
	jne	.label_64
	# 0x804982f:	movl	-0x6c(%ebp), %edx [MEM, REG]
.label_68:
	movl	-0x6c(%ebp), %edx
	# 0x8049832:	movl	-0x68(%ebp), %eax [MEM, REG]
	movl	-0x68(%ebp), %eax
	# 0x8049835:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x8049837:	movl	%eax, -0x6c(%ebp) [REG, MEM]
	movl	%eax, -0x6c(%ebp)
	# 0x804983a:	movb	$0, -0x70(%ebp) [IMM, MEM]
	movb	$0, -0x70(%ebp)
	# 0x804983e:	subl	$0xc, %esp [IMM, REG]
.label_58:
	subl	$0xc, %esp
	# 0x8049841:	leal	-0x7c(%ebp), %eax [MEM, REG]
	leal	-0x7c(%ebp), %eax
	# 0x8049844:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049845:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x804984a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804984d:	movzbl	-0x64(%ebp), %eax [MEM, REG]
	movzbl	-0x64(%ebp), %eax
	# 0x8049851:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x8049854:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049856:	jne	0x804985f [IMM <CODEREF>]
	jne	.label_67
	# 0x8049858:	movl	-0x60(%ebp), %eax [MEM, REG]
	movl	-0x60(%ebp), %eax
	# 0x804985b:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804985d:	je	0x8049866 [IMM <CODEREF>]
	je	.label_71
	# 0x804985f:	movl	$1, %eax [IMM, REG]
.label_67:
	movl	$1, %eax
	# 0x8049864:	jmp	0x804986b [IMM <CODEREF>]
	jmp	.label_73
	# 0x8049866:	movl	$0, %eax [IMM, REG]
.label_71:
	movl	$0, %eax
	# 0x804986b:	testl	%eax, %eax [REG, REG]
.label_73:
	testl	%eax, %eax
	# 0x804986d:	jne	0x8049725 [IMM <CODEREF>]
	jne	.label_53
	# 0x8049873:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x8049878:	jmp	0x80498b4 [IMM <CODEREF>]
	jmp	.label_70
	# 0x804987a:	subl	$8, %esp [IMM, REG]
.label_74:
	subl	$8, %esp
	# 0x804987d:	pushl	-0x90(%ebp) [MEM]
	pushl	-0x90(%ebp)
	# 0x8049883:	pushl	-0x8c(%ebp) [MEM]
	pushl	-0x8c(%ebp)
	# 0x8049889:	calll	0x8048c70 [IMM <CODEREF>]
	calll	strcspn
	# 0x804988e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049891:	movl	%eax, -0x80(%ebp) [REG, MEM]
	movl	%eax, -0x80(%ebp)
	# 0x8049894:	movl	-0x8c(%ebp), %edx [MEM, REG]
	movl	-0x8c(%ebp), %edx
	# 0x804989a:	movl	-0x80(%ebp), %eax [MEM, REG]
	movl	-0x80(%ebp), %eax
	# 0x804989d:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804989f:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x80498a2:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x80498a4:	je	0x80498ae [IMM <CODEREF>]
	je	.label_56
	# 0x80498a6:	movl	-0x80(%ebp), %eax [MEM, REG]
	movl	-0x80(%ebp), %eax
	# 0x80498a9:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x80498ac:	jmp	0x80498b3 [IMM <CODEREF>]
	jmp	.label_63
	# 0x80498ae:	movl	$0, %eax [IMM, REG]
.label_56:
	movl	$0, %eax
	# 0x80498b3:	nop	 []
.label_63:
	nop	
	# 0x80498b4:	movl	-0xc(%ebp), %ecx [MEM, REG]
.label_70:
	movl	-0xc(%ebp), %ecx
	# 0x80498b7:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x80498be:	je	0x80498c5 [IMM <CODEREF>]
	je	.label_66
	# 0x80498c0:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x80498c5:	leave	 []
.label_66:
	leave	
	# 0x80498c6:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x80498c7

	# 0x80498c7:	pushl	%ebp [REG]
	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	pushl	%ebp
	# 0x80498c8:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x80498ca:	subl	$0x78, %esp [IMM, REG]
	subl	$0x78, %esp
	# 0x80498cd:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x80498d0:	movl	%eax, -0x6c(%ebp) [REG, MEM]
	movl	%eax, -0x6c(%ebp)
	# 0x80498d3:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x80498d9:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x80498dc:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x80498de:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80498e1:	pushl	-0x6c(%ebp) [MEM]
	pushl	-0x6c(%ebp)
	# 0x80498e4:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x80498e9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80498ec:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x80498ef:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x80498f4:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x80498f7:	jbe	0x8049909 [IMM <CODEREF>]
	jbe	.label_86
	# 0x80498f9:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x80498fc:	pushl	-0x6c(%ebp) [MEM]
	pushl	-0x6c(%ebp)
	# 0x80498ff:	calll	0x804b4f8 [IMM <CODEREF>]
	calll	mbslen
	# 0x8049904:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049907:	jmp	0x804990c [IMM <CODEREF>]
	jmp	.label_76
	# 0x8049909:	movl	-0x4c(%ebp), %eax [MEM, REG]
.label_86:
	movl	-0x4c(%ebp), %eax
	# 0x804990c:	movl	%eax, -0x48(%ebp) [REG, MEM]
.label_76:
	movl	%eax, -0x48(%ebp)
	# 0x804990f:	movl	-0x48(%ebp), %eax [MEM, REG]
	movl	-0x48(%ebp), %eax
	# 0x8049912:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x8049915:	jb	0x8049929 [IMM <CODEREF>]
	jb	.label_78
	# 0x8049917:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804991b:	je	0x8049929 [IMM <CODEREF>]
	je	.label_78
	# 0x804991d:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x8049921:	je	0x8049929 [IMM <CODEREF>]
	je	.label_78
	# 0x8049923:	cmpl	$-1, 0x10(%ebp) [IMM, MEM]
	cmpl	$-1, 0x10(%ebp)
	# 0x8049927:	jne	0x804993e [IMM <CODEREF>]
	jne	.label_83
	# 0x8049929:	subl	$0xc, %esp [IMM, REG]
.label_78:
	subl	$0xc, %esp
	# 0x804992c:	pushl	$0x804efd7 [IMM <DATAREF>]
	pushl	$label_11
	# 0x8049931:	calll	0x804de92 [IMM <CODEREF>]
	calll	xstrdup
	# 0x8049936:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049939:	jmp	0x8049a59 [IMM <CODEREF>]
	jmp	.label_87
	# 0x804993e:	movl	-0x48(%ebp), %eax [MEM, REG]
.label_83:
	movl	-0x48(%ebp), %eax
	# 0x8049941:	subl	0xc(%ebp), %eax [MEM, REG]
	subl	0xc(%ebp), %eax
	# 0x8049944:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x8049947:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804994a:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x804994c:	cmovbel	%edx, %eax [REG, REG]
	cmovbel	%edx, %eax
	# 0x804994f:	movl	%eax, -0x54(%ebp) [REG, MEM]
	movl	%eax, -0x54(%ebp)
	# 0x8049952:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x8049957:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804995a:	jne	0x8049996 [IMM <CODEREF>]
	jne	.label_80
	# 0x804995c:	movl	-0x54(%ebp), %eax [MEM, REG]
	movl	-0x54(%ebp), %eax
	# 0x804995f:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x8049962:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049965:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049966:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x804996b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804996e:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x8049971:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x8049974:	leal	-1(%eax), %edx [MEM, REG]
	leal	-1(%eax), %edx
	# 0x8049977:	movl	-0x6c(%ebp), %eax [MEM, REG]
	movl	-0x6c(%ebp), %eax
	# 0x804997a:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804997c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804997f:	pushl	-0x54(%ebp) [MEM]
	pushl	-0x54(%ebp)
	# 0x8049982:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049983:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x8049986:	calll	0x8048f00 [IMM <CODEREF>]
	calll	mempcpy
	# 0x804998b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804998e:	movl	%eax, -0x58(%ebp) [REG, MEM]
	movl	%eax, -0x58(%ebp)
	# 0x8049991:	jmp	0x8049a50 [IMM <CODEREF>]
	jmp	.label_75
	# 0x8049996:	movl	-0x4c(%ebp), %eax [MEM, REG]
.label_80:
	movl	-0x4c(%ebp), %eax
	# 0x8049999:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804999c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804999f:	pushl	%eax [REG]
	pushl	%eax
	# 0x80499a0:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x80499a5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80499a8:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x80499ab:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x80499ae:	movl	%eax, -0x58(%ebp) [REG, MEM]
	movl	%eax, -0x58(%ebp)
	# 0x80499b1:	movl	$1, -0x50(%ebp) [IMM, MEM]
	movl	$1, -0x50(%ebp)
	# 0x80499b8:	movl	-0x6c(%ebp), %eax [MEM, REG]
	movl	-0x6c(%ebp), %eax
	# 0x80499bb:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x80499be:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x80499c2:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80499c5:	pushl	$8 [IMM]
	pushl	$8
	# 0x80499c7:	pushl	$0 [IMM]
	pushl	$0
	# 0x80499c9:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x80499cc:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x80499cf:	pushl	%eax [REG]
	pushl	%eax
	# 0x80499d0:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x80499d5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x80499d8:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x80499dc:	jmp	0x8049a19 [IMM <CODEREF>]
	jmp	.label_79
	# 0x80499de:	movl	-0x50(%ebp), %eax [MEM, REG]
.label_77:
	movl	-0x50(%ebp), %eax
	# 0x80499e1:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x80499e4:	jb	0x8049a05 [IMM <CODEREF>]
	jb	.label_82
	# 0x80499e6:	subl	$1, -0x54(%ebp) [IMM, MEM]
	subl	$1, -0x54(%ebp)
	# 0x80499ea:	movl	-0x30(%ebp), %edx [MEM, REG]
	movl	-0x30(%ebp), %edx
	# 0x80499ed:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x80499f0:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x80499f3:	pushl	%edx [REG]
	pushl	%edx
	# 0x80499f4:	pushl	%eax [REG]
	pushl	%eax
	# 0x80499f5:	pushl	-0x58(%ebp) [MEM]
	pushl	-0x58(%ebp)
	# 0x80499f8:	calll	0x8048f00 [IMM <CODEREF>]
	calll	mempcpy
	# 0x80499fd:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049a00:	movl	%eax, -0x58(%ebp) [REG, MEM]
	movl	%eax, -0x58(%ebp)
	# 0x8049a03:	jmp	0x8049a06 [IMM <CODEREF>]
	jmp	.label_89
	# 0x8049a05:	nop	 []
.label_82:
	nop	
	# 0x8049a06:	movl	-0x34(%ebp), %edx [MEM, REG]
.label_89:
	movl	-0x34(%ebp), %edx
	# 0x8049a09:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x8049a0c:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x8049a0e:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x8049a11:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x8049a15:	addl	$1, -0x50(%ebp) [IMM, MEM]
	addl	$1, -0x50(%ebp)
	# 0x8049a19:	subl	$0xc, %esp [IMM, REG]
.label_79:
	subl	$0xc, %esp
	# 0x8049a1c:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049a1f:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049a20:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x8049a25:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049a28:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x8049a2c:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x8049a2f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049a31:	jne	0x8049a3a [IMM <CODEREF>]
	jne	.label_84
	# 0x8049a33:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x8049a36:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049a38:	je	0x8049a41 [IMM <CODEREF>]
	je	.label_85
	# 0x8049a3a:	movl	$1, %eax [IMM, REG]
.label_84:
	movl	$1, %eax
	# 0x8049a3f:	jmp	0x8049a46 [IMM <CODEREF>]
	jmp	.label_88
	# 0x8049a41:	movl	$0, %eax [IMM, REG]
.label_85:
	movl	$0, %eax
	# 0x8049a46:	testl	%eax, %eax [REG, REG]
.label_88:
	testl	%eax, %eax
	# 0x8049a48:	je	0x8049a50 [IMM <CODEREF>]
	je	.label_75
	# 0x8049a4a:	cmpl	$0, -0x54(%ebp) [IMM, MEM]
	cmpl	$0, -0x54(%ebp)
	# 0x8049a4e:	jne	0x80499de [IMM <CODEREF>]
	jne	.label_77
	# 0x8049a50:	movl	-0x58(%ebp), %eax [MEM, REG]
.label_75:
	movl	-0x58(%ebp), %eax
	# 0x8049a53:	movb	$0, 0(%eax) [IMM, MEM]
	movb	$0, 0(%eax)
	# 0x8049a56:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x8049a59:	movl	-0xc(%ebp), %ecx [MEM, REG]
.label_87:
	movl	-0xc(%ebp), %ecx
	# 0x8049a5c:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x8049a63:	je	0x8049a6a [IMM <CODEREF>]
	je	.label_81
	# 0x8049a65:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x8049a6a:	leave	 []
.label_81:
	leave	
	# 0x8049a6b:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049a6c

	# 0x8049a6c:	pushl	%ebp [REG]
	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	pushl	%ebp
	# 0x8049a6d:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049a6f:	subl	$0x68, %esp [IMM, REG]
	subl	$0x68, %esp
	# 0x8049a72:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049a75:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x8049a78:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x8049a7e:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049a81:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x8049a83:	movl	$0, -0x4c(%ebp) [IMM, MEM]
	movl	$0, -0x4c(%ebp)
	# 0x8049a8a:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x8049a8d:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x8049a90:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x8049a94:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049a97:	pushl	$8 [IMM]
	pushl	$8
	# 0x8049a99:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049a9b:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049a9e:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049aa1:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049aa2:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x8049aa7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049aaa:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x8049aae:	jmp	0x8049ada [IMM <CODEREF>]
	jmp	.label_93
	# 0x8049ab0:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_91:
	movl	-0x34(%ebp), %eax
	# 0x8049ab3:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x8049ab5:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x8049ab8:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x8049aba:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x8049abc:	movl	%eax, -0x48(%ebp) [REG, MEM]
	movl	%eax, -0x48(%ebp)
	# 0x8049abf:	movl	-0x48(%ebp), %eax [MEM, REG]
	movl	-0x48(%ebp), %eax
	# 0x8049ac2:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x8049ac5:	jae	0x8049b0d [IMM <CODEREF>]
	jae	.label_94
	# 0x8049ac7:	addl	$1, -0x4c(%ebp) [IMM, MEM]
	addl	$1, -0x4c(%ebp)
	# 0x8049acb:	movl	-0x34(%ebp), %edx [MEM, REG]
	movl	-0x34(%ebp), %edx
	# 0x8049ace:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x8049ad1:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x8049ad3:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x8049ad6:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x8049ada:	subl	$0xc, %esp [IMM, REG]
.label_93:
	subl	$0xc, %esp
	# 0x8049add:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x8049ae0:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049ae1:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x8049ae6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049ae9:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x8049aed:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x8049af0:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049af2:	jne	0x8049afb [IMM <CODEREF>]
	jne	.label_90
	# 0x8049af4:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x8049af7:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049af9:	je	0x8049b02 [IMM <CODEREF>]
	je	.label_95
	# 0x8049afb:	movl	$1, %eax [IMM, REG]
.label_90:
	movl	$1, %eax
	# 0x8049b00:	jmp	0x8049b07 [IMM <CODEREF>]
	jmp	.label_97
	# 0x8049b02:	movl	$0, %eax [IMM, REG]
.label_95:
	movl	$0, %eax
	# 0x8049b07:	testl	%eax, %eax [REG, REG]
.label_97:
	testl	%eax, %eax
	# 0x8049b09:	jne	0x8049ab0 [IMM <CODEREF>]
	jne	.label_91
	# 0x8049b0b:	jmp	0x8049b0e [IMM <CODEREF>]
	jmp	.label_92
	# 0x8049b0d:	nop	 []
.label_94:
	nop	
	# 0x8049b0e:	movl	-0x4c(%ebp), %eax [MEM, REG]
.label_92:
	movl	-0x4c(%ebp), %eax
	# 0x8049b11:	movl	-0xc(%ebp), %ecx [MEM, REG]
	movl	-0xc(%ebp), %ecx
	# 0x8049b14:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x8049b1b:	je	0x8049b22 [IMM <CODEREF>]
	je	.label_96
	# 0x8049b1d:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x8049b22:	leave	 []
.label_96:
	leave	
	# 0x8049b23:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049b24

	# 0x8049b24:	pushl	%ebp [REG]
	.globl usage
	.type usage, @function
usage:
	pushl	%ebp
	# 0x8049b25:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049b27:	pushl	%esi [REG]
	pushl	%esi
	# 0x8049b28:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049b29:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x8049b2d:	je	0x8049b5f [IMM <CODEREF>]
	je	.label_105
	# 0x8049b2f:	movl	0x80531b8, %ebx [MEM, REG]
	movl	program_name,  %ebx
	# 0x8049b35:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049b38:	pushl	$0x804f00c [IMM <DATAREF>]
	pushl	$label_108
	# 0x8049b3d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049b42:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049b45:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x8049b47:	movl	0x8053188, %eax [MEM, REG]
	movl	stderr,  %eax
	# 0x8049b4c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049b4f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049b50:	pushl	%edx [REG]
	pushl	%edx
	# 0x8049b51:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049b52:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x8049b57:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049b5a:	jmp	0x8049d04 [IMM <CODEREF>]
	jmp	.label_102
	# 0x8049b5f:	movl	0x80531b8, %esi [MEM, REG]
.label_105:
	movl	program_name,  %esi
	# 0x8049b65:	movl	0x80531b8, %ebx [MEM, REG]
	movl	program_name,  %ebx
	# 0x8049b6b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049b6e:	pushl	$0x804f034 [IMM <DATAREF>]
	pushl	$label_111
	# 0x8049b73:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049b78:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049b7b:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049b7e:	pushl	%esi [REG]
	pushl	%esi
	# 0x8049b7f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049b80:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049b81:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x8049b86:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049b89:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049b8c:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x8049b8e:	calll	0x8048fc0 [IMM <CODEREF>]
	calll	putchar_unlocked
	# 0x8049b93:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049b96:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049b9c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049b9f:	pushl	$0x804f05c [IMM <DATAREF>]
	pushl	$label_101
	# 0x8049ba4:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049ba9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bac:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049baf:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049bb0:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049bb1:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049bb6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bb9:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049bbf:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049bc2:	pushl	$0x804f08c [IMM <DATAREF>]
	pushl	$label_110
	# 0x8049bc7:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049bcc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bcf:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049bd2:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049bd3:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049bd4:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049bd9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bdc:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049be2:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049be5:	pushl	$0x804f0c4 [IMM <DATAREF>]
	pushl	$label_103
	# 0x8049bea:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049bef:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bf2:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049bf5:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049bf6:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049bf7:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049bfc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049bff:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049c05:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049c08:	pushl	$0x804f1d8 [IMM <DATAREF>]
	pushl	$label_112
	# 0x8049c0d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049c12:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c15:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049c18:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049c19:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049c1a:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049c1f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c22:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049c28:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049c2b:	pushl	$0x804f2fc [IMM <DATAREF>]
	pushl	$label_104
	# 0x8049c30:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049c35:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c38:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049c3b:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049c3c:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049c3d:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049c42:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c45:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049c4b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049c4e:	pushl	$0x804f370 [IMM <DATAREF>]
	pushl	$label_99
	# 0x8049c53:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049c58:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c5b:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049c5e:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049c5f:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049c60:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049c65:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c68:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049c6e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049c71:	pushl	$0x804f42c [IMM <DATAREF>]
	pushl	$label_106
	# 0x8049c76:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049c7b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c7e:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049c81:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049c82:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049c83:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049c88:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049c8b:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049c91:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049c94:	pushl	$0x804f564 [IMM <DATAREF>]
	pushl	$label_98
	# 0x8049c99:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049c9e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049ca1:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049ca4:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049ca5:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049ca6:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049cab:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049cae:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049cb4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049cb7:	pushl	$0x804f630 [IMM <DATAREF>]
	pushl	$label_107
	# 0x8049cbc:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049cc1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049cc4:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049cc7:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049cc8:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049cc9:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049cce:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049cd1:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x8049cd7:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049cda:	pushl	$0x804f754 [IMM <DATAREF>]
	pushl	$label_100
	# 0x8049cdf:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049ce4:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049ce7:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049cea:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049ceb:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049cec:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x8049cf1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049cf4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049cf7:	pushl	$0x804f7f0 [IMM <DATAREF>]
	pushl	$label_109
	# 0x8049cfc:	calll	0x80490ef [IMM <CODEREF>]
	calll	emit_ancillary_info
	# 0x8049d01:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d04:	subl	$0xc, %esp [IMM, REG]
.label_102:
	subl	$0xc, %esp
	# 0x8049d07:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x8049d0a:	calll	0x8048e40 [IMM <CODEREF>]
	calll	exit
	.section	.text
	.align	32
	#Procedure 0x8049d0f

	# 0x8049d0f:	pushl	%ebp [REG]
	.globl integer_overflow
	.type integer_overflow, @function
integer_overflow:
	pushl	%ebp
	# 0x8049d10:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049d12:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x8049d15:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049d18:	movb	%al, -0xc(%ebp) [REG, MEM]
	movb	%al, -0xc(%ebp)
	# 0x8049d1b:	movsbl	-0xc(%ebp), %eax [MEM, REG]
	movsbl	-0xc(%ebp), %eax
	# 0x8049d1f:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049d20:	pushl	$0x804f7f5 [IMM <DATAREF>]
	pushl	$label_113
	# 0x8049d25:	pushl	$0x22 [IMM]
	pushl	$0x22
	# 0x8049d27:	pushl	$3 [IMM]
	pushl	$3
	# 0x8049d29:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x8049d2e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	.section	.text
	.align	32
	#Procedure 0x8049d31

	# 0x8049d31:	leal	4(%esp), %ecx [MEM, REG]
	.globl main
	.type main, @function
main:
	leal	4(%esp), %ecx
	# 0x8049d35:	andl	$0xfffffff0, %esp [IMM, REG]
	andl	$0xfffffff0, %esp
	# 0x8049d38:	pushl	-4(%ecx) [MEM]
	pushl	-4(%ecx)
	# 0x8049d3b:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x8049d3c:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049d3e:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049d3f:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x8049d40:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x8049d43:	movl	%ecx, %ebx [REG, REG]
	movl	%ecx, %ebx
	# 0x8049d45:	movl	4(%ebx), %eax [MEM, REG]
	movl	4(%ebx), %eax
	# 0x8049d48:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049d4a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049d4d:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049d4e:	calll	0x804b7f8 [IMM <CODEREF>]
	calll	set_program_name
	# 0x8049d53:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d56:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049d59:	pushl	$0x804efd7 [IMM <DATAREF>]
	pushl	$label_11
	# 0x8049d5e:	pushl	$6 [IMM]
	pushl	$6
	# 0x8049d60:	calll	0x8048f20 [IMM <CODEREF>]
	calll	setlocale
	# 0x8049d65:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d68:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049d6b:	pushl	$0x804f7f8 [IMM <DATAREF>]
	pushl	$label_119
	# 0x8049d70:	pushl	$0x804eeba [IMM <DATAREF>]
	pushl	$label_14
	# 0x8049d75:	calll	0x8048f60 [IMM <CODEREF>]
	calll	bindtextdomain
	# 0x8049d7a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d7d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049d80:	pushl	$0x804eeba [IMM <DATAREF>]
	pushl	$label_14
	# 0x8049d85:	calll	0x8048d40 [IMM <CODEREF>]
	calll	textdomain
	# 0x8049d8a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d8d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049d90:	pushl	$3 [IMM]
	pushl	$3
	# 0x8049d92:	calll	0x80490db [IMM <CODEREF>]
	calll	initialize_exit_failure
	# 0x8049d97:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049d9a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049d9d:	pushl	$0x804b18e [IMM <CODEREF>]
	pushl	$close_stdout
	# 0x8049da2:	calll	0x804ee50 [IMM <CODEREF>]
	calll	atexit
	# 0x8049da7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049daa:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049dad:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049daf:	pushl	$0x804f810 [IMM <DATAREF>]
	pushl	$label_120
	# 0x8049db4:	pushl	$0x804f81c [IMM <DATAREF>]
	pushl	$label_121
	# 0x8049db9:	pushl	$0x804f82b [IMM <DATAREF>]
	pushl	$label_122
	# 0x8049dbe:	pushl	$0x8049b24 [IMM <CODEREF>]
	pushl	$usage
	# 0x8049dc3:	pushl	$0x804f837 [IMM <DATAREF>]
	pushl	$label_123
	# 0x8049dc8:	pushl	$0x804ef50 [IMM <DATAREF>]
	pushl	$label_31
	# 0x8049dcd:	pushl	$0x804f7f0 [IMM <DATAREF>]
	pushl	$label_109
	# 0x8049dd2:	pushl	4(%ebx) [MEM]
	pushl	4(%ebx)
	# 0x8049dd5:	pushl	0(%ebx) [MEM]
	pushl	0(%ebx)
	# 0x8049dd7:	calll	0x804b332 [IMM <CODEREF>]
	calll	parse_long_options
	# 0x8049ddc:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x8049ddf:	movl	0(%ebx), %eax [MEM, REG]
	movl	0(%ebx), %eax
	# 0x8049de1:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x8049de4:	cmpl	$1, -0x10(%ebp) [IMM, MEM]
	cmpl	$1, -0x10(%ebp)
	# 0x8049de8:	jbe	0x8049e0f [IMM <CODEREF>]
	jbe	.label_114
	# 0x8049dea:	movl	4(%ebx), %eax [MEM, REG]
	movl	4(%ebx), %eax
	# 0x8049ded:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049df0:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049df2:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049df5:	pushl	$0x804f83c [IMM <DATAREF>]
	pushl	$label_124
	# 0x8049dfa:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049dfb:	calll	0x8048c50 [IMM <CODEREF>]
	calll	strcmp
	# 0x8049e00:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e03:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049e05:	jne	0x8049e0f [IMM <CODEREF>]
	jne	.label_114
	# 0x8049e07:	subl	$1, -0x10(%ebp) [IMM, MEM]
	subl	$1, -0x10(%ebp)
	# 0x8049e0b:	addl	$4, 4(%ebx) [IMM, MEM]
	addl	$4, 4(%ebx)
	# 0x8049e0f:	cmpl	$1, -0x10(%ebp) [IMM, MEM]
.label_114:
	cmpl	$1, -0x10(%ebp)
	# 0x8049e13:	ja	0x8049e3f [IMM <CODEREF>]
	ja	.label_116
	# 0x8049e15:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049e18:	pushl	$0x804f83f [IMM <DATAREF>]
	pushl	$label_117
	# 0x8049e1d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049e22:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e25:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049e28:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049e29:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049e2b:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049e2d:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x8049e32:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e35:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049e38:	pushl	$2 [IMM]
	pushl	$2
	# 0x8049e3a:	calll	0x8049b24 [IMM <CODEREF>]
	calll	usage
	# 0x8049e3f:	movl	4(%ebx), %eax [MEM, REG]
.label_116:
	movl	4(%ebx), %eax
	# 0x8049e42:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049e45:	movl	%eax, 0x80531ac [REG, MEM]
	movl	%eax, args
	# 0x8049e4a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049e4d:	pushl	$1 [IMM]
	pushl	$1
	# 0x8049e4f:	calll	0x804b084 [IMM <CODEREF>]
	calll	eval
	# 0x8049e54:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e57:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049e5a:	calll	0x804a237 [IMM <CODEREF>]
	calll	nomoreargs
	# 0x8049e5f:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x8049e62:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x8049e64:	je	0x8049e9d [IMM <CODEREF>]
	je	.label_118
	# 0x8049e66:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x8049e6b:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049e6d:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049e70:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049e71:	pushl	$8 [IMM]
	pushl	$8
	# 0x8049e73:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049e75:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x8049e7a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e7d:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x8049e7f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049e82:	pushl	$0x804f850 [IMM <DATAREF>]
	pushl	$label_115
	# 0x8049e87:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x8049e8c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e8f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x8049e90:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049e91:	pushl	$0 [IMM]
	pushl	$0
	# 0x8049e93:	pushl	$2 [IMM]
	pushl	$2
	# 0x8049e95:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x8049e9a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049e9d:	subl	$0xc, %esp [IMM, REG]
.label_118:
	subl	$0xc, %esp
	# 0x8049ea0:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x8049ea3:	calll	0x8049f80 [IMM <CODEREF>]
	calll	printv
	# 0x8049ea8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049eab:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049eae:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x8049eb1:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x8049eb6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049eb9:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x8049ebc:	leal	-8(%ebp), %esp [MEM, REG]
	leal	-8(%ebp), %esp
	# 0x8049ebf:	popl	%ecx [REG]
	popl	%ecx
	# 0x8049ec0:	popl	%ebx [REG]
	popl	%ebx
	# 0x8049ec1:	popl	%ebp [REG]
	popl	%ebp
	# 0x8049ec2:	leal	-4(%ecx), %esp [MEM, REG]
	leal	-4(%ecx), %esp
	# 0x8049ec5:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049ec6

	# 0x8049ec6:	pushl	%ebp [REG]
	.globl int_value
	.type int_value, @function
int_value:
	pushl	%ebp
	# 0x8049ec7:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049ec9:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x8049ecc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049ecf:	pushl	$0xc [IMM]
	pushl	$0xc
	# 0x8049ed1:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x8049ed6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049ed9:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049edc:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049edf:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x8049ee5:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049ee8:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049eeb:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049eee:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x8049ef1:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049ef2:	calll	0x804929a [IMM <CODEREF>]
	calll	mpz_init_set_ui
	# 0x8049ef7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049efa:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049efd:	leave	 []
	leave	
	# 0x8049efe:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049eff

	# 0x8049eff:	pushl	%ebp [REG]
	.globl str_value
	.type str_value, @function
str_value:
	pushl	%ebp
	# 0x8049f00:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049f02:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x8049f05:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049f08:	pushl	$0xc [IMM]
	pushl	$0xc
	# 0x8049f0a:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x8049f0f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049f12:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x8049f15:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049f18:	movl	$1, 0(%eax) [IMM, MEM]
	movl	$1, 0(%eax)
	# 0x8049f1e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049f21:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x8049f24:	calll	0x804de92 [IMM <CODEREF>]
	calll	xstrdup
	# 0x8049f29:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049f2c:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x8049f2e:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049f31:	movl	%edx, 4(%eax) [REG, MEM]
	movl	%edx, 4(%eax)
	# 0x8049f34:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x8049f37:	leave	 []
	leave	
	# 0x8049f38:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f39

	# 0x8049f39:	pushl	%ebp [REG]
	.globl freev
	.type freev, @function
freev:
	pushl	%ebp
	# 0x8049f3a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049f3c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049f3f:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049f42:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049f44:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x8049f47:	jne	0x8049f5d [IMM <CODEREF>]
	jne	.label_126
	# 0x8049f49:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049f4c:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x8049f4f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049f52:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049f53:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x8049f58:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049f5b:	jmp	0x8049f6f [IMM <CODEREF>]
	jmp	.label_125
	# 0x8049f5d:	movl	8(%ebp), %eax [MEM, REG]
.label_126:
	movl	8(%ebp), %eax
	# 0x8049f60:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049f63:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049f66:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049f67:	calll	0x8049294 [IMM <CODEREF>]
	calll	mpz_clear
	# 0x8049f6c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049f6f:	subl	$0xc, %esp [IMM, REG]
.label_125:
	subl	$0xc, %esp
	# 0x8049f72:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x8049f75:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x8049f7a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049f7d:	nop	 []
	nop	
	# 0x8049f7e:	leave	 []
	leave	
	# 0x8049f7f:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f80

	# 0x8049f80:	pushl	%ebp [REG]
	.globl printv
	.type printv, @function
printv:
	pushl	%ebp
	# 0x8049f81:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049f83:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x8049f86:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049f89:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049f8b:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049f8d:	je	0x8049f96 [IMM <CODEREF>]
	je	.label_127
	# 0x8049f8f:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x8049f92:	je	0x8049fbf [IMM <CODEREF>]
	je	.label_130
	# 0x8049f94:	jmp	0x8049fd3 [IMM <CODEREF>]
	jmp	.label_128
	# 0x8049f96:	movl	8(%ebp), %eax [MEM, REG]
.label_127:
	movl	8(%ebp), %eax
	# 0x8049f99:	leal	4(%eax), %edx [MEM, REG]
	leal	4(%eax), %edx
	# 0x8049f9c:	movl	0x8053198, %eax [MEM, REG]
	movl	stdout,  %eax
	# 0x8049fa1:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049fa4:	pushl	%edx [REG]
	pushl	%edx
	# 0x8049fa5:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x8049fa7:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049fa8:	calll	0x8049643 [IMM <CODEREF>]
	calll	mpz_out_str
	# 0x8049fad:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049fb0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049fb3:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x8049fb5:	calll	0x8048fc0 [IMM <CODEREF>]
	calll	putchar_unlocked
	# 0x8049fba:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049fbd:	jmp	0x8049fd8 [IMM <CODEREF>]
	jmp	.label_129
	# 0x8049fbf:	movl	8(%ebp), %eax [MEM, REG]
.label_130:
	movl	8(%ebp), %eax
	# 0x8049fc2:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x8049fc5:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x8049fc8:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049fc9:	calll	0x8048e20 [IMM <CODEREF>]
	calll	puts
	# 0x8049fce:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x8049fd1:	jmp	0x8049fd8 [IMM <CODEREF>]
	jmp	.label_129
	# 0x8049fd3:	calll	0x8048f80 [IMM <CODEREF>]
.label_128:
	calll	abort
	# 0x8049fd8:	nop	 []
.label_129:
	nop	
	# 0x8049fd9:	leave	 []
	leave	
	# 0x8049fda:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049fdb

	# 0x8049fdb:	pushl	%ebp [REG]
	.globl null
	.type null, @function
null:
	pushl	%ebp
	# 0x8049fdc:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x8049fde:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x8049fe1:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x8049fe4:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x8049fe6:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x8049fe8:	je	0x8049ff1 [IMM <CODEREF>]
	je	.label_132
	# 0x8049fea:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x8049fed:	je	0x804a00a [IMM <CODEREF>]
	je	.label_134
	# 0x8049fef:	jmp	0x804a05b [IMM <CODEREF>]
	jmp	.label_135
	# 0x8049ff1:	movl	8(%ebp), %eax [MEM, REG]
.label_132:
	movl	8(%ebp), %eax
	# 0x8049ff4:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x8049ff7:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x8049ffa:	pushl	%eax [REG]
	pushl	%eax
	# 0x8049ffb:	calll	0x80495ce [IMM <CODEREF>]
	calll	mpz_sgn
	# 0x804a000:	addl	$8, %esp [IMM, REG]
	addl	$8, %esp
	# 0x804a003:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a005:	sete	%al [REG]
	sete	%al
	# 0x804a008:	jmp	0x804a060 [IMM <CODEREF>]
	jmp	.label_131
	# 0x804a00a:	movl	8(%ebp), %eax [MEM, REG]
.label_134:
	movl	8(%ebp), %eax
	# 0x804a00d:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a010:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a013:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804a016:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a019:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a01b:	jne	0x804a024 [IMM <CODEREF>]
	jne	.label_136
	# 0x804a01d:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804a022:	jmp	0x804a060 [IMM <CODEREF>]
	jmp	.label_131
	# 0x804a024:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_136:
	movl	-0xc(%ebp), %eax
	# 0x804a027:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a02a:	cmpb	$0x2d, %al [IMM, REG]
	cmpb	$0x2d, %al
	# 0x804a02c:	sete	%al [REG]
	sete	%al
	# 0x804a02f:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804a032:	addl	%eax, -0xc(%ebp) [REG, MEM]
	addl	%eax, -0xc(%ebp)
	# 0x804a035:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_133:
	movl	-0xc(%ebp), %eax
	# 0x804a038:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a03b:	cmpb	$0x30, %al [IMM, REG]
	cmpb	$0x30, %al
	# 0x804a03d:	je	0x804a046 [IMM <CODEREF>]
	je	.label_137
	# 0x804a03f:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804a044:	jmp	0x804a060 [IMM <CODEREF>]
	jmp	.label_131
	# 0x804a046:	addl	$1, -0xc(%ebp) [IMM, MEM]
.label_137:
	addl	$1, -0xc(%ebp)
	# 0x804a04a:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804a04d:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a050:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a052:	jne	0x804a035 [IMM <CODEREF>]
	jne	.label_133
	# 0x804a054:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804a059:	jmp	0x804a060 [IMM <CODEREF>]
	jmp	.label_131
	# 0x804a05b:	calll	0x8048f80 [IMM <CODEREF>]
.label_135:
	calll	abort
	# 0x804a060:	leave	 []
.label_131:
	leave	
	# 0x804a061:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a062

	# 0x804a062:	pushl	%ebp [REG]
	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	pushl	%ebp
	# 0x804a063:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a065:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a068:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a06b:	cmpb	$0x2d, %al [IMM, REG]
	cmpb	$0x2d, %al
	# 0x804a06d:	sete	%al [REG]
	sete	%al
	# 0x804a070:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804a073:	addl	%eax, 8(%ebp) [REG, MEM]
	addl	%eax, 8(%ebp)
	# 0x804a076:	movl	8(%ebp), %eax [MEM, REG]
.label_140:
	movl	8(%ebp), %eax
	# 0x804a079:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a07c:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804a07f:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804a082:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804a085:	jbe	0x804a08e [IMM <CODEREF>]
	jbe	.label_138
	# 0x804a087:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804a08c:	jmp	0x804a0a1 [IMM <CODEREF>]
	jmp	.label_139
	# 0x804a08e:	addl	$1, 8(%ebp) [IMM, MEM]
.label_138:
	addl	$1, 8(%ebp)
	# 0x804a092:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a095:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804a098:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a09a:	jne	0x804a076 [IMM <CODEREF>]
	jne	.label_140
	# 0x804a09c:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804a0a1:	popl	%ebp [REG]
.label_139:
	popl	%ebp
	# 0x804a0a2:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a0a3

	# 0x804a0a3:	pushl	%ebp [REG]
	.globl tostring
	.type tostring, @function
tostring:
	pushl	%ebp
	# 0x804a0a4:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a0a6:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804a0a9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a0ac:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a0ae:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a0b0:	je	0x804a0b9 [IMM <CODEREF>]
	je	.label_143
	# 0x804a0b2:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804a0b5:	je	0x804a0fd [IMM <CODEREF>]
	je	.label_142
	# 0x804a0b7:	jmp	0x804a0f8 [IMM <CODEREF>]
	jmp	.label_144
	# 0x804a0b9:	movl	8(%ebp), %eax [MEM, REG]
.label_143:
	movl	8(%ebp), %eax
	# 0x804a0bc:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804a0bf:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a0c2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a0c3:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804a0c5:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a0c7:	calll	0x8049579 [IMM <CODEREF>]
	calll	mpz_get_str
	# 0x804a0cc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a0cf:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a0d2:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a0d5:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804a0d8:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a0db:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a0dc:	calll	0x8049294 [IMM <CODEREF>]
	calll	mpz_clear
	# 0x804a0e1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a0e4:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a0e7:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804a0ea:	movl	%edx, 4(%eax) [REG, MEM]
	movl	%edx, 4(%eax)
	# 0x804a0ed:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a0f0:	movl	$1, 0(%eax) [IMM, MEM]
	movl	$1, 0(%eax)
	# 0x804a0f6:	jmp	0x804a0fe [IMM <CODEREF>]
	jmp	.label_141
	# 0x804a0f8:	calll	0x8048f80 [IMM <CODEREF>]
.label_144:
	calll	abort
	# 0x804a0fd:	nop	 []
.label_142:
	nop	
	# 0x804a0fe:	nop	 []
.label_141:
	nop	
	# 0x804a0ff:	leave	 []
	leave	
	# 0x804a100:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a101

	# 0x804a101:	pushl	%ebp [REG]
	.globl toarith
	.type toarith, @function
toarith:
	pushl	%ebp
	# 0x804a102:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a104:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804a107:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a10a:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a10c:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a10e:	je	0x804a117 [IMM <CODEREF>]
	je	.label_145
	# 0x804a110:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804a113:	je	0x804a11e [IMM <CODEREF>]
	je	.label_148
	# 0x804a115:	jmp	0x804a18d [IMM <CODEREF>]
	jmp	.label_150
	# 0x804a117:	movl	$1, %eax [IMM, REG]
.label_145:
	movl	$1, %eax
	# 0x804a11c:	jmp	0x804a192 [IMM <CODEREF>]
	jmp	.label_151
	# 0x804a11e:	movl	8(%ebp), %eax [MEM, REG]
.label_148:
	movl	8(%ebp), %eax
	# 0x804a121:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a124:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a127:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a12a:	calll	0x804a062 [IMM <CODEREF>]
	calll	looks_like_integer
	# 0x804a12f:	addl	$4, %esp [IMM, REG]
	addl	$4, %esp
	# 0x804a132:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804a135:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a137:	je	0x804a140 [IMM <CODEREF>]
	je	.label_147
	# 0x804a139:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804a13e:	jmp	0x804a192 [IMM <CODEREF>]
	jmp	.label_151
	# 0x804a140:	movl	8(%ebp), %eax [MEM, REG]
.label_147:
	movl	8(%ebp), %eax
	# 0x804a143:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804a146:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a149:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804a14b:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a14e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a14f:	calll	0x80492b0 [IMM <CODEREF>]
	calll	mpz_init_set_str
	# 0x804a154:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a157:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a159:	je	0x804a16f [IMM <CODEREF>]
	je	.label_149
	# 0x804a15b:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a15e:	pushl	$0x804f875 [IMM <DATAREF>]
	pushl	$label_146
	# 0x804a163:	pushl	$0x22 [IMM]
	pushl	$0x22
	# 0x804a165:	pushl	$3 [IMM]
	pushl	$3
	# 0x804a167:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a16c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a16f:	subl	$0xc, %esp [IMM, REG]
.label_149:
	subl	$0xc, %esp
	# 0x804a172:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a175:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804a17a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a17d:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a180:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x804a186:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804a18b:	jmp	0x804a192 [IMM <CODEREF>]
	jmp	.label_151
	# 0x804a18d:	calll	0x8048f80 [IMM <CODEREF>]
.label_150:
	calll	abort
	# 0x804a192:	leave	 []
.label_151:
	leave	
	# 0x804a193:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a194

	# 0x804a194:	pushl	%ebp [REG]
	.globl getsize
	.type getsize, @function
getsize:
	pushl	%ebp
	# 0x804a195:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a197:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x804a19a:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a19d:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804a1a0:	calll	0x80495ce [IMM <CODEREF>]
	calll	mpz_sgn
	# 0x804a1a5:	addl	$8, %esp [IMM, REG]
	addl	$8, %esp
	# 0x804a1a8:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a1aa:	jns	0x804a1b3 [IMM <CODEREF>]
	jns	.label_153
	# 0x804a1ac:	movl	$0xffffffff, %eax [IMM, REG]
	movl	$0xffffffff, %eax
	# 0x804a1b1:	jmp	0x804a1e6 [IMM <CODEREF>]
	jmp	.label_154
	# 0x804a1b3:	subl	$4, %esp [IMM, REG]
.label_153:
	subl	$4, %esp
	# 0x804a1b6:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804a1b9:	calll	0x804960d [IMM <CODEREF>]
	calll	mpz_fits_ulong_p
	# 0x804a1be:	addl	$8, %esp [IMM, REG]
	addl	$8, %esp
	# 0x804a1c1:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a1c3:	je	0x804a1e1 [IMM <CODEREF>]
	je	.label_152
	# 0x804a1c5:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a1c8:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804a1cb:	calll	0x8049636 [IMM <CODEREF>]
	calll	mpz_get_ui
	# 0x804a1d0:	addl	$8, %esp [IMM, REG]
	addl	$8, %esp
	# 0x804a1d3:	movl	%eax, -4(%ebp) [REG, MEM]
	movl	%eax, -4(%ebp)
	# 0x804a1d6:	cmpl	$-1, -4(%ebp) [IMM, MEM]
	cmpl	$-1, -4(%ebp)
	# 0x804a1da:	je	0x804a1e1 [IMM <CODEREF>]
	je	.label_152
	# 0x804a1dc:	movl	-4(%ebp), %eax [MEM, REG]
	movl	-4(%ebp), %eax
	# 0x804a1df:	jmp	0x804a1e6 [IMM <CODEREF>]
	jmp	.label_154
	# 0x804a1e1:	movl	$0xfffffffe, %eax [IMM, REG]
.label_152:
	movl	$0xfffffffe, %eax
	# 0x804a1e6:	leave	 []
.label_154:
	leave	
	# 0x804a1e7:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a1e8

	# 0x804a1e8:	pushl	%ebp [REG]
	.globl nextarg
	.type nextarg, @function
nextarg:
	pushl	%ebp
	# 0x804a1e9:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a1eb:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804a1ee:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a1f3:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a1f5:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a1f7:	jne	0x804a200 [IMM <CODEREF>]
	jne	.label_155
	# 0x804a1f9:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804a1fe:	jmp	0x804a235 [IMM <CODEREF>]
	jmp	.label_156
	# 0x804a200:	movl	0x80531ac, %eax [MEM, REG]
.label_155:
	movl	args,  %eax
	# 0x804a205:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a207:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804a20a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804a20d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a20e:	calll	0x8048c50 [IMM <CODEREF>]
	calll	strcmp
	# 0x804a213:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a216:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a218:	sete	%al [REG]
	sete	%al
	# 0x804a21b:	movb	%al, -9(%ebp) [REG, MEM]
	movb	%al, -9(%ebp)
	# 0x804a21e:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a223:	movzbl	-9(%ebp), %edx [MEM, REG]
	movzbl	-9(%ebp), %edx
	# 0x804a227:	shll	$2, %edx [IMM, REG]
	shll	$2, %edx
	# 0x804a22a:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804a22c:	movl	%eax, 0x80531ac [REG, MEM]
	movl	%eax, args
	# 0x804a231:	movzbl	-9(%ebp), %eax [MEM, REG]
	movzbl	-9(%ebp), %eax
	# 0x804a235:	leave	 []
.label_156:
	leave	
	# 0x804a236:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a237

	# 0x804a237:	pushl	%ebp [REG]
	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	pushl	%ebp
	# 0x804a238:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a23a:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a23f:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a241:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a243:	sete	%al [REG]
	sete	%al
	# 0x804a246:	popl	%ebp [REG]
	popl	%ebp
	# 0x804a247:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a248

	# 0x804a248:	pushl	%ebp [REG]
	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	pushl	%ebp
	# 0x804a249:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a24b:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a24c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a24f:	calll	0x804a237 [IMM <CODEREF>]
	calll	nomoreargs
	# 0x804a254:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a256:	je	0x804a292 [IMM <CODEREF>]
	je	.label_157
	# 0x804a258:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a25d:	subl	$4, %eax [IMM, REG]
	subl	$4, %eax
	# 0x804a260:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a262:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a265:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a266:	pushl	$8 [IMM]
	pushl	$8
	# 0x804a268:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a26a:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804a26f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a272:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804a274:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a277:	pushl	$0x804f878 [IMM <DATAREF>]
	pushl	$label_158
	# 0x804a27c:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804a281:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a284:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a285:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a286:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a288:	pushl	$2 [IMM]
	pushl	$2
	# 0x804a28a:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a28f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a292:	nop	 []
.label_157:
	nop	
	# 0x804a293:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x804a296:	leave	 []
	leave	
	# 0x804a297:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a298

	# 0x804a298:	pushl	%ebp [REG]
	.globl docolon
	.type docolon, @function
docolon:
	pushl	%ebp
	# 0x804a299:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a29b:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a29c:	subl	$0x154, %esp [IMM, REG]
	subl	$0x154, %esp
	# 0x804a2a2:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a2a5:	movl	%eax, -0x14c(%ebp) [REG, MEM]
	movl	%eax, -0x14c(%ebp)
	# 0x804a2ab:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804a2ae:	movl	%eax, -0x150(%ebp) [REG, MEM]
	movl	%eax, -0x150(%ebp)
	# 0x804a2b4:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804a2ba:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a2bd:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804a2bf:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a2c2:	pushl	-0x14c(%ebp) [MEM]
	pushl	-0x14c(%ebp)
	# 0x804a2c8:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a2cd:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a2d0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a2d3:	pushl	-0x150(%ebp) [MEM]
	pushl	-0x150(%ebp)
	# 0x804a2d9:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a2de:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a2e1:	movl	$0, -0x138(%ebp) [IMM, MEM]
	movl	$0, -0x138(%ebp)
	# 0x804a2eb:	movl	$0, -0x134(%ebp) [IMM, MEM]
	movl	$0, -0x134(%ebp)
	# 0x804a2f5:	movl	$0, -0x130(%ebp) [IMM, MEM]
	movl	$0, -0x130(%ebp)
	# 0x804a2ff:	movl	$0, -0x12c(%ebp) [IMM, MEM]
	movl	$0, -0x12c(%ebp)
	# 0x804a309:	movl	$0, -0x128(%ebp) [IMM, MEM]
	movl	$0, -0x128(%ebp)
	# 0x804a313:	leal	-0x10c(%ebp), %eax [MEM, REG]
	leal	-0x10c(%ebp), %eax
	# 0x804a319:	movl	%eax, -0x11c(%ebp) [REG, MEM]
	movl	%eax, -0x11c(%ebp)
	# 0x804a31f:	movl	$0, -0x118(%ebp) [IMM, MEM]
	movl	$0, -0x118(%ebp)
	# 0x804a329:	movl	$0x2c6, 0x80531a4 [IMM, MEM]
	movl	$0x2c6, re_syntax_options
	# 0x804a333:	movl	-0x150(%ebp), %eax [MEM, REG]
	movl	-0x150(%ebp), %eax
	# 0x804a339:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a33c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a33f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a340:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804a345:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a348:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804a34a:	movl	-0x150(%ebp), %eax [MEM, REG]
	movl	-0x150(%ebp), %eax
	# 0x804a350:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a353:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a356:	leal	-0x12c(%ebp), %edx [MEM, REG]
	leal	-0x12c(%ebp), %edx
	# 0x804a35c:	pushl	%edx [REG]
	pushl	%edx
	# 0x804a35d:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804a35e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a35f:	calll	0x8048f50 [IMM <CODEREF>]
	calll	re_compile_pattern
	# 0x804a364:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a367:	movl	%eax, -0x144(%ebp) [REG, MEM]
	movl	%eax, -0x144(%ebp)
	# 0x804a36d:	cmpl	$0, -0x144(%ebp) [IMM, MEM]
	cmpl	$0, -0x144(%ebp)
	# 0x804a374:	je	0x804a38d [IMM <CODEREF>]
	je	.label_169
	# 0x804a376:	pushl	-0x144(%ebp) [MEM]
	pushl	-0x144(%ebp)
	# 0x804a37c:	pushl	$0x804f875 [IMM <DATAREF>]
	pushl	$label_146
	# 0x804a381:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a383:	pushl	$2 [IMM]
	pushl	$2
	# 0x804a385:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a38a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a38d:	movzbl	-0x110(%ebp), %eax [MEM, REG]
.label_169:
	movzbl	-0x110(%ebp), %eax
	# 0x804a394:	andl	$0x7f, %eax [IMM, REG]
	andl	$0x7f, %eax
	# 0x804a397:	movb	%al, -0x110(%ebp) [REG, MEM]
	movb	%al, -0x110(%ebp)
	# 0x804a39d:	movl	-0x14c(%ebp), %eax [MEM, REG]
	movl	-0x14c(%ebp), %eax
	# 0x804a3a3:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a3a6:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a3a9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a3aa:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804a3af:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a3b2:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804a3b4:	movl	-0x14c(%ebp), %eax [MEM, REG]
	movl	-0x14c(%ebp), %eax
	# 0x804a3ba:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a3bd:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a3c0:	leal	-0x138(%ebp), %edx [MEM, REG]
	leal	-0x138(%ebp), %edx
	# 0x804a3c6:	pushl	%edx [REG]
	pushl	%edx
	# 0x804a3c7:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a3c9:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804a3ca:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a3cb:	leal	-0x12c(%ebp), %eax [MEM, REG]
	leal	-0x12c(%ebp), %eax
	# 0x804a3d1:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a3d2:	calll	0x8048e10 [IMM <CODEREF>]
	calll	re_match
	# 0x804a3d7:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804a3da:	movl	%eax, -0x140(%ebp) [REG, MEM]
	movl	%eax, -0x140(%ebp)
	# 0x804a3e0:	cmpl	$0, -0x140(%ebp) [IMM, MEM]
	cmpl	$0, -0x140(%ebp)
	# 0x804a3e7:	js	0x804a48a [IMM <CODEREF>]
	js	.label_162
	# 0x804a3ed:	movl	-0x114(%ebp), %eax [MEM, REG]
	movl	-0x114(%ebp), %eax
	# 0x804a3f3:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a3f5:	je	0x804a43d [IMM <CODEREF>]
	je	.label_171
	# 0x804a3f7:	movl	-0x14c(%ebp), %eax [MEM, REG]
	movl	-0x14c(%ebp), %eax
	# 0x804a3fd:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a400:	movl	-0x130(%ebp), %edx [MEM, REG]
	movl	-0x130(%ebp), %edx
	# 0x804a406:	addl	$4, %edx [IMM, REG]
	addl	$4, %edx
	# 0x804a409:	movl	0(%edx), %edx [MEM, REG]
	movl	0(%edx), %edx
	# 0x804a40b:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804a40d:	movb	$0, 0(%eax) [IMM, MEM]
	movb	$0, 0(%eax)
	# 0x804a410:	movl	-0x14c(%ebp), %eax [MEM, REG]
	movl	-0x14c(%ebp), %eax
	# 0x804a416:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a419:	movl	-0x134(%ebp), %edx [MEM, REG]
	movl	-0x134(%ebp), %edx
	# 0x804a41f:	addl	$4, %edx [IMM, REG]
	addl	$4, %edx
	# 0x804a422:	movl	0(%edx), %edx [MEM, REG]
	movl	0(%edx), %edx
	# 0x804a424:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804a426:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a429:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a42a:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a42f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a432:	movl	%eax, -0x148(%ebp) [REG, MEM]
	movl	%eax, -0x148(%ebp)
	# 0x804a438:	jmp	0x804a502 [IMM <CODEREF>]
	jmp	.label_160
	# 0x804a43d:	calll	0x8048d80 [IMM <CODEREF>]
.label_171:
	calll	__ctype_get_mb_cur_max
	# 0x804a442:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804a445:	je	0x804a465 [IMM <CODEREF>]
	je	.label_159
	# 0x804a447:	movl	-0x140(%ebp), %edx [MEM, REG]
	movl	-0x140(%ebp), %edx
	# 0x804a44d:	movl	-0x14c(%ebp), %eax [MEM, REG]
	movl	-0x14c(%ebp), %eax
	# 0x804a453:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a456:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804a459:	pushl	%edx [REG]
	pushl	%edx
	# 0x804a45a:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a45b:	calll	0x8049a6c [IMM <CODEREF>]
	calll	mbs_offset_to_chars
	# 0x804a460:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a463:	jmp	0x804a46b [IMM <CODEREF>]
	jmp	.label_168
	# 0x804a465:	movl	-0x140(%ebp), %eax [MEM, REG]
.label_159:
	movl	-0x140(%ebp), %eax
	# 0x804a46b:	movl	%eax, -0x13c(%ebp) [REG, MEM]
.label_168:
	movl	%eax, -0x13c(%ebp)
	# 0x804a471:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a474:	pushl	-0x13c(%ebp) [MEM]
	pushl	-0x13c(%ebp)
	# 0x804a47a:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804a47f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a482:	movl	%eax, -0x148(%ebp) [REG, MEM]
	movl	%eax, -0x148(%ebp)
	# 0x804a488:	jmp	0x804a502 [IMM <CODEREF>]
	jmp	.label_160
	# 0x804a48a:	cmpl	$-1, -0x140(%ebp) [IMM, MEM]
.label_162:
	cmpl	$-1, -0x140(%ebp)
	# 0x804a491:	jne	0x804a4ca [IMM <CODEREF>]
	jne	.label_164
	# 0x804a493:	movl	-0x114(%ebp), %eax [MEM, REG]
	movl	-0x114(%ebp), %eax
	# 0x804a499:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a49b:	je	0x804a4b5 [IMM <CODEREF>]
	je	.label_163
	# 0x804a49d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a4a0:	pushl	$0x804efd7 [IMM <DATAREF>]
	pushl	$label_11
	# 0x804a4a5:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a4aa:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a4ad:	movl	%eax, -0x148(%ebp) [REG, MEM]
	movl	%eax, -0x148(%ebp)
	# 0x804a4b3:	jmp	0x804a502 [IMM <CODEREF>]
	jmp	.label_160
	# 0x804a4b5:	subl	$0xc, %esp [IMM, REG]
.label_163:
	subl	$0xc, %esp
	# 0x804a4b8:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a4ba:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804a4bf:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a4c2:	movl	%eax, -0x148(%ebp) [REG, MEM]
	movl	%eax, -0x148(%ebp)
	# 0x804a4c8:	jmp	0x804a502 [IMM <CODEREF>]
	jmp	.label_160
	# 0x804a4ca:	subl	$0xc, %esp [IMM, REG]
.label_164:
	subl	$0xc, %esp
	# 0x804a4cd:	pushl	$0x804f8a0 [IMM <DATAREF>]
	pushl	$label_166
	# 0x804a4d2:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804a4d7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a4da:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804a4dc:	cmpl	$-2, -0x140(%ebp) [IMM, MEM]
	cmpl	$-2, -0x140(%ebp)
	# 0x804a4e3:	jne	0x804a4ee [IMM <CODEREF>]
	jne	.label_165
	# 0x804a4e5:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804a4ea:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a4ec:	jmp	0x804a4f3 [IMM <CODEREF>]
	jmp	.label_167
	# 0x804a4ee:	movl	$0x4b, %eax [IMM, REG]
.label_165:
	movl	$0x4b, %eax
	# 0x804a4f3:	subl	$4, %esp [IMM, REG]
.label_167:
	subl	$4, %esp
	# 0x804a4f6:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a4f7:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a4f8:	pushl	$3 [IMM]
	pushl	$3
	# 0x804a4fa:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a4ff:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a502:	movl	-0x138(%ebp), %eax [MEM, REG]
.label_160:
	movl	-0x138(%ebp), %eax
	# 0x804a508:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804a50a:	je	0x804a530 [IMM <CODEREF>]
	je	.label_170
	# 0x804a50c:	movl	-0x134(%ebp), %eax [MEM, REG]
	movl	-0x134(%ebp), %eax
	# 0x804a512:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a515:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a516:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804a51b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a51e:	movl	-0x130(%ebp), %eax [MEM, REG]
	movl	-0x130(%ebp), %eax
	# 0x804a524:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a527:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a528:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804a52d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a530:	movl	$0, -0x11c(%ebp) [IMM, MEM]
.label_170:
	movl	$0, -0x11c(%ebp)
	# 0x804a53a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a53d:	leal	-0x12c(%ebp), %eax [MEM, REG]
	leal	-0x12c(%ebp), %eax
	# 0x804a543:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a544:	calll	0x8048d90 [IMM <CODEREF>]
	calll	regfree
	# 0x804a549:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a54c:	movl	-0x148(%ebp), %eax [MEM, REG]
	movl	-0x148(%ebp), %eax
	# 0x804a552:	movl	-0xc(%ebp), %ebx [MEM, REG]
	movl	-0xc(%ebp), %ebx
	# 0x804a555:	xorl	%gs:0x14, %ebx [MEM, REG]
	xorl	%gs:0x14, %ebx
	# 0x804a55c:	je	0x804a563 [IMM <CODEREF>]
	je	.label_161
	# 0x804a55e:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804a563:	movl	-4(%ebp), %ebx [MEM, REG]
.label_161:
	movl	-4(%ebp), %ebx
	# 0x804a566:	leave	 []
	leave	
	# 0x804a567:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a568

	# 0x804a568:	pushl	%ebp [REG]
	.globl eval7
	.type eval7, @function
eval7:
	pushl	%ebp
	# 0x804a569:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a56b:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a56c:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x804a56f:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a572:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804a575:	calll	0x804a248 [IMM <CODEREF>]
	calll	require_more_args
	# 0x804a57a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a57d:	pushl	$0x804f8c4 [IMM <DATAREF>]
	pushl	$label_181
	# 0x804a582:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a587:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a58a:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a58c:	je	0x804a63b [IMM <CODEREF>]
	je	.label_173
	# 0x804a592:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804a596:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a599:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a59a:	calll	0x804b084 [IMM <CODEREF>]
	calll	eval
	# 0x804a59f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a5a2:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a5a5:	calll	0x804a237 [IMM <CODEREF>]
	calll	nomoreargs
	# 0x804a5aa:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a5ac:	je	0x804a5e8 [IMM <CODEREF>]
	je	.label_177
	# 0x804a5ae:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a5b3:	subl	$4, %eax [IMM, REG]
	subl	$4, %eax
	# 0x804a5b6:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a5b8:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a5bb:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a5bc:	pushl	$8 [IMM]
	pushl	$8
	# 0x804a5be:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a5c0:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804a5c5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a5c8:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804a5ca:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a5cd:	pushl	$0x804f8c8 [IMM <DATAREF>]
	pushl	$label_172
	# 0x804a5d2:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804a5d7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a5da:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a5db:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a5dc:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a5de:	pushl	$2 [IMM]
	pushl	$2
	# 0x804a5e0:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a5e5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a5e8:	subl	$0xc, %esp [IMM, REG]
.label_177:
	subl	$0xc, %esp
	# 0x804a5eb:	pushl	$0x804f8ed [IMM <DATAREF>]
	pushl	$label_178
	# 0x804a5f0:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a5f5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a5f8:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804a5fb:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a5fd:	je	0x804a636 [IMM <CODEREF>]
	je	.label_179
	# 0x804a5ff:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a604:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a606:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a609:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a60a:	pushl	$8 [IMM]
	pushl	$8
	# 0x804a60c:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a60e:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804a613:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a616:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804a618:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a61b:	pushl	$0x804f8f0 [IMM <DATAREF>]
	pushl	$label_176
	# 0x804a620:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804a625:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a628:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804a629:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a62a:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a62c:	pushl	$2 [IMM]
	pushl	$2
	# 0x804a62e:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a633:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a636:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_179:
	movl	-0xc(%ebp), %eax
	# 0x804a639:	jmp	0x804a68b [IMM <CODEREF>]
	jmp	.label_180
	# 0x804a63b:	subl	$0xc, %esp [IMM, REG]
.label_173:
	subl	$0xc, %esp
	# 0x804a63e:	pushl	$0x804f8ed [IMM <DATAREF>]
	pushl	$label_178
	# 0x804a643:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a648:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a64b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a64d:	je	0x804a66f [IMM <CODEREF>]
	je	.label_174
	# 0x804a64f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a652:	pushl	$0x804f91a [IMM <DATAREF>]
	pushl	$label_175
	# 0x804a657:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804a65c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a65f:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a662:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a663:	pushl	$0 [IMM]
	pushl	$0
	# 0x804a665:	pushl	$2 [IMM]
	pushl	$2
	# 0x804a667:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804a66c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a66f:	movl	0x80531ac, %eax [MEM, REG]
.label_174:
	movl	args,  %eax
	# 0x804a674:	leal	4(%eax), %edx [MEM, REG]
	leal	4(%eax), %edx
	# 0x804a677:	movl	%edx, 0x80531ac [REG, MEM]
	movl	%edx, args
	# 0x804a67d:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a67f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a682:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a683:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a688:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a68b:	movl	-4(%ebp), %ebx [MEM, REG]
.label_180:
	movl	-4(%ebp), %ebx
	# 0x804a68e:	leave	 []
	leave	
	# 0x804a68f:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a690

	# 0x804a690:	pushl	%ebp [REG]
	.globl eval6
	.type eval6, @function
eval6:
	pushl	%ebp
	# 0x804a691:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a693:	subl	$0x48, %esp [IMM, REG]
	subl	$0x48, %esp
	# 0x804a696:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a699:	movb	%al, -0x3c(%ebp) [REG, MEM]
	movb	%al, -0x3c(%ebp)
	# 0x804a69c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a69f:	pushl	$0x804f937 [IMM <DATAREF>]
	pushl	$label_184
	# 0x804a6a4:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a6a9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a6ac:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a6ae:	je	0x804a6d6 [IMM <CODEREF>]
	je	.label_187
	# 0x804a6b0:	calll	0x804a248 [IMM <CODEREF>]
	calll	require_more_args
	# 0x804a6b5:	movl	0x80531ac, %eax [MEM, REG]
	movl	args,  %eax
	# 0x804a6ba:	leal	4(%eax), %edx [MEM, REG]
	leal	4(%eax), %edx
	# 0x804a6bd:	movl	%edx, 0x80531ac [REG, MEM]
	movl	%edx, args
	# 0x804a6c3:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804a6c5:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a6c8:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a6c9:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a6ce:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a6d1:	jmp	0x804a9ae [IMM <CODEREF>]
	jmp	.label_185
	# 0x804a6d6:	subl	$0xc, %esp [IMM, REG]
.label_187:
	subl	$0xc, %esp
	# 0x804a6d9:	pushl	$0x804f939 [IMM <DATAREF>]
	pushl	$label_191
	# 0x804a6de:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a6e3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a6e6:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a6e8:	je	0x804a742 [IMM <CODEREF>]
	je	.label_190
	# 0x804a6ea:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a6ee:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a6f1:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a6f2:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a6f7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a6fa:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804a6fd:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a700:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a703:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a708:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a70b:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x804a70e:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a711:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a714:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a715:	calll	0x804b4f8 [IMM <CODEREF>]
	calll	mbslen
	# 0x804a71a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a71d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a720:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a721:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804a726:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a729:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a72c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a72f:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a732:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a737:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a73a:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804a73d:	jmp	0x804a9ae [IMM <CODEREF>]
	jmp	.label_185
	# 0x804a742:	subl	$0xc, %esp [IMM, REG]
.label_190:
	subl	$0xc, %esp
	# 0x804a745:	pushl	$0x804f940 [IMM <DATAREF>]
	pushl	$label_188
	# 0x804a74a:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a74f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a752:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a754:	je	0x804a7c2 [IMM <CODEREF>]
	je	.label_189
	# 0x804a756:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a75a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a75d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a75e:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a763:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a766:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804a769:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a76d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a770:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a771:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a776:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a779:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804a77c:	cmpb	$0, -0x3c(%ebp) [IMM, MEM]
	cmpb	$0, -0x3c(%ebp)
	# 0x804a780:	je	0x804a7a6 [IMM <CODEREF>]
	je	.label_197
	# 0x804a782:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804a785:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a788:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a78b:	calll	0x804a298 [IMM <CODEREF>]
	calll	docolon
	# 0x804a790:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a793:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a796:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a799:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a79c:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a7a1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a7a4:	jmp	0x804a7ac [IMM <CODEREF>]
	jmp	.label_186
	# 0x804a7a6:	movl	-0x24(%ebp), %eax [MEM, REG]
.label_197:
	movl	-0x24(%ebp), %eax
	# 0x804a7a9:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a7ac:	subl	$0xc, %esp [IMM, REG]
.label_186:
	subl	$0xc, %esp
	# 0x804a7af:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a7b2:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a7b7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a7ba:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804a7bd:	jmp	0x804a9ae [IMM <CODEREF>]
	jmp	.label_185
	# 0x804a7c2:	subl	$0xc, %esp [IMM, REG]
.label_189:
	subl	$0xc, %esp
	# 0x804a7c5:	pushl	$0x804f946 [IMM <DATAREF>]
	pushl	$label_183
	# 0x804a7ca:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a7cf:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a7d2:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a7d4:	je	0x804a86d [IMM <CODEREF>]
	je	.label_193
	# 0x804a7da:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a7de:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a7e1:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a7e2:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a7e7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a7ea:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804a7ed:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a7f1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a7f4:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a7f5:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a7fa:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a7fd:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804a800:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a803:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a806:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a80b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a80e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a811:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a814:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a819:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a81c:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x804a81f:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804a822:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804a825:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a828:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804a82b:	pushl	%edx [REG]
	pushl	%edx
	# 0x804a82c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a82d:	calll	0x80496a4 [IMM <CODEREF>]
	calll	mbs_logical_cspn
	# 0x804a832:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a835:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804a838:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a83b:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804a83e:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804a843:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a846:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a849:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a84c:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a84f:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a854:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a857:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a85a:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804a85d:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a862:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a865:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804a868:	jmp	0x804a9ae [IMM <CODEREF>]
	jmp	.label_185
	# 0x804a86d:	subl	$0xc, %esp [IMM, REG]
.label_193:
	subl	$0xc, %esp
	# 0x804a870:	pushl	$0x804f94c [IMM <DATAREF>]
	pushl	$label_196
	# 0x804a875:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a87a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a87d:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a87f:	je	0x804a99e [IMM <CODEREF>]
	je	.label_194
	# 0x804a885:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a889:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a88c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a88d:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a892:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a895:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804a898:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a89c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a89f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a8a0:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a8a5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a8a8:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804a8ab:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
	movzbl	-0x3c(%ebp), %eax
	# 0x804a8af:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a8b2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a8b3:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a8b8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a8bb:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804a8be:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a8c1:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a8c4:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804a8c9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a8cc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a8cf:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804a8d2:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804a8d7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a8da:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804a8dd:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a8df:	jne	0x804a8f6 [IMM <CODEREF>]
	jne	.label_192
	# 0x804a8e1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a8e4:	pushl	-0x18(%ebp) [MEM]
	pushl	-0x18(%ebp)
	# 0x804a8e7:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804a8ec:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a8ef:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804a8f2:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a8f4:	je	0x804a90b [IMM <CODEREF>]
	je	.label_195
	# 0x804a8f6:	subl	$0xc, %esp [IMM, REG]
.label_192:
	subl	$0xc, %esp
	# 0x804a8f9:	pushl	$0x804efd7 [IMM <DATAREF>]
	pushl	$label_11
	# 0x804a8fe:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a903:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a906:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a909:	jmp	0x804a96f [IMM <CODEREF>]
	jmp	.label_182
	# 0x804a90b:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_195:
	movl	-0x1c(%ebp), %eax
	# 0x804a90e:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804a911:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a914:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a915:	calll	0x804a194 [IMM <CODEREF>]
	calll	getsize
	# 0x804a91a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a91d:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804a920:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804a923:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804a926:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a929:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a92a:	calll	0x804a194 [IMM <CODEREF>]
	calll	getsize
	# 0x804a92f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a932:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804a935:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804a938:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804a93b:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804a93e:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804a941:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804a944:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a945:	calll	0x80498c7 [IMM <CODEREF>]
	calll	mbs_logical_substr
	# 0x804a94a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a94d:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804a950:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a953:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a956:	calll	0x8049eff [IMM <CODEREF>]
	calll	str_value
	# 0x804a95b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a95e:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804a961:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a964:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804a967:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804a96c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a96f:	subl	$0xc, %esp [IMM, REG]
.label_182:
	subl	$0xc, %esp
	# 0x804a972:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804a975:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a97a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a97d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a980:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804a983:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a988:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a98b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a98e:	pushl	-0x18(%ebp) [MEM]
	pushl	-0x18(%ebp)
	# 0x804a991:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804a996:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a999:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804a99c:	jmp	0x804a9ae [IMM <CODEREF>]
	jmp	.label_185
	# 0x804a99e:	movzbl	-0x3c(%ebp), %eax [MEM, REG]
.label_194:
	movzbl	-0x3c(%ebp), %eax
	# 0x804a9a2:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a9a5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a9a6:	calll	0x804a568 [IMM <CODEREF>]
	calll	eval7
	# 0x804a9ab:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a9ae:	leave	 []
.label_185:
	leave	
	# 0x804a9af:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a9b0

	# 0x804a9b0:	pushl	%ebp [REG]
	.globl eval5
	.type eval5, @function
eval5:
	pushl	%ebp
	# 0x804a9b1:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804a9b3:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804a9b6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804a9b9:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804a9bc:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804a9c0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a9c3:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a9c4:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a9c9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a9cc:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804a9cf:	subl	$0xc, %esp [IMM, REG]
.label_199:
	subl	$0xc, %esp
	# 0x804a9d2:	pushl	$0x804f953 [IMM <DATAREF>]
	pushl	$label_200
	# 0x804a9d7:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804a9dc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a9df:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804a9e1:	je	0x804aa34 [IMM <CODEREF>]
	je	.label_201
	# 0x804a9e3:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804a9e7:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804a9ea:	pushl	%eax [REG]
	pushl	%eax
	# 0x804a9eb:	calll	0x804a690 [IMM <CODEREF>]
	calll	eval6
	# 0x804a9f0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804a9f3:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804a9f6:	cmpb	$0, -0x1c(%ebp) [IMM, MEM]
	cmpb	$0, -0x1c(%ebp)
	# 0x804a9fa:	je	0x804aa24 [IMM <CODEREF>]
	je	.label_198
	# 0x804a9fc:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804a9ff:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804aa02:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804aa05:	calll	0x804a298 [IMM <CODEREF>]
	calll	docolon
	# 0x804aa0a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa0d:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804aa10:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aa13:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804aa16:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804aa1b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa1e:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804aa21:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804aa24:	subl	$0xc, %esp [IMM, REG]
.label_198:
	subl	$0xc, %esp
	# 0x804aa27:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804aa2a:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804aa2f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa32:	jmp	0x804a9cf [IMM <CODEREF>]
	jmp	.label_199
	# 0x804aa34:	movl	-0x14(%ebp), %eax [MEM, REG]
.label_201:
	movl	-0x14(%ebp), %eax
	# 0x804aa37:	leave	 []
	leave	
	# 0x804aa38:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804aa39

	# 0x804aa39:	pushl	%ebp [REG]
	.globl eval4
	.type eval4, @function
eval4:
	pushl	%ebp
	# 0x804aa3a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804aa3c:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804aa3d:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x804aa40:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804aa43:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804aa46:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804aa4a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aa4d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aa4e:	calll	0x804a9b0 [IMM <CODEREF>]
	calll	eval5
	# 0x804aa53:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa56:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804aa59:	subl	$0xc, %esp [IMM, REG]
.label_211:
	subl	$0xc, %esp
	# 0x804aa5c:	pushl	$0x804f955 [IMM <DATAREF>]
	pushl	$label_206
	# 0x804aa61:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804aa66:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa69:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aa6b:	je	0x804aa76 [IMM <CODEREF>]
	je	.label_212
	# 0x804aa6d:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x804aa74:	jmp	0x804aab8 [IMM <CODEREF>]
	jmp	.label_205
	# 0x804aa76:	subl	$0xc, %esp [IMM, REG]
.label_212:
	subl	$0xc, %esp
	# 0x804aa79:	pushl	$0x804f957 [IMM <DATAREF>]
	pushl	$label_217
	# 0x804aa7e:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804aa83:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aa86:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aa88:	je	0x804aa93 [IMM <CODEREF>]
	je	.label_203
	# 0x804aa8a:	movl	$1, -0x14(%ebp) [IMM, MEM]
	movl	$1, -0x14(%ebp)
	# 0x804aa91:	jmp	0x804aab8 [IMM <CODEREF>]
	jmp	.label_205
	# 0x804aa93:	subl	$0xc, %esp [IMM, REG]
.label_203:
	subl	$0xc, %esp
	# 0x804aa96:	pushl	$0x804f959 [IMM <DATAREF>]
	pushl	$label_215
	# 0x804aa9b:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804aaa0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aaa3:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aaa5:	je	0x804aab0 [IMM <CODEREF>]
	je	.label_209
	# 0x804aaa7:	movl	$2, -0x14(%ebp) [IMM, MEM]
	movl	$2, -0x14(%ebp)
	# 0x804aaae:	jmp	0x804aab8 [IMM <CODEREF>]
	jmp	.label_205
	# 0x804aab0:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_209:
	movl	-0x10(%ebp), %eax
	# 0x804aab3:	jmp	0x804abaa [IMM <CODEREF>]
	jmp	.label_214
	# 0x804aab8:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
.label_205:
	movzbl	-0x1c(%ebp), %eax
	# 0x804aabc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aabf:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aac0:	calll	0x804a9b0 [IMM <CODEREF>]
	calll	eval5
	# 0x804aac5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aac8:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804aacb:	cmpb	$0, -0x1c(%ebp) [IMM, MEM]
	cmpb	$0, -0x1c(%ebp)
	# 0x804aacf:	je	0x804ab97 [IMM <CODEREF>]
	je	.label_204
	# 0x804aad5:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aad8:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804aadb:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804aae0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aae3:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804aae6:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aae8:	jne	0x804aaff [IMM <CODEREF>]
	jne	.label_202
	# 0x804aaea:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aaed:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804aaf0:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804aaf5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aaf8:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804aafb:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aafd:	je	0x804ab1f [IMM <CODEREF>]
	je	.label_216
	# 0x804aaff:	subl	$0xc, %esp [IMM, REG]
.label_202:
	subl	$0xc, %esp
	# 0x804ab02:	pushl	$0x804f95b [IMM <DATAREF>]
	pushl	$label_219
	# 0x804ab07:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804ab0c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab0f:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ab12:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ab13:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ab15:	pushl	$2 [IMM]
	pushl	$2
	# 0x804ab17:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804ab1c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab1f:	cmpl	$0, -0x14(%ebp) [IMM, MEM]
.label_216:
	cmpl	$0, -0x14(%ebp)
	# 0x804ab23:	je	0x804ab5b [IMM <CODEREF>]
	je	.label_208
	# 0x804ab25:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804ab28:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804ab2b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ab2e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ab2f:	calll	0x80495ce [IMM <CODEREF>]
	calll	mpz_sgn
	# 0x804ab34:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab37:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804ab39:	jne	0x804ab5b [IMM <CODEREF>]
	jne	.label_208
	# 0x804ab3b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ab3e:	pushl	$0x804f970 [IMM <DATAREF>]
	pushl	$label_218
	# 0x804ab43:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804ab48:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab4b:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ab4e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ab4f:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ab51:	pushl	$2 [IMM]
	pushl	$2
	# 0x804ab53:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804ab58:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab5b:	cmpl	$0, -0x14(%ebp) [IMM, MEM]
.label_208:
	cmpl	$0, -0x14(%ebp)
	# 0x804ab5f:	je	0x804ab75 [IMM <CODEREF>]
	je	.label_207
	# 0x804ab61:	cmpl	$1, -0x14(%ebp) [IMM, MEM]
	cmpl	$1, -0x14(%ebp)
	# 0x804ab65:	jne	0x804ab6e [IMM <CODEREF>]
	jne	.label_210
	# 0x804ab67:	movl	$0x8049499, %eax [IMM <CODEREF>, REG]
	movl	$mpz_tdiv_q,  %eax
	# 0x804ab6c:	jmp	0x804ab7a [IMM <CODEREF>]
	jmp	.label_213
	# 0x804ab6e:	movl	$0x8049507, %eax [IMM <CODEREF>, REG]
.label_210:
	movl	$mpz_tdiv_r,  %eax
	# 0x804ab73:	jmp	0x804ab7a [IMM <CODEREF>]
	jmp	.label_213
	# 0x804ab75:	movl	$0x80493dc, %eax [IMM <CODEREF>, REG]
.label_207:
	movl	$mpz_mul,  %eax
	# 0x804ab7a:	movl	-0xc(%ebp), %edx [MEM, REG]
.label_213:
	movl	-0xc(%ebp), %edx
	# 0x804ab7d:	leal	4(%edx), %ebx [MEM, REG]
	leal	4(%edx), %ebx
	# 0x804ab80:	movl	-0x10(%ebp), %edx [MEM, REG]
	movl	-0x10(%ebp), %edx
	# 0x804ab83:	leal	4(%edx), %ecx [MEM, REG]
	leal	4(%edx), %ecx
	# 0x804ab86:	movl	-0x10(%ebp), %edx [MEM, REG]
	movl	-0x10(%ebp), %edx
	# 0x804ab89:	addl	$4, %edx [IMM, REG]
	addl	$4, %edx
	# 0x804ab8c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ab8f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804ab90:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804ab91:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ab92:	calll	*%eax [REG]
	calll	*%eax
	# 0x804ab94:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ab97:	subl	$0xc, %esp [IMM, REG]
.label_204:
	subl	$0xc, %esp
	# 0x804ab9a:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804ab9d:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804aba2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aba5:	jmp	0x804aa59 [IMM <CODEREF>]
	jmp	.label_211
	# 0x804abaa:	movl	-4(%ebp), %ebx [MEM, REG]
.label_214:
	movl	-4(%ebp), %ebx
	# 0x804abad:	leave	 []
	leave	
	# 0x804abae:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804abaf

	# 0x804abaf:	pushl	%ebp [REG]
	.globl eval3
	.type eval3, @function
eval3:
	pushl	%ebp
	# 0x804abb0:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804abb2:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804abb3:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x804abb6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804abb9:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804abbc:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804abc0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804abc3:	pushl	%eax [REG]
	pushl	%eax
	# 0x804abc4:	calll	0x804aa39 [IMM <CODEREF>]
	calll	eval4
	# 0x804abc9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804abcc:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804abcf:	subl	$0xc, %esp [IMM, REG]
.label_226:
	subl	$0xc, %esp
	# 0x804abd2:	pushl	$0x804f937 [IMM <DATAREF>]
	pushl	$label_184
	# 0x804abd7:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804abdc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804abdf:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804abe1:	je	0x804abec [IMM <CODEREF>]
	je	.label_223
	# 0x804abe3:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x804abea:	jmp	0x804ac11 [IMM <CODEREF>]
	jmp	.label_220
	# 0x804abec:	subl	$0xc, %esp [IMM, REG]
.label_223:
	subl	$0xc, %esp
	# 0x804abef:	pushl	$0x804f981 [IMM <DATAREF>]
	pushl	$label_225
	# 0x804abf4:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804abf9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804abfc:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804abfe:	je	0x804ac09 [IMM <CODEREF>]
	je	.label_229
	# 0x804ac00:	movl	$1, -0x14(%ebp) [IMM, MEM]
	movl	$1, -0x14(%ebp)
	# 0x804ac07:	jmp	0x804ac11 [IMM <CODEREF>]
	jmp	.label_220
	# 0x804ac09:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_229:
	movl	-0x10(%ebp), %eax
	# 0x804ac0c:	jmp	0x804acb6 [IMM <CODEREF>]
	jmp	.label_221
	# 0x804ac11:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
.label_220:
	movzbl	-0x1c(%ebp), %eax
	# 0x804ac15:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ac18:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ac19:	calll	0x804aa39 [IMM <CODEREF>]
	calll	eval4
	# 0x804ac1e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ac21:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804ac24:	cmpb	$0, -0x1c(%ebp) [IMM, MEM]
	cmpb	$0, -0x1c(%ebp)
	# 0x804ac28:	je	0x804aca3 [IMM <CODEREF>]
	je	.label_224
	# 0x804ac2a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ac2d:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804ac30:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804ac35:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ac38:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804ac3b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ac3d:	jne	0x804ac54 [IMM <CODEREF>]
	jne	.label_228
	# 0x804ac3f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ac42:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804ac45:	calll	0x804a101 [IMM <CODEREF>]
	calll	toarith
	# 0x804ac4a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ac4d:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804ac50:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ac52:	je	0x804ac74 [IMM <CODEREF>]
	je	.label_222
	# 0x804ac54:	subl	$0xc, %esp [IMM, REG]
.label_228:
	subl	$0xc, %esp
	# 0x804ac57:	pushl	$0x804f95b [IMM <DATAREF>]
	pushl	$label_219
	# 0x804ac5c:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804ac61:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ac64:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ac67:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ac68:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ac6a:	pushl	$2 [IMM]
	pushl	$2
	# 0x804ac6c:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804ac71:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ac74:	cmpl	$0, -0x14(%ebp) [IMM, MEM]
.label_222:
	cmpl	$0, -0x14(%ebp)
	# 0x804ac78:	jne	0x804ac81 [IMM <CODEREF>]
	jne	.label_227
	# 0x804ac7a:	movl	$0x80492e0, %ebx [IMM <CODEREF>, REG]
	movl	$mpz_add,  %ebx
	# 0x804ac7f:	jmp	0x804ac86 [IMM <CODEREF>]
	jmp	.label_230
	# 0x804ac81:	movl	$0x8049362, %ebx [IMM <CODEREF>, REG]
.label_227:
	movl	$mpz_sub,  %ebx
	# 0x804ac86:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_230:
	movl	-0xc(%ebp), %eax
	# 0x804ac89:	leal	4(%eax), %ecx [MEM, REG]
	leal	4(%eax), %ecx
	# 0x804ac8c:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804ac8f:	leal	4(%eax), %edx [MEM, REG]
	leal	4(%eax), %edx
	# 0x804ac92:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804ac95:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804ac98:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ac9b:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804ac9c:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ac9d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ac9e:	calll	*%ebx [REG]
	calll	*%ebx
	# 0x804aca0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aca3:	subl	$0xc, %esp [IMM, REG]
.label_224:
	subl	$0xc, %esp
	# 0x804aca6:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804aca9:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804acae:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804acb1:	jmp	0x804abcf [IMM <CODEREF>]
	jmp	.label_226
	# 0x804acb6:	movl	-4(%ebp), %ebx [MEM, REG]
.label_221:
	movl	-4(%ebp), %ebx
	# 0x804acb9:	leave	 []
	leave	
	# 0x804acba:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804acbb

	# 0x804acbb:	pushl	%ebp [REG]
	.globl eval2
	.type eval2, @function
eval2:
	pushl	%ebp
	# 0x804acbc:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804acbe:	pushl	%esi [REG]
	pushl	%esi
	# 0x804acbf:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804acc0:	subl	$0x30, %esp [IMM, REG]
	subl	$0x30, %esp
	# 0x804acc3:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804acc6:	movb	%al, -0x2c(%ebp) [REG, MEM]
	movb	%al, -0x2c(%ebp)
	# 0x804acc9:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x804accd:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804acd0:	pushl	%eax [REG]
	pushl	%eax
	# 0x804acd1:	calll	0x804abaf [IMM <CODEREF>]
	calll	eval3
	# 0x804acd6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804acd9:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804acdc:	movb	$0, -0x19(%ebp) [IMM, MEM]
.label_238:
	movb	$0, -0x19(%ebp)
	# 0x804ace0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ace3:	pushl	$0x804f983 [IMM <DATAREF>]
	pushl	$label_248
	# 0x804ace8:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804aced:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804acf0:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804acf2:	je	0x804ad00 [IMM <CODEREF>]
	je	.label_253
	# 0x804acf4:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x804acfb:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ad00:	subl	$0xc, %esp [IMM, REG]
.label_253:
	subl	$0xc, %esp
	# 0x804ad03:	pushl	$0x804f985 [IMM <DATAREF>]
	pushl	$label_231
	# 0x804ad08:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad0d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad10:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad12:	je	0x804ad20 [IMM <CODEREF>]
	je	.label_236
	# 0x804ad14:	movl	$1, -0x14(%ebp) [IMM, MEM]
	movl	$1, -0x14(%ebp)
	# 0x804ad1b:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ad20:	subl	$0xc, %esp [IMM, REG]
.label_236:
	subl	$0xc, %esp
	# 0x804ad23:	pushl	$0x804f988 [IMM <DATAREF>]
	pushl	$label_241
	# 0x804ad28:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad2d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad30:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad32:	jne	0x804ad48 [IMM <CODEREF>]
	jne	.label_244
	# 0x804ad34:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ad37:	pushl	$0x804f98a [IMM <DATAREF>]
	pushl	$label_245
	# 0x804ad3c:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad41:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad44:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad46:	je	0x804ad51 [IMM <CODEREF>]
	je	.label_246
	# 0x804ad48:	movl	$2, -0x14(%ebp) [IMM, MEM]
.label_244:
	movl	$2, -0x14(%ebp)
	# 0x804ad4f:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ad51:	subl	$0xc, %esp [IMM, REG]
.label_246:
	subl	$0xc, %esp
	# 0x804ad54:	pushl	$0x804f98d [IMM <DATAREF>]
	pushl	$label_247
	# 0x804ad59:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad5e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad61:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad63:	je	0x804ad6e [IMM <CODEREF>]
	je	.label_249
	# 0x804ad65:	movl	$3, -0x14(%ebp) [IMM, MEM]
	movl	$3, -0x14(%ebp)
	# 0x804ad6c:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ad6e:	subl	$0xc, %esp [IMM, REG]
.label_249:
	subl	$0xc, %esp
	# 0x804ad71:	pushl	$0x804f990 [IMM <DATAREF>]
	pushl	$label_254
	# 0x804ad76:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad7b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad7e:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad80:	je	0x804ad8b [IMM <CODEREF>]
	je	.label_255
	# 0x804ad82:	movl	$4, -0x14(%ebp) [IMM, MEM]
	movl	$4, -0x14(%ebp)
	# 0x804ad89:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ad8b:	subl	$0xc, %esp [IMM, REG]
.label_255:
	subl	$0xc, %esp
	# 0x804ad8e:	pushl	$0x804f993 [IMM <DATAREF>]
	pushl	$label_234
	# 0x804ad93:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804ad98:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ad9b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ad9d:	je	0x804ada8 [IMM <CODEREF>]
	je	.label_239
	# 0x804ad9f:	movl	$5, -0x14(%ebp) [IMM, MEM]
	movl	$5, -0x14(%ebp)
	# 0x804ada6:	jmp	0x804adb0 [IMM <CODEREF>]
	jmp	.label_232
	# 0x804ada8:	movl	-0x18(%ebp), %eax [MEM, REG]
.label_239:
	movl	-0x18(%ebp), %eax
	# 0x804adab:	jmp	0x804af9c [IMM <CODEREF>]
	jmp	.label_242
	# 0x804adb0:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
.label_232:
	movzbl	-0x2c(%ebp), %eax
	# 0x804adb4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804adb7:	pushl	%eax [REG]
	pushl	%eax
	# 0x804adb8:	calll	0x804abaf [IMM <CODEREF>]
	calll	eval3
	# 0x804adbd:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804adc0:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804adc3:	cmpb	$0, -0x2c(%ebp) [IMM, MEM]
	cmpb	$0, -0x2c(%ebp)
	# 0x804adc7:	je	0x804af68 [IMM <CODEREF>]
	je	.label_240
	# 0x804adcd:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804add0:	pushl	-0x18(%ebp) [MEM]
	pushl	-0x18(%ebp)
	# 0x804add3:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804add8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804addb:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804adde:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804ade1:	calll	0x804a0a3 [IMM <CODEREF>]
	calll	tostring
	# 0x804ade6:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ade9:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804adec:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804adef:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804adf2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804adf3:	calll	0x804a062 [IMM <CODEREF>]
	calll	looks_like_integer
	# 0x804adf8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804adfb:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804adfd:	je	0x804ae36 [IMM <CODEREF>]
	je	.label_237
	# 0x804adff:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804ae02:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804ae05:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ae08:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ae09:	calll	0x804a062 [IMM <CODEREF>]
	calll	looks_like_integer
	# 0x804ae0e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ae11:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804ae13:	je	0x804ae36 [IMM <CODEREF>]
	je	.label_237
	# 0x804ae15:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804ae18:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804ae1b:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804ae1e:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804ae21:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804ae24:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ae25:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ae26:	calll	0x804d563 [IMM <CODEREF>]
	calll	strintcmp
	# 0x804ae2b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ae2e:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804ae31:	jmp	0x804af06 [IMM <CODEREF>]
	jmp	.label_243
	# 0x804ae36:	calll	0x8048ed0 [IMM <CODEREF>]
.label_237:
	calll	__errno_location
	# 0x804ae3b:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x804ae41:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804ae44:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804ae47:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804ae4a:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804ae4d:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804ae50:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ae51:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ae52:	calll	0x8048de0 [IMM <CODEREF>]
	calll	strcoll
	# 0x804ae57:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ae5a:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804ae5d:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804ae62:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804ae64:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804ae66:	je	0x804af06 [IMM <CODEREF>]
	je	.label_243
	# 0x804ae6c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ae6f:	pushl	$0x804f995 [IMM <DATAREF>]
	pushl	$label_252
	# 0x804ae74:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804ae79:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ae7c:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804ae7e:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804ae83:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804ae85:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ae88:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804ae89:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ae8a:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ae8c:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804ae91:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ae94:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ae97:	pushl	$0x804f9b0 [IMM <DATAREF>]
	pushl	$label_251
	# 0x804ae9c:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804aea1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aea4:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804aea7:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aea8:	pushl	$0 [IMM]
	pushl	$0
	# 0x804aeaa:	pushl	$0 [IMM]
	pushl	$0
	# 0x804aeac:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804aeb1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aeb4:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804aeb7:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804aeba:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804aebd:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aebe:	pushl	$8 [IMM]
	pushl	$8
	# 0x804aec0:	pushl	$1 [IMM]
	pushl	$1
	# 0x804aec2:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804aec7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aeca:	movl	%eax, %esi [REG, REG]
	movl	%eax, %esi
	# 0x804aecc:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804aecf:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804aed2:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804aed5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aed6:	pushl	$8 [IMM]
	pushl	$8
	# 0x804aed8:	pushl	$0 [IMM]
	pushl	$0
	# 0x804aeda:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804aedf:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aee2:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804aee4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aee7:	pushl	$0x804f9dc [IMM <DATAREF>]
	pushl	$label_250
	# 0x804aeec:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804aef1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804aef4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804aef7:	pushl	%esi [REG]
	pushl	%esi
	# 0x804aef8:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804aef9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804aefa:	pushl	$0 [IMM]
	pushl	$0
	# 0x804aefc:	pushl	$2 [IMM]
	pushl	$2
	# 0x804aefe:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804af03:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804af06:	cmpl	$5, -0x14(%ebp) [IMM, MEM]
.label_243:
	cmpl	$5, -0x14(%ebp)
	# 0x804af0a:	ja	0x804af63 [IMM <CODEREF>]
	ja	.label_233
	# 0x804af0c:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804af0f:	shll	$2, %eax [IMM, REG]
	shll	$2, %eax
	# 0x804af12:	addl	$0x804fa00, %eax [IMM <DATAREF>, REG]
	addl	$label_235,  %eax
	# 0x804af17:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804af19:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804af1b:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_787:
	movl	-0x10(%ebp), %eax
	# 0x804af1e:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x804af21:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af24:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af26:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
.label_788:
	cmpl	$0, -0x10(%ebp)
	# 0x804af2a:	setle	%al [REG]
	setle	%al
	# 0x804af2d:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af30:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af32:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
.label_789:
	cmpl	$0, -0x10(%ebp)
	# 0x804af36:	sete	%al [REG]
	sete	%al
	# 0x804af39:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af3c:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af3e:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
.label_790:
	cmpl	$0, -0x10(%ebp)
	# 0x804af42:	setne	%al [REG]
	setne	%al
	# 0x804af45:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af48:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af4a:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_791:
	movl	-0x10(%ebp), %eax
	# 0x804af4d:	notl	%eax [REG]
	notl	%eax
	# 0x804af4f:	shrl	$0x1f, %eax [IMM, REG]
	shrl	$0x1f, %eax
	# 0x804af52:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af55:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af57:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
.label_792:
	cmpl	$0, -0x10(%ebp)
	# 0x804af5b:	setg	%al [REG]
	setg	%al
	# 0x804af5e:	movb	%al, -0x19(%ebp) [REG, MEM]
	movb	%al, -0x19(%ebp)
	# 0x804af61:	jmp	0x804af68 [IMM <CODEREF>]
	jmp	.label_240
	# 0x804af63:	calll	0x8048f80 [IMM <CODEREF>]
.label_233:
	calll	abort
	# 0x804af68:	subl	$0xc, %esp [IMM, REG]
.label_240:
	subl	$0xc, %esp
	# 0x804af6b:	pushl	-0x18(%ebp) [MEM]
	pushl	-0x18(%ebp)
	# 0x804af6e:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804af73:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804af76:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804af79:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804af7c:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804af81:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804af84:	movzbl	-0x19(%ebp), %eax [MEM, REG]
	movzbl	-0x19(%ebp), %eax
	# 0x804af88:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804af8b:	pushl	%eax [REG]
	pushl	%eax
	# 0x804af8c:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804af91:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804af94:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804af97:	jmp	0x804acdc [IMM <CODEREF>]
	jmp	.label_238
	# 0x804af9c:	leal	-8(%ebp), %esp [MEM, REG]
.label_242:
	leal	-8(%ebp), %esp
	# 0x804af9f:	popl	%ebx [REG]
	popl	%ebx
	# 0x804afa0:	popl	%esi [REG]
	popl	%esi
	# 0x804afa1:	popl	%ebp [REG]
	popl	%ebp
	# 0x804afa2:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804afa3

	# 0x804afa3:	pushl	%ebp [REG]
	.globl eval1
	.type eval1, @function
eval1:
	pushl	%ebp
	# 0x804afa4:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804afa6:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804afa9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804afac:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804afaf:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804afb3:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804afb6:	pushl	%eax [REG]
	pushl	%eax
	# 0x804afb7:	calll	0x804acbb [IMM <CODEREF>]
	calll	eval2
	# 0x804afbc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804afbf:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804afc2:	subl	$0xc, %esp [IMM, REG]
.label_261:
	subl	$0xc, %esp
	# 0x804afc5:	pushl	$0x804fa18 [IMM <DATAREF>]
	pushl	$label_256
	# 0x804afca:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804afcf:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804afd2:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804afd4:	je	0x804b078 [IMM <CODEREF>]
	je	.label_258
	# 0x804afda:	cmpb	$0, -0x1c(%ebp) [IMM, MEM]
	cmpb	$0, -0x1c(%ebp)
	# 0x804afde:	je	0x804affc [IMM <CODEREF>]
	je	.label_257
	# 0x804afe0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804afe3:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804afe6:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804afeb:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804afee:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804aff1:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804aff3:	je	0x804affc [IMM <CODEREF>]
	je	.label_257
	# 0x804aff5:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804affa:	jmp	0x804b001 [IMM <CODEREF>]
	jmp	.label_263
	# 0x804affc:	movl	$0, %eax [IMM, REG]
.label_257:
	movl	$0, %eax
	# 0x804b001:	andl	$1, %eax [IMM, REG]
.label_263:
	andl	$1, %eax
	# 0x804b004:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b007:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b008:	calll	0x804acbb [IMM <CODEREF>]
	calll	eval2
	# 0x804b00d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b010:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b013:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b016:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b019:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804b01e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b021:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b023:	jne	0x804b037 [IMM <CODEREF>]
	jne	.label_260
	# 0x804b025:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b028:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b02b:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804b030:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b033:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b035:	je	0x804b065 [IMM <CODEREF>]
	je	.label_262
	# 0x804b037:	subl	$0xc, %esp [IMM, REG]
.label_260:
	subl	$0xc, %esp
	# 0x804b03a:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b03d:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b042:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b045:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b048:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b04b:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b050:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b053:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b056:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b058:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804b05d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b060:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b063:	jmp	0x804b07d [IMM <CODEREF>]
	jmp	.label_259
	# 0x804b065:	subl	$0xc, %esp [IMM, REG]
.label_262:
	subl	$0xc, %esp
	# 0x804b068:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b06b:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b070:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b073:	jmp	0x804afc2 [IMM <CODEREF>]
	jmp	.label_261
	# 0x804b078:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_258:
	movl	-0x10(%ebp), %eax
	# 0x804b07b:	jmp	0x804b082 [IMM <CODEREF>]
	jmp	.label_264
	# 0x804b07d:	jmp	0x804afc2 [IMM <CODEREF>]
.label_259:
	jmp	.label_261
	# 0x804b082:	leave	 []
.label_264:
	leave	
	# 0x804b083:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b084

	# 0x804b084:	pushl	%ebp [REG]
	.globl eval
	.type eval, @function
eval:
	pushl	%ebp
	# 0x804b085:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b087:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804b08a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b08d:	movb	%al, -0x1c(%ebp) [REG, MEM]
	movb	%al, -0x1c(%ebp)
	# 0x804b090:	movzbl	-0x1c(%ebp), %eax [MEM, REG]
	movzbl	-0x1c(%ebp), %eax
	# 0x804b094:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b097:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b098:	calll	0x804afa3 [IMM <CODEREF>]
	calll	eval1
	# 0x804b09d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b0a0:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b0a3:	subl	$0xc, %esp [IMM, REG]
.label_265:
	subl	$0xc, %esp
	# 0x804b0a6:	pushl	$0x804fa1a [IMM <DATAREF>]
	pushl	$label_266
	# 0x804b0ab:	calll	0x804a1e8 [IMM <CODEREF>]
	calll	nextarg
	# 0x804b0b0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b0b3:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b0b5:	je	0x804b163 [IMM <CODEREF>]
	je	.label_269
	# 0x804b0bb:	cmpb	$0, -0x1c(%ebp) [IMM, MEM]
	cmpb	$0, -0x1c(%ebp)
	# 0x804b0bf:	je	0x804b0da [IMM <CODEREF>]
	je	.label_268
	# 0x804b0c1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b0c4:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b0c7:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804b0cc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b0cf:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b0d1:	je	0x804b0da [IMM <CODEREF>]
	je	.label_268
	# 0x804b0d3:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804b0d8:	jmp	0x804b0df [IMM <CODEREF>]
	jmp	.label_267
	# 0x804b0da:	movl	$0, %eax [IMM, REG]
.label_268:
	movl	$0, %eax
	# 0x804b0df:	andl	$1, %eax [IMM, REG]
.label_267:
	andl	$1, %eax
	# 0x804b0e2:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b0e5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b0e6:	calll	0x804afa3 [IMM <CODEREF>]
	calll	eval1
	# 0x804b0eb:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b0ee:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b0f1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b0f4:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b0f7:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804b0fc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b0ff:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b101:	je	0x804b150 [IMM <CODEREF>]
	je	.label_270
	# 0x804b103:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b106:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b109:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b10e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b111:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b114:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b117:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b11a:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b11d:	calll	0x8049fdb [IMM <CODEREF>]
	calll	null
	# 0x804b122:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b125:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b127:	je	0x804b0a3 [IMM <CODEREF>]
	je	.label_265
	# 0x804b12d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b130:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804b133:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b138:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b13b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b13e:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b140:	calll	0x8049ec6 [IMM <CODEREF>]
	calll	int_value
	# 0x804b145:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b148:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b14b:	jmp	0x804b0a3 [IMM <CODEREF>]
	jmp	.label_265
	# 0x804b150:	subl	$0xc, %esp [IMM, REG]
.label_270:
	subl	$0xc, %esp
	# 0x804b153:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b156:	calll	0x8049f39 [IMM <CODEREF>]
	calll	freev
	# 0x804b15b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b15e:	jmp	0x804b0a3 [IMM <CODEREF>]
	jmp	.label_265
	# 0x804b163:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_269:
	movl	-0x10(%ebp), %eax
	# 0x804b166:	leave	 []
	leave	
	# 0x804b167:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b168
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	# 0x804b168:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b169:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b16b:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b16e:	movl	%eax, 0x80531b0 [REG, MEM]
	movl	%eax, file_name
	# 0x804b173:	nop	 []
	nop	
	# 0x804b174:	popl	%ebp [REG]
	popl	%ebp
	# 0x804b175:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b176
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	# 0x804b176:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b177:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b179:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b17c:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b17f:	movb	%al, -4(%ebp) [REG, MEM]
	movb	%al, -4(%ebp)
	# 0x804b182:	movzbl	-4(%ebp), %eax [MEM, REG]
	movzbl	-4(%ebp), %eax
	# 0x804b186:	movb	%al, 0x80531b4 [REG, MEM]
	movb	%al, ignore_EPIPE
	# 0x804b18b:	nop	 []
	nop	
	# 0x804b18c:	leave	 []
	leave	
	# 0x804b18d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b18e

	# 0x804b18e:	pushl	%ebp [REG]
	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	pushl	%ebp
	# 0x804b18f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b191:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804b192:	subl	$0x14, %esp [IMM, REG]
	subl	$0x14, %esp
	# 0x804b195:	movl	0x8053198, %eax [MEM, REG]
	movl	stdout,  %eax
	# 0x804b19a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b19d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b19e:	calll	0x804e47a [IMM <CODEREF>]
	calll	close_stream
	# 0x804b1a3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b1a6:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b1a8:	je	0x804b23f [IMM <CODEREF>]
	je	.label_271
	# 0x804b1ae:	movzbl	0x80531b4, %eax [MEM, REG]
	movzbl	ignore_EPIPE,  %eax
	# 0x804b1b5:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804b1b8:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b1ba:	jne	0x804b1c8 [IMM <CODEREF>]
	jne	.label_277
	# 0x804b1bc:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804b1c1:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804b1c3:	cmpl	$0x20, %eax [IMM, REG]
	cmpl	$0x20, %eax
	# 0x804b1c6:	je	0x804b23f [IMM <CODEREF>]
	je	.label_271
	# 0x804b1c8:	subl	$0xc, %esp [IMM, REG]
.label_277:
	subl	$0xc, %esp
	# 0x804b1cb:	pushl	$0x804fa1c [IMM <DATAREF>]
	pushl	$label_273
	# 0x804b1d0:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804b1d5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b1d8:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b1db:	movl	0x80531b0, %eax [MEM, REG]
	movl	file_name,  %eax
	# 0x804b1e0:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b1e2:	je	0x804b217 [IMM <CODEREF>]
	je	.label_276
	# 0x804b1e4:	movl	0x80531b0, %eax [MEM, REG]
	movl	file_name,  %eax
	# 0x804b1e9:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b1ec:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b1ed:	calll	0x804cd5e [IMM <CODEREF>]
	calll	quotearg_colon
	# 0x804b1f2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b1f5:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804b1f7:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804b1fc:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804b1fe:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b201:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b204:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804b205:	pushl	$0x804fa28 [IMM <DATAREF>]
	pushl	$label_278
	# 0x804b20a:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b20b:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b20d:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804b212:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804b215:	jmp	0x804b231 [IMM <CODEREF>]
	jmp	.label_272
	# 0x804b217:	calll	0x8048ed0 [IMM <CODEREF>]
.label_276:
	calll	__errno_location
	# 0x804b21c:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804b21e:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b221:	pushl	$0x804fa2f [IMM <DATAREF>]
	pushl	$label_274
	# 0x804b226:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b227:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b229:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804b22e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b231:	movl	0x8053108, %eax [MEM, REG]
.label_272:
	movl	exit_failure,  %eax
	# 0x804b236:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b239:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b23a:	calll	0x8048c90 [IMM <CODEREF>]
	calll	_exit
	# 0x804b23f:	movl	0x8053188, %eax [MEM, REG]
.label_271:
	movl	stderr,  %eax
	# 0x804b244:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b247:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b248:	calll	0x804e47a [IMM <CODEREF>]
	calll	close_stream
	# 0x804b24d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b250:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b252:	je	0x804b262 [IMM <CODEREF>]
	je	.label_275
	# 0x804b254:	movl	0x8053108, %eax [MEM, REG]
	movl	exit_failure,  %eax
	# 0x804b259:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b25c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b25d:	calll	0x8048c90 [IMM <CODEREF>]
	calll	_exit
	# 0x804b262:	nop	 []
.label_275:
	nop	
	# 0x804b263:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x804b266:	leave	 []
	leave	
	# 0x804b267:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b268

	# 0x804b268:	pushl	%ebp [REG]
	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	pushl	%ebp
	# 0x804b269:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b26b:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804b26e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b271:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804b274:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b277:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804b27a:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804b27d:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804b280:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b283:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b286:	movb	$0, 0(%eax) [IMM, MEM]
	movb	$0, 0(%eax)
	# 0x804b289:	cmpl	$0, -0x1c(%ebp) [IMM, MEM]
	cmpl	$0, -0x1c(%ebp)
	# 0x804b28d:	jns	0x804b2e7 [IMM <CODEREF>]
	jns	.label_280
	# 0x804b28f:	subl	$1, -0xc(%ebp) [IMM, MEM]
.label_279:
	subl	$1, -0xc(%ebp)
	# 0x804b293:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804b296:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804b299:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b29b:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804b29d:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b29e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b29f:	calll	0x804ec20 [IMM <CODEREF>]
	calll	__moddi3
	# 0x804b2a4:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b2a7:	movl	$0x30, %edx [IMM, REG]
	movl	$0x30, %edx
	# 0x804b2ac:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804b2ae:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804b2b0:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b2b2:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b2b5:	movb	%dl, 0(%eax) [REG, MEM]
	movb	%dl, 0(%eax)
	# 0x804b2b7:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804b2ba:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804b2bd:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b2bf:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804b2c1:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b2c2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b2c3:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x804b2c8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b2cb:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804b2ce:	movl	%edx, -0x1c(%ebp) [REG, MEM]
	movl	%edx, -0x1c(%ebp)
	# 0x804b2d1:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804b2d4:	orl	-0x20(%ebp), %eax [MEM, REG]
	orl	-0x20(%ebp), %eax
	# 0x804b2d7:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b2d9:	jne	0x804b28f [IMM <CODEREF>]
	jne	.label_279
	# 0x804b2db:	subl	$1, -0xc(%ebp) [IMM, MEM]
	subl	$1, -0xc(%ebp)
	# 0x804b2df:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b2e2:	movb	$0x2d, 0(%eax) [IMM, MEM]
	movb	$0x2d, 0(%eax)
	# 0x804b2e5:	jmp	0x804b32d [IMM <CODEREF>]
	jmp	.label_281
	# 0x804b2e7:	subl	$1, -0xc(%ebp) [IMM, MEM]
.label_280:
	subl	$1, -0xc(%ebp)
	# 0x804b2eb:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804b2ee:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804b2f1:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b2f3:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804b2f5:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b2f6:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b2f7:	calll	0x804ec20 [IMM <CODEREF>]
	calll	__moddi3
	# 0x804b2fc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b2ff:	addl	$0x30, %eax [IMM, REG]
	addl	$0x30, %eax
	# 0x804b302:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b304:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b307:	movb	%dl, 0(%eax) [REG, MEM]
	movb	%dl, 0(%eax)
	# 0x804b309:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804b30c:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804b30f:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b311:	pushl	$0xa [IMM]
	pushl	$0xa
	# 0x804b313:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b314:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b315:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x804b31a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b31d:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804b320:	movl	%edx, -0x1c(%ebp) [REG, MEM]
	movl	%edx, -0x1c(%ebp)
	# 0x804b323:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804b326:	orl	-0x20(%ebp), %eax [MEM, REG]
	orl	-0x20(%ebp), %eax
	# 0x804b329:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b32b:	jne	0x804b2e7 [IMM <CODEREF>]
	jne	.label_280
	# 0x804b32d:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_281:
	movl	-0xc(%ebp), %eax
	# 0x804b330:	leave	 []
	leave	
	# 0x804b331:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b332

	# 0x804b332:	pushl	%ebp [REG]
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	pushl	%ebp
	# 0x804b333:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b335:	subl	$0x38, %esp [IMM, REG]
	subl	$0x38, %esp
	# 0x804b338:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b33b:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804b33e:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804b341:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804b344:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804b347:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804b34a:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804b34d:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804b350:	movl	0x1c(%ebp), %eax [MEM, REG]
	movl	0x1c(%ebp), %eax
	# 0x804b353:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804b356:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804b35c:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b35f:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804b361:	movl	0x80531a0, %eax [MEM, REG]
	movl	opterr,  %eax
	# 0x804b366:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804b369:	movl	$0, 0x80531a0 [IMM, MEM]
	movl	$0, opterr
	# 0x804b373:	cmpl	$2, 8(%ebp) [IMM, MEM]
	cmpl	$2, 8(%ebp)
	# 0x804b377:	jne	0x804b3eb [IMM <CODEREF>]
	jne	.label_284
	# 0x804b379:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b37c:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b37e:	pushl	$0x804fa60 [IMM <DATAREF>]
	pushl	$long_options
	# 0x804b383:	pushl	$0x804fa90 [IMM <DATAREF>]
	pushl	$label_285
	# 0x804b388:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804b38b:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804b38e:	calll	0x8048e70 [IMM <CODEREF>]
	calll	getopt_long
	# 0x804b393:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804b396:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b399:	cmpl	$-1, -0x10(%ebp) [IMM, MEM]
	cmpl	$-1, -0x10(%ebp)
	# 0x804b39d:	je	0x804b3eb [IMM <CODEREF>]
	je	.label_284
	# 0x804b39f:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b3a2:	cmpl	$0x68, %eax [IMM, REG]
	cmpl	$0x68, %eax
	# 0x804b3a5:	je	0x804b3ae [IMM <CODEREF>]
	je	.label_286
	# 0x804b3a7:	cmpl	$0x76, %eax [IMM, REG]
	cmpl	$0x76, %eax
	# 0x804b3aa:	je	0x804b3bd [IMM <CODEREF>]
	je	.label_282
	# 0x804b3ac:	jmp	0x804b3eb [IMM <CODEREF>]
	jmp	.label_284
	# 0x804b3ae:	subl	$0xc, %esp [IMM, REG]
.label_286:
	subl	$0xc, %esp
	# 0x804b3b1:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b3b3:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804b3b6:	calll	*%eax [REG]
	calll	*%eax
	# 0x804b3b8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b3bb:	jmp	0x804b3eb [IMM <CODEREF>]
	jmp	.label_284
	# 0x804b3bd:	leal	0x20(%ebp), %eax [MEM, REG]
.label_282:
	leal	0x20(%ebp), %eax
	# 0x804b3c0:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804b3c3:	movl	-0x18(%ebp), %edx [MEM, REG]
	movl	-0x18(%ebp), %edx
	# 0x804b3c6:	movl	0x8053198, %eax [MEM, REG]
	movl	stdout,  %eax
	# 0x804b3cb:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b3ce:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b3cf:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804b3d2:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804b3d5:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804b3d8:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b3d9:	calll	0x804da1e [IMM <CODEREF>]
	calll	version_etc_va
	# 0x804b3de:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804b3e1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b3e4:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b3e6:	calll	0x8048e40 [IMM <CODEREF>]
	calll	exit
	# 0x804b3eb:	movl	-0x14(%ebp), %eax [MEM, REG]
.label_284:
	movl	-0x14(%ebp), %eax
	# 0x804b3ee:	movl	%eax, 0x80531a0 [REG, MEM]
	movl	%eax, opterr
	# 0x804b3f3:	movl	$0, 0x8053194 [IMM, MEM]
	movl	$0, optind
	# 0x804b3fd:	nop	 []
	nop	
	# 0x804b3fe:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b401:	xorl	%gs:0x14, %eax [MEM, REG]
	xorl	%gs:0x14, %eax
	# 0x804b408:	je	0x804b40f [IMM <CODEREF>]
	je	.label_283
	# 0x804b40a:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804b40f:	leave	 []
.label_283:
	leave	
	# 0x804b410:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b411

	# 0x804b411:	pushl	%ebp [REG]
	.globl mbschr
	.type mbschr, @function
mbschr:
	pushl	%ebp
	# 0x804b412:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b414:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804b417:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b41a:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804b41d:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804b423:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b426:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804b428:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x804b42d:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804b430:	jbe	0x804b4d4 [IMM <CODEREF>]
	jbe	.label_291
	# 0x804b436:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b439:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804b43c:	cmpl	$0x2f, %eax [IMM, REG]
	cmpl	$0x2f, %eax
	# 0x804b43f:	jle	0x804b4d4 [IMM <CODEREF>]
	jle	.label_291
	# 0x804b445:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x804b448:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804b44b:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x804b44f:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b452:	pushl	$8 [IMM]
	pushl	$8
	# 0x804b454:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b456:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x804b459:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b45c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b45d:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804b462:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b465:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x804b469:	subl	$0xc, %esp [IMM, REG]
.label_287:
	subl	$0xc, %esp
	# 0x804b46c:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x804b46f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b470:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x804b475:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b478:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x804b47c:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804b47f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b481:	jne	0x804b48a [IMM <CODEREF>]
	jne	.label_292
	# 0x804b483:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x804b486:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b488:	je	0x804b491 [IMM <CODEREF>]
	je	.label_288
	# 0x804b48a:	movl	$1, %eax [IMM, REG]
.label_292:
	movl	$1, %eax
	# 0x804b48f:	jmp	0x804b496 [IMM <CODEREF>]
	jmp	.label_290
	# 0x804b491:	movl	$0, %eax [IMM, REG]
.label_288:
	movl	$0, %eax
	# 0x804b496:	testl	%eax, %eax [REG, REG]
.label_290:
	testl	%eax, %eax
	# 0x804b498:	je	0x804b4cc [IMM <CODEREF>]
	je	.label_295
	# 0x804b49a:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x804b49d:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804b4a0:	jne	0x804b4b5 [IMM <CODEREF>]
	jne	.label_293
	# 0x804b4a2:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804b4a5:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b4a8:	movzbl	%al, %edx [REG, REG]
	movzbl	%al, %edx
	# 0x804b4ab:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b4ae:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804b4b1:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x804b4b3:	je	0x804b4c6 [IMM <CODEREF>]
	je	.label_294
	# 0x804b4b5:	movl	-0x34(%ebp), %edx [MEM, REG]
.label_293:
	movl	-0x34(%ebp), %edx
	# 0x804b4b8:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x804b4bb:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804b4bd:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804b4c0:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x804b4c4:	jmp	0x804b469 [IMM <CODEREF>]
	jmp	.label_287
	# 0x804b4c6:	nop	 []
.label_294:
	nop	
	# 0x804b4c7:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804b4ca:	jmp	0x804b4e5 [IMM <CODEREF>]
	jmp	.label_289
	# 0x804b4cc:	nop	 []
.label_295:
	nop	
	# 0x804b4cd:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804b4d2:	jmp	0x804b4e5 [IMM <CODEREF>]
	jmp	.label_289
	# 0x804b4d4:	subl	$8, %esp [IMM, REG]
.label_291:
	subl	$8, %esp
	# 0x804b4d7:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804b4da:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804b4dd:	calll	0x8048e80 [IMM <CODEREF>]
	calll	strchr
	# 0x804b4e2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b4e5:	movl	-0xc(%ebp), %ecx [MEM, REG]
.label_289:
	movl	-0xc(%ebp), %ecx
	# 0x804b4e8:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804b4ef:	je	0x804b4f6 [IMM <CODEREF>]
	je	.label_296
	# 0x804b4f1:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804b4f6:	leave	 []
.label_296:
	leave	
	# 0x804b4f7:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b4f8

	# 0x804b4f8:	pushl	%ebp [REG]
	.globl mbslen
	.type mbslen, @function
mbslen:
	pushl	%ebp
	# 0x804b4f9:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b4fb:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804b4fe:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b501:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804b504:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804b50a:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b50d:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804b50f:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x804b514:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804b517:	jbe	0x804b58f [IMM <CODEREF>]
	jbe	.label_302
	# 0x804b519:	movl	$0, -0x48(%ebp) [IMM, MEM]
	movl	$0, -0x48(%ebp)
	# 0x804b520:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x804b523:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804b526:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x804b52a:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b52d:	pushl	$8 [IMM]
	pushl	$8
	# 0x804b52f:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b531:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x804b534:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b537:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b538:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804b53d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b540:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x804b544:	jmp	0x804b559 [IMM <CODEREF>]
	jmp	.label_300
	# 0x804b546:	addl	$1, -0x48(%ebp) [IMM, MEM]
.label_298:
	addl	$1, -0x48(%ebp)
	# 0x804b54a:	movl	-0x34(%ebp), %edx [MEM, REG]
	movl	-0x34(%ebp), %edx
	# 0x804b54d:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x804b550:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804b552:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804b555:	movb	$0, -0x38(%ebp) [IMM, MEM]
	movb	$0, -0x38(%ebp)
	# 0x804b559:	subl	$0xc, %esp [IMM, REG]
.label_300:
	subl	$0xc, %esp
	# 0x804b55c:	leal	-0x44(%ebp), %eax [MEM, REG]
	leal	-0x44(%ebp), %eax
	# 0x804b55f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b560:	calll	0x804b5b0 [IMM <CODEREF>]
	calll	mbuiter_multi_next
	# 0x804b565:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b568:	movzbl	-0x2c(%ebp), %eax [MEM, REG]
	movzbl	-0x2c(%ebp), %eax
	# 0x804b56c:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804b56f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b571:	jne	0x804b57a [IMM <CODEREF>]
	jne	.label_297
	# 0x804b573:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x804b576:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b578:	je	0x804b581 [IMM <CODEREF>]
	je	.label_301
	# 0x804b57a:	movl	$1, %eax [IMM, REG]
.label_297:
	movl	$1, %eax
	# 0x804b57f:	jmp	0x804b586 [IMM <CODEREF>]
	jmp	.label_304
	# 0x804b581:	movl	$0, %eax [IMM, REG]
.label_301:
	movl	$0, %eax
	# 0x804b586:	testl	%eax, %eax [REG, REG]
.label_304:
	testl	%eax, %eax
	# 0x804b588:	jne	0x804b546 [IMM <CODEREF>]
	jne	.label_298
	# 0x804b58a:	movl	-0x48(%ebp), %eax [MEM, REG]
	movl	-0x48(%ebp), %eax
	# 0x804b58d:	jmp	0x804b59d [IMM <CODEREF>]
	jmp	.label_299
	# 0x804b58f:	subl	$0xc, %esp [IMM, REG]
.label_302:
	subl	$0xc, %esp
	# 0x804b592:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804b595:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804b59a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b59d:	movl	-0xc(%ebp), %ecx [MEM, REG]
.label_299:
	movl	-0xc(%ebp), %ecx
	# 0x804b5a0:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804b5a7:	je	0x804b5ae [IMM <CODEREF>]
	je	.label_303
	# 0x804b5a9:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804b5ae:	leave	 []
.label_303:
	leave	
	# 0x804b5af:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b5b0

	# 0x804b5b0:	pushl	%ebp [REG]
	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	pushl	%ebp
	# 0x804b5b1:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b5b3:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804b5b4:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b5b7:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b5ba:	movzbl	0xc(%eax), %eax [MEM, REG]
	movzbl	0xc(%eax), %eax
	# 0x804b5be:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b5c0:	jne	0x804b769 [IMM <CODEREF>]
	jne	.label_317
	# 0x804b5c6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b5c9:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b5cc:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b5ce:	jne	0x804b64b [IMM <CODEREF>]
	jne	.label_307
	# 0x804b5d0:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b5d3:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b5d6:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b5d9:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804b5dc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b5df:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b5e0:	calll	0x804e652 [IMM <CODEREF>]
	calll	is_basic
	# 0x804b5e5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b5e8:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b5ea:	je	0x804b614 [IMM <CODEREF>]
	je	.label_315
	# 0x804b5ec:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b5ef:	movl	$1, 0x14(%eax) [IMM, MEM]
	movl	$1, 0x14(%eax)
	# 0x804b5f6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b5f9:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b5fc:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b5ff:	movsbl	%al, %edx [REG, REG]
	movsbl	%al, %edx
	# 0x804b602:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b605:	movl	%edx, 0x1c(%eax) [REG, MEM]
	movl	%edx, 0x1c(%eax)
	# 0x804b608:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b60b:	movb	$1, 0x18(%eax) [IMM, MEM]
	movb	$1, 0x18(%eax)
	# 0x804b60f:	jmp	0x804b760 [IMM <CODEREF>]
	jmp	.label_310
	# 0x804b614:	movl	8(%ebp), %eax [MEM, REG]
.label_315:
	movl	8(%ebp), %eax
	# 0x804b617:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b61a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b61d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b61e:	calll	0x8048cd0 [IMM <CODEREF>]
	calll	mbsinit
	# 0x804b623:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b626:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b628:	jne	0x804b643 [IMM <CODEREF>]
	jne	.label_313
	# 0x804b62a:	pushl	$0x804fae4 [IMM <DATAREF>]
	pushl	$__PRETTY_FUNCTION__.3732
	# 0x804b62f:	pushl	$0x96 [IMM]
	pushl	$0x96
	# 0x804b634:	pushl	$0x804fa94 [IMM <DATAREF>]
	pushl	$label_308
	# 0x804b639:	pushl	$0x804faa2 [IMM <DATAREF>]
	pushl	$label_319
	# 0x804b63e:	calll	0x8048f90 [IMM <CODEREF>]
	calll	__assert_fail
	# 0x804b643:	movl	8(%ebp), %eax [MEM, REG]
.label_313:
	movl	8(%ebp), %eax
	# 0x804b646:	movb	$1, 0(%eax) [IMM, MEM]
	movb	$1, 0(%eax)
	# 0x804b649:	jmp	0x804b64c [IMM <CODEREF>]
	jmp	.label_311
	# 0x804b64b:	nop	 []
.label_307:
	nop	
	# 0x804b64c:	movl	8(%ebp), %eax [MEM, REG]
.label_311:
	movl	8(%ebp), %eax
	# 0x804b64f:	leal	4(%eax), %ebx [MEM, REG]
	leal	4(%eax), %ebx
	# 0x804b652:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x804b657:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b659:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b65c:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b65f:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804b662:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b663:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b664:	calll	0x804cfd1 [IMM <CODEREF>]
	calll	strnlen1
	# 0x804b669:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b66c:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804b66e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b671:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b674:	movl	8(%ebp), %edx [MEM, REG]
	movl	8(%ebp), %edx
	# 0x804b677:	addl	$0x1c, %edx [IMM, REG]
	addl	$0x1c, %edx
	# 0x804b67a:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804b67b:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804b67c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b67d:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b67e:	calll	0x804e377 [IMM <CODEREF>]
	calll	rpl_mbrtowc
	# 0x804b683:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b686:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b688:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b68b:	movl	%edx, 0x14(%eax) [REG, MEM]
	movl	%edx, 0x14(%eax)
	# 0x804b68e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b691:	movl	0x14(%eax), %eax [MEM, REG]
	movl	0x14(%eax), %eax
	# 0x804b694:	cmpl	$-1, %eax [IMM, REG]
	cmpl	$-1, %eax
	# 0x804b697:	jne	0x804b6af [IMM <CODEREF>]
	jne	.label_306
	# 0x804b699:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b69c:	movl	$1, 0x14(%eax) [IMM, MEM]
	movl	$1, 0x14(%eax)
	# 0x804b6a3:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6a6:	movb	$0, 0x18(%eax) [IMM, MEM]
	movb	$0, 0x18(%eax)
	# 0x804b6aa:	jmp	0x804b760 [IMM <CODEREF>]
	jmp	.label_310
	# 0x804b6af:	movl	8(%ebp), %eax [MEM, REG]
.label_306:
	movl	8(%ebp), %eax
	# 0x804b6b2:	movl	0x14(%eax), %eax [MEM, REG]
	movl	0x14(%eax), %eax
	# 0x804b6b5:	cmpl	$-2, %eax [IMM, REG]
	cmpl	$-2, %eax
	# 0x804b6b8:	jne	0x804b6e0 [IMM <CODEREF>]
	jne	.label_316
	# 0x804b6ba:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6bd:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b6c0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b6c3:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b6c4:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804b6c9:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b6cc:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b6ce:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6d1:	movl	%edx, 0x14(%eax) [REG, MEM]
	movl	%edx, 0x14(%eax)
	# 0x804b6d4:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6d7:	movb	$0, 0x18(%eax) [IMM, MEM]
	movb	$0, 0x18(%eax)
	# 0x804b6db:	jmp	0x804b760 [IMM <CODEREF>]
	jmp	.label_310
	# 0x804b6e0:	movl	8(%ebp), %eax [MEM, REG]
.label_316:
	movl	8(%ebp), %eax
	# 0x804b6e3:	movl	0x14(%eax), %eax [MEM, REG]
	movl	0x14(%eax), %eax
	# 0x804b6e6:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b6e8:	jne	0x804b73d [IMM <CODEREF>]
	jne	.label_305
	# 0x804b6ea:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6ed:	movl	$1, 0x14(%eax) [IMM, MEM]
	movl	$1, 0x14(%eax)
	# 0x804b6f4:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b6f7:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804b6fa:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b6fd:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b6ff:	je	0x804b71a [IMM <CODEREF>]
	je	.label_318
	# 0x804b701:	pushl	$0x804fae4 [IMM <DATAREF>]
	pushl	$__PRETTY_FUNCTION__.3732
	# 0x804b706:	pushl	$0xb2 [IMM]
	pushl	$0xb2
	# 0x804b70b:	pushl	$0x804fa94 [IMM <DATAREF>]
	pushl	$label_308
	# 0x804b710:	pushl	$0x804fab9 [IMM <DATAREF>]
	pushl	$label_309
	# 0x804b715:	calll	0x8048f90 [IMM <CODEREF>]
	calll	__assert_fail
	# 0x804b71a:	movl	8(%ebp), %eax [MEM, REG]
.label_318:
	movl	8(%ebp), %eax
	# 0x804b71d:	movl	0x1c(%eax), %eax [MEM, REG]
	movl	0x1c(%eax), %eax
	# 0x804b720:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b722:	je	0x804b73d [IMM <CODEREF>]
	je	.label_305
	# 0x804b724:	pushl	$0x804fae4 [IMM <DATAREF>]
	pushl	$__PRETTY_FUNCTION__.3732
	# 0x804b729:	pushl	$0xb3 [IMM]
	pushl	$0xb3
	# 0x804b72e:	pushl	$0x804fa94 [IMM <DATAREF>]
	pushl	$label_308
	# 0x804b733:	pushl	$0x804fad0 [IMM <DATAREF>]
	pushl	$label_314
	# 0x804b738:	calll	0x8048f90 [IMM <CODEREF>]
	calll	__assert_fail
	# 0x804b73d:	movl	8(%ebp), %eax [MEM, REG]
.label_305:
	movl	8(%ebp), %eax
	# 0x804b740:	movb	$1, 0x18(%eax) [IMM, MEM]
	movb	$1, 0x18(%eax)
	# 0x804b744:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b747:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b74a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804b74d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b74e:	calll	0x8048cd0 [IMM <CODEREF>]
	calll	mbsinit
	# 0x804b753:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b756:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b758:	je	0x804b760 [IMM <CODEREF>]
	je	.label_310
	# 0x804b75a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b75d:	movb	$0, 0(%eax) [IMM, MEM]
	movb	$0, 0(%eax)
	# 0x804b760:	movl	8(%ebp), %eax [MEM, REG]
.label_310:
	movl	8(%ebp), %eax
	# 0x804b763:	movb	$1, 0xc(%eax) [IMM, MEM]
	movb	$1, 0xc(%eax)
	# 0x804b767:	jmp	0x804b76a [IMM <CODEREF>]
	jmp	.label_312
	# 0x804b769:	nop	 []
.label_317:
	nop	
	# 0x804b76a:	movl	-4(%ebp), %ebx [MEM, REG]
.label_312:
	movl	-4(%ebp), %ebx
	# 0x804b76d:	leave	 []
	leave	
	# 0x804b76e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b76f
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	# 0x804b76f:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b770:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b772:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b775:	movl	0x10(%eax), %edx [MEM, REG]
	movl	0x10(%eax), %edx
	# 0x804b778:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b77b:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804b77d:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b780:	movl	%edx, 0x10(%eax) [REG, MEM]
	movl	%edx, 0x10(%eax)
	# 0x804b783:	nop	 []
	nop	
	# 0x804b784:	popl	%ebp [REG]
	popl	%ebp
	# 0x804b785:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b786
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	# 0x804b786:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b787:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b789:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804b78c:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b78f:	movzbl	0(%eax), %edx [MEM, REG]
	movzbl	0(%eax), %edx
	# 0x804b792:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b795:	movb	%dl, 0(%eax) [REG, MEM]
	movb	%dl, 0(%eax)
	# 0x804b797:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b79a:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804b79d:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804b79f:	je	0x804b7b9 [IMM <CODEREF>]
	je	.label_321
	# 0x804b7a1:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b7a4:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b7a7:	movl	8(%ebp), %edx [MEM, REG]
	movl	8(%ebp), %edx
	# 0x804b7aa:	leal	4(%edx), %ecx [MEM, REG]
	leal	4(%edx), %ecx
	# 0x804b7ad:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804b7b0:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804b7b2:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804b7b4:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804b7b7:	jmp	0x804b7cf [IMM <CODEREF>]
	jmp	.label_320
	# 0x804b7b9:	movl	8(%ebp), %eax [MEM, REG]
.label_321:
	movl	8(%ebp), %eax
	# 0x804b7bc:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804b7bf:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b7c2:	pushl	$8 [IMM]
	pushl	$8
	# 0x804b7c4:	pushl	$0 [IMM]
	pushl	$0
	# 0x804b7c6:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b7c7:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804b7cc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b7cf:	movl	0xc(%ebp), %eax [MEM, REG]
.label_320:
	movl	0xc(%ebp), %eax
	# 0x804b7d2:	movzbl	0xc(%eax), %edx [MEM, REG]
	movzbl	0xc(%eax), %edx
	# 0x804b7d6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b7d9:	movb	%dl, 0xc(%eax) [REG, MEM]
	movb	%dl, 0xc(%eax)
	# 0x804b7dc:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b7df:	leal	0x10(%eax), %edx [MEM, REG]
	leal	0x10(%eax), %edx
	# 0x804b7e2:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b7e5:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804b7e8:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804b7eb:	pushl	%edx [REG]
	pushl	%edx
	# 0x804b7ec:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b7ed:	calll	0x804e5d3 [IMM <CODEREF>]
	calll	mb_copy
	# 0x804b7f2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b7f5:	nop	 []
	nop	
	# 0x804b7f6:	leave	 []
	leave	
	# 0x804b7f7:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b7f8

	# 0x804b7f8:	pushl	%ebp [REG]
	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	pushl	%ebp
	# 0x804b7f9:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b7fb:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804b7fe:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b802:	jne	0x804b820 [IMM <CODEREF>]
	jne	.label_325
	# 0x804b804:	movl	0x8053188, %eax [MEM, REG]
	movl	stderr,  %eax
	# 0x804b809:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b80a:	pushl	$0x37 [IMM]
	pushl	$0x37
	# 0x804b80c:	pushl	$1 [IMM]
	pushl	$1
	# 0x804b80e:	pushl	$0x804faf8 [IMM <DATAREF>]
	pushl	$label_322
	# 0x804b813:	calll	0x8048d70 [IMM <CODEREF>]
	calll	fwrite
	# 0x804b818:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b81b:	calll	0x8048f80 [IMM <CODEREF>]
	calll	abort
	# 0x804b820:	subl	$8, %esp [IMM, REG]
.label_325:
	subl	$8, %esp
	# 0x804b823:	pushl	$0x2f [IMM]
	pushl	$0x2f
	# 0x804b825:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804b828:	calll	0x8048f30 [IMM <CODEREF>]
	calll	strrchr
	# 0x804b82d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b830:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b833:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
	cmpl	$0, -0x10(%ebp)
	# 0x804b837:	je	0x804b841 [IMM <CODEREF>]
	je	.label_324
	# 0x804b839:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b83c:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804b83f:	jmp	0x804b844 [IMM <CODEREF>]
	jmp	.label_328
	# 0x804b841:	movl	8(%ebp), %eax [MEM, REG]
.label_324:
	movl	8(%ebp), %eax
	# 0x804b844:	movl	%eax, -0xc(%ebp) [REG, MEM]
.label_328:
	movl	%eax, -0xc(%ebp)
	# 0x804b847:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804b84a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b84d:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804b84f:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804b851:	cmpl	$6, %eax [IMM, REG]
	cmpl	$6, %eax
	# 0x804b854:	jle	0x804b8a3 [IMM <CODEREF>]
	jle	.label_323
	# 0x804b856:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b859:	subl	$7, %eax [IMM, REG]
	subl	$7, %eax
	# 0x804b85c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b85f:	pushl	$7 [IMM]
	pushl	$7
	# 0x804b861:	pushl	$0x804fb30 [IMM <DATAREF>]
	pushl	$label_327
	# 0x804b866:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b867:	calll	0x8048f70 [IMM <CODEREF>]
	calll	strncmp
	# 0x804b86c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b86f:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b871:	jne	0x804b8a3 [IMM <CODEREF>]
	jne	.label_323
	# 0x804b873:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b876:	movl	%eax, 8(%ebp) [REG, MEM]
	movl	%eax, 8(%ebp)
	# 0x804b879:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804b87c:	pushl	$3 [IMM]
	pushl	$3
	# 0x804b87e:	pushl	$0x804fb38 [IMM <DATAREF>]
	pushl	$label_326
	# 0x804b883:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804b886:	calll	0x8048f70 [IMM <CODEREF>]
	calll	strncmp
	# 0x804b88b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b88e:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804b890:	jne	0x804b8a3 [IMM <CODEREF>]
	jne	.label_323
	# 0x804b892:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b895:	addl	$3, %eax [IMM, REG]
	addl	$3, %eax
	# 0x804b898:	movl	%eax, 8(%ebp) [REG, MEM]
	movl	%eax, 8(%ebp)
	# 0x804b89b:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b89e:	movl	%eax, 0x8053180 [REG, MEM]
	movl	%eax, program_invocation_short_name
	# 0x804b8a3:	movl	8(%ebp), %eax [MEM, REG]
.label_323:
	movl	8(%ebp), %eax
	# 0x804b8a6:	movl	%eax, 0x80531b8 [REG, MEM]
	movl	%eax, program_name
	# 0x804b8ab:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b8ae:	movl	%eax, 0x8053190 [REG, MEM]
	movl	%eax, program_invocation_name
	# 0x804b8b3:	nop	 []
	nop	
	# 0x804b8b4:	leave	 []
	leave	
	# 0x804b8b5:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b8b6
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	# 0x804b8b6:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b8b7:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b8b9:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804b8bc:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804b8c1:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804b8c3:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b8c6:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b8ca:	je	0x804b8d1 [IMM <CODEREF>]
	je	.label_329
	# 0x804b8cc:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b8cf:	jmp	0x804b8d6 [IMM <CODEREF>]
	jmp	.label_330
	# 0x804b8d1:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_329:
	movl	$default_quoting_options,  %eax
	# 0x804b8d6:	subl	$8, %esp [IMM, REG]
.label_330:
	subl	$8, %esp
	# 0x804b8d9:	pushl	$0x30 [IMM]
	pushl	$0x30
	# 0x804b8db:	pushl	%eax [REG]
	pushl	%eax
	# 0x804b8dc:	calll	0x804de6a [IMM <CODEREF>]
	calll	xmemdup
	# 0x804b8e1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804b8e4:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b8e7:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804b8ec:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804b8ee:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b8f1:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804b8f3:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b8f6:	leave	 []
	leave	
	# 0x804b8f7:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b8f8
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	# 0x804b8f8:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b8f9:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b8fb:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b8ff:	je	0x804b906 [IMM <CODEREF>]
	je	.label_331
	# 0x804b901:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b904:	jmp	0x804b90b [IMM <CODEREF>]
	jmp	.label_332
	# 0x804b906:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_331:
	movl	$default_quoting_options,  %eax
	# 0x804b90b:	movl	0(%eax), %eax [MEM, REG]
.label_332:
	movl	0(%eax), %eax
	# 0x804b90d:	popl	%ebp [REG]
	popl	%ebp
	# 0x804b90e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b90f
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	# 0x804b90f:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b910:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b912:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b916:	je	0x804b91d [IMM <CODEREF>]
	je	.label_334
	# 0x804b918:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b91b:	jmp	0x804b922 [IMM <CODEREF>]
	jmp	.label_333
	# 0x804b91d:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_334:
	movl	$default_quoting_options,  %eax
	# 0x804b922:	movl	0xc(%ebp), %edx [MEM, REG]
.label_333:
	movl	0xc(%ebp), %edx
	# 0x804b925:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804b927:	nop	 []
	nop	
	# 0x804b928:	popl	%ebp [REG]
	popl	%ebp
	# 0x804b929:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b92a

	# 0x804b92a:	pushl	%ebp [REG]
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	pushl	%ebp
	# 0x804b92b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b92d:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804b92e:	subl	$0x14, %esp [IMM, REG]
	subl	$0x14, %esp
	# 0x804b931:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804b934:	movb	%al, -0x18(%ebp) [REG, MEM]
	movb	%al, -0x18(%ebp)
	# 0x804b937:	movzbl	-0x18(%ebp), %eax [MEM, REG]
	movzbl	-0x18(%ebp), %eax
	# 0x804b93b:	movb	%al, -0x11(%ebp) [REG, MEM]
	movb	%al, -0x11(%ebp)
	# 0x804b93e:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b942:	je	0x804b949 [IMM <CODEREF>]
	je	.label_335
	# 0x804b944:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b947:	jmp	0x804b94e [IMM <CODEREF>]
	jmp	.label_336
	# 0x804b949:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_335:
	movl	$default_quoting_options,  %eax
	# 0x804b94e:	leal	8(%eax), %edx [MEM, REG]
.label_336:
	leal	8(%eax), %edx
	# 0x804b951:	movzbl	-0x11(%ebp), %eax [MEM, REG]
	movzbl	-0x11(%ebp), %eax
	# 0x804b955:	shrb	$5, %al [IMM, REG]
	shrb	$5, %al
	# 0x804b958:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804b95b:	shll	$2, %eax [IMM, REG]
	shll	$2, %eax
	# 0x804b95e:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804b960:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804b963:	movzbl	-0x11(%ebp), %eax [MEM, REG]
	movzbl	-0x11(%ebp), %eax
	# 0x804b967:	andl	$0x1f, %eax [IMM, REG]
	andl	$0x1f, %eax
	# 0x804b96a:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804b96d:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b970:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804b972:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b975:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804b977:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804b979:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804b97b:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804b97e:	movl	%eax, -8(%ebp) [REG, MEM]
	movl	%eax, -8(%ebp)
	# 0x804b981:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b984:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804b986:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804b989:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804b98c:	xorl	-8(%ebp), %eax [MEM, REG]
	xorl	-8(%ebp), %eax
	# 0x804b98f:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804b991:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804b994:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804b996:	shll	%cl, %ebx [REG, REG]
	shll	%cl, %ebx
	# 0x804b998:	movl	%ebx, %eax [REG, REG]
	movl	%ebx, %eax
	# 0x804b99a:	xorl	%eax, %edx [REG, REG]
	xorl	%eax, %edx
	# 0x804b99c:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804b99f:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804b9a1:	movl	-8(%ebp), %eax [MEM, REG]
	movl	-8(%ebp), %eax
	# 0x804b9a4:	addl	$0x14, %esp [IMM, REG]
	addl	$0x14, %esp
	# 0x804b9a7:	popl	%ebx [REG]
	popl	%ebx
	# 0x804b9a8:	popl	%ebp [REG]
	popl	%ebp
	# 0x804b9a9:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b9aa
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	# 0x804b9aa:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804b9ab:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b9ad:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x804b9b0:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b9b4:	jne	0x804b9bd [IMM <CODEREF>]
	jne	.label_337
	# 0x804b9b6:	movl	$0x80531c0, 8(%ebp) [IMM <DATAREF>, MEM]
	movl	$default_quoting_options, 8(%ebp)
	# 0x804b9bd:	movl	8(%ebp), %eax [MEM, REG]
.label_337:
	movl	8(%ebp), %eax
	# 0x804b9c0:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804b9c3:	movl	%eax, -4(%ebp) [REG, MEM]
	movl	%eax, -4(%ebp)
	# 0x804b9c6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804b9c9:	movl	0xc(%ebp), %edx [MEM, REG]
	movl	0xc(%ebp), %edx
	# 0x804b9cc:	movl	%edx, 4(%eax) [REG, MEM]
	movl	%edx, 4(%eax)
	# 0x804b9cf:	movl	-4(%ebp), %eax [MEM, REG]
	movl	-4(%ebp), %eax
	# 0x804b9d2:	leave	 []
	leave	
	# 0x804b9d3:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b9d4

	# 0x804b9d4:	pushl	%ebp [REG]
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	pushl	%ebp
	# 0x804b9d5:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804b9d7:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804b9da:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804b9de:	jne	0x804b9e7 [IMM <CODEREF>]
	jne	.label_338
	# 0x804b9e0:	movl	$0x80531c0, 8(%ebp) [IMM <DATAREF>, MEM]
	movl	$default_quoting_options, 8(%ebp)
	# 0x804b9e7:	movl	8(%ebp), %eax [MEM, REG]
.label_338:
	movl	8(%ebp), %eax
	# 0x804b9ea:	movl	$0xa, 0(%eax) [IMM, MEM]
	movl	$0xa, 0(%eax)
	# 0x804b9f0:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804b9f4:	je	0x804b9fc [IMM <CODEREF>]
	je	.label_340
	# 0x804b9f6:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x804b9fa:	jne	0x804ba01 [IMM <CODEREF>]
	jne	.label_339
	# 0x804b9fc:	calll	0x8048f80 [IMM <CODEREF>]
.label_340:
	calll	abort
	# 0x804ba01:	movl	8(%ebp), %eax [MEM, REG]
.label_339:
	movl	8(%ebp), %eax
	# 0x804ba04:	movl	0xc(%ebp), %edx [MEM, REG]
	movl	0xc(%ebp), %edx
	# 0x804ba07:	movl	%edx, 0x28(%eax) [REG, MEM]
	movl	%edx, 0x28(%eax)
	# 0x804ba0a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ba0d:	movl	0x10(%ebp), %edx [MEM, REG]
	movl	0x10(%ebp), %edx
	# 0x804ba10:	movl	%edx, 0x2c(%eax) [REG, MEM]
	movl	%edx, 0x2c(%eax)
	# 0x804ba13:	nop	 []
	nop	
	# 0x804ba14:	leave	 []
	leave	
	# 0x804ba15:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ba16

	# 0x804ba16:	pushl	%ebp [REG]
	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	pushl	%ebp
	# 0x804ba17:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ba19:	pushl	%edi [REG]
	pushl	%edi
	# 0x804ba1a:	subl	$0x54, %esp [IMM, REG]
	subl	$0x54, %esp
	# 0x804ba1d:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ba20:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804ba23:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804ba29:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804ba2c:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804ba2e:	leal	-0x3c(%ebp), %edx [MEM, REG]
	leal	-0x3c(%ebp), %edx
	# 0x804ba31:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804ba36:	movl	$0xc, %ecx [IMM, REG]
	movl	$0xc, %ecx
	# 0x804ba3b:	movl	%edx, %edi [REG, REG]
	movl	%edx, %edi
	# 0x804ba3d:	rep stosl	%eax, %es:(%edi) [MEM]
	rep stosl	%eax, %es:(%edi)
	# 0x804ba3f:	cmpl	$0xa, 0xc(%ebp) [IMM, MEM]
	cmpl	$0xa, 0xc(%ebp)
	# 0x804ba43:	jne	0x804ba4a [IMM <CODEREF>]
	jne	.label_342
	# 0x804ba45:	calll	0x8048f80 [IMM <CODEREF>]
	calll	abort
	# 0x804ba4a:	movl	0xc(%ebp), %eax [MEM, REG]
.label_342:
	movl	0xc(%ebp), %eax
	# 0x804ba4d:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804ba50:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x804ba53:	movl	-0x3c(%ebp), %edx [MEM, REG]
	movl	-0x3c(%ebp), %edx
	# 0x804ba56:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804ba58:	movl	-0x38(%ebp), %edx [MEM, REG]
	movl	-0x38(%ebp), %edx
	# 0x804ba5b:	movl	%edx, 4(%eax) [REG, MEM]
	movl	%edx, 4(%eax)
	# 0x804ba5e:	movl	-0x34(%ebp), %edx [MEM, REG]
	movl	-0x34(%ebp), %edx
	# 0x804ba61:	movl	%edx, 8(%eax) [REG, MEM]
	movl	%edx, 8(%eax)
	# 0x804ba64:	movl	-0x30(%ebp), %edx [MEM, REG]
	movl	-0x30(%ebp), %edx
	# 0x804ba67:	movl	%edx, 0xc(%eax) [REG, MEM]
	movl	%edx, 0xc(%eax)
	# 0x804ba6a:	movl	-0x2c(%ebp), %edx [MEM, REG]
	movl	-0x2c(%ebp), %edx
	# 0x804ba6d:	movl	%edx, 0x10(%eax) [REG, MEM]
	movl	%edx, 0x10(%eax)
	# 0x804ba70:	movl	-0x28(%ebp), %edx [MEM, REG]
	movl	-0x28(%ebp), %edx
	# 0x804ba73:	movl	%edx, 0x14(%eax) [REG, MEM]
	movl	%edx, 0x14(%eax)
	# 0x804ba76:	movl	-0x24(%ebp), %edx [MEM, REG]
	movl	-0x24(%ebp), %edx
	# 0x804ba79:	movl	%edx, 0x18(%eax) [REG, MEM]
	movl	%edx, 0x18(%eax)
	# 0x804ba7c:	movl	-0x20(%ebp), %edx [MEM, REG]
	movl	-0x20(%ebp), %edx
	# 0x804ba7f:	movl	%edx, 0x1c(%eax) [REG, MEM]
	movl	%edx, 0x1c(%eax)
	# 0x804ba82:	movl	-0x1c(%ebp), %edx [MEM, REG]
	movl	-0x1c(%ebp), %edx
	# 0x804ba85:	movl	%edx, 0x20(%eax) [REG, MEM]
	movl	%edx, 0x20(%eax)
	# 0x804ba88:	movl	-0x18(%ebp), %edx [MEM, REG]
	movl	-0x18(%ebp), %edx
	# 0x804ba8b:	movl	%edx, 0x24(%eax) [REG, MEM]
	movl	%edx, 0x24(%eax)
	# 0x804ba8e:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804ba91:	movl	%edx, 0x28(%eax) [REG, MEM]
	movl	%edx, 0x28(%eax)
	# 0x804ba94:	movl	-0x10(%ebp), %edx [MEM, REG]
	movl	-0x10(%ebp), %edx
	# 0x804ba97:	movl	%edx, 0x2c(%eax) [REG, MEM]
	movl	%edx, 0x2c(%eax)
	# 0x804ba9a:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x804ba9d:	movl	-0xc(%ebp), %ecx [MEM, REG]
	movl	-0xc(%ebp), %ecx
	# 0x804baa0:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804baa7:	je	0x804baae [IMM <CODEREF>]
	je	.label_341
	# 0x804baa9:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804baae:	addl	$0x54, %esp [IMM, REG]
.label_341:
	addl	$0x54, %esp
	# 0x804bab1:	popl	%edi [REG]
	popl	%edi
	# 0x804bab2:	popl	%ebp [REG]
	popl	%ebp
	# 0x804bab3:	retl	$4 [IMM]
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x804bab6

	# 0x804bab6:	pushl	%ebp [REG]
	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	pushl	%ebp
	# 0x804bab7:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804bab9:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804babc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804babf:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804bac2:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804bac7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804baca:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804bacd:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804bad0:	cmpl	8(%ebp), %eax [MEM, REG]
	cmpl	8(%ebp), %eax
	# 0x804bad3:	je	0x804bada [IMM <CODEREF>]
	je	.label_348
	# 0x804bad5:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804bad8:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bada:	calll	0x804e55f [IMM <CODEREF>]
.label_348:
	calll	locale_charset
	# 0x804badf:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804bae2:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804bae5:	pushl	$0x804fc08 [IMM <DATAREF>]
	pushl	$label_357
	# 0x804baea:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804baed:	calll	0x804e40c [IMM <CODEREF>]
	calll	c_strcasecmp
	# 0x804baf2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804baf5:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804baf7:	jne	0x804bb11 [IMM <CODEREF>]
	jne	.label_351
	# 0x804baf9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804bafc:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804baff:	cmpb	$0x60, %al [IMM, REG]
	cmpb	$0x60, %al
	# 0x804bb01:	jne	0x804bb0a [IMM <CODEREF>]
	jne	.label_355
	# 0x804bb03:	movl	$0x804fc0e, %eax [IMM <DATAREF>, REG]
	movl	$label_345,  %eax
	# 0x804bb08:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bb0a:	movl	$0x804fc12, %eax [IMM <DATAREF>, REG]
.label_355:
	movl	$label_350,  %eax
	# 0x804bb0f:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bb11:	subl	$8, %esp [IMM, REG]
.label_351:
	subl	$8, %esp
	# 0x804bb14:	pushl	$0x804fc16 [IMM <DATAREF>]
	pushl	$label_353
	# 0x804bb19:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804bb1c:	calll	0x804e40c [IMM <CODEREF>]
	calll	c_strcasecmp
	# 0x804bb21:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bb24:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804bb26:	jne	0x804bb40 [IMM <CODEREF>]
	jne	.label_344
	# 0x804bb28:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804bb2b:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bb2e:	cmpb	$0x60, %al [IMM, REG]
	cmpb	$0x60, %al
	# 0x804bb30:	jne	0x804bb39 [IMM <CODEREF>]
	jne	.label_349
	# 0x804bb32:	movl	$0x804fc1e, %eax [IMM <DATAREF>, REG]
	movl	$label_356,  %eax
	# 0x804bb37:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bb39:	movl	$0x804fc22, %eax [IMM <DATAREF>, REG]
.label_349:
	movl	$label_354,  %eax
	# 0x804bb3e:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bb40:	cmpl	$9, 0xc(%ebp) [IMM, MEM]
.label_344:
	cmpl	$9, 0xc(%ebp)
	# 0x804bb44:	jne	0x804bb4d [IMM <CODEREF>]
	jne	.label_343
	# 0x804bb46:	movl	$0x804fc25, %eax [IMM <DATAREF>, REG]
	movl	$label_347,  %eax
	# 0x804bb4b:	jmp	0x804bb52 [IMM <CODEREF>]
	jmp	.label_346
	# 0x804bb4d:	movl	$0x804fc27, %eax [IMM <DATAREF>, REG]
.label_343:
	movl	$label_352,  %eax
	# 0x804bb52:	leave	 []
.label_346:
	leave	
	# 0x804bb53:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804bb54

	# 0x804bb54:	pushl	%ebp [REG]
	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	pushl	%ebp
	# 0x804bb55:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804bb57:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804bb58:	subl	$0x64, %esp [IMM, REG]
	subl	$0x64, %esp
	# 0x804bb5b:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804bb5e:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804bb61:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804bb64:	movl	%eax, -0x50(%ebp) [REG, MEM]
	movl	%eax, -0x50(%ebp)
	# 0x804bb67:	movl	0x20(%ebp), %eax [MEM, REG]
	movl	0x20(%ebp), %eax
	# 0x804bb6a:	movl	%eax, -0x54(%ebp) [REG, MEM]
	movl	%eax, -0x54(%ebp)
	# 0x804bb6d:	movl	0x24(%ebp), %eax [MEM, REG]
	movl	0x24(%ebp), %eax
	# 0x804bb70:	movl	%eax, -0x58(%ebp) [REG, MEM]
	movl	%eax, -0x58(%ebp)
	# 0x804bb73:	movl	0x28(%ebp), %eax [MEM, REG]
	movl	0x28(%ebp), %eax
	# 0x804bb76:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x804bb79:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804bb7f:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804bb82:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804bb84:	movl	$0, -0x34(%ebp) [IMM, MEM]
	movl	$0, -0x34(%ebp)
	# 0x804bb8b:	movl	$0, -0x30(%ebp) [IMM, MEM]
	movl	$0, -0x30(%ebp)
	# 0x804bb92:	movl	$0, -0x2c(%ebp) [IMM, MEM]
	movl	$0, -0x2c(%ebp)
	# 0x804bb99:	movl	$0, -0x28(%ebp) [IMM, MEM]
	movl	$0, -0x28(%ebp)
	# 0x804bba0:	movb	$0, -0x48(%ebp) [IMM, MEM]
	movb	$0, -0x48(%ebp)
	# 0x804bba4:	calll	0x8048d80 [IMM <CODEREF>]
	calll	__ctype_get_mb_cur_max
	# 0x804bba9:	cmpl	$1, %eax [IMM, REG]
	cmpl	$1, %eax
	# 0x804bbac:	sete	%al [REG]
	sete	%al
	# 0x804bbaf:	movb	%al, -0x3d(%ebp) [REG, MEM]
	movb	%al, -0x3d(%ebp)
	# 0x804bbb2:	movl	0x1c(%ebp), %eax [MEM, REG]
	movl	0x1c(%ebp), %eax
	# 0x804bbb5:	andl	$2, %eax [IMM, REG]
	andl	$2, %eax
	# 0x804bbb8:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804bbba:	setne	%al [REG]
	setne	%al
	# 0x804bbbd:	movb	%al, -0x47(%ebp) [REG, MEM]
	movb	%al, -0x47(%ebp)
	# 0x804bbc0:	movb	$0, -0x46(%ebp) [IMM, MEM]
	movb	$0, -0x46(%ebp)
	# 0x804bbc4:	movb	$0, -0x45(%ebp) [IMM, MEM]
	movb	$0, -0x45(%ebp)
	# 0x804bbc8:	movb	$1, -0x44(%ebp) [IMM, MEM]
	movb	$1, -0x44(%ebp)
	# 0x804bbcc:	cmpl	$0xa, 0x18(%ebp) [IMM, MEM]
.label_384:
	cmpl	$0xa, 0x18(%ebp)
	# 0x804bbd0:	ja	0x804bd18 [IMM <CODEREF>]
	ja	.label_474
	# 0x804bbd6:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804bbd9:	shll	$2, %eax [IMM, REG]
	shll	$2, %eax
	# 0x804bbdc:	addl	$0x804fc2c, %eax [IMM <DATAREF>, REG]
	addl	$label_478,  %eax
	# 0x804bbe1:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804bbe3:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804bbe5:	movl	$5, 0x18(%ebp) [IMM, MEM]
.label_799:
	movl	$5, 0x18(%ebp)
	# 0x804bbec:	movb	$1, -0x47(%ebp) [IMM, MEM]
	movb	$1, -0x47(%ebp)
	# 0x804bbf0:	movzbl	-0x47(%ebp), %eax [MEM, REG]
.label_798:
	movzbl	-0x47(%ebp), %eax
	# 0x804bbf4:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804bbf7:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bbf9:	je	0x804bc12 [IMM <CODEREF>]
	je	.label_482
	# 0x804bbfb:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bbfe:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bc01:	jae	0x804bc0e [IMM <CODEREF>]
	jae	.label_451
	# 0x804bc03:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bc06:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bc09:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bc0b:	movb	$0x22, 0(%eax) [IMM, MEM]
	movb	$0x22, 0(%eax)
	# 0x804bc0e:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_451:
	addl	$1, -0x34(%ebp)
	# 0x804bc12:	movb	$1, -0x48(%ebp) [IMM, MEM]
.label_482:
	movb	$1, -0x48(%ebp)
	# 0x804bc16:	movl	$0x804fc25, -0x2c(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_347, -44(%ebp)
	# 0x804bc1d:	movl	$1, -0x28(%ebp) [IMM, MEM]
	movl	$1, -0x28(%ebp)
	# 0x804bc24:	jmp	0x804bd1d [IMM <CODEREF>]
	jmp	.label_362
	# 0x804bc29:	movb	$1, -0x48(%ebp) [IMM, MEM]
.label_800:
	movb	$1, -0x48(%ebp)
	# 0x804bc2d:	movb	$0, -0x47(%ebp) [IMM, MEM]
	movb	$0, -0x47(%ebp)
	# 0x804bc31:	jmp	0x804bd1d [IMM <CODEREF>]
	jmp	.label_362
	# 0x804bc36:	cmpl	$0xa, 0x18(%ebp) [IMM, MEM]
.label_801:
	cmpl	$0xa, 0x18(%ebp)
	# 0x804bc3a:	je	0x804bc68 [IMM <CODEREF>]
	je	.label_373
	.section	.text
	.align	32
	#Procedure 0x804bc3c
	.globl sub_804bc3c
	.type sub_804bc3c, @function
sub_804bc3c:

	# 0x804bc3c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804bc3f:	pushl	0x18(%ebp) [MEM]
	pushl	0x18(%ebp)
	# 0x804bc42:	pushl	$0x804fc29 [IMM <DATAREF>]
	pushl	$label_486
	# 0x804bc47:	calll	0x804bab6 [IMM <CODEREF>]
	calll	gettext_quote
	# 0x804bc4c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bc4f:	movl	%eax, -0x58(%ebp) [REG, MEM]
	movl	%eax, -0x58(%ebp)
	# 0x804bc52:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804bc55:	pushl	0x18(%ebp) [MEM]
	pushl	0x18(%ebp)
	# 0x804bc58:	pushl	$0x804fc27 [IMM <DATAREF>]
	pushl	$label_352
	# 0x804bc5d:	calll	0x804bab6 [IMM <CODEREF>]
	calll	gettext_quote
	# 0x804bc62:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bc65:	movl	%eax, -0x5c(%ebp) [REG, MEM]
	movl	%eax, -0x5c(%ebp)
	# 0x804bc68:	movzbl	-0x47(%ebp), %eax [MEM, REG]
.label_373:
	movzbl	-0x47(%ebp), %eax
	# 0x804bc6c:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804bc6f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bc71:	je	0x804bca5 [IMM <CODEREF>]
	je	.label_389
	# 0x804bc73:	movl	-0x58(%ebp), %eax [MEM, REG]
	movl	-0x58(%ebp), %eax
	# 0x804bc76:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804bc79:	jmp	0x804bc9b [IMM <CODEREF>]
	jmp	.label_454
	# 0x804bc7b:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_404:
	movl	-0x34(%ebp), %eax
	# 0x804bc7e:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bc81:	jae	0x804bc93 [IMM <CODEREF>]
	jae	.label_394
	# 0x804bc83:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bc86:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bc89:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804bc8b:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804bc8e:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bc91:	movb	%al, 0(%edx) [REG, MEM]
	movb	%al, 0(%edx)
	# 0x804bc93:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_394:
	addl	$1, -0x34(%ebp)
	# 0x804bc97:	addl	$1, -0x2c(%ebp) [IMM, MEM]
	addl	$1, -0x2c(%ebp)
	# 0x804bc9b:	movl	-0x2c(%ebp), %eax [MEM, REG]
.label_454:
	movl	-0x2c(%ebp), %eax
	# 0x804bc9e:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bca1:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bca3:	jne	0x804bc7b [IMM <CODEREF>]
	jne	.label_404
	# 0x804bca5:	movb	$1, -0x48(%ebp) [IMM, MEM]
.label_389:
	movb	$1, -0x48(%ebp)
	# 0x804bca9:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x804bcac:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804bcaf:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804bcb2:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804bcb5:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804bcba:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bcbd:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804bcc0:	jmp	0x804bd1d [IMM <CODEREF>]
	jmp	.label_362
	# 0x804bcc2:	movb	$1, -0x48(%ebp) [IMM, MEM]
.label_796:
	movb	$1, -0x48(%ebp)
	# 0x804bcc6:	movb	$1, -0x47(%ebp) [IMM, MEM]
.label_795:
	movb	$1, -0x47(%ebp)
	# 0x804bcca:	movzbl	-0x47(%ebp), %eax [MEM, REG]
.label_797:
	movzbl	-0x47(%ebp), %eax
	# 0x804bcce:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804bcd1:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bcd3:	je	0x804bcd9 [IMM <CODEREF>]
	je	.label_417
	# 0x804bcd5:	movb	$1, -0x48(%ebp) [IMM, MEM]
	movb	$1, -0x48(%ebp)
	# 0x804bcd9:	movl	$2, 0x18(%ebp) [IMM, MEM]
.label_417:
	movl	$2, 0x18(%ebp)
	# 0x804bce0:	movzbl	-0x47(%ebp), %eax [MEM, REG]
	movzbl	-0x47(%ebp), %eax
	# 0x804bce4:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804bce7:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bce9:	je	0x804bd02 [IMM <CODEREF>]
	je	.label_421
	# 0x804bceb:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bcee:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bcf1:	jae	0x804bcfe [IMM <CODEREF>]
	jae	.label_428
	# 0x804bcf3:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bcf6:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bcf9:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bcfb:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804bcfe:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_428:
	addl	$1, -0x34(%ebp)
	# 0x804bd02:	movl	$0x804fc27, -0x2c(%ebp) [IMM <DATAREF>, MEM]
.label_421:
	movl	$label_352, -44(%ebp)
	# 0x804bd09:	movl	$1, -0x28(%ebp) [IMM, MEM]
	movl	$1, -0x28(%ebp)
	# 0x804bd10:	jmp	0x804bd1d [IMM <CODEREF>]
	jmp	.label_362
	# 0x804bd12:	movb	$0, -0x47(%ebp) [IMM, MEM]
.label_794:
	movb	$0, -0x47(%ebp)
	# 0x804bd16:	jmp	0x804bd1d [IMM <CODEREF>]
	jmp	.label_362
	# 0x804bd18:	calll	0x8048f80 [IMM <CODEREF>]
.label_474:
	calll	abort
	# 0x804bd1d:	movl	$0, -0x38(%ebp) [IMM, MEM]
.label_362:
	movl	$0, -0x38(%ebp)
	# 0x804bd24:	jmp	0x804c5c9 [IMM <CODEREF>]
	jmp	.label_441
	# 0x804bd29:	movb	$0, -0x41(%ebp) [IMM, MEM]
.label_481:
	movb	$0, -0x41(%ebp)
	# 0x804bd2d:	movb	$0, -0x40(%ebp) [IMM, MEM]
	movb	$0, -0x40(%ebp)
	# 0x804bd31:	movb	$0, -0x3f(%ebp) [IMM, MEM]
	movb	$0, -0x3f(%ebp)
	# 0x804bd35:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
	cmpb	$0, -0x48(%ebp)
	# 0x804bd39:	je	0x804bda5 [IMM <CODEREF>]
	je	.label_413
	# 0x804bd3b:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804bd3f:	je	0x804bda5 [IMM <CODEREF>]
	je	.label_413
	# 0x804bd41:	cmpl	$0, -0x28(%ebp) [IMM, MEM]
	cmpl	$0, -0x28(%ebp)
	# 0x804bd45:	je	0x804bda5 [IMM <CODEREF>]
	je	.label_413
	# 0x804bd47:	movl	-0x38(%ebp), %edx [MEM, REG]
	movl	-0x38(%ebp), %edx
	# 0x804bd4a:	movl	-0x28(%ebp), %eax [MEM, REG]
	movl	-0x28(%ebp), %eax
	# 0x804bd4d:	leal	0(%edx, %eax), %ebx [MEM, REG]
	leal	0(%edx, %eax), %ebx
	# 0x804bd50:	cmpl	$-1, 0x14(%ebp) [IMM, MEM]
	cmpl	$-1, 0x14(%ebp)
	# 0x804bd54:	jne	0x804bd72 [IMM <CODEREF>]
	jne	.label_449
	# 0x804bd56:	cmpl	$1, -0x28(%ebp) [IMM, MEM]
	cmpl	$1, -0x28(%ebp)
	# 0x804bd5a:	jbe	0x804bd72 [IMM <CODEREF>]
	jbe	.label_449
	# 0x804bd5c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804bd5f:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x804bd62:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804bd67:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bd6a:	movl	%eax, 0x14(%ebp) [REG, MEM]
	movl	%eax, 0x14(%ebp)
	# 0x804bd6d:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804bd70:	jmp	0x804bd75 [IMM <CODEREF>]
	jmp	.label_455
	# 0x804bd72:	movl	0x14(%ebp), %eax [MEM, REG]
.label_449:
	movl	0x14(%ebp), %eax
	# 0x804bd75:	cmpl	%eax, %ebx [REG, REG]
.label_455:
	cmpl	%eax, %ebx
	# 0x804bd77:	ja	0x804bda5 [IMM <CODEREF>]
	ja	.label_413
	# 0x804bd79:	movl	-0x50(%ebp), %edx [MEM, REG]
	movl	-0x50(%ebp), %edx
	# 0x804bd7c:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bd7f:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bd81:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804bd84:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804bd87:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804bd8a:	pushl	%eax [REG]
	pushl	%eax
	# 0x804bd8b:	calll	0x8048d10 [IMM <CODEREF>]
	calll	memcmp
	# 0x804bd90:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804bd93:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804bd95:	jne	0x804bda5 [IMM <CODEREF>]
	jne	.label_413
	# 0x804bd97:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804bd9b:	jne	0x804c6c2 [IMM <CODEREF>]
	jne	.label_462
	# 0x804bda1:	movb	$1, -0x41(%ebp) [IMM, MEM]
	movb	$1, -0x41(%ebp)
	# 0x804bda5:	movl	-0x50(%ebp), %edx [MEM, REG]
.label_413:
	movl	-0x50(%ebp), %edx
	# 0x804bda8:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bdab:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bdad:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bdb0:	movb	%al, -0x43(%ebp) [REG, MEM]
	movb	%al, -0x43(%ebp)
	# 0x804bdb3:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804bdb7:	cmpl	$0x7e, %eax [IMM, REG]
	cmpl	$0x7e, %eax
	# 0x804bdba:	ja	0x804c131 [IMM <CODEREF>]
	ja	.label_464
	# 0x804bdc0:	movl	0x804fc58(, %eax, 4), %eax [MEM, REG]
	movl	label_468(, %eax, 4),  %eax
	# 0x804bdc7:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804bdc9:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
.label_802:
	cmpb	$0, -0x48(%ebp)
	# 0x804bdcd:	je	0x804bebe [IMM <CODEREF>]
	je	.label_472
	# 0x804bdd3:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804bdd7:	jne	0x804c6c5 [IMM <CODEREF>]
	jne	.label_476
	# 0x804bddd:	movb	$1, -0x40(%ebp) [IMM, MEM]
	movb	$1, -0x40(%ebp)
	# 0x804bde1:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804bde5:	jne	0x804be3b [IMM <CODEREF>]
	jne	.label_479
	# 0x804bde7:	movzbl	-0x46(%ebp), %eax [MEM, REG]
	movzbl	-0x46(%ebp), %eax
	# 0x804bdeb:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804bdee:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804bdf0:	je	0x804be3b [IMM <CODEREF>]
	je	.label_479
	# 0x804bdf2:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bdf5:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bdf8:	jae	0x804be05 [IMM <CODEREF>]
	jae	.label_483
	# 0x804bdfa:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bdfd:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be00:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be02:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804be05:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_483:
	addl	$1, -0x34(%ebp)
	# 0x804be09:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be0c:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804be0f:	jae	0x804be1c [IMM <CODEREF>]
	jae	.label_360
	# 0x804be11:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804be14:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be17:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be19:	movb	$0x24, 0(%eax) [IMM, MEM]
	movb	$0x24, 0(%eax)
	# 0x804be1c:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_360:
	addl	$1, -0x34(%ebp)
	# 0x804be20:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be23:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804be26:	jae	0x804be33 [IMM <CODEREF>]
	jae	.label_365
	# 0x804be28:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804be2b:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be2e:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be30:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804be33:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_365:
	addl	$1, -0x34(%ebp)
	# 0x804be37:	movb	$1, -0x46(%ebp) [IMM, MEM]
	movb	$1, -0x46(%ebp)
	# 0x804be3b:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_479:
	movl	-0x34(%ebp), %eax
	# 0x804be3e:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804be41:	jae	0x804be4e [IMM <CODEREF>]
	jae	.label_375
	# 0x804be43:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804be46:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be49:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be4b:	movb	$0x5c, 0(%eax) [IMM, MEM]
	movb	$0x5c, 0(%eax)
	# 0x804be4e:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_375:
	addl	$1, -0x34(%ebp)
	# 0x804be52:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804be56:	je	0x804beb5 [IMM <CODEREF>]
	je	.label_381
	# 0x804be58:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804be5b:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804be5e:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	.section	.text
	.align	32
	#Procedure 0x804be62
	.globl sub_804be62
	.type sub_804be62, @function
sub_804be62:

	# 0x804be62:	pushl	%edx [REG]
	pushl	%edx
	# 0x804be63:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804be66:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804be69:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804be6c:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be6e:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804be71:	cmpb	$0x2f, %al [IMM, REG]
	cmpb	$0x2f, %al
	# 0x804be73:	jle	0x804beb5 [IMM <CODEREF>]
	jle	.label_381
	# 0x804be75:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804be78:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804be7b:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804be7e:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be80:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804be83:	cmpb	$0x39, %al [IMM, REG]
	cmpb	$0x39, %al
	# 0x804be85:	jg	0x804beb5 [IMM <CODEREF>]
	jg	.label_381
	# 0x804be87:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be8a:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804be8d:	jae	0x804be9a [IMM <CODEREF>]
	jae	.label_487
	# 0x804be8f:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804be92:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804be95:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804be97:	movb	$0x30, 0(%eax) [IMM, MEM]
	movb	$0x30, 0(%eax)
	# 0x804be9a:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_487:
	addl	$1, -0x34(%ebp)
	# 0x804be9e:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bea1:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bea4:	jae	0x804beb1 [IMM <CODEREF>]
	jae	.label_488
	# 0x804bea6:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bea9:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804beac:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804beae:	movb	$0x30, 0(%eax) [IMM, MEM]
	movb	$0x30, 0(%eax)
	# 0x804beb1:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_488:
	addl	$1, -0x34(%ebp)
	# 0x804beb5:	movb	$0x30, -0x43(%ebp) [IMM, MEM]
.label_381:
	movb	$0x30, -0x43(%ebp)
	# 0x804beb9:	jmp	0x804c464 [IMM <CODEREF>]
	jmp	.label_411
	# 0x804bebe:	movl	0x1c(%ebp), %eax [MEM, REG]
.label_472:
	movl	0x1c(%ebp), %eax
	# 0x804bec1:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804bec4:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804bec6:	je	0x804c464 [IMM <CODEREF>]
	je	.label_411
	# 0x804becc:	jmp	0x804c5c5 [IMM <CODEREF>]
	jmp	.label_418
	# 0x804bed1:	movl	0x18(%ebp), %eax [MEM, REG]
.label_815:
	movl	0x18(%ebp), %eax
	# 0x804bed4:	cmpl	$2, %eax [IMM, REG]
	cmpl	$2, %eax
	# 0x804bed7:	je	0x804bee3 [IMM <CODEREF>]
	je	.label_427
	# 0x804bed9:	cmpl	$5, %eax [IMM, REG]
	cmpl	$5, %eax
	# 0x804bedc:	je	0x804bef2 [IMM <CODEREF>]
	je	.label_457
	# 0x804bede:	jmp	0x804bfd2 [IMM <CODEREF>]
	jmp	.label_424
	# 0x804bee3:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
.label_427:
	cmpb	$0, -0x47(%ebp)
	# 0x804bee7:	je	0x804bfcb [IMM <CODEREF>]
	je	.label_426
	# 0x804beed:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804bef2:	movl	0x1c(%ebp), %eax [MEM, REG]
.label_457:
	movl	0x1c(%ebp), %eax
	# 0x804bef5:	andl	$4, %eax [IMM, REG]
	andl	$4, %eax
	# 0x804bef8:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804befa:	je	0x804bfd1 [IMM <CODEREF>]
	je	.label_432
	# 0x804bf00:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bf03:	addl	$2, %eax [IMM, REG]
	addl	$2, %eax
	# 0x804bf06:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804bf09:	jae	0x804bfd1 [IMM <CODEREF>]
	jae	.label_432
	# 0x804bf0f:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bf12:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804bf15:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804bf18:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bf1a:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bf1d:	cmpb	$0x3f, %al [IMM, REG]
	cmpb	$0x3f, %al
	# 0x804bf1f:	jne	0x804bfd1 [IMM <CODEREF>]
	jne	.label_432
	# 0x804bf25:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bf28:	leal	2(%eax), %edx [MEM, REG]
	leal	2(%eax), %edx
	# 0x804bf2b:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804bf2e:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bf30:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bf33:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804bf36:	subl	$0x21, %eax [IMM, REG]
	subl	$0x21, %eax
	# 0x804bf39:	cmpl	$0x1d, %eax [IMM, REG]
	cmpl	$0x1d, %eax
	# 0x804bf3c:	ja	0x804bfc8 [IMM <CODEREF>]
	ja	.label_443
	# 0x804bf42:	movl	0x804fe54(, %eax, 4), %eax [MEM, REG]
	movl	label_448(, %eax, 4),  %eax
	# 0x804bf49:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804bf4b:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
.label_818:
	cmpb	$0, -0x47(%ebp)
	# 0x804bf4f:	jne	0x804c6c8 [IMM <CODEREF>]
	jne	.label_450
	# 0x804bf55:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804bf58:	leal	2(%eax), %edx [MEM, REG]
	leal	2(%eax), %edx
	# 0x804bf5b:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804bf5e:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bf60:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804bf63:	movb	%al, -0x43(%ebp) [REG, MEM]
	movb	%al, -0x43(%ebp)
	# 0x804bf66:	addl	$2, -0x38(%ebp) [IMM, MEM]
	addl	$2, -0x38(%ebp)
	# 0x804bf6a:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bf6d:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bf70:	jae	0x804bf7d [IMM <CODEREF>]
	jae	.label_484
	# 0x804bf72:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bf75:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bf78:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bf7a:	movb	$0x3f, 0(%eax) [IMM, MEM]
	movb	$0x3f, 0(%eax)
	# 0x804bf7d:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_484:
	addl	$1, -0x34(%ebp)
	# 0x804bf81:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bf84:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bf87:	jae	0x804bf94 [IMM <CODEREF>]
	jae	.label_430
	# 0x804bf89:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bf8c:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bf8f:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bf91:	movb	$0x22, 0(%eax) [IMM, MEM]
	movb	$0x22, 0(%eax)
	# 0x804bf94:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_430:
	addl	$1, -0x34(%ebp)
	# 0x804bf98:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bf9b:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bf9e:	jae	0x804bfab [IMM <CODEREF>]
	jae	.label_453
	# 0x804bfa0:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bfa3:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bfa6:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bfa8:	movb	$0x22, 0(%eax) [IMM, MEM]
	movb	$0x22, 0(%eax)
	# 0x804bfab:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_453:
	addl	$1, -0x34(%ebp)
	# 0x804bfaf:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bfb2:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804bfb5:	jae	0x804bfc2 [IMM <CODEREF>]
	jae	.label_466
	# 0x804bfb7:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804bfba:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804bfbd:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804bfbf:	movb	$0x3f, 0(%eax) [IMM, MEM]
	movb	$0x3f, 0(%eax)
	# 0x804bfc2:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_466:
	addl	$1, -0x34(%ebp)
	# 0x804bfc6:	jmp	0x804bfc9 [IMM <CODEREF>]
	jmp	.label_414
	# 0x804bfc8:	nop	 []
.label_443:
	nop	
	# 0x804bfc9:	jmp	0x804bfd1 [IMM <CODEREF>]
.label_414:
	jmp	.label_432
	# 0x804bfcb:	nop	 []
.label_426:
	nop	
	# 0x804bfcc:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804bfd1:	nop	 []
.label_432:
	nop	
	# 0x804bfd2:	jmp	0x804c474 [IMM <CODEREF>]
.label_424:
	jmp	.label_385
	# 0x804bfd7:	movb	$0x61, -0x42(%ebp) [IMM, MEM]
.label_803:
	movb	$0x61, -0x42(%ebp)
	# 0x804bfdb:	jmp	0x804c043 [IMM <CODEREF>]
	jmp	.label_372
	# 0x804bfdd:	movb	$0x62, -0x42(%ebp) [IMM, MEM]
.label_804:
	movb	$0x62, -0x42(%ebp)
	# 0x804bfe1:	jmp	0x804c043 [IMM <CODEREF>]
	jmp	.label_372
	# 0x804bfe3:	movb	$0x66, -0x42(%ebp) [IMM, MEM]
.label_808:
	movb	$0x66, -0x42(%ebp)
	# 0x804bfe7:	jmp	0x804c043 [IMM <CODEREF>]
	jmp	.label_372
	# 0x804bfe9:	movb	$0x6e, -0x42(%ebp) [IMM, MEM]
.label_806:
	movb	$0x6e, -0x42(%ebp)
	# 0x804bfed:	jmp	0x804c033 [IMM <CODEREF>]
	jmp	.label_366
	# 0x804bfef:	movb	$0x72, -0x42(%ebp) [IMM, MEM]
.label_809:
	movb	$0x72, -0x42(%ebp)
	# 0x804bff3:	jmp	0x804c033 [IMM <CODEREF>]
	jmp	.label_366
	# 0x804bff5:	movb	$0x74, -0x42(%ebp) [IMM, MEM]
.label_805:
	movb	$0x74, -0x42(%ebp)
	# 0x804bff9:	jmp	0x804c033 [IMM <CODEREF>]
	jmp	.label_366
	# 0x804bffb:	movb	$0x76, -0x42(%ebp) [IMM, MEM]
.label_807:
	movb	$0x76, -0x42(%ebp)
	# 0x804bfff:	jmp	0x804c043 [IMM <CODEREF>]
	jmp	.label_372
	# 0x804c001:	movzbl	-0x43(%ebp), %eax [MEM, REG]
.label_816:
	movzbl	-0x43(%ebp), %eax
	# 0x804c005:	movb	%al, -0x42(%ebp) [REG, MEM]
	movb	%al, -0x42(%ebp)
	# 0x804c008:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c00c:	jne	0x804c01d [IMM <CODEREF>]
	jne	.label_358
	# 0x804c00e:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c012:	je	0x804c552 [IMM <CODEREF>]
	je	.label_465
	# 0x804c018:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c01d:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
.label_358:
	cmpb	$0, -0x48(%ebp)
	# 0x804c021:	je	0x804c033 [IMM <CODEREF>]
	je	.label_366
	# 0x804c023:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c027:	je	0x804c033 [IMM <CODEREF>]
	je	.label_366
	# 0x804c029:	cmpl	$0, -0x28(%ebp) [IMM, MEM]
	cmpl	$0, -0x28(%ebp)
	# 0x804c02d:	jne	0x804c555 [IMM <CODEREF>]
	jne	.label_369
	# 0x804c033:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
.label_366:
	cmpl	$2, 0x18(%ebp)
	# 0x804c037:	jne	0x804c043 [IMM <CODEREF>]
	jne	.label_372
	# 0x804c039:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c03d:	jne	0x804c6cb [IMM <CODEREF>]
	jne	.label_374
	# 0x804c043:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
.label_372:
	cmpb	$0, -0x48(%ebp)
	# 0x804c047:	je	0x804c467 [IMM <CODEREF>]
	je	.label_376
	# 0x804c04d:	movzbl	-0x42(%ebp), %eax [MEM, REG]
	movzbl	-0x42(%ebp), %eax
	# 0x804c051:	movb	%al, -0x43(%ebp) [REG, MEM]
	movb	%al, -0x43(%ebp)
	# 0x804c054:	jmp	0x804c4d1 [IMM <CODEREF>]
	jmp	.label_380
	# 0x804c059:	cmpl	$-1, 0x14(%ebp) [IMM, MEM]
.label_817:
	cmpl	$-1, 0x14(%ebp)
	# 0x804c05d:	jne	0x804c06f [IMM <CODEREF>]
	jne	.label_383
	# 0x804c05f:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804c062:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804c065:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c068:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c06a:	setne	%al [REG]
	setne	%al
	# 0x804c06d:	jmp	0x804c076 [IMM <CODEREF>]
	jmp	.label_387
	# 0x804c06f:	cmpl	$1, 0x14(%ebp) [IMM, MEM]
.label_383:
	cmpl	$1, 0x14(%ebp)
	# 0x804c073:	setne	%al [REG]
	setne	%al
	# 0x804c076:	testb	%al, %al [REG, REG]
.label_387:
	testb	%al, %al
	# 0x804c078:	jne	0x804c46a [IMM <CODEREF>]
	jne	.label_393
	# 0x804c07e:	cmpl	$0, -0x38(%ebp) [IMM, MEM]
.label_812:
	cmpl	$0, -0x38(%ebp)
	# 0x804c082:	jne	0x804c46d [IMM <CODEREF>]
	jne	.label_433
	# 0x804c088:	movb	$1, -0x3f(%ebp) [IMM, MEM]
.label_810:
	movb	$1, -0x3f(%ebp)
	# 0x804c08c:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
.label_811:
	cmpl	$2, 0x18(%ebp)
	# 0x804c090:	jne	0x804c470 [IMM <CODEREF>]
	jne	.label_401
	# 0x804c096:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c09a:	je	0x804c470 [IMM <CODEREF>]
	je	.label_401
	# 0x804c0a0:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c0a5:	movb	$1, -0x45(%ebp) [IMM, MEM]
.label_814:
	movb	$1, -0x45(%ebp)
	# 0x804c0a9:	movb	$1, -0x3f(%ebp) [IMM, MEM]
	movb	$1, -0x3f(%ebp)
	# 0x804c0ad:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c0b1:	jne	0x804c473 [IMM <CODEREF>]
	jne	.label_408
	# 0x804c0b7:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c0bb:	jne	0x804c6ce [IMM <CODEREF>]
	jne	.label_412
	# 0x804c0c1:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804c0c5:	je	0x804c0da [IMM <CODEREF>]
	je	.label_415
	# 0x804c0c7:	cmpl	$0, -0x30(%ebp) [IMM, MEM]
	cmpl	$0, -0x30(%ebp)
	# 0x804c0cb:	jne	0x804c0da [IMM <CODEREF>]
	jne	.label_415
	# 0x804c0cd:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804c0d0:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804c0d3:	movl	$0, 0xc(%ebp) [IMM, MEM]
	movl	$0, 0xc(%ebp)
	# 0x804c0da:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_415:
	movl	-0x34(%ebp), %eax
	# 0x804c0dd:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c0e0:	jae	0x804c0ed [IMM <CODEREF>]
	jae	.label_422
	# 0x804c0e2:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c0e5:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c0e8:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c0ea:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c0ed:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_422:
	addl	$1, -0x34(%ebp)
	# 0x804c0f1:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c0f4:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c0f7:	jae	0x804c104 [IMM <CODEREF>]
	jae	.label_429
	# 0x804c0f9:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c0fc:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c0ff:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c101:	movb	$0x5c, 0(%eax) [IMM, MEM]
	movb	$0x5c, 0(%eax)
	# 0x804c104:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_429:
	addl	$1, -0x34(%ebp)
	# 0x804c108:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c10b:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c10e:	jae	0x804c11b [IMM <CODEREF>]
	jae	.label_436
	# 0x804c110:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c113:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c116:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c118:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c11b:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_436:
	addl	$1, -0x34(%ebp)
	# 0x804c11f:	movb	$0, -0x46(%ebp) [IMM, MEM]
	movb	$0, -0x46(%ebp)
	# 0x804c123:	jmp	0x804c473 [IMM <CODEREF>]
	jmp	.label_408
	# 0x804c128:	movb	$1, -0x3f(%ebp) [IMM, MEM]
.label_813:
	movb	$1, -0x3f(%ebp)
	# 0x804c12c:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c131:	cmpb	$0, -0x3d(%ebp) [IMM, MEM]
.label_464:
	cmpb	$0, -0x3d(%ebp)
	# 0x804c135:	je	0x804c165 [IMM <CODEREF>]
	je	.label_445
	# 0x804c137:	movl	$1, -0x24(%ebp) [IMM, MEM]
	movl	$1, -0x24(%ebp)
	# 0x804c13e:	calll	0x8048fa0 [IMM <CODEREF>]
	calll	__ctype_b_loc
	# 0x804c143:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c145:	movzbl	-0x43(%ebp), %edx [MEM, REG]
	movzbl	-0x43(%ebp), %edx
	# 0x804c149:	addl	%edx, %edx [REG, REG]
	addl	%edx, %edx
	# 0x804c14b:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c14d:	movzwl	0(%eax), %eax [MEM, REG]
	movzwl	0(%eax), %eax
	# 0x804c150:	movzwl	%ax, %eax [REG, REG]
	movzwl	%ax, %eax
	# 0x804c153:	andl	$0x4000, %eax [IMM, REG]
	andl	$0x4000, %eax
	# 0x804c158:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804c15a:	setne	%al [REG]
	setne	%al
	# 0x804c15d:	movb	%al, -0x3e(%ebp) [REG, MEM]
	movb	%al, -0x3e(%ebp)
	# 0x804c160:	jmp	0x804c2a3 [IMM <CODEREF>]
	jmp	.label_405
	# 0x804c165:	subl	$4, %esp [IMM, REG]
.label_445:
	subl	$4, %esp
	# 0x804c168:	pushl	$8 [IMM]
	pushl	$8
	# 0x804c16a:	pushl	$0 [IMM]
	pushl	$0
	# 0x804c16c:	leal	-0x14(%ebp), %eax [MEM, REG]
	leal	-0x14(%ebp), %eax
	# 0x804c16f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c170:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804c175:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c178:	movl	$0, -0x24(%ebp) [IMM, MEM]
	movl	$0, -0x24(%ebp)
	# 0x804c17f:	movb	$1, -0x3e(%ebp) [IMM, MEM]
	movb	$1, -0x3e(%ebp)
	# 0x804c183:	cmpl	$-1, 0x14(%ebp) [IMM, MEM]
	cmpl	$-1, 0x14(%ebp)
	# 0x804c187:	jne	0x804c19a [IMM <CODEREF>]
	jne	.label_402
	# 0x804c189:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c18c:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x804c18f:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804c194:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c197:	movl	%eax, 0x14(%ebp) [REG, MEM]
	movl	%eax, 0x14(%ebp)
	# 0x804c19a:	movl	-0x38(%ebp), %edx [MEM, REG]
.label_402:
	movl	-0x38(%ebp), %edx
	# 0x804c19d:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c1a0:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c1a2:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804c1a5:	subl	%edx, %eax [REG, REG]
	subl	%edx, %eax
	# 0x804c1a7:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804c1a9:	movl	-0x38(%ebp), %edx [MEM, REG]
	movl	-0x38(%ebp), %edx
	# 0x804c1ac:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c1af:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c1b1:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804c1b4:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c1b6:	leal	-0x14(%ebp), %eax [MEM, REG]
	leal	-0x14(%ebp), %eax
	# 0x804c1b9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c1ba:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804c1bb:	pushl	%edx [REG]
	pushl	%edx
	# 0x804c1bc:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804c1bf:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c1c0:	calll	0x804e377 [IMM <CODEREF>]
	calll	rpl_mbrtowc
	# 0x804c1c5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c1c8:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804c1cb:	cmpl	$0, -0x1c(%ebp) [IMM, MEM]
	cmpl	$0, -0x1c(%ebp)
	# 0x804c1cf:	je	0x804c29f [IMM <CODEREF>]
	je	.label_471
	# 0x804c1d5:	cmpl	$-1, -0x1c(%ebp) [IMM, MEM]
	cmpl	$-1, -0x1c(%ebp)
	# 0x804c1d9:	jne	0x804c1e4 [IMM <CODEREF>]
	jne	.label_477
	# 0x804c1db:	movb	$0, -0x3e(%ebp) [IMM, MEM]
	movb	$0, -0x3e(%ebp)
	# 0x804c1df:	jmp	0x804c2a3 [IMM <CODEREF>]
	jmp	.label_405
	# 0x804c1e4:	cmpl	$-2, -0x1c(%ebp) [IMM, MEM]
.label_477:
	cmpl	$-2, -0x1c(%ebp)
	# 0x804c1e8:	jne	0x804c21e [IMM <CODEREF>]
	jne	.label_480
	# 0x804c1ea:	movb	$0, -0x3e(%ebp) [IMM, MEM]
	movb	$0, -0x3e(%ebp)
	# 0x804c1ee:	jmp	0x804c1f4 [IMM <CODEREF>]
	jmp	.label_459
	# 0x804c1f0:	addl	$1, -0x24(%ebp) [IMM, MEM]
.label_410:
	addl	$1, -0x24(%ebp)
	# 0x804c1f4:	movl	-0x38(%ebp), %edx [MEM, REG]
.label_459:
	movl	-0x38(%ebp), %edx
	# 0x804c1f7:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c1fa:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c1fc:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804c1ff:	jae	0x804c2a2 [IMM <CODEREF>]
	jae	.label_403
	# 0x804c205:	movl	-0x38(%ebp), %edx [MEM, REG]
	movl	-0x38(%ebp), %edx
	# 0x804c208:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c20b:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c20d:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804c210:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c212:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c215:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c217:	jne	0x804c1f0 [IMM <CODEREF>]
	jne	.label_410
	# 0x804c219:	jmp	0x804c2a2 [IMM <CODEREF>]
	jmp	.label_403
	# 0x804c21e:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
.label_480:
	cmpb	$0, -0x47(%ebp)
	# 0x804c222:	je	0x804c269 [IMM <CODEREF>]
	je	.label_367
	# 0x804c224:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c228:	jne	0x804c269 [IMM <CODEREF>]
	jne	.label_367
	# 0x804c22a:	movl	$1, -0x20(%ebp) [IMM, MEM]
	movl	$1, -0x20(%ebp)
	# 0x804c231:	jmp	0x804c261 [IMM <CODEREF>]
	jmp	.label_370
	# 0x804c233:	movl	-0x38(%ebp), %edx [MEM, REG]
.label_388:
	movl	-0x38(%ebp), %edx
	# 0x804c236:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c239:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c23b:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804c23e:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c240:	movl	-0x50(%ebp), %eax [MEM, REG]
	movl	-0x50(%ebp), %eax
	# 0x804c243:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c245:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c248:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804c24b:	subl	$0x5b, %eax [IMM, REG]
	subl	$0x5b, %eax
	# 0x804c24e:	cmpl	$0x21, %eax [IMM, REG]
	cmpl	$0x21, %eax
	# 0x804c251:	ja	0x804c25c [IMM <CODEREF>]
	ja	.label_460
	# 0x804c253:	movl	0x804fecc(, %eax, 4), %eax [MEM, REG]
	movl	label_382(, %eax, 4),  %eax
	# 0x804c25a:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804c25c:	nop	 []
.label_460:
	nop	
	# 0x804c25d:	addl	$1, -0x20(%ebp) [IMM, MEM]
	addl	$1, -0x20(%ebp)
	# 0x804c261:	movl	-0x20(%ebp), %eax [MEM, REG]
.label_370:
	movl	-0x20(%ebp), %eax
	# 0x804c264:	cmpl	-0x1c(%ebp), %eax [MEM, REG]
	cmpl	-0x1c(%ebp), %eax
	# 0x804c267:	jb	0x804c233 [IMM <CODEREF>]
	jb	.label_388
	# 0x804c269:	movl	-0x3c(%ebp), %eax [MEM, REG]
.label_367:
	movl	-0x3c(%ebp), %eax
	# 0x804c26c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c26f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c270:	calll	0x8048d50 [IMM <CODEREF>]
	calll	iswprint
	# 0x804c275:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c278:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804c27a:	jne	0x804c280 [IMM <CODEREF>]
	jne	.label_392
	# 0x804c27c:	movb	$0, -0x3e(%ebp) [IMM, MEM]
	movb	$0, -0x3e(%ebp)
	# 0x804c280:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_392:
	movl	-0x1c(%ebp), %eax
	# 0x804c283:	addl	%eax, -0x24(%ebp) [REG, MEM]
	addl	%eax, -0x24(%ebp)
	# 0x804c286:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c289:	leal	-0x14(%ebp), %eax [MEM, REG]
	leal	-0x14(%ebp), %eax
	# 0x804c28c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c28d:	calll	0x8048cd0 [IMM <CODEREF>]
	calll	mbsinit
	# 0x804c292:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c295:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804c297:	je	0x804c19a [IMM <CODEREF>]
	je	.label_402
	# 0x804c29d:	jmp	0x804c2a3 [IMM <CODEREF>]
	jmp	.label_405
	# 0x804c29f:	nop	 []
.label_471:
	nop	
	# 0x804c2a0:	jmp	0x804c2a3 [IMM <CODEREF>]
	jmp	.label_405
	# 0x804c2a2:	nop	 []
.label_403:
	nop	
	# 0x804c2a3:	movzbl	-0x3e(%ebp), %eax [MEM, REG]
.label_405:
	movzbl	-0x3e(%ebp), %eax
	# 0x804c2a7:	movb	%al, -0x3f(%ebp) [REG, MEM]
	movb	%al, -0x3f(%ebp)
	# 0x804c2aa:	cmpl	$1, -0x24(%ebp) [IMM, MEM]
	cmpl	$1, -0x24(%ebp)
	# 0x804c2ae:	ja	0x804c2c9 [IMM <CODEREF>]
	ja	.label_407
	# 0x804c2b0:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
	cmpb	$0, -0x48(%ebp)
	# 0x804c2b4:	je	0x804c474 [IMM <CODEREF>]
	je	.label_385
	# 0x804c2ba:	movzbl	-0x3e(%ebp), %eax [MEM, REG]
	movzbl	-0x3e(%ebp), %eax
	# 0x804c2be:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c2c1:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c2c3:	je	0x804c474 [IMM <CODEREF>]
	je	.label_385
	# 0x804c2c9:	movl	-0x38(%ebp), %edx [MEM, REG]
.label_407:
	movl	-0x38(%ebp), %edx
	# 0x804c2cc:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c2cf:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c2d1:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804c2d4:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
.label_359:
	cmpb	$0, -0x48(%ebp)
	# 0x804c2d8:	je	0x804c3be [IMM <CODEREF>]
	je	.label_420
	# 0x804c2de:	movzbl	-0x3e(%ebp), %eax [MEM, REG]
	movzbl	-0x3e(%ebp), %eax
	# 0x804c2e2:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c2e5:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c2e7:	je	0x804c3be [IMM <CODEREF>]
	je	.label_420
	# 0x804c2ed:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c2f1:	jne	0x804c6d4 [IMM <CODEREF>]
	jne	.label_444
	# 0x804c2f7:	movb	$1, -0x40(%ebp) [IMM, MEM]
	movb	$1, -0x40(%ebp)
	# 0x804c2fb:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c2ff:	jne	0x804c355 [IMM <CODEREF>]
	jne	.label_395
	# 0x804c301:	movzbl	-0x46(%ebp), %eax [MEM, REG]
	movzbl	-0x46(%ebp), %eax
	# 0x804c305:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c308:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c30a:	je	0x804c355 [IMM <CODEREF>]
	je	.label_395
	# 0x804c30c:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c30f:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c312:	jae	0x804c31f [IMM <CODEREF>]
	jae	.label_438
	# 0x804c314:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c317:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c31a:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c31c:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c31f:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_438:
	addl	$1, -0x34(%ebp)
	# 0x804c323:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c326:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c329:	jae	0x804c336 [IMM <CODEREF>]
	jae	.label_442
	# 0x804c32b:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c32e:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c331:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c333:	movb	$0x24, 0(%eax) [IMM, MEM]
	movb	$0x24, 0(%eax)
	# 0x804c336:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_442:
	addl	$1, -0x34(%ebp)
	# 0x804c33a:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c33d:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c340:	jae	0x804c34d [IMM <CODEREF>]
	jae	.label_446
	# 0x804c342:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c345:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c348:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c34a:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c34d:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_446:
	addl	$1, -0x34(%ebp)
	# 0x804c351:	movb	$1, -0x46(%ebp) [IMM, MEM]
	movb	$1, -0x46(%ebp)
	# 0x804c355:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_395:
	movl	-0x34(%ebp), %eax
	# 0x804c358:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c35b:	jae	0x804c368 [IMM <CODEREF>]
	jae	.label_363
	# 0x804c35d:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c360:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c363:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c365:	movb	$0x5c, 0(%eax) [IMM, MEM]
	movb	$0x5c, 0(%eax)
	# 0x804c368:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_363:
	addl	$1, -0x34(%ebp)
	# 0x804c36c:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c36f:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c372:	jae	0x804c388 [IMM <CODEREF>]
	jae	.label_456
	# 0x804c374:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c377:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c37a:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c37c:	movzbl	-0x43(%ebp), %edx [MEM, REG]
	movzbl	-0x43(%ebp), %edx
	# 0x804c380:	shrb	$6, %dl [IMM, REG]
	shrb	$6, %dl
	# 0x804c383:	addl	$0x30, %edx [IMM, REG]
	addl	$0x30, %edx
	# 0x804c386:	movb	%dl, 0(%eax) [REG, MEM]
	movb	%dl, 0(%eax)
	# 0x804c388:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_456:
	addl	$1, -0x34(%ebp)
	# 0x804c38c:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c38f:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c392:	jae	0x804c3ab [IMM <CODEREF>]
	jae	.label_461
	# 0x804c394:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c397:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c39a:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c39c:	movzbl	-0x43(%ebp), %edx [MEM, REG]
	movzbl	-0x43(%ebp), %edx
	# 0x804c3a0:	shrb	$3, %dl [IMM, REG]
	shrb	$3, %dl
	# 0x804c3a3:	andl	$7, %edx [IMM, REG]
	andl	$7, %edx
	# 0x804c3a6:	addl	$0x30, %edx [IMM, REG]
	addl	$0x30, %edx
	# 0x804c3a9:	movb	%dl, 0(%eax) [REG, MEM]
	movb	%dl, 0(%eax)
	# 0x804c3ab:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_461:
	addl	$1, -0x34(%ebp)
	# 0x804c3af:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804c3b3:	andl	$7, %eax [IMM, REG]
	andl	$7, %eax
	# 0x804c3b6:	addl	$0x30, %eax [IMM, REG]
	addl	$0x30, %eax
	# 0x804c3b9:	movb	%al, -0x43(%ebp) [REG, MEM]
	movb	%al, -0x43(%ebp)
	# 0x804c3bc:	jmp	0x804c3df [IMM <CODEREF>]
	jmp	.label_437
	# 0x804c3be:	cmpb	$0, -0x41(%ebp) [IMM, MEM]
.label_420:
	cmpb	$0, -0x41(%ebp)
	# 0x804c3c2:	je	0x804c3df [IMM <CODEREF>]
	je	.label_437
	# 0x804c3c4:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c3c7:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c3ca:	jae	0x804c3d7 [IMM <CODEREF>]
	jae	.label_470
	# 0x804c3cc:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c3cf:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c3d2:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c3d4:	movb	$0x5c, 0(%eax) [IMM, MEM]
	movb	$0x5c, 0(%eax)
	# 0x804c3d7:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_470:
	addl	$1, -0x34(%ebp)
	# 0x804c3db:	movb	$0, -0x41(%ebp) [IMM, MEM]
	movb	$0, -0x41(%ebp)
	# 0x804c3df:	movl	-0x38(%ebp), %eax [MEM, REG]
.label_437:
	movl	-0x38(%ebp), %eax
	# 0x804c3e2:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804c3e5:	cmpl	-0x18(%ebp), %eax [MEM, REG]
	cmpl	-0x18(%ebp), %eax
	# 0x804c3e8:	jae	0x804c45e [IMM <CODEREF>]
	jae	.label_378
	# 0x804c3ea:	cmpb	$0, -0x46(%ebp) [IMM, MEM]
	cmpb	$0, -0x46(%ebp)
	# 0x804c3ee:	je	0x804c42d [IMM <CODEREF>]
	je	.label_377
	# 0x804c3f0:	movzbl	-0x40(%ebp), %eax [MEM, REG]
	movzbl	-0x40(%ebp), %eax
	# 0x804c3f4:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c3f7:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c3f9:	je	0x804c42d [IMM <CODEREF>]
	je	.label_377
	# 0x804c3fb:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c3fe:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c401:	jae	0x804c40e [IMM <CODEREF>]
	jae	.label_434
	# 0x804c403:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c406:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c409:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c40b:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c40e:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_434:
	addl	$1, -0x34(%ebp)
	# 0x804c412:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c415:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c418:	jae	0x804c425 [IMM <CODEREF>]
	jae	.label_473
	# 0x804c41a:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c41d:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c420:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c422:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c425:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_473:
	addl	$1, -0x34(%ebp)
	# 0x804c429:	movb	$0, -0x46(%ebp) [IMM, MEM]
	movb	$0, -0x46(%ebp)
	# 0x804c42d:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_377:
	movl	-0x34(%ebp), %eax
	# 0x804c430:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c433:	jae	0x804c443 [IMM <CODEREF>]
	jae	.label_371
	# 0x804c435:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c438:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c43b:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c43d:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804c441:	movb	%al, 0(%edx) [REG, MEM]
	movb	%al, 0(%edx)
	# 0x804c443:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_371:
	addl	$1, -0x34(%ebp)
	# 0x804c447:	addl	$1, -0x38(%ebp) [IMM, MEM]
	addl	$1, -0x38(%ebp)
	# 0x804c44b:	movl	-0x50(%ebp), %edx [MEM, REG]
	movl	-0x50(%ebp), %edx
	# 0x804c44e:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804c451:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c453:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c456:	movb	%al, -0x43(%ebp) [REG, MEM]
	movb	%al, -0x43(%ebp)
	# 0x804c459:	jmp	0x804c2d4 [IMM <CODEREF>]
	jmp	.label_359
	# 0x804c45e:	nop	 []
.label_378:
	nop	
	# 0x804c45f:	jmp	0x804c559 [IMM <CODEREF>]
	jmp	.label_386
	# 0x804c464:	nop	 []
.label_411:
	nop	
	# 0x804c465:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c467:	nop	 []
.label_376:
	nop	
	# 0x804c468:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c46a:	nop	 []
.label_393:
	nop	
	# 0x804c46b:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c46d:	nop	 []
.label_433:
	nop	
	# 0x804c46e:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c470:	nop	 []
.label_401:
	nop	
	# 0x804c471:	jmp	0x804c474 [IMM <CODEREF>]
	jmp	.label_385
	# 0x804c473:	nop	 []
.label_408:
	nop	
	# 0x804c474:	movzbl	-0x48(%ebp), %eax [MEM, REG]
.label_385:
	movzbl	-0x48(%ebp), %eax
	# 0x804c478:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c47b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c47d:	jne	0x804c485 [IMM <CODEREF>]
	jne	.label_391
	# 0x804c47f:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c483:	jne	0x804c490 [IMM <CODEREF>]
	jne	.label_398
	# 0x804c485:	movzbl	-0x47(%ebp), %eax [MEM, REG]
.label_391:
	movzbl	-0x47(%ebp), %eax
	# 0x804c489:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c48c:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c48e:	jne	0x804c4c2 [IMM <CODEREF>]
	jne	.label_400
	# 0x804c490:	cmpl	$0, -0x54(%ebp) [IMM, MEM]
.label_398:
	cmpl	$0, -0x54(%ebp)
	# 0x804c494:	je	0x804c4c2 [IMM <CODEREF>]
	je	.label_400
	# 0x804c496:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804c49a:	shrb	$5, %al [IMM, REG]
	shrb	$5, %al
	# 0x804c49d:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804c4a0:	leal	0(, %eax, 4), %edx [MEM, REG]
	leal	0(, %eax, 4), %edx
	# 0x804c4a7:	movl	-0x54(%ebp), %eax [MEM, REG]
	movl	-0x54(%ebp), %eax
	# 0x804c4aa:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c4ac:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804c4ae:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804c4b2:	andl	$0x1f, %eax [IMM, REG]
	andl	$0x1f, %eax
	# 0x804c4b5:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804c4b7:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804c4b9:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804c4bb:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804c4be:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804c4c0:	jne	0x804c4d1 [IMM <CODEREF>]
	jne	.label_380
	# 0x804c4c2:	movzbl	-0x41(%ebp), %eax [MEM, REG]
.label_400:
	movzbl	-0x41(%ebp), %eax
	# 0x804c4c6:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c4c9:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c4cb:	jne	0x804c558 [IMM <CODEREF>]
	jne	.label_416
	# 0x804c4d1:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
.label_380:
	cmpb	$0, -0x47(%ebp)
	# 0x804c4d5:	jne	0x804c6d7 [IMM <CODEREF>]
	jne	.label_419
	# 0x804c4db:	movb	$1, -0x40(%ebp) [IMM, MEM]
	movb	$1, -0x40(%ebp)
	# 0x804c4df:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c4e3:	jne	0x804c539 [IMM <CODEREF>]
	jne	.label_423
	# 0x804c4e5:	movzbl	-0x46(%ebp), %eax [MEM, REG]
	movzbl	-0x46(%ebp), %eax
	# 0x804c4e9:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c4ec:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c4ee:	je	0x804c539 [IMM <CODEREF>]
	je	.label_423
	# 0x804c4f0:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c4f3:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c4f6:	jae	0x804c503 [IMM <CODEREF>]
	jae	.label_431
	# 0x804c4f8:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c4fb:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c4fe:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c500:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c503:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_431:
	addl	$1, -0x34(%ebp)
	# 0x804c507:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c50a:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c50d:	jae	0x804c51a [IMM <CODEREF>]
	jae	.label_435
	# 0x804c50f:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c512:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c515:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c517:	movb	$0x24, 0(%eax) [IMM, MEM]
	movb	$0x24, 0(%eax)
	# 0x804c51a:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_435:
	addl	$1, -0x34(%ebp)
	# 0x804c51e:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c521:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c524:	jae	0x804c531 [IMM <CODEREF>]
	jae	.label_440
	# 0x804c526:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c529:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c52c:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c52e:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c531:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_440:
	addl	$1, -0x34(%ebp)
	# 0x804c535:	movb	$1, -0x46(%ebp) [IMM, MEM]
	movb	$1, -0x46(%ebp)
	# 0x804c539:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_423:
	movl	-0x34(%ebp), %eax
	# 0x804c53c:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c53f:	jae	0x804c54c [IMM <CODEREF>]
	jae	.label_447
	# 0x804c541:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c544:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c547:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c549:	movb	$0x5c, 0(%eax) [IMM, MEM]
	movb	$0x5c, 0(%eax)
	# 0x804c54c:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_447:
	addl	$1, -0x34(%ebp)
	# 0x804c550:	jmp	0x804c559 [IMM <CODEREF>]
	jmp	.label_386
	# 0x804c552:	nop	 []
.label_465:
	nop	
	# 0x804c553:	jmp	0x804c559 [IMM <CODEREF>]
	jmp	.label_386
	# 0x804c555:	nop	 []
.label_369:
	nop	
	# 0x804c556:	jmp	0x804c559 [IMM <CODEREF>]
	jmp	.label_386
	# 0x804c558:	nop	 []
.label_416:
	nop	
	# 0x804c559:	cmpb	$0, -0x46(%ebp) [IMM, MEM]
.label_386:
	cmpb	$0, -0x46(%ebp)
	# 0x804c55d:	je	0x804c59c [IMM <CODEREF>]
	je	.label_452
	# 0x804c55f:	movzbl	-0x40(%ebp), %eax [MEM, REG]
	movzbl	-0x40(%ebp), %eax
	# 0x804c563:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c566:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c568:	je	0x804c59c [IMM <CODEREF>]
	je	.label_452
	# 0x804c56a:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c56d:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c570:	jae	0x804c57d [IMM <CODEREF>]
	jae	.label_396
	# 0x804c572:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c575:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c578:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c57a:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c57d:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_396:
	addl	$1, -0x34(%ebp)
	# 0x804c581:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c584:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c587:	jae	0x804c594 [IMM <CODEREF>]
	jae	.label_458
	# 0x804c589:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c58c:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c58f:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c591:	movb	$0x27, 0(%eax) [IMM, MEM]
	movb	$0x27, 0(%eax)
	# 0x804c594:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_458:
	addl	$1, -0x34(%ebp)
	# 0x804c598:	movb	$0, -0x46(%ebp) [IMM, MEM]
	movb	$0, -0x46(%ebp)
	# 0x804c59c:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_452:
	movl	-0x34(%ebp), %eax
	# 0x804c59f:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c5a2:	jae	0x804c5b2 [IMM <CODEREF>]
	jae	.label_463
	# 0x804c5a4:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c5a7:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c5aa:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c5ac:	movzbl	-0x43(%ebp), %eax [MEM, REG]
	movzbl	-0x43(%ebp), %eax
	# 0x804c5b0:	movb	%al, 0(%edx) [REG, MEM]
	movb	%al, 0(%edx)
	# 0x804c5b2:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_463:
	addl	$1, -0x34(%ebp)
	# 0x804c5b6:	movzbl	-0x3f(%ebp), %eax [MEM, REG]
	movzbl	-0x3f(%ebp), %eax
	# 0x804c5ba:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c5bd:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c5bf:	je	0x804c5c5 [IMM <CODEREF>]
	je	.label_418
	# 0x804c5c1:	movb	$0, -0x44(%ebp) [IMM, MEM]
	movb	$0, -0x44(%ebp)
	# 0x804c5c5:	addl	$1, -0x38(%ebp) [IMM, MEM]
.label_418:
	addl	$1, -0x38(%ebp)
	# 0x804c5c9:	cmpl	$-1, 0x14(%ebp) [IMM, MEM]
.label_441:
	cmpl	$-1, 0x14(%ebp)
	# 0x804c5cd:	jne	0x804c5e1 [IMM <CODEREF>]
	jne	.label_469
	# 0x804c5cf:	movl	-0x50(%ebp), %edx [MEM, REG]
	movl	-0x50(%ebp), %edx
	# 0x804c5d2:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804c5d5:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c5d7:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c5da:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c5dc:	setne	%al [REG]
	setne	%al
	# 0x804c5df:	jmp	0x804c5ea [IMM <CODEREF>]
	jmp	.label_475
	# 0x804c5e1:	movl	-0x38(%ebp), %eax [MEM, REG]
.label_469:
	movl	-0x38(%ebp), %eax
	# 0x804c5e4:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804c5e7:	setne	%al [REG]
	setne	%al
	# 0x804c5ea:	testb	%al, %al [REG, REG]
.label_475:
	testb	%al, %al
	# 0x804c5ec:	jne	0x804bd29 [IMM <CODEREF>]
	jne	.label_481
	# 0x804c5f2:	cmpl	$0, -0x34(%ebp) [IMM, MEM]
	cmpl	$0, -0x34(%ebp)
	# 0x804c5f6:	jne	0x804c608 [IMM <CODEREF>]
	jne	.label_467
	# 0x804c5f8:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
	cmpl	$2, 0x18(%ebp)
	# 0x804c5fc:	jne	0x804c608 [IMM <CODEREF>]
	jne	.label_467
	# 0x804c5fe:	cmpb	$0, -0x47(%ebp) [IMM, MEM]
	cmpb	$0, -0x47(%ebp)
	# 0x804c602:	jne	0x804c6da [IMM <CODEREF>]
	jne	.label_485
	# 0x804c608:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
.label_467:
	cmpl	$2, 0x18(%ebp)
	# 0x804c60c:	jne	0x804c66d [IMM <CODEREF>]
	jne	.label_361
	# 0x804c60e:	movzbl	-0x47(%ebp), %eax [MEM, REG]
	movzbl	-0x47(%ebp), %eax
	# 0x804c612:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c615:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c617:	je	0x804c66d [IMM <CODEREF>]
	je	.label_361
	# 0x804c619:	cmpb	$0, -0x45(%ebp) [IMM, MEM]
	cmpb	$0, -0x45(%ebp)
	# 0x804c61d:	je	0x804c66d [IMM <CODEREF>]
	je	.label_361
	# 0x804c61f:	cmpb	$0, -0x44(%ebp) [IMM, MEM]
	cmpb	$0, -0x44(%ebp)
	# 0x804c623:	je	0x804c64f [IMM <CODEREF>]
	je	.label_368
	# 0x804c625:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c628:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x804c62b:	pushl	-0x58(%ebp) [MEM]
	pushl	-0x58(%ebp)
	# 0x804c62e:	pushl	-0x54(%ebp) [MEM]
	pushl	-0x54(%ebp)
	# 0x804c631:	pushl	0x1c(%ebp) [MEM]
	pushl	0x1c(%ebp)
	# 0x804c634:	pushl	$5 [IMM]
	pushl	$5
	# 0x804c636:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804c639:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x804c63c:	pushl	-0x30(%ebp) [MEM]
	pushl	-0x30(%ebp)
	# 0x804c63f:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804c642:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804c647:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804c64a:	jmp	0x804c717 [IMM <CODEREF>]
	jmp	.label_379
	# 0x804c64f:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
.label_368:
	cmpl	$0, 0xc(%ebp)
	# 0x804c653:	jne	0x804c66d [IMM <CODEREF>]
	jne	.label_361
	# 0x804c655:	cmpl	$0, -0x30(%ebp) [IMM, MEM]
	cmpl	$0, -0x30(%ebp)
	# 0x804c659:	je	0x804c66d [IMM <CODEREF>]
	je	.label_361
	# 0x804c65b:	movl	-0x30(%ebp), %eax [MEM, REG]
	movl	-0x30(%ebp), %eax
	# 0x804c65e:	movl	%eax, 0xc(%ebp) [REG, MEM]
	movl	%eax, 0xc(%ebp)
	# 0x804c661:	movl	$0, -0x34(%ebp) [IMM, MEM]
	movl	$0, -0x34(%ebp)
	# 0x804c668:	jmp	0x804bbcc [IMM <CODEREF>]
	jmp	.label_384
	# 0x804c66d:	cmpl	$0, -0x2c(%ebp) [IMM, MEM]
.label_361:
	cmpl	$0, -0x2c(%ebp)
	# 0x804c671:	je	0x804c6aa [IMM <CODEREF>]
	je	.label_390
	# 0x804c673:	movzbl	-0x47(%ebp), %eax [MEM, REG]
	movzbl	-0x47(%ebp), %eax
	# 0x804c677:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804c67a:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c67c:	je	0x804c6aa [IMM <CODEREF>]
	je	.label_390
	# 0x804c67e:	jmp	0x804c6a0 [IMM <CODEREF>]
	jmp	.label_397
	# 0x804c680:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_406:
	movl	-0x34(%ebp), %eax
	# 0x804c683:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c686:	jae	0x804c698 [IMM <CODEREF>]
	jae	.label_399
	# 0x804c688:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c68b:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c68e:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804c690:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804c693:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c696:	movb	%al, 0(%edx) [REG, MEM]
	movb	%al, 0(%edx)
	# 0x804c698:	addl	$1, -0x34(%ebp) [IMM, MEM]
.label_399:
	addl	$1, -0x34(%ebp)
	# 0x804c69c:	addl	$1, -0x2c(%ebp) [IMM, MEM]
	addl	$1, -0x2c(%ebp)
	# 0x804c6a0:	movl	-0x2c(%ebp), %eax [MEM, REG]
.label_397:
	movl	-0x2c(%ebp), %eax
	# 0x804c6a3:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804c6a6:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804c6a8:	jne	0x804c680 [IMM <CODEREF>]
	jne	.label_406
	# 0x804c6aa:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_390:
	movl	-0x34(%ebp), %eax
	# 0x804c6ad:	cmpl	0xc(%ebp), %eax [MEM, REG]
	cmpl	0xc(%ebp), %eax
	# 0x804c6b0:	jae	0x804c6bd [IMM <CODEREF>]
	jae	.label_409
	# 0x804c6b2:	movl	-0x4c(%ebp), %edx [MEM, REG]
	movl	-0x4c(%ebp), %edx
	# 0x804c6b5:	movl	-0x34(%ebp), %eax [MEM, REG]
	movl	-0x34(%ebp), %eax
	# 0x804c6b8:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c6ba:	movb	$0, 0(%eax) [IMM, MEM]
	movb	$0, 0(%eax)
	# 0x804c6bd:	movl	-0x34(%ebp), %eax [MEM, REG]
.label_409:
	movl	-0x34(%ebp), %eax
	# 0x804c6c0:	jmp	0x804c717 [IMM <CODEREF>]
	jmp	.label_379
	# 0x804c6c2:	nop	 []
.label_462:
	nop	
	# 0x804c6c3:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6c5:	nop	 []
.label_476:
	nop	
	# 0x804c6c6:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6c8:	nop	 []
.label_450:
	nop	
	# 0x804c6c9:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6cb:	nop	 []
.label_374:
	nop	
	# 0x804c6cc:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6ce:	nop	 []
.label_412:
	nop	
	# 0x804c6cf:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6d1:	nop	 []
.label_819:
	nop	
	# 0x804c6d2:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6d4:	nop	 []
.label_444:
	nop	
	# 0x804c6d5:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6d7:	nop	 []
.label_419:
	nop	
	# 0x804c6d8:	jmp	0x804c6db [IMM <CODEREF>]
	jmp	.label_364
	# 0x804c6da:	nop	 []
.label_485:
	nop	
	# 0x804c6db:	cmpl	$2, 0x18(%ebp) [IMM, MEM]
.label_364:
	cmpl	$2, 0x18(%ebp)
	# 0x804c6df:	jne	0x804c6ee [IMM <CODEREF>]
	jne	.label_425
	# 0x804c6e1:	cmpb	$0, -0x48(%ebp) [IMM, MEM]
	cmpb	$0, -0x48(%ebp)
	# 0x804c6e5:	je	0x804c6ee [IMM <CODEREF>]
	je	.label_425
	# 0x804c6e7:	movl	$4, 0x18(%ebp) [IMM, MEM]
	movl	$4, 0x18(%ebp)
	# 0x804c6ee:	movl	0x1c(%ebp), %eax [MEM, REG]
.label_425:
	movl	0x1c(%ebp), %eax
	# 0x804c6f1:	andl	$0xfffffffd, %eax [IMM, REG]
	andl	$0xfffffffd, %eax
	# 0x804c6f4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c6f7:	pushl	-0x5c(%ebp) [MEM]
	pushl	-0x5c(%ebp)
	# 0x804c6fa:	pushl	-0x58(%ebp) [MEM]
	pushl	-0x58(%ebp)
	# 0x804c6fd:	pushl	$0 [IMM]
	pushl	$0
	# 0x804c6ff:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c700:	pushl	0x18(%ebp) [MEM]
	pushl	0x18(%ebp)
	# 0x804c703:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804c706:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x804c709:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804c70c:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804c70f:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804c714:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804c717:	movl	-0xc(%ebp), %ebx [MEM, REG]
.label_379:
	movl	-0xc(%ebp), %ebx
	# 0x804c71a:	xorl	%gs:0x14, %ebx [MEM, REG]
	xorl	%gs:0x14, %ebx
	# 0x804c721:	je	0x804c728 [IMM <CODEREF>]
	je	.label_439
	# 0x804c723:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804c728:	movl	-4(%ebp), %ebx [MEM, REG]
.label_439:
	movl	-4(%ebp), %ebx
	# 0x804c72b:	leave	 []
	leave	
	# 0x804c72c:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c72d
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	# 0x804c72d:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804c72e:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804c730:	pushl	%esi [REG]
	pushl	%esi
	# 0x804c731:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c732:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x804c735:	cmpl	$0, 0x18(%ebp) [IMM, MEM]
	cmpl	$0, 0x18(%ebp)
	# 0x804c739:	je	0x804c740 [IMM <CODEREF>]
	je	.label_490
	# 0x804c73b:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804c73e:	jmp	0x804c745 [IMM <CODEREF>]
	jmp	.label_489
	# 0x804c740:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_490:
	movl	$default_quoting_options,  %eax
	# 0x804c745:	movl	%eax, -0x14(%ebp) [REG, MEM]
.label_489:
	movl	%eax, -0x14(%ebp)
	# 0x804c748:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804c74d:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c74f:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804c752:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804c755:	movl	0x2c(%eax), %ebx [MEM, REG]
	movl	0x2c(%eax), %ebx
	# 0x804c758:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804c75b:	movl	0x28(%eax), %ecx [MEM, REG]
	movl	0x28(%eax), %ecx
	# 0x804c75e:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804c761:	leal	8(%eax), %esi [MEM, REG]
	leal	8(%eax), %esi
	# 0x804c764:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804c767:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804c76a:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804c76d:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c76f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c772:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c773:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804c774:	pushl	%esi [REG]
	pushl	%esi
	# 0x804c775:	pushl	%edx [REG]
	pushl	%edx
	# 0x804c776:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c777:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804c77a:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804c77d:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804c780:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804c783:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804c788:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804c78b:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804c78e:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804c793:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804c795:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804c798:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804c79a:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804c79d:	leal	-8(%ebp), %esp [MEM, REG]
	leal	-8(%ebp), %esp
	# 0x804c7a0:	popl	%ebx [REG]
	popl	%ebx
	# 0x804c7a1:	popl	%esi [REG]
	popl	%esi
	# 0x804c7a2:	popl	%ebp [REG]
	popl	%ebp
	# 0x804c7a3:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c7a4
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	# 0x804c7a4:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804c7a5:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804c7a7:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804c7aa:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804c7ad:	pushl	$0 [IMM]
	pushl	$0
	# 0x804c7af:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804c7b2:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804c7b5:	calll	0x804c7bf [IMM <CODEREF>]
	calll	quotearg_alloc_mem
	# 0x804c7ba:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c7bd:	leave	 []
	leave	
	# 0x804c7be:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c7bf

	# 0x804c7bf:	pushl	%ebp [REG]
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	pushl	%ebp
	# 0x804c7c0:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804c7c2:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c7c3:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x804c7c6:	cmpl	$0, 0x14(%ebp) [IMM, MEM]
	cmpl	$0, 0x14(%ebp)
	# 0x804c7ca:	je	0x804c7d1 [IMM <CODEREF>]
	je	.label_493
	# 0x804c7cc:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804c7cf:	jmp	0x804c7d6 [IMM <CODEREF>]
	jmp	.label_492
	# 0x804c7d1:	movl	$0x80531c0, %eax [IMM <DATAREF>, REG]
.label_493:
	movl	$default_quoting_options,  %eax
	# 0x804c7d6:	movl	%eax, -0x1c(%ebp) [REG, MEM]
.label_492:
	movl	%eax, -0x1c(%ebp)
	# 0x804c7d9:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804c7de:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c7e0:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804c7e3:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c7e6:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804c7e9:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x804c7ed:	sete	%al [REG]
	sete	%al
	# 0x804c7f0:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804c7f3:	orl	%edx, %eax [REG, REG]
	orl	%edx, %eax
	# 0x804c7f5:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804c7f8:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c7fb:	movl	0x2c(%eax), %ecx [MEM, REG]
	movl	0x2c(%eax), %ecx
	# 0x804c7fe:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c801:	movl	0x28(%eax), %edx [MEM, REG]
	movl	0x28(%eax), %edx
	# 0x804c804:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c807:	leal	8(%eax), %ebx [MEM, REG]
	leal	8(%eax), %ebx
	# 0x804c80a:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c80d:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c80f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c812:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804c813:	pushl	%edx [REG]
	pushl	%edx
	# 0x804c814:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c815:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804c818:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c819:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804c81c:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804c81f:	pushl	$0 [IMM]
	pushl	$0
	# 0x804c821:	pushl	$0 [IMM]
	pushl	$0
	# 0x804c823:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804c828:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804c82b:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804c82e:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804c831:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c834:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804c837:	calll	0x804dd27 [IMM <CODEREF>]
	calll	xcharalloc
	# 0x804c83c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c83f:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804c842:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c845:	movl	0x2c(%eax), %ecx [MEM, REG]
	movl	0x2c(%eax), %ecx
	# 0x804c848:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c84b:	movl	0x28(%eax), %edx [MEM, REG]
	movl	0x28(%eax), %edx
	# 0x804c84e:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c851:	leal	8(%eax), %ebx [MEM, REG]
	leal	8(%eax), %ebx
	# 0x804c854:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804c857:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c859:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c85c:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804c85d:	pushl	%edx [REG]
	pushl	%edx
	# 0x804c85e:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c85f:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804c862:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c863:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804c866:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804c869:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804c86c:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804c86f:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804c874:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804c877:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804c87c:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804c87e:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804c881:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804c883:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x804c887:	je	0x804c894 [IMM <CODEREF>]
	je	.label_491
	# 0x804c889:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804c88c:	leal	-1(%eax), %edx [MEM, REG]
	leal	-1(%eax), %edx
	# 0x804c88f:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804c892:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804c894:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_491:
	movl	-0xc(%ebp), %eax
	# 0x804c897:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x804c89a:	leave	 []
	leave	
	# 0x804c89b:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c89c
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	# 0x804c89c:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804c89d:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804c89f:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804c8a2:	movl	0x805312c, %eax [MEM, REG]
	movl	slotvec,  %eax
	# 0x804c8a7:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804c8aa:	movl	$1, -0x10(%ebp) [IMM, MEM]
	movl	$1, -0x10(%ebp)
	# 0x804c8b1:	jmp	0x804c8d5 [IMM <CODEREF>]
	jmp	.label_497
	# 0x804c8b3:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_495:
	movl	-0x10(%ebp), %eax
	# 0x804c8b6:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804c8bd:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804c8c0:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804c8c2:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804c8c5:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c8c8:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c8c9:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804c8ce:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c8d1:	addl	$1, -0x10(%ebp) [IMM, MEM]
	addl	$1, -0x10(%ebp)
	# 0x804c8d5:	movl	0x8053120, %eax [MEM, REG]
.label_497:
	movl	nslots,  %eax
	# 0x804c8da:	cmpl	%eax, -0x10(%ebp) [REG, MEM]
	cmpl	%eax, -0x10(%ebp)
	# 0x804c8dd:	jl	0x804c8b3 [IMM <CODEREF>]
	jl	.label_495
	# 0x804c8df:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804c8e2:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804c8e5:	cmpl	$0x8053200, %eax [IMM <DATAREF>, REG]
	cmpl	$slot0,  %eax
	# 0x804c8ea:	je	0x804c912 [IMM <CODEREF>]
	je	.label_498
	# 0x804c8ec:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804c8ef:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804c8f2:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c8f5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c8f6:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804c8fb:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c8fe:	movl	$0x100, 0x8053124 [IMM, MEM]
	movl	$0x100, slotvec0
	# 0x804c908:	movl	$0x8053200, 0x8053128 [IMM <DATAREF>, MEM]
	movl	$slot0, label_496
	# 0x804c912:	cmpl	$0x8053124, -0xc(%ebp) [IMM <DATAREF>, MEM]
.label_498:
	cmpl	$slotvec0, -12(%ebp)
	# 0x804c919:	je	0x804c933 [IMM <CODEREF>]
	je	.label_494
	# 0x804c91b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804c91e:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804c921:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804c926:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c929:	movl	$0x8053124, 0x805312c [IMM <DATAREF>, MEM]
	movl	$slotvec0, slotvec
	# 0x804c933:	movl	$1, 0x8053120 [IMM, MEM]
.label_494:
	movl	$1, nslots
	# 0x804c93d:	nop	 []
	nop	
	# 0x804c93e:	leave	 []
	leave	
	# 0x804c93f:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c940

	# 0x804c940:	pushl	%ebp [REG]
	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	pushl	%ebp
	# 0x804c941:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804c943:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804c944:	subl	$0x24, %esp [IMM, REG]
	subl	$0x24, %esp
	# 0x804c947:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804c94c:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804c94e:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804c951:	movl	0x805312c, %eax [MEM, REG]
	movl	slotvec,  %eax
	# 0x804c956:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804c959:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804c95d:	jns	0x804c964 [IMM <CODEREF>]
	jns	.label_500
	# 0x804c95f:	calll	0x8048f80 [IMM <CODEREF>]
	calll	abort
	# 0x804c964:	movl	0x8053120, %eax [MEM, REG]
.label_500:
	movl	nslots,  %eax
	# 0x804c969:	cmpl	8(%ebp), %eax [MEM, REG]
	cmpl	8(%ebp), %eax
	# 0x804c96c:	jg	0x804ca22 [IMM <CODEREF>]
	jg	.label_503
	# 0x804c972:	cmpl	$0x8053124, -0x24(%ebp) [IMM <DATAREF>, MEM]
	cmpl	$slotvec0, -36(%ebp)
	# 0x804c979:	sete	%al [REG]
	sete	%al
	# 0x804c97c:	movb	%al, -0x25(%ebp) [REG, MEM]
	movb	%al, -0x25(%ebp)
	# 0x804c97f:	movl	$0xffffffe, -0x18(%ebp) [IMM, MEM]
	movl	$0xffffffe, -0x18(%ebp)
	# 0x804c986:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804c989:	cmpl	8(%ebp), %eax [MEM, REG]
	cmpl	8(%ebp), %eax
	# 0x804c98c:	jge	0x804c993 [IMM <CODEREF>]
	jge	.label_505
	# 0x804c98e:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804c993:	movl	8(%ebp), %eax [MEM, REG]
.label_505:
	movl	8(%ebp), %eax
	# 0x804c996:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804c999:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804c9a0:	cmpb	$0, -0x25(%ebp) [IMM, MEM]
	cmpb	$0, -0x25(%ebp)
	# 0x804c9a4:	je	0x804c9ad [IMM <CODEREF>]
	je	.label_501
	# 0x804c9a6:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804c9ab:	jmp	0x804c9b0 [IMM <CODEREF>]
	jmp	.label_504
	# 0x804c9ad:	movl	-0x24(%ebp), %eax [MEM, REG]
.label_501:
	movl	-0x24(%ebp), %eax
	# 0x804c9b0:	subl	$8, %esp [IMM, REG]
.label_504:
	subl	$8, %esp
	# 0x804c9b3:	pushl	%edx [REG]
	pushl	%edx
	# 0x804c9b4:	pushl	%eax [REG]
	pushl	%eax
	# 0x804c9b5:	calll	0x804dd6a [IMM <CODEREF>]
	calll	xrealloc
	# 0x804c9ba:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804c9bd:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804c9c0:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804c9c3:	movl	%eax, 0x805312c [REG, MEM]
	movl	%eax, slotvec
	# 0x804c9c8:	cmpb	$0, -0x25(%ebp) [IMM, MEM]
	cmpb	$0, -0x25(%ebp)
	# 0x804c9cc:	je	0x804c9e1 [IMM <CODEREF>]
	je	.label_506
	# 0x804c9ce:	movl	-0x24(%ebp), %ecx [MEM, REG]
	movl	-0x24(%ebp), %ecx
	# 0x804c9d1:	movl	0x8053124, %eax [MEM, REG]
	movl	slotvec0,  %eax
	# 0x804c9d6:	movl	0x8053128, %edx [MEM, REG]
	movl	label_496,  %edx
	# 0x804c9dc:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804c9de:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804c9e1:	movl	8(%ebp), %eax [MEM, REG]
.label_506:
	movl	8(%ebp), %eax
	# 0x804c9e4:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804c9e7:	movl	0x8053120, %eax [MEM, REG]
	movl	nslots,  %eax
	# 0x804c9ec:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804c9ee:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804c9f0:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804c9f7:	movl	0x8053120, %eax [MEM, REG]
	movl	nslots,  %eax
	# 0x804c9fc:	leal	0(, %eax, 8), %ecx [MEM, REG]
	leal	0(, %eax, 8), %ecx
	# 0x804ca03:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804ca06:	addl	%ecx, %eax [REG, REG]
	addl	%ecx, %eax
	# 0x804ca08:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ca0b:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ca0c:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ca0e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ca0f:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804ca14:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ca17:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ca1a:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804ca1d:	movl	%eax, 0x8053120 [REG, MEM]
	movl	%eax, nslots
	# 0x804ca22:	movl	8(%ebp), %eax [MEM, REG]
.label_503:
	movl	8(%ebp), %eax
	# 0x804ca25:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804ca2c:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804ca2f:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804ca31:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804ca33:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804ca36:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ca39:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804ca40:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804ca43:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804ca45:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804ca48:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804ca4b:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ca4e:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804ca51:	orl	$1, %eax [IMM, REG]
	orl	$1, %eax
	# 0x804ca54:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804ca57:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ca5a:	movl	0x2c(%eax), %ecx [MEM, REG]
	movl	0x2c(%eax), %ecx
	# 0x804ca5d:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ca60:	movl	0x28(%eax), %edx [MEM, REG]
	movl	0x28(%eax), %edx
	# 0x804ca63:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ca66:	leal	8(%eax), %ebx [MEM, REG]
	leal	8(%eax), %ebx
	# 0x804ca69:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ca6c:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804ca6e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ca71:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804ca72:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ca73:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804ca74:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804ca77:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ca78:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804ca7b:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804ca7e:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804ca81:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804ca84:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804ca89:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804ca8c:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804ca8f:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804ca92:	cmpl	-0xc(%ebp), %eax [MEM, REG]
	cmpl	-0xc(%ebp), %eax
	# 0x804ca95:	ja	0x804cb2b [IMM <CODEREF>]
	ja	.label_499
	# 0x804ca9b:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ca9e:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804caa5:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804caa8:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804caaa:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804caad:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804cab0:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804cab3:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804cab6:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804cab8:	cmpl	$0x8053200, -0x20(%ebp) [IMM <DATAREF>, MEM]
	cmpl	$slot0, -32(%ebp)
	# 0x804cabf:	je	0x804cacf [IMM <CODEREF>]
	je	.label_502
	# 0x804cac1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804cac4:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804cac7:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804cacc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cacf:	movl	8(%ebp), %eax [MEM, REG]
.label_502:
	movl	8(%ebp), %eax
	# 0x804cad2:	leal	0(, %eax, 8), %edx [MEM, REG]
	leal	0(, %eax, 8), %edx
	# 0x804cad9:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804cadc:	leal	0(%edx, %eax), %ebx [MEM, REG]
	leal	0(%edx, %eax), %ebx
	# 0x804cadf:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804cae2:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804cae5:	calll	0x804dd27 [IMM <CODEREF>]
	calll	xcharalloc
	# 0x804caea:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804caed:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804caf0:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804caf3:	movl	%eax, 4(%ebx) [REG, MEM]
	movl	%eax, 4(%ebx)
	# 0x804caf6:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804caf9:	movl	0x2c(%eax), %ecx [MEM, REG]
	movl	0x2c(%eax), %ecx
	# 0x804cafc:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804caff:	movl	0x28(%eax), %edx [MEM, REG]
	movl	0x28(%eax), %edx
	# 0x804cb02:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804cb05:	leal	8(%eax), %ebx [MEM, REG]
	leal	8(%eax), %ebx
	# 0x804cb08:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804cb0b:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804cb0d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804cb10:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804cb11:	pushl	%edx [REG]
	pushl	%edx
	# 0x804cb12:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804cb13:	pushl	-0x10(%ebp) [MEM]
	pushl	-0x10(%ebp)
	# 0x804cb16:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cb17:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cb1a:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cb1d:	pushl	-0x14(%ebp) [MEM]
	pushl	-0x14(%ebp)
	# 0x804cb20:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804cb23:	calll	0x804bb54 [IMM <CODEREF>]
	calll	quotearg_buffer_restyled
	# 0x804cb28:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804cb2b:	calll	0x8048ed0 [IMM <CODEREF>]
.label_499:
	calll	__errno_location
	# 0x804cb30:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804cb32:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804cb35:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804cb37:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804cb3a:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x804cb3d:	leave	 []
	leave	
	# 0x804cb3e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cb3f

	# 0x804cb3f:	pushl	%ebp [REG]
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	pushl	%ebp
	# 0x804cb40:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cb42:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cb45:	pushl	$0x80531c0 [IMM <DATAREF>]
	pushl	$default_quoting_options
	# 0x804cb4a:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804cb4c:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cb4f:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cb52:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cb57:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cb5a:	leave	 []
	leave	
	# 0x804cb5b:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cb5c

	# 0x804cb5c:	pushl	%ebp [REG]
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	pushl	%ebp
	# 0x804cb5d:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cb5f:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cb62:	pushl	$0x80531c0 [IMM <DATAREF>]
	pushl	$default_quoting_options
	# 0x804cb67:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cb6a:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cb6d:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cb70:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cb75:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cb78:	leave	 []
	leave	
	# 0x804cb79:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cb7a
	.globl quotearg
	.type quotearg, @function
quotearg:

	# 0x804cb7a:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cb7b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cb7d:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cb80:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cb83:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cb86:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cb88:	calll	0x804cb3f [IMM <CODEREF>]
	calll	quotearg_n
	# 0x804cb8d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cb90:	leave	 []
	leave	
	# 0x804cb91:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cb92
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	# 0x804cb92:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cb93:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cb95:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cb98:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cb9b:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cb9e:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cba1:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cba3:	calll	0x804cb5c [IMM <CODEREF>]
	calll	quotearg_n_mem
	# 0x804cba8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cbab:	leave	 []
	leave	
	# 0x804cbac:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cbad

	# 0x804cbad:	pushl	%ebp [REG]
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	pushl	%ebp
	# 0x804cbae:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cbb0:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804cbb3:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804cbb6:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804cbb9:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804cbbf:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804cbc2:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804cbc4:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cbc7:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cbca:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cbcd:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cbce:	calll	0x804ba16 [IMM <CODEREF>]
	calll	quoting_options_from_style
	# 0x804cbd3:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804cbd6:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cbd9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cbda:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804cbdc:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804cbdf:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cbe2:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cbe7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cbea:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804cbed:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804cbf4:	je	0x804cbfb [IMM <CODEREF>]
	je	.label_507
	# 0x804cbf6:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804cbfb:	leave	 []
.label_507:
	leave	
	# 0x804cbfc:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cbfd

	# 0x804cbfd:	pushl	%ebp [REG]
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	pushl	%ebp
	# 0x804cbfe:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cc00:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804cc03:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804cc06:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804cc09:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804cc0f:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804cc12:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804cc14:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cc17:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cc1a:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cc1d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cc1e:	calll	0x804ba16 [IMM <CODEREF>]
	calll	quoting_options_from_style
	# 0x804cc23:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804cc26:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cc29:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cc2a:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804cc2d:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804cc30:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cc33:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cc38:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cc3b:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804cc3e:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804cc45:	je	0x804cc4c [IMM <CODEREF>]
	je	.label_508
	# 0x804cc47:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804cc4c:	leave	 []
.label_508:
	leave	
	# 0x804cc4d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cc4e
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	# 0x804cc4e:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cc4f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cc51:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cc54:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cc57:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cc5a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cc5d:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cc5f:	calll	0x804cbad [IMM <CODEREF>]
	calll	quotearg_n_style
	# 0x804cc64:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cc67:	leave	 []
	leave	
	# 0x804cc68:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cc69
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	# 0x804cc69:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cc6a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cc6c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cc6f:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cc72:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cc75:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cc78:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cc7a:	calll	0x804cbfd [IMM <CODEREF>]
	calll	quotearg_n_style_mem
	# 0x804cc7f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cc82:	leave	 []
	leave	
	# 0x804cc83:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cc84

	# 0x804cc84:	pushl	%ebp [REG]
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	pushl	%ebp
	# 0x804cc85:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cc87:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804cc8a:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804cc8d:	movl	8(%ebp), %edx [MEM, REG]
	movl	8(%ebp), %edx
	# 0x804cc90:	movl	%edx, -0x4c(%ebp) [REG, MEM]
	movl	%edx, -0x4c(%ebp)
	# 0x804cc93:	movb	%al, -0x50(%ebp) [REG, MEM]
	movb	%al, -0x50(%ebp)
	# 0x804cc96:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804cc9c:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804cc9f:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804cca1:	movl	0x80531c0, %eax [MEM, REG]
	movl	default_quoting_options,  %eax
	# 0x804cca6:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804cca9:	movl	0x80531c4, %eax [MEM, REG]
	movl	label_509,  %eax
	# 0x804ccae:	movl	%eax, -0x38(%ebp) [REG, MEM]
	movl	%eax, -0x38(%ebp)
	# 0x804ccb1:	movl	0x80531c8, %eax [MEM, REG]
	movl	label_510,  %eax
	# 0x804ccb6:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804ccb9:	movl	0x80531cc, %eax [MEM, REG]
	movl	label_511,  %eax
	# 0x804ccbe:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804ccc1:	movl	0x80531d0, %eax [MEM, REG]
	movl	label_512,  %eax
	# 0x804ccc6:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804ccc9:	movl	0x80531d4, %eax [MEM, REG]
	movl	label_513,  %eax
	# 0x804ccce:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804ccd1:	movl	0x80531d8, %eax [MEM, REG]
	movl	label_514,  %eax
	# 0x804ccd6:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804ccd9:	movl	0x80531dc, %eax [MEM, REG]
	movl	label_515,  %eax
	# 0x804ccde:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804cce1:	movl	0x80531e0, %eax [MEM, REG]
	movl	label_516,  %eax
	# 0x804cce6:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804cce9:	movl	0x80531e4, %eax [MEM, REG]
	movl	label_517,  %eax
	# 0x804ccee:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804ccf1:	movl	0x80531e8, %eax [MEM, REG]
	movl	label_518,  %eax
	# 0x804ccf6:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804ccf9:	movl	0x80531ec, %eax [MEM, REG]
	movl	label_519,  %eax
	# 0x804ccfe:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804cd01:	movsbl	-0x50(%ebp), %eax [MEM, REG]
	movsbl	-0x50(%ebp), %eax
	# 0x804cd05:	pushl	$1 [IMM]
	pushl	$1
	# 0x804cd07:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cd08:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cd0b:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cd0c:	calll	0x804b92a [IMM <CODEREF>]
	calll	set_char_quoting
	# 0x804cd11:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804cd14:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cd17:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cd18:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cd1b:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804cd1e:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cd20:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cd25:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cd28:	movl	-0xc(%ebp), %ecx [MEM, REG]
	movl	-0xc(%ebp), %ecx
	# 0x804cd2b:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804cd32:	je	0x804cd39 [IMM <CODEREF>]
	je	.label_520
	# 0x804cd34:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804cd39:	leave	 []
.label_520:
	leave	
	# 0x804cd3a:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cd3b

	# 0x804cd3b:	pushl	%ebp [REG]
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	pushl	%ebp
	# 0x804cd3c:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cd3e:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804cd41:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804cd44:	movb	%al, -0xc(%ebp) [REG, MEM]
	movb	%al, -0xc(%ebp)
	# 0x804cd47:	movsbl	-0xc(%ebp), %eax [MEM, REG]
	movsbl	-0xc(%ebp), %eax
	# 0x804cd4b:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cd4e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cd4f:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804cd51:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cd54:	calll	0x804cc84 [IMM <CODEREF>]
	calll	quotearg_char_mem
	# 0x804cd59:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cd5c:	leave	 []
	leave	
	# 0x804cd5d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cd5e

	# 0x804cd5e:	pushl	%ebp [REG]
	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	pushl	%ebp
	# 0x804cd5f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cd61:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cd64:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cd67:	pushl	$0x3a [IMM]
	pushl	$0x3a
	# 0x804cd69:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cd6c:	calll	0x804cd3b [IMM <CODEREF>]
	calll	quotearg_char
	# 0x804cd71:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cd74:	leave	 []
	leave	
	# 0x804cd75:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cd76
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	# 0x804cd76:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cd77:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cd79:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cd7c:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cd7f:	pushl	$0x3a [IMM]
	pushl	$0x3a
	# 0x804cd81:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cd84:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cd87:	calll	0x804cc84 [IMM <CODEREF>]
	calll	quotearg_char_mem
	# 0x804cd8c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cd8f:	leave	 []
	leave	
	# 0x804cd90:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cd91
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	# 0x804cd91:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cd92:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cd94:	subl	$0x88, %esp [IMM, REG]
	subl	$0x88, %esp
	# 0x804cd9a:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804cd9d:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804cda0:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804cda6:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804cda9:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804cdab:	leal	-0x88(%ebp), %eax [MEM, REG]
	leal	-0x88(%ebp), %eax
	# 0x804cdb1:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cdb4:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cdb7:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cdb8:	calll	0x804ba16 [IMM <CODEREF>]
	calll	quoting_options_from_style
	# 0x804cdbd:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804cdc0:	movl	-0x88(%ebp), %eax [MEM, REG]
	movl	-0x88(%ebp), %eax
	# 0x804cdc6:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804cdc9:	movl	-0x84(%ebp), %eax [MEM, REG]
	movl	-0x84(%ebp), %eax
	# 0x804cdcf:	movl	%eax, -0x38(%ebp) [REG, MEM]
	movl	%eax, -0x38(%ebp)
	# 0x804cdd2:	movl	-0x80(%ebp), %eax [MEM, REG]
	movl	-0x80(%ebp), %eax
	# 0x804cdd5:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804cdd8:	movl	-0x7c(%ebp), %eax [MEM, REG]
	movl	-0x7c(%ebp), %eax
	# 0x804cddb:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804cdde:	movl	-0x78(%ebp), %eax [MEM, REG]
	movl	-0x78(%ebp), %eax
	# 0x804cde1:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804cde4:	movl	-0x74(%ebp), %eax [MEM, REG]
	movl	-0x74(%ebp), %eax
	# 0x804cde7:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804cdea:	movl	-0x70(%ebp), %eax [MEM, REG]
	movl	-0x70(%ebp), %eax
	# 0x804cded:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804cdf0:	movl	-0x6c(%ebp), %eax [MEM, REG]
	movl	-0x6c(%ebp), %eax
	# 0x804cdf3:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804cdf6:	movl	-0x68(%ebp), %eax [MEM, REG]
	movl	-0x68(%ebp), %eax
	# 0x804cdf9:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804cdfc:	movl	-0x64(%ebp), %eax [MEM, REG]
	movl	-0x64(%ebp), %eax
	# 0x804cdff:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804ce02:	movl	-0x60(%ebp), %eax [MEM, REG]
	movl	-0x60(%ebp), %eax
	# 0x804ce05:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804ce08:	movl	-0x5c(%ebp), %eax [MEM, REG]
	movl	-0x5c(%ebp), %eax
	# 0x804ce0b:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804ce0e:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ce11:	pushl	$1 [IMM]
	pushl	$1
	# 0x804ce13:	pushl	$0x3a [IMM]
	pushl	$0x3a
	# 0x804ce15:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804ce18:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ce19:	calll	0x804b92a [IMM <CODEREF>]
	calll	set_char_quoting
	# 0x804ce1e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ce21:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804ce24:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ce25:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804ce27:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804ce2a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804ce2d:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804ce32:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ce35:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804ce38:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804ce3f:	je	0x804ce46 [IMM <CODEREF>]
	je	.label_521
	# 0x804ce41:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804ce46:	leave	 []
.label_521:
	leave	
	# 0x804ce47:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ce48

	# 0x804ce48:	pushl	%ebp [REG]
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	pushl	%ebp
	# 0x804ce49:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ce4b:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804ce4e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804ce51:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804ce53:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804ce56:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804ce59:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804ce5c:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804ce5f:	calll	0x804ce69 [IMM <CODEREF>]
	calll	quotearg_n_custom_mem
	# 0x804ce64:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804ce67:	leave	 []
	leave	
	# 0x804ce68:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ce69

	# 0x804ce69:	pushl	%ebp [REG]
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	pushl	%ebp
	# 0x804ce6a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ce6c:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804ce6f:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804ce72:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804ce75:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804ce78:	movl	%eax, -0x50(%ebp) [REG, MEM]
	movl	%eax, -0x50(%ebp)
	# 0x804ce7b:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804ce7e:	movl	%eax, -0x54(%ebp) [REG, MEM]
	movl	%eax, -0x54(%ebp)
	# 0x804ce81:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804ce87:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804ce8a:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804ce8c:	movl	0x80531c0, %eax [MEM, REG]
	movl	default_quoting_options,  %eax
	# 0x804ce91:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804ce94:	movl	0x80531c4, %eax [MEM, REG]
	movl	label_509,  %eax
	# 0x804ce99:	movl	%eax, -0x38(%ebp) [REG, MEM]
	movl	%eax, -0x38(%ebp)
	# 0x804ce9c:	movl	0x80531c8, %eax [MEM, REG]
	movl	label_510,  %eax
	# 0x804cea1:	movl	%eax, -0x34(%ebp) [REG, MEM]
	movl	%eax, -0x34(%ebp)
	# 0x804cea4:	movl	0x80531cc, %eax [MEM, REG]
	movl	label_511,  %eax
	# 0x804cea9:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804ceac:	movl	0x80531d0, %eax [MEM, REG]
	movl	label_512,  %eax
	# 0x804ceb1:	movl	%eax, -0x2c(%ebp) [REG, MEM]
	movl	%eax, -0x2c(%ebp)
	# 0x804ceb4:	movl	0x80531d4, %eax [MEM, REG]
	movl	label_513,  %eax
	# 0x804ceb9:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804cebc:	movl	0x80531d8, %eax [MEM, REG]
	movl	label_514,  %eax
	# 0x804cec1:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804cec4:	movl	0x80531dc, %eax [MEM, REG]
	movl	label_515,  %eax
	# 0x804cec9:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804cecc:	movl	0x80531e0, %eax [MEM, REG]
	movl	label_516,  %eax
	# 0x804ced1:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804ced4:	movl	0x80531e4, %eax [MEM, REG]
	movl	label_517,  %eax
	# 0x804ced9:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804cedc:	movl	0x80531e8, %eax [MEM, REG]
	movl	label_518,  %eax
	# 0x804cee1:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804cee4:	movl	0x80531ec, %eax [MEM, REG]
	movl	label_519,  %eax
	# 0x804cee9:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804ceec:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ceef:	pushl	-0x50(%ebp) [MEM]
	pushl	-0x50(%ebp)
	# 0x804cef2:	pushl	-0x4c(%ebp) [MEM]
	pushl	-0x4c(%ebp)
	# 0x804cef5:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cef8:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cef9:	calll	0x804b9d4 [IMM <CODEREF>]
	calll	set_custom_quoting
	# 0x804cefe:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cf01:	leal	-0x3c(%ebp), %eax [MEM, REG]
	leal	-0x3c(%ebp), %eax
	# 0x804cf04:	pushl	%eax [REG]
	pushl	%eax
	# 0x804cf05:	pushl	0x18(%ebp) [MEM]
	pushl	0x18(%ebp)
	# 0x804cf08:	pushl	-0x54(%ebp) [MEM]
	pushl	-0x54(%ebp)
	# 0x804cf0b:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cf0e:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cf13:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cf16:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804cf19:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804cf20:	je	0x804cf27 [IMM <CODEREF>]
	je	.label_522
	# 0x804cf22:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804cf27:	leave	 []
.label_522:
	leave	
	# 0x804cf28:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cf29
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	# 0x804cf29:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cf2a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cf2c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cf2f:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cf32:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cf35:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cf38:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cf3a:	calll	0x804ce48 [IMM <CODEREF>]
	calll	quotearg_n_custom
	# 0x804cf3f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cf42:	leave	 []
	leave	
	# 0x804cf43:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cf44
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	# 0x804cf44:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cf45:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cf47:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cf4a:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804cf4d:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804cf50:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cf53:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cf56:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cf59:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cf5b:	calll	0x804ce69 [IMM <CODEREF>]
	calll	quotearg_n_custom_mem
	# 0x804cf60:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804cf63:	leave	 []
	leave	
	# 0x804cf64:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cf65

	# 0x804cf65:	pushl	%ebp [REG]
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	pushl	%ebp
	# 0x804cf66:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cf68:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cf6b:	pushl	$0x8053140 [IMM <DATAREF>]
	pushl	$quote_quoting_options
	# 0x804cf70:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804cf73:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cf76:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cf79:	calll	0x804c940 [IMM <CODEREF>]
	calll	quotearg_n_options
	# 0x804cf7e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cf81:	leave	 []
	leave	
	# 0x804cf82:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cf83
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	# 0x804cf83:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cf84:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cf86:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cf89:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cf8c:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cf8f:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cf92:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cf94:	calll	0x804cf65 [IMM <CODEREF>]
	calll	quote_n_mem
	# 0x804cf99:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cf9c:	leave	 []
	leave	
	# 0x804cf9d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cf9e

	# 0x804cf9e:	pushl	%ebp [REG]
	.globl quote_n
	.type quote_n, @function
quote_n:
	pushl	%ebp
	# 0x804cf9f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cfa1:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cfa4:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cfa7:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804cfa9:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cfac:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cfaf:	calll	0x804cf65 [IMM <CODEREF>]
	calll	quote_n_mem
	# 0x804cfb4:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cfb7:	leave	 []
	leave	
	# 0x804cfb8:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cfb9
	.globl quote
	.type quote, @function
quote:

	# 0x804cfb9:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804cfba:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cfbc:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cfbf:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804cfc2:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cfc5:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cfc7:	calll	0x804cf9e [IMM <CODEREF>]
	calll	quote_n
	# 0x804cfcc:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cfcf:	leave	 []
	leave	
	# 0x804cfd0:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804cfd1

	# 0x804cfd1:	pushl	%ebp [REG]
	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	pushl	%ebp
	# 0x804cfd2:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804cfd4:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804cfd7:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804cfda:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804cfdd:	pushl	$0 [IMM]
	pushl	$0
	# 0x804cfdf:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804cfe2:	calll	0x8048ee0 [IMM <CODEREF>]
	calll	memchr
	# 0x804cfe7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804cfea:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804cfed:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804cff1:	je	0x804d002 [IMM <CODEREF>]
	je	.label_524
	# 0x804cff3:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804cff6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804cff9:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804cffb:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804cffd:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804d000:	jmp	0x804d005 [IMM <CODEREF>]
	jmp	.label_523
	# 0x804d002:	movl	0xc(%ebp), %eax [MEM, REG]
.label_524:
	movl	0xc(%ebp), %eax
	# 0x804d005:	leave	 []
.label_523:
	leave	
	# 0x804d006:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d007

	# 0x804d007:	pushl	%ebp [REG]
	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	pushl	%ebp
	# 0x804d008:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804d00a:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804d00d:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804d010:	movb	%al, -4(%ebp) [REG, MEM]
	movb	%al, -4(%ebp)
	# 0x804d013:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d016:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d019:	cmpb	-4(%ebp), %al [MEM, REG]
	cmpb	-4(%ebp), %al
	# 0x804d01c:	jne	0x804d0cc [IMM <CODEREF>]
	jne	.label_526
	# 0x804d022:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d025:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d028:	cmpb	-4(%ebp), %al [MEM, REG]
	cmpb	-4(%ebp), %al
	# 0x804d02b:	jne	0x804d0cc [IMM <CODEREF>]
	jne	.label_526
	# 0x804d031:	jmp	0x804d04e [IMM <CODEREF>]
	jmp	.label_536
	# 0x804d033:	movl	8(%ebp), %eax [MEM, REG]
.label_528:
	movl	8(%ebp), %eax
	# 0x804d036:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d039:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d03c:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d03f:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d042:	jbe	0x804d04e [IMM <CODEREF>]
	jbe	.label_536
	# 0x804d044:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804d049:	jmp	0x804d149 [IMM <CODEREF>]
	jmp	.label_525
	# 0x804d04e:	addl	$1, 8(%ebp) [IMM, MEM]
.label_536:
	addl	$1, 8(%ebp)
	# 0x804d052:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d055:	movzbl	0(%eax), %edx [MEM, REG]
	movzbl	0(%eax), %edx
	# 0x804d058:	addl	$1, 0xc(%ebp) [IMM, MEM]
	addl	$1, 0xc(%ebp)
	# 0x804d05c:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d05f:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d062:	cmpb	%al, %dl [REG, REG]
	cmpb	%al, %dl
	# 0x804d064:	je	0x804d033 [IMM <CODEREF>]
	je	.label_528
	# 0x804d066:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d069:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d06c:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d06f:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d072:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d075:	ja	0x804d0a3 [IMM <CODEREF>]
	ja	.label_534
	# 0x804d077:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d07a:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d07d:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d080:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d083:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d086:	ja	0x804d0a3 [IMM <CODEREF>]
	ja	.label_534
	# 0x804d088:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d08b:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d08e:	movsbl	%al, %edx [REG, REG]
	movsbl	%al, %edx
	# 0x804d091:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d094:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d097:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d09a:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804d09c:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804d09e:	jmp	0x804d149 [IMM <CODEREF>]
	jmp	.label_525
	# 0x804d0a3:	movl	8(%ebp), %eax [MEM, REG]
.label_534:
	movl	8(%ebp), %eax
	# 0x804d0a6:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d0a9:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d0ac:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d0af:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d0b2:	jbe	0x804d0df [IMM <CODEREF>]
	jbe	.label_532
	# 0x804d0b4:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d0b7:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d0ba:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d0bd:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d0c0:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d0c3:	jbe	0x804d11a [IMM <CODEREF>]
	jbe	.label_537
	# 0x804d0c5:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804d0ca:	jmp	0x804d149 [IMM <CODEREF>]
	jmp	.label_525
	# 0x804d0cc:	movl	8(%ebp), %eax [MEM, REG]
.label_526:
	movl	8(%ebp), %eax
	# 0x804d0cf:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804d0d2:	movl	%edx, 8(%ebp) [REG, MEM]
	movl	%edx, 8(%ebp)
	# 0x804d0d5:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d0d8:	cmpb	-4(%ebp), %al [MEM, REG]
	cmpb	-4(%ebp), %al
	# 0x804d0db:	jne	0x804d107 [IMM <CODEREF>]
	jne	.label_527
	# 0x804d0dd:	jmp	0x804d0e6 [IMM <CODEREF>]
	jmp	.label_530
	# 0x804d0df:	nop	 []
.label_532:
	nop	
	# 0x804d0e0:	jmp	0x804d0e6 [IMM <CODEREF>]
	jmp	.label_530
	# 0x804d0e2:	addl	$1, 8(%ebp) [IMM, MEM]
.label_533:
	addl	$1, 8(%ebp)
	# 0x804d0e6:	movl	8(%ebp), %eax [MEM, REG]
.label_530:
	movl	8(%ebp), %eax
	# 0x804d0e9:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d0ec:	cmpb	$0x30, %al [IMM, REG]
	cmpb	$0x30, %al
	# 0x804d0ee:	je	0x804d0e2 [IMM <CODEREF>]
	je	.label_533
	# 0x804d0f0:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d0f3:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d0f6:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d0f9:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d0fc:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d0ff:	setbe	%al [REG]
	setbe	%al
	# 0x804d102:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804d105:	jmp	0x804d149 [IMM <CODEREF>]
	jmp	.label_525
	# 0x804d107:	movl	0xc(%ebp), %eax [MEM, REG]
.label_527:
	movl	0xc(%ebp), %eax
	# 0x804d10a:	leal	1(%eax), %edx [MEM, REG]
	leal	1(%eax), %edx
	# 0x804d10d:	movl	%edx, 0xc(%ebp) [REG, MEM]
	movl	%edx, 0xc(%ebp)
	# 0x804d110:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d113:	cmpb	-4(%ebp), %al [MEM, REG]
	cmpb	-4(%ebp), %al
	# 0x804d116:	jne	0x804d144 [IMM <CODEREF>]
	jne	.label_535
	# 0x804d118:	jmp	0x804d121 [IMM <CODEREF>]
	jmp	.label_529
	# 0x804d11a:	nop	 []
.label_537:
	nop	
	# 0x804d11b:	jmp	0x804d121 [IMM <CODEREF>]
	jmp	.label_529
	# 0x804d11d:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_531:
	addl	$1, 0xc(%ebp)
	# 0x804d121:	movl	0xc(%ebp), %eax [MEM, REG]
.label_529:
	movl	0xc(%ebp), %eax
	# 0x804d124:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d127:	cmpb	$0x30, %al [IMM, REG]
	cmpb	$0x30, %al
	# 0x804d129:	je	0x804d11d [IMM <CODEREF>]
	je	.label_531
	# 0x804d12b:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d12e:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d131:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d134:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d137:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d13a:	setbe	%al [REG]
	setbe	%al
	# 0x804d13d:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804d140:	negl	%eax [REG]
	negl	%eax
	# 0x804d142:	jmp	0x804d149 [IMM <CODEREF>]
	jmp	.label_525
	# 0x804d144:	movl	$0, %eax [IMM, REG]
.label_535:
	movl	$0, %eax
	# 0x804d149:	leave	 []
.label_525:
	leave	
	# 0x804d14a:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d14b

	# 0x804d14b:	pushl	%ebp [REG]
	.globl numcompare
	.type numcompare, @function
numcompare:
	pushl	%ebp
	# 0x804d14c:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804d14e:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x804d151:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d154:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d157:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d15a:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d15d:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d160:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d163:	cmpb	$0x2d, -0xe(%ebp) [IMM, MEM]
	cmpb	$0x2d, -0xe(%ebp)
	# 0x804d167:	jne	0x804d360 [IMM <CODEREF>]
	jne	.label_555
	# 0x804d16d:	addl	$1, 8(%ebp) [IMM, MEM]
.label_561:
	addl	$1, 8(%ebp)
	# 0x804d171:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d174:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d177:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d17a:	cmpb	$0x30, -0xe(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xe(%ebp)
	# 0x804d17e:	je	0x804d16d [IMM <CODEREF>]
	je	.label_561
	# 0x804d180:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d184:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d187:	je	0x804d16d [IMM <CODEREF>]
	je	.label_561
	# 0x804d189:	cmpb	$0x2d, -0xd(%ebp) [IMM, MEM]
	cmpb	$0x2d, -0xd(%ebp)
	# 0x804d18d:	je	0x804d214 [IMM <CODEREF>]
	je	.label_542
	# 0x804d193:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d197:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d19a:	jne	0x804d1af [IMM <CODEREF>]
	jne	.label_571
	# 0x804d19c:	addl	$1, 8(%ebp) [IMM, MEM]
.label_573:
	addl	$1, 8(%ebp)
	# 0x804d1a0:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d1a3:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d1a6:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d1a9:	cmpb	$0x30, -0xe(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xe(%ebp)
	# 0x804d1ad:	je	0x804d19c [IMM <CODEREF>]
	je	.label_573
	# 0x804d1af:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_571:
	movzbl	-0xe(%ebp), %eax
	# 0x804d1b3:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d1b6:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d1b9:	ja	0x804d1d2 [IMM <CODEREF>]
	ja	.label_543
	# 0x804d1bb:	movl	$0xffffffff, %eax [IMM, REG]
	movl	$0xffffffff, %eax
	# 0x804d1c0:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d1c5:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_580:
	addl	$1, 0xc(%ebp)
	# 0x804d1c9:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d1cc:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d1cf:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d1d2:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
.label_543:
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d1d6:	je	0x804d1c5 [IMM <CODEREF>]
	je	.label_580
	# 0x804d1d8:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d1dc:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d1df:	je	0x804d1c5 [IMM <CODEREF>]
	je	.label_580
	# 0x804d1e1:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d1e5:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d1e8:	jne	0x804d1fd [IMM <CODEREF>]
	jne	.label_584
	# 0x804d1ea:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_585:
	addl	$1, 0xc(%ebp)
	# 0x804d1ee:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d1f1:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d1f4:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d1f7:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d1fb:	je	0x804d1ea [IMM <CODEREF>]
	je	.label_585
	# 0x804d1fd:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_584:
	movzbl	-0xd(%ebp), %eax
	# 0x804d201:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d204:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d207:	setbe	%al [REG]
	setbe	%al
	# 0x804d20a:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804d20d:	negl	%eax [REG]
	negl	%eax
	# 0x804d20f:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d214:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_542:
	addl	$1, 0xc(%ebp)
	# 0x804d218:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d21b:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d21e:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d221:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d225:	je	0x804d214 [IMM <CODEREF>]
	je	.label_542
	# 0x804d227:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d22b:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d22e:	je	0x804d214 [IMM <CODEREF>]
	je	.label_542
	# 0x804d230:	jmp	0x804d25e [IMM <CODEREF>]
	jmp	.label_550
	# 0x804d232:	addl	$1, 8(%ebp) [IMM, MEM]
.label_548:
	addl	$1, 8(%ebp)
	# 0x804d236:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d239:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d23c:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d23f:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d243:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d246:	je	0x804d232 [IMM <CODEREF>]
	je	.label_548
	# 0x804d248:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_575:
	addl	$1, 0xc(%ebp)
	# 0x804d24c:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d24f:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d252:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d255:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d259:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d25c:	je	0x804d248 [IMM <CODEREF>]
	je	.label_575
	# 0x804d25e:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_550:
	movzbl	-0xe(%ebp), %eax
	# 0x804d262:	cmpb	-0xd(%ebp), %al [MEM, REG]
	cmpb	-0xd(%ebp), %al
	# 0x804d265:	jne	0x804d273 [IMM <CODEREF>]
	jne	.label_558
	# 0x804d267:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d26b:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d26e:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d271:	jbe	0x804d232 [IMM <CODEREF>]
	jbe	.label_548
	# 0x804d273:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_558:
	movzbl	-0xe(%ebp), %eax
	# 0x804d277:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d27a:	jne	0x804d288 [IMM <CODEREF>]
	jne	.label_564
	# 0x804d27c:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d280:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d283:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d286:	ja	0x804d29d [IMM <CODEREF>]
	ja	.label_565
	# 0x804d288:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_564:
	movzbl	-0xd(%ebp), %eax
	# 0x804d28c:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d28f:	jne	0x804d2b7 [IMM <CODEREF>]
	jne	.label_568
	# 0x804d291:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d295:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d298:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d29b:	jbe	0x804d2b7 [IMM <CODEREF>]
	jbe	.label_568
	# 0x804d29d:	movl	0x10(%ebp), %eax [MEM, REG]
.label_565:
	movl	0x10(%ebp), %eax
	# 0x804d2a0:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d2a3:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d2a4:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d2a7:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804d2aa:	calll	0x804d007 [IMM <CODEREF>]
	calll	fraccompare
	# 0x804d2af:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804d2b2:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d2b7:	movzbl	-0xd(%ebp), %edx [MEM, REG]
.label_568:
	movzbl	-0xd(%ebp), %edx
	# 0x804d2bb:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d2bf:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804d2c1:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804d2c3:	movl	%eax, -4(%ebp) [REG, MEM]
	movl	%eax, -4(%ebp)
	# 0x804d2c6:	movl	$0, -0xc(%ebp) [IMM, MEM]
	movl	$0, -0xc(%ebp)
	# 0x804d2cd:	jmp	0x804d2e9 [IMM <CODEREF>]
	jmp	.label_576
	# 0x804d2cf:	addl	$1, 8(%ebp) [IMM, MEM]
.label_579:
	addl	$1, 8(%ebp)
	# 0x804d2d3:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d2d6:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d2d9:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d2dc:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d2e0:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d2e3:	je	0x804d2cf [IMM <CODEREF>]
	je	.label_579
	# 0x804d2e5:	addl	$1, -0xc(%ebp) [IMM, MEM]
	addl	$1, -0xc(%ebp)
	# 0x804d2e9:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_576:
	movzbl	-0xe(%ebp), %eax
	# 0x804d2ed:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d2f0:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d2f3:	jbe	0x804d2cf [IMM <CODEREF>]
	jbe	.label_579
	# 0x804d2f5:	movl	$0, -8(%ebp) [IMM, MEM]
	movl	$0, -8(%ebp)
	# 0x804d2fc:	jmp	0x804d318 [IMM <CODEREF>]
	jmp	.label_586
	# 0x804d2fe:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_562:
	addl	$1, 0xc(%ebp)
	# 0x804d302:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d305:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d308:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d30b:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d30f:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d312:	je	0x804d2fe [IMM <CODEREF>]
	je	.label_562
	# 0x804d314:	addl	$1, -8(%ebp) [IMM, MEM]
	addl	$1, -8(%ebp)
	# 0x804d318:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_586:
	movzbl	-0xd(%ebp), %eax
	# 0x804d31c:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d31f:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d322:	jbe	0x804d2fe [IMM <CODEREF>]
	jbe	.label_562
	# 0x804d324:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804d327:	cmpl	-8(%ebp), %eax [MEM, REG]
	cmpl	-8(%ebp), %eax
	# 0x804d32a:	je	0x804d348 [IMM <CODEREF>]
	je	.label_545
	# 0x804d32c:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804d32f:	cmpl	-8(%ebp), %eax [MEM, REG]
	cmpl	-8(%ebp), %eax
	# 0x804d332:	jae	0x804d33e [IMM <CODEREF>]
	jae	.label_546
	# 0x804d334:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804d339:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d33e:	movl	$0xffffffff, %eax [IMM, REG]
.label_546:
	movl	$0xffffffff, %eax
	# 0x804d343:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d348:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
.label_545:
	cmpl	$0, -0xc(%ebp)
	# 0x804d34c:	jne	0x804d358 [IMM <CODEREF>]
	jne	.label_554
	# 0x804d34e:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804d353:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d358:	movl	-4(%ebp), %eax [MEM, REG]
.label_554:
	movl	-4(%ebp), %eax
	# 0x804d35b:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d360:	cmpb	$0x2d, -0xd(%ebp) [IMM, MEM]
.label_555:
	cmpb	$0x2d, -0xd(%ebp)
	# 0x804d364:	jne	0x804d412 [IMM <CODEREF>]
	jne	.label_559
	# 0x804d36a:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_560:
	addl	$1, 0xc(%ebp)
	# 0x804d36e:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d371:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d374:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d377:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d37b:	je	0x804d36a [IMM <CODEREF>]
	je	.label_560
	# 0x804d37d:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d381:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d384:	je	0x804d36a [IMM <CODEREF>]
	je	.label_560
	# 0x804d386:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d38a:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d38d:	jne	0x804d3a2 [IMM <CODEREF>]
	jne	.label_567
	# 0x804d38f:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_570:
	addl	$1, 0xc(%ebp)
	# 0x804d393:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d396:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d399:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d39c:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d3a0:	je	0x804d38f [IMM <CODEREF>]
	je	.label_570
	# 0x804d3a2:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_567:
	movzbl	-0xd(%ebp), %eax
	# 0x804d3a6:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d3a9:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d3ac:	ja	0x804d3c5 [IMM <CODEREF>]
	ja	.label_574
	# 0x804d3ae:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804d3b3:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d3b8:	addl	$1, 8(%ebp) [IMM, MEM]
.label_577:
	addl	$1, 8(%ebp)
	# 0x804d3bc:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d3bf:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d3c2:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d3c5:	cmpb	$0x30, -0xe(%ebp) [IMM, MEM]
.label_574:
	cmpb	$0x30, -0xe(%ebp)
	# 0x804d3c9:	je	0x804d3b8 [IMM <CODEREF>]
	je	.label_577
	# 0x804d3cb:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d3cf:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d3d2:	je	0x804d3b8 [IMM <CODEREF>]
	je	.label_577
	# 0x804d3d4:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d3d8:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d3db:	jne	0x804d3f0 [IMM <CODEREF>]
	jne	.label_581
	# 0x804d3dd:	addl	$1, 8(%ebp) [IMM, MEM]
.label_582:
	addl	$1, 8(%ebp)
	# 0x804d3e1:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d3e4:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d3e7:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d3ea:	cmpb	$0x30, -0xe(%ebp) [IMM, MEM]
	cmpb	$0x30, -0xe(%ebp)
	# 0x804d3ee:	je	0x804d3dd [IMM <CODEREF>]
	je	.label_582
	# 0x804d3f0:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_581:
	movzbl	-0xe(%ebp), %eax
	# 0x804d3f4:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d3f7:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d3fa:	setbe	%al [REG]
	setbe	%al
	# 0x804d3fd:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804d400:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d405:	addl	$1, 8(%ebp) [IMM, MEM]
.label_541:
	addl	$1, 8(%ebp)
	# 0x804d409:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d40c:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d40f:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d412:	cmpb	$0x30, -0xe(%ebp) [IMM, MEM]
.label_559:
	cmpb	$0x30, -0xe(%ebp)
	# 0x804d416:	je	0x804d405 [IMM <CODEREF>]
	je	.label_541
	# 0x804d418:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d41c:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d41f:	je	0x804d405 [IMM <CODEREF>]
	je	.label_541
	# 0x804d421:	jmp	0x804d430 [IMM <CODEREF>]
	jmp	.label_544
	# 0x804d423:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_547:
	addl	$1, 0xc(%ebp)
	# 0x804d427:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d42a:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d42d:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d430:	cmpb	$0x30, -0xd(%ebp) [IMM, MEM]
.label_544:
	cmpb	$0x30, -0xd(%ebp)
	# 0x804d434:	je	0x804d423 [IMM <CODEREF>]
	je	.label_547
	# 0x804d436:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d43a:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d43d:	je	0x804d423 [IMM <CODEREF>]
	je	.label_547
	# 0x804d43f:	jmp	0x804d46d [IMM <CODEREF>]
	jmp	.label_552
	# 0x804d441:	addl	$1, 8(%ebp) [IMM, MEM]
.label_553:
	addl	$1, 8(%ebp)
	# 0x804d445:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d448:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d44b:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d44e:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d452:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d455:	je	0x804d441 [IMM <CODEREF>]
	je	.label_553
	# 0x804d457:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_557:
	addl	$1, 0xc(%ebp)
	# 0x804d45b:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d45e:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d461:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d464:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d468:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d46b:	je	0x804d457 [IMM <CODEREF>]
	je	.label_557
	# 0x804d46d:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_552:
	movzbl	-0xe(%ebp), %eax
	# 0x804d471:	cmpb	-0xd(%ebp), %al [MEM, REG]
	cmpb	-0xd(%ebp), %al
	# 0x804d474:	jne	0x804d482 [IMM <CODEREF>]
	jne	.label_563
	# 0x804d476:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d47a:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d47d:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d480:	jbe	0x804d441 [IMM <CODEREF>]
	jbe	.label_553
	# 0x804d482:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_563:
	movzbl	-0xe(%ebp), %eax
	# 0x804d486:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d489:	jne	0x804d497 [IMM <CODEREF>]
	jne	.label_566
	# 0x804d48b:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d48f:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d492:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d495:	ja	0x804d4ac [IMM <CODEREF>]
	ja	.label_569
	# 0x804d497:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_566:
	movzbl	-0xd(%ebp), %eax
	# 0x804d49b:	cmpl	0x10(%ebp), %eax [MEM, REG]
	cmpl	0x10(%ebp), %eax
	# 0x804d49e:	jne	0x804d4c6 [IMM <CODEREF>]
	jne	.label_572
	# 0x804d4a0:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d4a4:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d4a7:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d4aa:	jbe	0x804d4c6 [IMM <CODEREF>]
	jbe	.label_572
	# 0x804d4ac:	movl	0x10(%ebp), %eax [MEM, REG]
.label_569:
	movl	0x10(%ebp), %eax
	# 0x804d4af:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804d4b2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d4b3:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804d4b6:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d4b9:	calll	0x804d007 [IMM <CODEREF>]
	calll	fraccompare
	# 0x804d4be:	addl	$0xc, %esp [IMM, REG]
	addl	$0xc, %esp
	# 0x804d4c1:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d4c6:	movzbl	-0xe(%ebp), %edx [MEM, REG]
.label_572:
	movzbl	-0xe(%ebp), %edx
	# 0x804d4ca:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d4ce:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804d4d0:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804d4d2:	movl	%eax, -4(%ebp) [REG, MEM]
	movl	%eax, -4(%ebp)
	# 0x804d4d5:	movl	$0, -0xc(%ebp) [IMM, MEM]
	movl	$0, -0xc(%ebp)
	# 0x804d4dc:	jmp	0x804d4f8 [IMM <CODEREF>]
	jmp	.label_578
	# 0x804d4de:	addl	$1, 8(%ebp) [IMM, MEM]
.label_583:
	addl	$1, 8(%ebp)
	# 0x804d4e2:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804d4e5:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d4e8:	movb	%al, -0xe(%ebp) [REG, MEM]
	movb	%al, -0xe(%ebp)
	# 0x804d4eb:	movzbl	-0xe(%ebp), %eax [MEM, REG]
	movzbl	-0xe(%ebp), %eax
	# 0x804d4ef:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d4f2:	je	0x804d4de [IMM <CODEREF>]
	je	.label_583
	# 0x804d4f4:	addl	$1, -0xc(%ebp) [IMM, MEM]
	addl	$1, -0xc(%ebp)
	# 0x804d4f8:	movzbl	-0xe(%ebp), %eax [MEM, REG]
.label_578:
	movzbl	-0xe(%ebp), %eax
	# 0x804d4fc:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d4ff:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d502:	jbe	0x804d4de [IMM <CODEREF>]
	jbe	.label_583
	# 0x804d504:	movl	$0, -8(%ebp) [IMM, MEM]
	movl	$0, -8(%ebp)
	# 0x804d50b:	jmp	0x804d527 [IMM <CODEREF>]
	jmp	.label_538
	# 0x804d50d:	addl	$1, 0xc(%ebp) [IMM, MEM]
.label_540:
	addl	$1, 0xc(%ebp)
	# 0x804d511:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804d514:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804d517:	movb	%al, -0xd(%ebp) [REG, MEM]
	movb	%al, -0xd(%ebp)
	# 0x804d51a:	movzbl	-0xd(%ebp), %eax [MEM, REG]
	movzbl	-0xd(%ebp), %eax
	# 0x804d51e:	cmpl	0x14(%ebp), %eax [MEM, REG]
	cmpl	0x14(%ebp), %eax
	# 0x804d521:	je	0x804d50d [IMM <CODEREF>]
	je	.label_540
	# 0x804d523:	addl	$1, -8(%ebp) [IMM, MEM]
	addl	$1, -8(%ebp)
	# 0x804d527:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_538:
	movzbl	-0xd(%ebp), %eax
	# 0x804d52b:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804d52e:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804d531:	jbe	0x804d50d [IMM <CODEREF>]
	jbe	.label_540
	# 0x804d533:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804d536:	cmpl	-8(%ebp), %eax [MEM, REG]
	cmpl	-8(%ebp), %eax
	# 0x804d539:	je	0x804d551 [IMM <CODEREF>]
	je	.label_549
	# 0x804d53b:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804d53e:	cmpl	-8(%ebp), %eax [MEM, REG]
	cmpl	-8(%ebp), %eax
	# 0x804d541:	jae	0x804d54a [IMM <CODEREF>]
	jae	.label_551
	# 0x804d543:	movl	$0xffffffff, %eax [IMM, REG]
	movl	$0xffffffff, %eax
	# 0x804d548:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d54a:	movl	$1, %eax [IMM, REG]
.label_551:
	movl	$1, %eax
	# 0x804d54f:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d551:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
.label_549:
	cmpl	$0, -0xc(%ebp)
	# 0x804d555:	jne	0x804d55e [IMM <CODEREF>]
	jne	.label_556
	# 0x804d557:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804d55c:	jmp	0x804d561 [IMM <CODEREF>]
	jmp	.label_539
	# 0x804d55e:	movl	-4(%ebp), %eax [MEM, REG]
.label_556:
	movl	-4(%ebp), %eax
	# 0x804d561:	leave	 []
.label_539:
	leave	
	# 0x804d562:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d563

	# 0x804d563:	pushl	%ebp [REG]
	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	pushl	%ebp
	# 0x804d564:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804d566:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804d568:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804d56a:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804d56d:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d570:	calll	0x804d14b [IMM <CODEREF>]
	calll	numcompare
	# 0x804d575:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d578:	leave	 []
	leave	
	# 0x804d579:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d57a

	# 0x804d57a:	pushl	%ebp [REG]
	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	pushl	%ebp
	# 0x804d57b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804d57d:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d57e:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d57f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d580:	subl	$0x2c, %esp [IMM, REG]
	subl	$0x2c, %esp
	# 0x804d583:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804d587:	je	0x804d5a7 [IMM <CODEREF>]
	je	.label_590
	# 0x804d589:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d58c:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804d58f:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804d592:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804d595:	pushl	$0x804ff54 [IMM <DATAREF>]
	pushl	$label_588
	# 0x804d59a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d59d:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d5a2:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804d5a5:	jmp	0x804d5bd [IMM <CODEREF>]
	jmp	.label_592
	# 0x804d5a7:	pushl	0x14(%ebp) [MEM]
.label_590:
	pushl	0x14(%ebp)
	# 0x804d5aa:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804d5ad:	pushl	$0x804ff60 [IMM <DATAREF>]
	pushl	$label_593
	# 0x804d5b2:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d5b5:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d5ba:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d5bd:	subl	$0xc, %esp [IMM, REG]
.label_592:
	subl	$0xc, %esp
	# 0x804d5c0:	pushl	$0x804ff67 [IMM <DATAREF>]
	pushl	$label_594
	# 0x804d5c5:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d5ca:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d5cd:	pushl	$0x7e2 [IMM]
	pushl	$0x7e2
	# 0x804d5d2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d5d3:	pushl	$0x80502a0 [IMM <DATAREF>]
	pushl	$version_etc_copyright
	# 0x804d5d8:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d5db:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d5e0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d5e3:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d5e6:	pushl	$0x804ff6c [IMM <DATAREF>]
	pushl	$label_591
	# 0x804d5eb:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d5f0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d5f3:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804d5f6:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d5f9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d5fa:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x804d5ff:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d602:	cmpl	$9, 0x1c(%ebp) [IMM, MEM]
	cmpl	$9, 0x1c(%ebp)
	# 0x804d606:	ja	0x804d941 [IMM <CODEREF>]
	ja	.label_595
	# 0x804d60c:	movl	0x1c(%ebp), %eax [MEM, REG]
	movl	0x1c(%ebp), %eax
	# 0x804d60f:	shll	$2, %eax [IMM, REG]
	shll	$2, %eax
	# 0x804d612:	addl	$0x80501b4, %eax [IMM <DATAREF>, REG]
	addl	$label_589,  %eax
	# 0x804d617:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d619:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804d61b:	calll	0x8048f80 [IMM <CODEREF>]
.label_878:
	calll	abort
	# 0x804d620:	movl	0x18(%ebp), %eax [MEM, REG]
.label_879:
	movl	0x18(%ebp), %eax
	# 0x804d623:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d625
	.globl sub_804d625
	.type sub_804d625, @function
sub_804d625:

	# 0x804d625:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d628:	pushl	$0x8050038 [IMM <DATAREF>]
	pushl	$label_597
	# 0x804d62d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d632:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d635:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804d638:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d639:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d63a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d63d:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d642:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d645:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d64a:	movl	0x18(%ebp), %eax [MEM, REG]
.label_880:
	movl	0x18(%ebp), %eax
	# 0x804d64d:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d650:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d652:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d655:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d657
	.globl sub_804d657
	.type sub_804d657, @function
sub_804d657:

	# 0x804d657:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d65a:	pushl	$0x8050048 [IMM <DATAREF>]
	pushl	$label_598
	# 0x804d65f:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d664:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d667:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d668:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d669:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d66a:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d66d:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d672:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d675:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d67a:	movl	0x18(%ebp), %eax [MEM, REG]
.label_881:
	movl	0x18(%ebp), %eax
	# 0x804d67d:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d680:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d682:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d685:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d688:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d68a:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d68d:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d68f
	.globl sub_804d68f
	.type sub_804d68f, @function
sub_804d68f:

	# 0x804d68f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d692:	pushl	$0x805005f [IMM <DATAREF>]
	pushl	$label_599
	# 0x804d697:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d69c:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d69f:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d6a2:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d6a3:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d6a4:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d6a5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d6a6:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d6a9:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d6ae:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804d6b1:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d6b6:	movl	0x18(%ebp), %eax [MEM, REG]
.label_882:
	movl	0x18(%ebp), %eax
	# 0x804d6b9:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d6bc:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d6be:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d6c1:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d6c4:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d6c7:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d6c9:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d6cc:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d6cf:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d6d1:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d6d4:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d6d6
	.globl sub_804d6d6
	.type sub_804d6d6, @function
sub_804d6d6:

	# 0x804d6d6:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d6d9:	pushl	$0x805007c [IMM <DATAREF>]
	pushl	$label_600
	# 0x804d6de:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d6e3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d6e6:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804d6e9:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d6ec:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d6ed:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d6ee:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d6ef:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d6f0:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d6f3:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d6f8:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804d6fb:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d700:	movl	0x18(%ebp), %eax [MEM, REG]
.label_883:
	movl	0x18(%ebp), %eax
	# 0x804d703:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d706:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d708:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d70b:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d70e:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d711:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d713:	movl	%edx, -0x20(%ebp) [REG, MEM]
	movl	%edx, -0x20(%ebp)
	# 0x804d716:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d719:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d71c:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d71e:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d721:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d724:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d726:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d729:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d72b
	.globl sub_804d72b
	.type sub_804d72b, @function
sub_804d72b:

	# 0x804d72b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d72e:	pushl	$0x805009c [IMM <DATAREF>]
	pushl	$label_601
	# 0x804d733:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d738:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d73b:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804d73e:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d741:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d744:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d745:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d746:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d747:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d748:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d74b:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d750:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804d753:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d758:	movl	0x18(%ebp), %eax [MEM, REG]
.label_884:
	movl	0x18(%ebp), %eax
	# 0x804d75b:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804d75e:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d760:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d763:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d766:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d769:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804d76b:	movl	%ecx, -0x20(%ebp) [REG, MEM]
	movl	%ecx, -0x20(%ebp)
	# 0x804d76e:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d771:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d774:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d776:	movl	%edx, -0x24(%ebp) [REG, MEM]
	movl	%edx, -0x24(%ebp)
	# 0x804d779:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d77c:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d77f:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d781:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d784:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d787:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d789:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d78c:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d78e
	.globl sub_804d78e
	.type sub_804d78e, @function
sub_804d78e:

	# 0x804d78e:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d791:	pushl	$0x80500c0 [IMM <DATAREF>]
	pushl	$label_602
	# 0x804d796:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d79b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d79e:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d7a1:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d7a4:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804d7a7:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d7a8:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d7a9:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d7aa:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d7ab:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d7ae:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d7b3:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804d7b6:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d7bb:	movl	0x18(%ebp), %eax [MEM, REG]
.label_885:
	movl	0x18(%ebp), %eax
	# 0x804d7be:	addl	$0x18, %eax [IMM, REG]
	addl	$0x18, %eax
	# 0x804d7c1:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d7c3:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7c6:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804d7c9:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d7cb:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d7ce:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7d1:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d7d4:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804d7d6:	movl	%ecx, -0x20(%ebp) [REG, MEM]
	movl	%ecx, -0x20(%ebp)
	# 0x804d7d9:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7dc:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d7df:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d7e1:	movl	%edx, -0x24(%ebp) [REG, MEM]
	movl	%edx, -0x24(%ebp)
	# 0x804d7e4:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7e7:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d7ea:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d7ec:	movl	%edi, -0x28(%ebp) [REG, MEM]
	movl	%edi, -0x28(%ebp)
	# 0x804d7ef:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7f2:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d7f5:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d7f7:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d7fa:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d7fc
	.globl sub_804d7fc
	.type sub_804d7fc, @function
sub_804d7fc:

	# 0x804d7fc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d7ff:	pushl	$0x80500e8 [IMM <DATAREF>]
	pushl	$label_603
	# 0x804d804:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d809:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d80c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d80f:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d810:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d813:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d816:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804d819:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804d81c:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d81d:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d81e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d81f:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d822:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d827:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804d82a:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d82f:	movl	0x18(%ebp), %eax [MEM, REG]
.label_886:
	movl	0x18(%ebp), %eax
	# 0x804d832:	addl	$0x1c, %eax [IMM, REG]
	addl	$0x1c, %eax
	# 0x804d835:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d837:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d83a:	addl	$0x18, %eax [IMM, REG]
	addl	$0x18, %eax
	# 0x804d83d:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d83f:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d842:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d845:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804d848:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804d84a:	movl	%ecx, -0x20(%ebp) [REG, MEM]
	movl	%ecx, -0x20(%ebp)
	# 0x804d84d:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d850:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d853:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d855:	movl	%edx, -0x24(%ebp) [REG, MEM]
	movl	%edx, -0x24(%ebp)
	# 0x804d858:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d85b:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d85e:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d860:	movl	%esi, -0x28(%ebp) [REG, MEM]
	movl	%esi, -0x28(%ebp)
	# 0x804d863:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d866:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d869:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	# 0x804d86b:	movl	%ebx, -0x2c(%ebp) [REG, MEM]
	movl	%ebx, -0x2c(%ebp)
	# 0x804d86e:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d871:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d874:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d876:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d879:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d87b
	.globl sub_804d87b
	.type sub_804d87b, @function
sub_804d87b:

	# 0x804d87b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d87e:	pushl	$0x8050114 [IMM <DATAREF>]
	pushl	$label_604
	# 0x804d883:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d888:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d88b:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804d88e:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d88f:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d892:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d895:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804d898:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804d89b:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804d89e:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d89f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d8a0:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d8a1:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d8a4:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d8a9:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804d8ac:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d8b1:	movl	0x18(%ebp), %eax [MEM, REG]
.label_887:
	movl	0x18(%ebp), %eax
	# 0x804d8b4:	addl	$0x20, %eax [IMM, REG]
	addl	$0x20, %eax
	# 0x804d8b7:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d8b9:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8bc:	addl	$0x1c, %eax [IMM, REG]
	addl	$0x1c, %eax
	# 0x804d8bf:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d8c1:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d8c4:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8c7:	addl	$0x18, %eax [IMM, REG]
	addl	$0x18, %eax
	# 0x804d8ca:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804d8cc:	movl	%ecx, -0x20(%ebp) [REG, MEM]
	movl	%ecx, -0x20(%ebp)
	# 0x804d8cf:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8d2:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804d8d5:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d8d7:	movl	%edx, -0x24(%ebp) [REG, MEM]
	movl	%edx, -0x24(%ebp)
	# 0x804d8da:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8dd:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d8e0:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d8e2:	movl	%esi, -0x28(%ebp) [REG, MEM]
	movl	%esi, -0x28(%ebp)
	# 0x804d8e5:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8e8:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d8eb:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	# 0x804d8ed:	movl	%ebx, -0x2c(%ebp) [REG, MEM]
	movl	%ebx, -0x2c(%ebp)
	# 0x804d8f0:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8f3:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d8f6:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d8f8:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804d8fb:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d8fe:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d901:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d903:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d906:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	.section	.text
	.align	32
	#Procedure 0x804d908
	.globl sub_804d908
	.type sub_804d908, @function
sub_804d908:

	# 0x804d908:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d90b:	pushl	$0x8050144 [IMM <DATAREF>]
	pushl	$label_605
	# 0x804d910:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d915:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d918:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804d91b:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d91c:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d91f:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d922:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804d925:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804d928:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804d92b:	pushl	-0x30(%ebp) [MEM]
	pushl	-0x30(%ebp)
	# 0x804d92e:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d92f:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d930:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d931:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d934:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d939:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804d93c:	jmp	0x804d9cd [IMM <CODEREF>]
	jmp	.label_596
	# 0x804d941:	movl	0x18(%ebp), %eax [MEM, REG]
.label_595:
	movl	0x18(%ebp), %eax
	# 0x804d944:	addl	$0x20, %eax [IMM, REG]
	addl	$0x20, %eax
	# 0x804d947:	movl	0(%eax), %edi [MEM, REG]
	movl	0(%eax), %edi
	# 0x804d949:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d94c:	addl	$0x1c, %eax [IMM, REG]
	addl	$0x1c, %eax
	# 0x804d94f:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d951:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804d954:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d957:	addl	$0x18, %eax [IMM, REG]
	addl	$0x18, %eax
	# 0x804d95a:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804d95c:	movl	%ecx, -0x20(%ebp) [REG, MEM]
	movl	%ecx, -0x20(%ebp)
	# 0x804d95f:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d962:	addl	$0x14, %eax [IMM, REG]
	addl	$0x14, %eax
	# 0x804d965:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804d967:	movl	%edx, -0x24(%ebp) [REG, MEM]
	movl	%edx, -0x24(%ebp)
	# 0x804d96a:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d96d:	addl	$0x10, %eax [IMM, REG]
	addl	$0x10, %eax
	# 0x804d970:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d972:	movl	%esi, -0x28(%ebp) [REG, MEM]
	movl	%esi, -0x28(%ebp)
	# 0x804d975:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d978:	addl	$0xc, %eax [IMM, REG]
	addl	$0xc, %eax
	# 0x804d97b:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	# 0x804d97d:	movl	%ebx, -0x2c(%ebp) [REG, MEM]
	movl	%ebx, -0x2c(%ebp)
	# 0x804d980:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d983:	addl	$8, %eax [IMM, REG]
	addl	$8, %eax
	# 0x804d986:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d988:	movl	%eax, -0x30(%ebp) [REG, MEM]
	movl	%eax, -0x30(%ebp)
	# 0x804d98b:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d98e:	addl	$4, %eax [IMM, REG]
	addl	$4, %eax
	# 0x804d991:	movl	0(%eax), %esi [MEM, REG]
	movl	0(%eax), %esi
	# 0x804d993:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d996:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	# 0x804d998:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804d99b:	pushl	$0x8050178 [IMM <DATAREF>]
	pushl	$label_587
	# 0x804d9a0:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804d9a5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804d9a8:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804d9ab:	pushl	%edi [REG]
	pushl	%edi
	# 0x804d9ac:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804d9af:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804d9b2:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804d9b5:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804d9b8:	pushl	-0x2c(%ebp) [MEM]
	pushl	-0x2c(%ebp)
	# 0x804d9bb:	pushl	-0x30(%ebp) [MEM]
	pushl	-0x30(%ebp)
	# 0x804d9be:	pushl	%esi [REG]
	pushl	%esi
	# 0x804d9bf:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804d9c0:	pushl	%eax [REG]
	pushl	%eax
	# 0x804d9c1:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804d9c4:	calll	0x8048eb0 [IMM <CODEREF>]
	calll	fprintf
	# 0x804d9c9:	addl	$0x30, %esp [IMM, REG]
	addl	$0x30, %esp
	# 0x804d9cc:	nop	 []
	nop	
	# 0x804d9cd:	nop	 []
.label_596:
	nop	
	# 0x804d9ce:	leal	-0xc(%ebp), %esp [MEM, REG]
	leal	-0xc(%ebp), %esp
	# 0x804d9d1:	popl	%ebx [REG]
	popl	%ebx
	# 0x804d9d2:	popl	%esi [REG]
	popl	%esi
	# 0x804d9d3:	popl	%edi [REG]
	popl	%edi
	# 0x804d9d4:	popl	%ebp [REG]
	popl	%ebp
	# 0x804d9d5:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d9d6
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	# 0x804d9d6:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804d9d7:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804d9d9:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804d9dc:	movl	$0, -0xc(%ebp) [IMM, MEM]
	movl	$0, -0xc(%ebp)
	# 0x804d9e3:	jmp	0x804d9e9 [IMM <CODEREF>]
	jmp	.label_607
	# 0x804d9e5:	addl	$1, -0xc(%ebp) [IMM, MEM]
.label_606:
	addl	$1, -0xc(%ebp)
	# 0x804d9e9:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_607:
	movl	-0xc(%ebp), %eax
	# 0x804d9ec:	leal	0(, %eax, 4), %edx [MEM, REG]
	leal	0(, %eax, 4), %edx
	# 0x804d9f3:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804d9f6:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804d9f8:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804d9fa:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804d9fc:	jne	0x804d9e5 [IMM <CODEREF>]
	jne	.label_606
	# 0x804d9fe:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804da01:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804da04:	pushl	0x18(%ebp) [MEM]
	pushl	0x18(%ebp)
	# 0x804da07:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804da0a:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804da0d:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804da10:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804da13:	calll	0x804d57a [IMM <CODEREF>]
	calll	version_etc_arn
	# 0x804da18:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804da1b:	nop	 []
	nop	
	# 0x804da1c:	leave	 []
	leave	
	# 0x804da1d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804da1e

	# 0x804da1e:	pushl	%ebp [REG]
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	pushl	%ebp
	# 0x804da1f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804da21:	subl	$0x58, %esp [IMM, REG]
	subl	$0x58, %esp
	# 0x804da24:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804da27:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804da2a:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804da2d:	movl	%eax, -0x40(%ebp) [REG, MEM]
	movl	%eax, -0x40(%ebp)
	# 0x804da30:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804da33:	movl	%eax, -0x44(%ebp) [REG, MEM]
	movl	%eax, -0x44(%ebp)
	# 0x804da36:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804da39:	movl	%eax, -0x48(%ebp) [REG, MEM]
	movl	%eax, -0x48(%ebp)
	# 0x804da3c:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804da3f:	movl	%eax, -0x4c(%ebp) [REG, MEM]
	movl	%eax, -0x4c(%ebp)
	# 0x804da42:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804da48:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804da4b:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804da4d:	movl	$0, -0x38(%ebp) [IMM, MEM]
	movl	$0, -0x38(%ebp)
	# 0x804da54:	jmp	0x804da5a [IMM <CODEREF>]
	jmp	.label_611
	# 0x804da56:	addl	$1, -0x38(%ebp) [IMM, MEM]
.label_608:
	addl	$1, -0x38(%ebp)
	# 0x804da5a:	cmpl	$9, -0x38(%ebp) [IMM, MEM]
.label_611:
	cmpl	$9, -0x38(%ebp)
	# 0x804da5e:	ja	0x804da7d [IMM <CODEREF>]
	ja	.label_610
	# 0x804da60:	movl	-0x4c(%ebp), %eax [MEM, REG]
	movl	-0x4c(%ebp), %eax
	# 0x804da63:	leal	4(%eax), %edx [MEM, REG]
	leal	4(%eax), %edx
	# 0x804da66:	movl	%edx, -0x4c(%ebp) [REG, MEM]
	movl	%edx, -0x4c(%ebp)
	# 0x804da69:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804da6b:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804da6e:	movl	%edx, -0x34(%ebp, %eax, 4) [REG, MEM]
	movl	%edx, -0x34(%ebp, %eax, 4)
	# 0x804da72:	movl	-0x38(%ebp), %eax [MEM, REG]
	movl	-0x38(%ebp), %eax
	# 0x804da75:	movl	-0x34(%ebp, %eax, 4), %eax [MEM, REG]
	movl	-0x34(%ebp, %eax, 4), %eax
	# 0x804da79:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804da7b:	jne	0x804da56 [IMM <CODEREF>]
	jne	.label_608
	# 0x804da7d:	subl	$8, %esp [IMM, REG]
.label_610:
	subl	$8, %esp
	# 0x804da80:	pushl	-0x38(%ebp) [MEM]
	pushl	-0x38(%ebp)
	# 0x804da83:	leal	-0x34(%ebp), %eax [MEM, REG]
	leal	-0x34(%ebp), %eax
	# 0x804da86:	pushl	%eax [REG]
	pushl	%eax
	# 0x804da87:	pushl	-0x48(%ebp) [MEM]
	pushl	-0x48(%ebp)
	# 0x804da8a:	pushl	-0x44(%ebp) [MEM]
	pushl	-0x44(%ebp)
	# 0x804da8d:	pushl	-0x40(%ebp) [MEM]
	pushl	-0x40(%ebp)
	# 0x804da90:	pushl	-0x3c(%ebp) [MEM]
	pushl	-0x3c(%ebp)
	# 0x804da93:	calll	0x804d57a [IMM <CODEREF>]
	calll	version_etc_arn
	# 0x804da98:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804da9b:	nop	 []
	nop	
	# 0x804da9c:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804da9f:	xorl	%gs:0x14, %eax [MEM, REG]
	xorl	%gs:0x14, %eax
	# 0x804daa6:	je	0x804daad [IMM <CODEREF>]
	je	.label_609
	# 0x804daa8:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804daad:	leave	 []
.label_609:
	leave	
	# 0x804daae:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804daaf
	.globl version_etc
	.type version_etc, @function
version_etc:

	# 0x804daaf:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804dab0:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dab2:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804dab5:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804dab8:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804dabb:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804dabe:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804dac1:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804dac4:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804dac7:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804daca:	movl	%eax, -0x28(%ebp) [REG, MEM]
	movl	%eax, -0x28(%ebp)
	# 0x804dacd:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804dad3:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804dad6:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804dad8:	leal	0x18(%ebp), %eax [MEM, REG]
	leal	0x18(%ebp), %eax
	# 0x804dadb:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804dade:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804dae1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dae4:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dae5:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804dae8:	pushl	-0x24(%ebp) [MEM]
	pushl	-0x24(%ebp)
	# 0x804daeb:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804daee:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804daf1:	calll	0x804da1e [IMM <CODEREF>]
	calll	version_etc_va
	# 0x804daf6:	addl	$0x20, %esp [IMM, REG]
	addl	$0x20, %esp
	# 0x804daf9:	nop	 []
	nop	
	# 0x804dafa:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804dafd:	xorl	%gs:0x14, %eax [MEM, REG]
	xorl	%gs:0x14, %eax
	# 0x804db04:	je	0x804db0b [IMM <CODEREF>]
	je	.label_612
	# 0x804db06:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804db0b:	leave	 []
.label_612:
	leave	
	# 0x804db0c:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804db0d
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	# 0x804db0d:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804db0e:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804db10:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804db11:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804db14:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804db17:	pushl	$0x80501dc [IMM <DATAREF>]
	pushl	$label_618
	# 0x804db1c:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804db21:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db24:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804db27:	pushl	$0x80501f1 [IMM <DATAREF>]
	pushl	$label_613
	# 0x804db2c:	pushl	%eax [REG]
	pushl	%eax
	# 0x804db2d:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x804db32:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db35:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804db38:	pushl	$0x8050207 [IMM <DATAREF>]
	pushl	$label_614
	# 0x804db3d:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804db42:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db45:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804db48:	pushl	$0x805021c [IMM <DATAREF>]
	pushl	$label_616
	# 0x804db4d:	pushl	$0x8050244 [IMM <DATAREF>]
	pushl	$label_617
	# 0x804db52:	pushl	%eax [REG]
	pushl	%eax
	# 0x804db53:	calll	0x8048c60 [IMM <CODEREF>]
	calll	printf
	# 0x804db58:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db5b:	movl	0x8053198, %ebx [MEM, REG]
	movl	stdout,  %ebx
	# 0x804db61:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804db64:	pushl	$0x8050254 [IMM <DATAREF>]
	pushl	$label_615
	# 0x804db69:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804db6e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db71:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804db74:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804db75:	pushl	%eax [REG]
	pushl	%eax
	# 0x804db76:	calll	0x8048e60 [IMM <CODEREF>]
	calll	fputs_unlocked
	# 0x804db7b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804db7e:	nop	 []
	nop	
	# 0x804db7f:	movl	-4(%ebp), %ebx [MEM, REG]
	movl	-4(%ebp), %ebx
	# 0x804db82:	leave	 []
	leave	
	# 0x804db83:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804db84
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	# 0x804db84:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804db85:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804db87:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804db8a:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804db90:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804db93:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804db95:	movl	$0, %ecx [IMM, REG]
	movl	$0, %ecx
	# 0x804db9a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804db9d:	mull	0xc(%ebp) [MEM]
	mull	0xc(%ebp)
	# 0x804dba0:	jno	0x804dba7 [IMM <CODEREF>]
	jno	.label_620
	# 0x804dba2:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dba7:	testl	%eax, %eax [REG, REG]
.label_620:
	testl	%eax, %eax
	# 0x804dba9:	jns	0x804dbb0 [IMM <CODEREF>]
	jns	.label_621
	# 0x804dbab:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dbb0:	movl	%eax, -0x10(%ebp) [REG, MEM]
.label_621:
	movl	%eax, -0x10(%ebp)
	# 0x804dbb3:	movl	%ecx, %eax [REG, REG]
	movl	%ecx, %eax
	# 0x804dbb5:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804dbb8:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804dbba:	je	0x804dbc1 [IMM <CODEREF>]
	je	.label_619
	# 0x804dbbc:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804dbc1:	movl	8(%ebp), %eax [MEM, REG]
.label_619:
	movl	8(%ebp), %eax
	# 0x804dbc4:	imull	0xc(%ebp), %eax [MEM, REG]
	imull	0xc(%ebp), %eax
	# 0x804dbc8:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dbcb:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dbcc:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x804dbd1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dbd4:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804dbd7:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804dbde:	je	0x804dbe5 [IMM <CODEREF>]
	je	.label_622
	# 0x804dbe0:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804dbe5:	leave	 []
.label_622:
	leave	
	# 0x804dbe6:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dbe7
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	# 0x804dbe7:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804dbe8:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dbea:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804dbed:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804dbf0:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804dbf3:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804dbf9:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804dbfc:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804dbfe:	movl	$0, %ecx [IMM, REG]
	movl	$0, %ecx
	# 0x804dc03:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804dc06:	mull	0x10(%ebp) [MEM]
	mull	0x10(%ebp)
	# 0x804dc09:	jno	0x804dc10 [IMM <CODEREF>]
	jno	.label_624
	# 0x804dc0b:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dc10:	testl	%eax, %eax [REG, REG]
.label_624:
	testl	%eax, %eax
	# 0x804dc12:	jns	0x804dc19 [IMM <CODEREF>]
	jns	.label_623
	# 0x804dc14:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dc19:	movl	%eax, -0x10(%ebp) [REG, MEM]
.label_623:
	movl	%eax, -0x10(%ebp)
	# 0x804dc1c:	movl	%ecx, %eax [REG, REG]
	movl	%ecx, %eax
	# 0x804dc1e:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804dc21:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804dc23:	je	0x804dc2a [IMM <CODEREF>]
	je	.label_625
	# 0x804dc25:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804dc2a:	movl	0xc(%ebp), %eax [MEM, REG]
.label_625:
	movl	0xc(%ebp), %eax
	# 0x804dc2d:	imull	0x10(%ebp), %eax [MEM, REG]
	imull	0x10(%ebp), %eax
	# 0x804dc31:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dc34:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dc35:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804dc38:	calll	0x804dd6a [IMM <CODEREF>]
	calll	xrealloc
	# 0x804dc3d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dc40:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804dc43:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804dc4a:	je	0x804dc51 [IMM <CODEREF>]
	je	.label_626
	# 0x804dc4c:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804dc51:	leave	 []
.label_626:
	leave	
	# 0x804dc52:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dc53

	# 0x804dc53:	pushl	%ebp [REG]
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	pushl	%ebp
	# 0x804dc54:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dc56:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804dc59:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804dc5c:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804dc5f:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804dc62:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804dc65:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804dc6b:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804dc6e:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804dc70:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804dc73:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804dc75:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804dc78:	cmpl	$0, -0x1c(%ebp) [IMM, MEM]
	cmpl	$0, -0x1c(%ebp)
	# 0x804dc7c:	jne	0x804dccd [IMM <CODEREF>]
	jne	.label_631
	# 0x804dc7e:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
	cmpl	$0, -0x10(%ebp)
	# 0x804dc82:	jne	0x804dca1 [IMM <CODEREF>]
	jne	.label_633
	# 0x804dc84:	movl	$0x40, %eax [IMM, REG]
	movl	$0x40, %eax
	# 0x804dc89:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x804dc8e:	divl	0x10(%ebp) [MEM]
	divl	0x10(%ebp)
	# 0x804dc91:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804dc94:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
	cmpl	$0, -0x10(%ebp)
	# 0x804dc98:	sete	%al [REG]
	sete	%al
	# 0x804dc9b:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804dc9e:	addl	%eax, -0x10(%ebp) [REG, MEM]
	addl	%eax, -0x10(%ebp)
	# 0x804dca1:	movl	$0, %ecx [IMM, REG]
.label_633:
	movl	$0, %ecx
	# 0x804dca6:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804dca9:	mull	0x10(%ebp) [MEM]
	mull	0x10(%ebp)
	# 0x804dcac:	jno	0x804dcb3 [IMM <CODEREF>]
	jno	.label_627
	# 0x804dcae:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dcb3:	testl	%eax, %eax [REG, REG]
.label_627:
	testl	%eax, %eax
	# 0x804dcb5:	jns	0x804dcbc [IMM <CODEREF>]
	jns	.label_628
	# 0x804dcb7:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804dcbc:	movl	%eax, -0x14(%ebp) [REG, MEM]
.label_628:
	movl	%eax, -0x14(%ebp)
	# 0x804dcbf:	movl	%ecx, %eax [REG, REG]
	movl	%ecx, %eax
	# 0x804dcc1:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804dcc4:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804dcc6:	je	0x804dcf6 [IMM <CODEREF>]
	je	.label_632
	# 0x804dcc8:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804dccd:	movl	$0x55555554, %eax [IMM, REG]
.label_631:
	movl	$0x55555554, %eax
	# 0x804dcd2:	movl	$0, %edx [IMM, REG]
	movl	$0, %edx
	# 0x804dcd7:	divl	0x10(%ebp) [MEM]
	divl	0x10(%ebp)
	# 0x804dcda:	cmpl	-0x10(%ebp), %eax [MEM, REG]
	cmpl	-0x10(%ebp), %eax
	# 0x804dcdd:	ja	0x804dce4 [IMM <CODEREF>]
	ja	.label_629
	# 0x804dcdf:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804dce4:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_629:
	movl	-0x10(%ebp), %eax
	# 0x804dce7:	shrl	$1, %eax [IMM, REG]
	shrl	$1, %eax
	# 0x804dce9:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804dceb:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804dcee:	addl	%edx, %eax [REG, REG]
	addl	%edx, %eax
	# 0x804dcf0:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804dcf3:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804dcf6:	movl	-0x20(%ebp), %eax [MEM, REG]
.label_632:
	movl	-0x20(%ebp), %eax
	# 0x804dcf9:	movl	-0x10(%ebp), %edx [MEM, REG]
	movl	-0x10(%ebp), %edx
	# 0x804dcfc:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804dcfe:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804dd01:	imull	0x10(%ebp), %eax [MEM, REG]
	imull	0x10(%ebp), %eax
	# 0x804dd05:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dd08:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dd09:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804dd0c:	calll	0x804dd6a [IMM <CODEREF>]
	calll	xrealloc
	# 0x804dd11:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dd14:	movl	-0xc(%ebp), %ecx [MEM, REG]
	movl	-0xc(%ebp), %ecx
	# 0x804dd17:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804dd1e:	je	0x804dd25 [IMM <CODEREF>]
	je	.label_630
	# 0x804dd20:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804dd25:	leave	 []
.label_630:
	leave	
	# 0x804dd26:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dd27

	# 0x804dd27:	pushl	%ebp [REG]
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	pushl	%ebp
	# 0x804dd28:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dd2a:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dd2d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dd30:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dd33:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x804dd38:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dd3b:	leave	 []
	leave	
	# 0x804dd3c:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dd3d

	# 0x804dd3d:	pushl	%ebp [REG]
	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	pushl	%ebp
	# 0x804dd3e:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dd40:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804dd43:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dd46:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dd49:	calll	0x8048e00 [IMM <CODEREF>]
	calll	malloc
	# 0x804dd4e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dd51:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804dd54:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804dd58:	jne	0x804dd65 [IMM <CODEREF>]
	jne	.label_634
	# 0x804dd5a:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804dd5e:	je	0x804dd65 [IMM <CODEREF>]
	je	.label_634
	# 0x804dd60:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804dd65:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_634:
	movl	-0xc(%ebp), %eax
	# 0x804dd68:	leave	 []
	leave	
	# 0x804dd69:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dd6a

	# 0x804dd6a:	pushl	%ebp [REG]
	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	pushl	%ebp
	# 0x804dd6b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dd6d:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dd70:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804dd74:	jne	0x804dd91 [IMM <CODEREF>]
	jne	.label_635
	# 0x804dd76:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804dd7a:	je	0x804dd91 [IMM <CODEREF>]
	je	.label_635
	# 0x804dd7c:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dd7f:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dd82:	calll	0x8048cb0 [IMM <CODEREF>]
	calll	free
	# 0x804dd87:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dd8a:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804dd8f:	jmp	0x804ddb9 [IMM <CODEREF>]
	jmp	.label_636
	# 0x804dd91:	subl	$8, %esp [IMM, REG]
.label_635:
	subl	$8, %esp
	# 0x804dd94:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804dd97:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dd9a:	calll	0x8048df0 [IMM <CODEREF>]
	calll	realloc
	# 0x804dd9f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dda2:	movl	%eax, 8(%ebp) [REG, MEM]
	movl	%eax, 8(%ebp)
	# 0x804dda5:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804dda9:	jne	0x804ddb6 [IMM <CODEREF>]
	jne	.label_637
	# 0x804ddab:	cmpl	$0, 0xc(%ebp) [IMM, MEM]
	cmpl	$0, 0xc(%ebp)
	# 0x804ddaf:	je	0x804ddb6 [IMM <CODEREF>]
	je	.label_637
	# 0x804ddb1:	calll	0x804deba [IMM <CODEREF>]
	calll	xalloc_die
	# 0x804ddb6:	movl	8(%ebp), %eax [MEM, REG]
.label_637:
	movl	8(%ebp), %eax
	# 0x804ddb9:	leave	 []
.label_636:
	leave	
	# 0x804ddba:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ddbb
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	# 0x804ddbb:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ddbc:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ddbe:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804ddc1:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804ddc4:	pushl	$1 [IMM]
	pushl	$1
	# 0x804ddc6:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804ddc9:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804ddcc:	calll	0x804dc53 [IMM <CODEREF>]
	calll	x2nrealloc
	# 0x804ddd1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ddd4:	leave	 []
	leave	
	# 0x804ddd5:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ddd6
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	# 0x804ddd6:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ddd7:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ddd9:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dddc:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dddf:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dde2:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x804dde7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ddea:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804dded:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804ddf0:	pushl	$0 [IMM]
	pushl	$0
	# 0x804ddf2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804ddf3:	calll	0x8048ec0 [IMM <CODEREF>]
	calll	memset
	# 0x804ddf8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ddfb:	leave	 []
	leave	
	# 0x804ddfc:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ddfd
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	# 0x804ddfd:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ddfe:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804de00:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804de03:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804de09:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804de0c:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804de0e:	movl	$0, %ecx [IMM, REG]
	movl	$0, %ecx
	# 0x804de13:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804de16:	mull	0xc(%ebp) [MEM]
	mull	0xc(%ebp)
	# 0x804de19:	jno	0x804de20 [IMM <CODEREF>]
	jno	.label_642
	# 0x804de1b:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804de20:	testl	%eax, %eax [REG, REG]
.label_642:
	testl	%eax, %eax
	# 0x804de22:	jns	0x804de29 [IMM <CODEREF>]
	jns	.label_638
	# 0x804de24:	movl	$1, %ecx [IMM, REG]
	movl	$1, %ecx
	# 0x804de29:	movl	%eax, -0x14(%ebp) [REG, MEM]
.label_638:
	movl	%eax, -0x14(%ebp)
	# 0x804de2c:	movl	%ecx, %eax [REG, REG]
	movl	%ecx, %eax
	# 0x804de2e:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804de31:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804de33:	jne	0x804de4f [IMM <CODEREF>]
	jne	.label_641
	# 0x804de35:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804de38:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804de3b:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804de3e:	calll	0x8048fb0 [IMM <CODEREF>]
	calll	calloc
	# 0x804de43:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804de46:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804de49:	cmpl	$0, -0x10(%ebp) [IMM, MEM]
	cmpl	$0, -0x10(%ebp)
	# 0x804de4d:	jne	0x804de54 [IMM <CODEREF>]
	jne	.label_639
	# 0x804de4f:	calll	0x804deba [IMM <CODEREF>]
.label_641:
	calll	xalloc_die
	# 0x804de54:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_639:
	movl	-0x10(%ebp), %eax
	# 0x804de57:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804de5a:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804de61:	je	0x804de68 [IMM <CODEREF>]
	je	.label_640
	# 0x804de63:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804de68:	leave	 []
.label_640:
	leave	
	# 0x804de69:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804de6a

	# 0x804de6a:	pushl	%ebp [REG]
	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	pushl	%ebp
	# 0x804de6b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804de6d:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804de70:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804de73:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804de76:	calll	0x804dd3d [IMM <CODEREF>]
	calll	xmalloc
	# 0x804de7b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804de7e:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804de81:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804de84:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804de87:	pushl	%eax [REG]
	pushl	%eax
	# 0x804de88:	calll	0x8048cc0 [IMM <CODEREF>]
	calll	memcpy
	# 0x804de8d:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804de90:	leave	 []
	leave	
	# 0x804de91:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804de92

	# 0x804de92:	pushl	%ebp [REG]
	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	pushl	%ebp
	# 0x804de93:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804de95:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804de98:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804de9b:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804de9e:	calll	0x8048e90 [IMM <CODEREF>]
	calll	strlen
	# 0x804dea3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dea6:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804dea9:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804deac:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dead:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804deb0:	calll	0x804de6a [IMM <CODEREF>]
	calll	xmemdup
	# 0x804deb5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804deb8:	leave	 []
	leave	
	# 0x804deb9:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804deba

	# 0x804deba:	pushl	%ebp [REG]
	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	pushl	%ebp
	# 0x804debb:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804debd:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804dec0:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804dec3:	pushl	$0x80502cf [IMM <DATAREF>]
	pushl	$label_643
	# 0x804dec8:	calll	0x8048e50 [IMM <CODEREF>]
	calll	gettext
	# 0x804decd:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804ded0:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804ded2:	movl	0x8053108, %eax [MEM, REG]
	movl	exit_failure,  %eax
	# 0x804ded7:	pushl	%edx [REG]
	pushl	%edx
	# 0x804ded8:	pushl	$0x80502e0 [IMM <DATAREF>]
	pushl	$label_644
	# 0x804dedd:	pushl	$0 [IMM]
	pushl	$0
	# 0x804dedf:	pushl	%eax [REG]
	pushl	%eax
	# 0x804dee0:	calll	0x8048dd0 [IMM <CODEREF>]
	calll	error
	# 0x804dee5:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dee8:	calll	0x8048f80 [IMM <CODEREF>]
	calll	abort
	.section	.text
	.align	32
	#Procedure 0x804deed

	# 0x804deed:	pushl	%ebp [REG]
	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	pushl	%ebp
	# 0x804deee:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804def0:	pushl	%edi [REG]
	pushl	%edi
	# 0x804def1:	pushl	%esi [REG]
	pushl	%esi
	# 0x804def2:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804def3:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804def6:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804def9:	movl	0(%eax), %ebx [MEM, REG]
	movl	0(%eax), %ebx
	# 0x804defb:	movl	4(%eax), %esi [MEM, REG]
	movl	4(%eax), %esi
	# 0x804defe:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804df01:	cltd	 []
	cltd	
	# 0x804df02:	pushl	%edx [REG]
	pushl	%edx
	# 0x804df03:	pushl	%eax [REG]
	pushl	%eax
	# 0x804df04:	pushl	$0x80000000 [IMM]
	pushl	$0x80000000
	# 0x804df09:	pushl	$0 [IMM]
	pushl	$0
	# 0x804df0b:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x804df10:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804df13:	cmpl	%edx, %esi [REG, REG]
	cmpl	%edx, %esi
	# 0x804df15:	jg	0x804df36 [IMM <CODEREF>]
	jg	.label_646
	# 0x804df17:	cmpl	%edx, %esi [REG, REG]
	cmpl	%edx, %esi
	# 0x804df19:	jl	0x804df1f [IMM <CODEREF>]
	jl	.label_648
	# 0x804df1b:	cmpl	%eax, %ebx [REG, REG]
	cmpl	%eax, %ebx
	# 0x804df1d:	jae	0x804df36 [IMM <CODEREF>]
	jae	.label_646
	# 0x804df1f:	movl	8(%ebp), %eax [MEM, REG]
.label_648:
	movl	8(%ebp), %eax
	# 0x804df22:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x804df28:	movl	$0x80000000, 4(%eax) [IMM, MEM]
	movl	$0x80000000, 4(%eax)
	# 0x804df2f:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804df34:	jmp	0x804dfa6 [IMM <CODEREF>]
	jmp	.label_645
	# 0x804df36:	movl	0xc(%ebp), %eax [MEM, REG]
.label_646:
	movl	0xc(%ebp), %eax
	# 0x804df39:	cltd	 []
	cltd	
	# 0x804df3a:	pushl	%edx [REG]
	pushl	%edx
	# 0x804df3b:	pushl	%eax [REG]
	pushl	%eax
	# 0x804df3c:	pushl	$0x7fffffff [IMM]
	pushl	$0x7fffffff
	# 0x804df41:	pushl	$-1 [IMM]
	pushl	$-1
	# 0x804df43:	calll	0x804eab0 [IMM <CODEREF>]
	calll	__divdi3
	# 0x804df48:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804df4b:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804df4d:	movl	%edx, %ebx [REG, REG]
	movl	%edx, %ebx
	# 0x804df4f:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804df52:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804df55:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804df57:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804df59:	jg	0x804df7a [IMM <CODEREF>]
	jg	.label_647
	# 0x804df5b:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804df5d:	jl	0x804df63 [IMM <CODEREF>]
	jl	.label_649
	# 0x804df5f:	cmpl	%eax, %ecx [REG, REG]
	cmpl	%eax, %ecx
	# 0x804df61:	jae	0x804df7a [IMM <CODEREF>]
	jae	.label_647
	# 0x804df63:	movl	8(%ebp), %eax [MEM, REG]
.label_649:
	movl	8(%ebp), %eax
	# 0x804df66:	movl	$0xffffffff, 0(%eax) [IMM, MEM]
	movl	$0xffffffff, 0(%eax)
	# 0x804df6c:	movl	$0x7fffffff, 4(%eax) [IMM, MEM]
	movl	$0x7fffffff, 4(%eax)
	# 0x804df73:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804df78:	jmp	0x804dfa6 [IMM <CODEREF>]
	jmp	.label_645
	# 0x804df7a:	movl	8(%ebp), %eax [MEM, REG]
.label_647:
	movl	8(%ebp), %eax
	# 0x804df7d:	movl	0(%eax), %ecx [MEM, REG]
	movl	0(%eax), %ecx
	# 0x804df7f:	movl	4(%eax), %ebx [MEM, REG]
	movl	4(%eax), %ebx
	# 0x804df82:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804df85:	cltd	 []
	cltd	
	# 0x804df86:	movl	%ebx, %edi [REG, REG]
	movl	%ebx, %edi
	# 0x804df88:	imull	%eax, %edi [REG, REG]
	imull	%eax, %edi
	# 0x804df8b:	movl	%edx, %esi [REG, REG]
	movl	%edx, %esi
	# 0x804df8d:	imull	%ecx, %esi [REG, REG]
	imull	%ecx, %esi
	# 0x804df90:	addl	%edi, %esi [REG, REG]
	addl	%edi, %esi
	# 0x804df92:	mull	%ecx [REG]
	mull	%ecx
	# 0x804df94:	leal	0(%esi, %edx), %ecx [MEM, REG]
	leal	0(%esi, %edx), %ecx
	# 0x804df97:	movl	%ecx, %edx [REG, REG]
	movl	%ecx, %edx
	# 0x804df99:	movl	8(%ebp), %ecx [MEM, REG]
	movl	8(%ebp), %ecx
	# 0x804df9c:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804df9e:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804dfa1:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804dfa6:	leal	-0xc(%ebp), %esp [MEM, REG]
.label_645:
	leal	-0xc(%ebp), %esp
	# 0x804dfa9:	popl	%ebx [REG]
	popl	%ebx
	# 0x804dfaa:	popl	%esi [REG]
	popl	%esi
	# 0x804dfab:	popl	%edi [REG]
	popl	%edi
	# 0x804dfac:	popl	%ebp [REG]
	popl	%ebp
	# 0x804dfad:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dfae

	# 0x804dfae:	pushl	%ebp [REG]
	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	pushl	%ebp
	# 0x804dfaf:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dfb1:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804dfb4:	movl	$0, -0xc(%ebp) [IMM, MEM]
	movl	$0, -0xc(%ebp)
	# 0x804dfbb:	jmp	0x804dfd1 [IMM <CODEREF>]
	jmp	.label_651
	# 0x804dfbd:	subl	$8, %esp [IMM, REG]
.label_650:
	subl	$8, %esp
	# 0x804dfc0:	pushl	0xc(%ebp) [MEM]
	pushl	0xc(%ebp)
	# 0x804dfc3:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804dfc6:	calll	0x804deed [IMM <CODEREF>]
	calll	bkm_scale
	# 0x804dfcb:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804dfce:	orl	%eax, -0xc(%ebp) [REG, MEM]
	orl	%eax, -0xc(%ebp)
	# 0x804dfd1:	movl	0x10(%ebp), %eax [MEM, REG]
.label_651:
	movl	0x10(%ebp), %eax
	# 0x804dfd4:	leal	-1(%eax), %edx [MEM, REG]
	leal	-1(%eax), %edx
	# 0x804dfd7:	movl	%edx, 0x10(%ebp) [REG, MEM]
	movl	%edx, 0x10(%ebp)
	# 0x804dfda:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804dfdc:	jne	0x804dfbd [IMM <CODEREF>]
	jne	.label_650
	# 0x804dfde:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804dfe1:	leave	 []
	leave	
	# 0x804dfe2:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804dfe3

	# 0x804dfe3:	pushl	%ebp [REG]
	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	pushl	%ebp
	# 0x804dfe4:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804dfe6:	subl	$0x48, %esp [IMM, REG]
	subl	$0x48, %esp
	# 0x804dfe9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804dfec:	movl	%eax, -0x3c(%ebp) [REG, MEM]
	movl	%eax, -0x3c(%ebp)
	# 0x804dfef:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804dff2:	movl	%eax, -0x40(%ebp) [REG, MEM]
	movl	%eax, -0x40(%ebp)
	# 0x804dff5:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804dff8:	movl	%eax, -0x44(%ebp) [REG, MEM]
	movl	%eax, -0x44(%ebp)
	# 0x804dffb:	movl	0x18(%ebp), %eax [MEM, REG]
	movl	0x18(%ebp), %eax
	# 0x804dffe:	movl	%eax, -0x48(%ebp) [REG, MEM]
	movl	%eax, -0x48(%ebp)
	# 0x804e001:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804e007:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e00a:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804e00c:	movl	$0, -0x2c(%ebp) [IMM, MEM]
	movl	$0, -0x2c(%ebp)
	# 0x804e013:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x804e017:	js	0x804e01f [IMM <CODEREF>]
	js	.label_664
	# 0x804e019:	cmpl	$0x24, 0x10(%ebp) [IMM, MEM]
	cmpl	$0x24, 0x10(%ebp)
	# 0x804e01d:	jle	0x804e035 [IMM <CODEREF>]
	jle	.label_657
	# 0x804e01f:	pushl	$0x80504b4 [IMM <DATAREF>]
.label_664:
	pushl	$__PRETTY_FUNCTION__.3254
	# 0x804e024:	pushl	$0x60 [IMM]
	pushl	$0x60
	# 0x804e026:	pushl	$0x80502e4 [IMM <DATAREF>]
	pushl	$label_660
	# 0x804e02b:	pushl	$0x80502f4 [IMM <DATAREF>]
	pushl	$label_661
	# 0x804e030:	calll	0x8048f90 [IMM <CODEREF>]
	calll	__assert_fail
	# 0x804e035:	cmpl	$0, -0x40(%ebp) [IMM, MEM]
.label_657:
	cmpl	$0, -0x40(%ebp)
	# 0x804e039:	jne	0x804e040 [IMM <CODEREF>]
	jne	.label_671
	# 0x804e03b:	leal	-0x30(%ebp), %eax [MEM, REG]
	leal	-0x30(%ebp), %eax
	# 0x804e03e:	jmp	0x804e043 [IMM <CODEREF>]
	jmp	.label_670
	# 0x804e040:	movl	-0x40(%ebp), %eax [MEM, REG]
.label_671:
	movl	-0x40(%ebp), %eax
	# 0x804e043:	movl	%eax, -0x1c(%ebp) [REG, MEM]
.label_670:
	movl	%eax, -0x1c(%ebp)
	# 0x804e046:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e04b:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x804e051:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804e054:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804e057:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804e05a:	pushl	-0x3c(%ebp) [MEM]
	pushl	-0x3c(%ebp)
	# 0x804e05d:	calll	0x8048cf0 [IMM <CODEREF>]
	calll	strtoimax
	# 0x804e062:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e065:	movl	%eax, -0x18(%ebp) [REG, MEM]
	movl	%eax, -0x18(%ebp)
	# 0x804e068:	movl	%edx, -0x14(%ebp) [REG, MEM]
	movl	%edx, -0x14(%ebp)
	# 0x804e06b:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e06e:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e070:	cmpl	-0x3c(%ebp), %eax [MEM, REG]
	cmpl	-0x3c(%ebp), %eax
	# 0x804e073:	jne	0x804e0bf [IMM <CODEREF>]
	jne	.label_663
	# 0x804e075:	cmpl	$0, -0x48(%ebp) [IMM, MEM]
	cmpl	$0, -0x48(%ebp)
	# 0x804e079:	je	0x804e0b5 [IMM <CODEREF>]
	je	.label_659
	# 0x804e07b:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e07e:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e080:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e083:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e085:	je	0x804e0b5 [IMM <CODEREF>]
	je	.label_659
	# 0x804e087:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e08a:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e08c:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e08f:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804e092:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e095:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e096:	pushl	-0x48(%ebp) [MEM]
	pushl	-0x48(%ebp)
	# 0x804e099:	calll	0x8048e80 [IMM <CODEREF>]
	calll	strchr
	# 0x804e09e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e0a1:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e0a3:	je	0x804e0b5 [IMM <CODEREF>]
	je	.label_659
	# 0x804e0a5:	movl	$1, -0x18(%ebp) [IMM, MEM]
	movl	$1, -0x18(%ebp)
	# 0x804e0ac:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x804e0b3:	jmp	0x804e0e7 [IMM <CODEREF>]
	jmp	.label_652
	# 0x804e0b5:	movl	$4, %eax [IMM, REG]
.label_659:
	movl	$4, %eax
	# 0x804e0ba:	jmp	0x804e364 [IMM <CODEREF>]
	jmp	.label_654
	# 0x804e0bf:	calll	0x8048ed0 [IMM <CODEREF>]
.label_663:
	calll	__errno_location
	# 0x804e0c4:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e0c6:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e0c8:	je	0x804e0e7 [IMM <CODEREF>]
	je	.label_652
	# 0x804e0ca:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e0cf:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e0d1:	cmpl	$0x22, %eax [IMM, REG]
	cmpl	$0x22, %eax
	# 0x804e0d4:	je	0x804e0e0 [IMM <CODEREF>]
	je	.label_658
	# 0x804e0d6:	movl	$4, %eax [IMM, REG]
	movl	$4, %eax
	# 0x804e0db:	jmp	0x804e364 [IMM <CODEREF>]
	jmp	.label_654
	# 0x804e0e0:	movl	$1, -0x2c(%ebp) [IMM, MEM]
.label_658:
	movl	$1, -0x2c(%ebp)
	# 0x804e0e7:	cmpl	$0, -0x48(%ebp) [IMM, MEM]
.label_652:
	cmpl	$0, -0x48(%ebp)
	# 0x804e0eb:	jne	0x804e103 [IMM <CODEREF>]
	jne	.label_666
	# 0x804e0ed:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804e0f0:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804e0f3:	movl	-0x44(%ebp), %ecx [MEM, REG]
	movl	-0x44(%ebp), %ecx
	# 0x804e0f6:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804e0f8:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804e0fb:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804e0fe:	jmp	0x804e364 [IMM <CODEREF>]
	jmp	.label_654
	# 0x804e103:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_666:
	movl	-0x1c(%ebp), %eax
	# 0x804e106:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e108:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e10b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e10d:	je	0x804e353 [IMM <CODEREF>]
	je	.label_655
	# 0x804e113:	movl	$0x400, -0x28(%ebp) [IMM, MEM]
	movl	$0x400, -0x28(%ebp)
	# 0x804e11a:	movl	$1, -0x24(%ebp) [IMM, MEM]
	movl	$1, -0x24(%ebp)
	# 0x804e121:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e124:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e126:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e129:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804e12c:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e12f:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e130:	pushl	-0x48(%ebp) [MEM]
	pushl	-0x48(%ebp)
	# 0x804e133:	calll	0x8048e80 [IMM <CODEREF>]
	calll	strchr
	# 0x804e138:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e13b:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e13d:	jne	0x804e158 [IMM <CODEREF>]
	jne	.label_668
	# 0x804e13f:	movl	-0x18(%ebp), %eax [MEM, REG]
	movl	-0x18(%ebp), %eax
	# 0x804e142:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804e145:	movl	-0x44(%ebp), %ecx [MEM, REG]
	movl	-0x44(%ebp), %ecx
	# 0x804e148:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804e14a:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804e14d:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804e150:	orl	$2, %eax [IMM, REG]
	orl	$2, %eax
	# 0x804e153:	jmp	0x804e364 [IMM <CODEREF>]
	jmp	.label_654
	# 0x804e158:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_668:
	movl	-0x1c(%ebp), %eax
	# 0x804e15b:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e15d:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e160:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804e163:	subl	$0x45, %eax [IMM, REG]
	subl	$0x45, %eax
	# 0x804e166:	cmpl	$0x2f, %eax [IMM, REG]
	cmpl	$0x2f, %eax
	# 0x804e169:	ja	0x804e1ca [IMM <CODEREF>]
	ja	.label_656
	# 0x804e16b:	movl	0x805031c(, %eax, 4), %eax [MEM, REG]
	movl	label_667(, %eax, 4),  %eax
	# 0x804e172:	jmpl	*%eax [REG]
	jmpl	*%eax
	.section	.text
	.align	32
	#Procedure 0x804e174

	# 0x804e174:	subl	$8, %esp [IMM, REG]
	.globl sub_804e174
	.type sub_804e174, @function
sub_804e174:
	subl	$8, %esp
	# 0x804e177:	pushl	$0x30 [IMM]
	pushl	$0x30
	# 0x804e179:	pushl	-0x48(%ebp) [MEM]
	pushl	-0x48(%ebp)
	# 0x804e17c:	calll	0x8048e80 [IMM <CODEREF>]
	calll	strchr
	# 0x804e181:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e184:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e186:	je	0x804e1ca [IMM <CODEREF>]
	je	.label_656
	# 0x804e188:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e18b:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e18d:	addl	$1, %eax [IMM, REG]
	addl	$1, %eax
	# 0x804e190:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e193:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804e196:	cmpl	$0x44, %eax [IMM, REG]
	cmpl	$0x44, %eax
	# 0x804e199:	je	0x804e1bc [IMM <CODEREF>]
	je	.label_672
	# 0x804e19b:	cmpl	$0x69, %eax [IMM, REG]
	cmpl	$0x69, %eax
	# 0x804e19e:	je	0x804e1a7 [IMM <CODEREF>]
	je	.label_674
	# 0x804e1a0:	cmpl	$0x42, %eax [IMM, REG]
	cmpl	$0x42, %eax
	# 0x804e1a3:	je	0x804e1bc [IMM <CODEREF>]
	je	.label_672
	# 0x804e1a5:	jmp	0x804e1ca [IMM <CODEREF>]
	jmp	.label_656
	# 0x804e1a7:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_674:
	movl	-0x1c(%ebp), %eax
	# 0x804e1aa:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e1ac:	addl	$2, %eax [IMM, REG]
	addl	$2, %eax
	# 0x804e1af:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e1b2:	cmpb	$0x42, %al [IMM, REG]
	cmpb	$0x42, %al
	# 0x804e1b4:	jne	0x804e1c9 [IMM <CODEREF>]
	jne	.label_673
	# 0x804e1b6:	addl	$2, -0x24(%ebp) [IMM, MEM]
	addl	$2, -0x24(%ebp)
	# 0x804e1ba:	jmp	0x804e1c9 [IMM <CODEREF>]
	jmp	.label_673
	# 0x804e1bc:	movl	$0x3e8, -0x28(%ebp) [IMM, MEM]
.label_672:
	movl	$0x3e8, -0x28(%ebp)
	# 0x804e1c3:	addl	$1, -0x24(%ebp) [IMM, MEM]
	addl	$1, -0x24(%ebp)
	# 0x804e1c7:	jmp	0x804e1ca [IMM <CODEREF>]
	jmp	.label_656
	# 0x804e1c9:	nop	 []
.label_673:
	nop	
	# 0x804e1ca:	movl	-0x1c(%ebp), %eax [MEM, REG]
.label_656:
	movl	-0x1c(%ebp), %eax
	# 0x804e1cd:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e1cf:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e1d2:	movsbl	%al, %eax [REG, REG]
	movsbl	%al, %eax
	# 0x804e1d5:	subl	$0x42, %eax [IMM, REG]
	subl	$0x42, %eax
	# 0x804e1d8:	cmpl	$0x35, %eax [IMM, REG]
	cmpl	$0x35, %eax
	# 0x804e1db:	ja	0x804e318 [IMM <CODEREF>]
	ja	.label_669
	# 0x804e1e1:	movl	0x80503dc(, %eax, 4), %eax [MEM, REG]
	movl	label_662(, %eax, 4),  %eax
	# 0x804e1e8:	jmpl	*%eax [REG]
	jmpl	*%eax
	.section	.text
	.align	32
	#Procedure 0x804e1ea

	# 0x804e1ea:	subl	$8, %esp [IMM, REG]
	.globl sub_804e1ea
	.type sub_804e1ea, @function
sub_804e1ea:
	subl	$8, %esp
	# 0x804e1ed:	pushl	$0x200 [IMM]
	pushl	$0x200
	# 0x804e1f2:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e1f5:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e1f6:	calll	0x804deed [IMM <CODEREF>]
	calll	bkm_scale
	# 0x804e1fb:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e1fe:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e201:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e206

	# 0x804e206:	subl	$8, %esp [IMM, REG]
	.globl sub_804e206
	.type sub_804e206, @function
sub_804e206:
	subl	$8, %esp
	# 0x804e209:	pushl	$0x400 [IMM]
	pushl	$0x400
	# 0x804e20e:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e211:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e212:	calll	0x804deed [IMM <CODEREF>]
	calll	bkm_scale
	# 0x804e217:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e21a:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e21d:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	# 0x804e222:	movl	$0, -0x20(%ebp) [IMM, MEM]
.label_865:
	movl	$0, -0x20(%ebp)
	# 0x804e229:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e22e

	# 0x804e22e:	subl	$4, %esp [IMM, REG]
	.globl sub_804e22e
	.type sub_804e22e, @function
sub_804e22e:
	subl	$4, %esp
	# 0x804e231:	pushl	$6 [IMM]
	pushl	$6
	# 0x804e233:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e236:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e239:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e23a:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e23f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e242:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e245:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e24a

	# 0x804e24a:	subl	$4, %esp [IMM, REG]
	.globl sub_804e24a
	.type sub_804e24a, @function
sub_804e24a:
	subl	$4, %esp
	# 0x804e24d:	pushl	$3 [IMM]
	pushl	$3
	# 0x804e24f:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e252:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e255:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e256:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e25b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e25e:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e261:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e266

	# 0x804e266:	subl	$4, %esp [IMM, REG]
	.globl sub_804e266
	.type sub_804e266, @function
sub_804e266:
	subl	$4, %esp
	# 0x804e269:	pushl	$1 [IMM]
	pushl	$1
	# 0x804e26b:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e26e:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e271:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e272:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e277:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e27a:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e27d:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e282

	# 0x804e282:	subl	$4, %esp [IMM, REG]
	.globl sub_804e282
	.type sub_804e282, @function
sub_804e282:
	subl	$4, %esp
	# 0x804e285:	pushl	$2 [IMM]
	pushl	$2
	# 0x804e287:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e28a:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e28d:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e28e:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e293:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e296:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e299:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e29e

	# 0x804e29e:	subl	$4, %esp [IMM, REG]
	.globl sub_804e29e
	.type sub_804e29e, @function
sub_804e29e:
	subl	$4, %esp
	# 0x804e2a1:	pushl	$5 [IMM]
	pushl	$5
	# 0x804e2a3:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e2a6:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e2a9:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e2aa:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e2af:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e2b2:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e2b5:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e2b7

	# 0x804e2b7:	subl	$4, %esp [IMM, REG]
	.globl sub_804e2b7
	.type sub_804e2b7, @function
sub_804e2b7:
	subl	$4, %esp
	# 0x804e2ba:	pushl	$4 [IMM]
	pushl	$4
	# 0x804e2bc:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e2bf:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e2c2:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e2c3:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e2c8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e2cb:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e2ce:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e2d0

	# 0x804e2d0:	subl	$8, %esp [IMM, REG]
	.globl sub_804e2d0
	.type sub_804e2d0, @function
sub_804e2d0:
	subl	$8, %esp
	# 0x804e2d3:	pushl	$2 [IMM]
	pushl	$2
	# 0x804e2d5:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e2d8:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e2d9:	calll	0x804deed [IMM <CODEREF>]
	calll	bkm_scale
	# 0x804e2de:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e2e1:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e2e4:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e2e6

	# 0x804e2e6:	subl	$4, %esp [IMM, REG]
	.globl sub_804e2e6
	.type sub_804e2e6, @function
sub_804e2e6:
	subl	$4, %esp
	# 0x804e2e9:	pushl	$8 [IMM]
	pushl	$8
	# 0x804e2eb:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e2ee:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e2f1:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e2f2:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e2f7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e2fa:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e2fd:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	.section	.text
	.align	32
	#Procedure 0x804e2ff

	# 0x804e2ff:	subl	$4, %esp [IMM, REG]
	.globl sub_804e2ff
	.type sub_804e2ff, @function
sub_804e2ff:
	subl	$4, %esp
	# 0x804e302:	pushl	$7 [IMM]
	pushl	$7
	# 0x804e304:	pushl	-0x28(%ebp) [MEM]
	pushl	-0x28(%ebp)
	# 0x804e307:	leal	-0x18(%ebp), %eax [MEM, REG]
	leal	-0x18(%ebp), %eax
	# 0x804e30a:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e30b:	calll	0x804dfae [IMM <CODEREF>]
	calll	bkm_scale_by_power
	# 0x804e310:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e313:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e316:	jmp	0x804e32e [IMM <CODEREF>]
	jmp	.label_653
	# 0x804e318:	movl	-0x18(%ebp), %eax [MEM, REG]
.label_669:
	movl	-0x18(%ebp), %eax
	# 0x804e31b:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804e31e:	movl	-0x44(%ebp), %ecx [MEM, REG]
	movl	-0x44(%ebp), %ecx
	# 0x804e321:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804e323:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804e326:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804e329:	orl	$2, %eax [IMM, REG]
	orl	$2, %eax
	# 0x804e32c:	jmp	0x804e364 [IMM <CODEREF>]
	jmp	.label_654
	# 0x804e32e:	movl	-0x20(%ebp), %eax [MEM, REG]
.label_653:
	movl	-0x20(%ebp), %eax
	# 0x804e331:	orl	%eax, -0x2c(%ebp) [REG, MEM]
	orl	%eax, -0x2c(%ebp)
	# 0x804e334:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e337:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804e339:	movl	-0x24(%ebp), %eax [MEM, REG]
	movl	-0x24(%ebp), %eax
	# 0x804e33c:	addl	%eax, %edx [REG, REG]
	addl	%eax, %edx
	# 0x804e33e:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e341:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804e343:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e346:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e348:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e34b:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e34d:	je	0x804e353 [IMM <CODEREF>]
	je	.label_655
	# 0x804e34f:	orl	$2, -0x2c(%ebp) [IMM, MEM]
	orl	$2, -0x2c(%ebp)
	# 0x804e353:	movl	-0x18(%ebp), %eax [MEM, REG]
.label_655:
	movl	-0x18(%ebp), %eax
	# 0x804e356:	movl	-0x14(%ebp), %edx [MEM, REG]
	movl	-0x14(%ebp), %edx
	# 0x804e359:	movl	-0x44(%ebp), %ecx [MEM, REG]
	movl	-0x44(%ebp), %ecx
	# 0x804e35c:	movl	%eax, 0(%ecx) [REG, MEM]
	movl	%eax, 0(%ecx)
	# 0x804e35e:	movl	%edx, 4(%ecx) [REG, MEM]
	movl	%edx, 4(%ecx)
	# 0x804e361:	movl	-0x2c(%ebp), %eax [MEM, REG]
	movl	-0x2c(%ebp), %eax
	# 0x804e364:	movl	-0xc(%ebp), %edx [MEM, REG]
.label_654:
	movl	-0xc(%ebp), %edx
	# 0x804e367:	xorl	%gs:0x14, %edx [MEM, REG]
	xorl	%gs:0x14, %edx
	# 0x804e36e:	je	0x804e375 [IMM <CODEREF>]
	je	.label_665
	# 0x804e370:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804e375:	leave	 []
.label_665:
	leave	
	# 0x804e376:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e377

	# 0x804e377:	pushl	%ebp [REG]
	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	pushl	%ebp
	# 0x804e378:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e37a:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804e37d:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e380:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804e383:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e386:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e389:	movl	0x14(%ebp), %eax [MEM, REG]
	movl	0x14(%ebp), %eax
	# 0x804e38c:	movl	%eax, -0x24(%ebp) [REG, MEM]
	movl	%eax, -0x24(%ebp)
	# 0x804e38f:	movl	%gs:0x14, %eax [MEM, REG]
	movl	%gs:0x14, %eax
	# 0x804e395:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e398:	xorl	%eax, %eax [REG, REG]
	xorl	%eax, %eax
	# 0x804e39a:	cmpl	$0, -0x1c(%ebp) [IMM, MEM]
	cmpl	$0, -0x1c(%ebp)
	# 0x804e39e:	jne	0x804e3a6 [IMM <CODEREF>]
	jne	.label_676
	# 0x804e3a0:	leal	-0x14(%ebp), %eax [MEM, REG]
	leal	-0x14(%ebp), %eax
	# 0x804e3a3:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804e3a6:	pushl	-0x24(%ebp) [MEM]
.label_676:
	pushl	-0x24(%ebp)
	# 0x804e3a9:	pushl	0x10(%ebp) [MEM]
	pushl	0x10(%ebp)
	# 0x804e3ac:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804e3af:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804e3b2:	calll	0x8048db0 [IMM <CODEREF>]
	calll	mbrtowc
	# 0x804e3b7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e3ba:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804e3bd:	cmpl	$-3, -0x10(%ebp) [IMM, MEM]
	cmpl	$-3, -0x10(%ebp)
	# 0x804e3c1:	jbe	0x804e3f6 [IMM <CODEREF>]
	jbe	.label_675
	# 0x804e3c3:	cmpl	$0, 0x10(%ebp) [IMM, MEM]
	cmpl	$0, 0x10(%ebp)
	# 0x804e3c7:	je	0x804e3f6 [IMM <CODEREF>]
	je	.label_675
	# 0x804e3c9:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e3cc:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e3ce:	calll	0x804e504 [IMM <CODEREF>]
	calll	hard_locale
	# 0x804e3d3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e3d6:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804e3d9:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e3db:	je	0x804e3f6 [IMM <CODEREF>]
	je	.label_675
	# 0x804e3dd:	movl	-0x20(%ebp), %eax [MEM, REG]
	movl	-0x20(%ebp), %eax
	# 0x804e3e0:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e3e3:	movb	%al, -0x15(%ebp) [REG, MEM]
	movb	%al, -0x15(%ebp)
	# 0x804e3e6:	movzbl	-0x15(%ebp), %edx [MEM, REG]
	movzbl	-0x15(%ebp), %edx
	# 0x804e3ea:	movl	-0x1c(%ebp), %eax [MEM, REG]
	movl	-0x1c(%ebp), %eax
	# 0x804e3ed:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804e3ef:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e3f4:	jmp	0x804e3f9 [IMM <CODEREF>]
	jmp	.label_678
	# 0x804e3f6:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_675:
	movl	-0x10(%ebp), %eax
	# 0x804e3f9:	movl	-0xc(%ebp), %ecx [MEM, REG]
.label_678:
	movl	-0xc(%ebp), %ecx
	# 0x804e3fc:	xorl	%gs:0x14, %ecx [MEM, REG]
	xorl	%gs:0x14, %ecx
	# 0x804e403:	je	0x804e40a [IMM <CODEREF>]
	je	.label_677
	# 0x804e405:	calll	0x8048d20 [IMM <CODEREF>]
	calll	__stack_chk_fail
	# 0x804e40a:	leave	 []
.label_677:
	leave	
	# 0x804e40b:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e40c

	# 0x804e40c:	pushl	%ebp [REG]
	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	pushl	%ebp
	# 0x804e40d:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e40f:	pushl	%esi [REG]
	pushl	%esi
	# 0x804e410:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804e411:	subl	$0x10, %esp [IMM, REG]
	subl	$0x10, %esp
	# 0x804e414:	movl	8(%ebp), %esi [MEM, REG]
	movl	8(%ebp), %esi
	# 0x804e417:	movl	0xc(%ebp), %ebx [MEM, REG]
	movl	0xc(%ebp), %ebx
	# 0x804e41a:	cmpl	%ebx, %esi [REG, REG]
	cmpl	%ebx, %esi
	# 0x804e41c:	jne	0x804e425 [IMM <CODEREF>]
	jne	.label_681
	# 0x804e41e:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804e423:	jmp	0x804e473 [IMM <CODEREF>]
	jmp	.label_682
	# 0x804e425:	movzbl	0(%esi), %eax [MEM, REG]
.label_681:
	movzbl	0(%esi), %eax
	# 0x804e428:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804e42b:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e42e:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e42f:	calll	0x804ea6e [IMM <CODEREF>]
	calll	c_tolower
	# 0x804e434:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e437:	movb	%al, -0xa(%ebp) [REG, MEM]
	movb	%al, -0xa(%ebp)
	# 0x804e43a:	movzbl	0(%ebx), %eax [MEM, REG]
	movzbl	0(%ebx), %eax
	# 0x804e43d:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804e440:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e443:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e444:	calll	0x804ea6e [IMM <CODEREF>]
	calll	c_tolower
	# 0x804e449:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e44c:	movb	%al, -9(%ebp) [REG, MEM]
	movb	%al, -9(%ebp)
	# 0x804e44f:	cmpb	$0, -0xa(%ebp) [IMM, MEM]
	cmpb	$0, -0xa(%ebp)
	# 0x804e453:	je	0x804e466 [IMM <CODEREF>]
	je	.label_680
	# 0x804e455:	addl	$1, %esi [IMM, REG]
	addl	$1, %esi
	# 0x804e458:	addl	$1, %ebx [IMM, REG]
	addl	$1, %ebx
	# 0x804e45b:	movzbl	-0xa(%ebp), %eax [MEM, REG]
	movzbl	-0xa(%ebp), %eax
	# 0x804e45f:	cmpb	-9(%ebp), %al [MEM, REG]
	cmpb	-9(%ebp), %al
	# 0x804e462:	je	0x804e425 [IMM <CODEREF>]
	je	.label_681
	# 0x804e464:	jmp	0x804e467 [IMM <CODEREF>]
	jmp	.label_679
	# 0x804e466:	nop	 []
.label_680:
	nop	
	# 0x804e467:	movzbl	-0xa(%ebp), %edx [MEM, REG]
.label_679:
	movzbl	-0xa(%ebp), %edx
	# 0x804e46b:	movzbl	-9(%ebp), %eax [MEM, REG]
	movzbl	-9(%ebp), %eax
	# 0x804e46f:	subl	%eax, %edx [REG, REG]
	subl	%eax, %edx
	# 0x804e471:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804e473:	leal	-8(%ebp), %esp [MEM, REG]
.label_682:
	leal	-8(%ebp), %esp
	# 0x804e476:	popl	%ebx [REG]
	popl	%ebx
	# 0x804e477:	popl	%esi [REG]
	popl	%esi
	# 0x804e478:	popl	%ebp [REG]
	popl	%ebp
	# 0x804e479:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e47a

	# 0x804e47a:	pushl	%ebp [REG]
	.globl close_stream
	.type close_stream, @function
close_stream:
	pushl	%ebp
	# 0x804e47b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e47d:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804e480:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e483:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e486:	calll	0x8048da0 [IMM <CODEREF>]
	calll	__fpending
	# 0x804e48b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e48e:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e490:	setne	%al [REG]
	setne	%al
	# 0x804e493:	movb	%al, -0xb(%ebp) [REG, MEM]
	movb	%al, -0xb(%ebp)
	# 0x804e496:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e499:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e49c:	calll	0x8048d60 [IMM <CODEREF>]
	calll	ferror_unlocked
	# 0x804e4a1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e4a4:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e4a6:	setne	%al [REG]
	setne	%al
	# 0x804e4a9:	movb	%al, -0xa(%ebp) [REG, MEM]
	movb	%al, -0xa(%ebp)
	# 0x804e4ac:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e4af:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e4b2:	calll	0x804e689 [IMM <CODEREF>]
	calll	rpl_fclose
	# 0x804e4b7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e4ba:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e4bc:	setne	%al [REG]
	setne	%al
	# 0x804e4bf:	movb	%al, -9(%ebp) [REG, MEM]
	movb	%al, -9(%ebp)
	# 0x804e4c2:	cmpb	$0, -0xa(%ebp) [IMM, MEM]
	cmpb	$0, -0xa(%ebp)
	# 0x804e4c6:	jne	0x804e4e0 [IMM <CODEREF>]
	jne	.label_685
	# 0x804e4c8:	cmpb	$0, -9(%ebp) [IMM, MEM]
	cmpb	$0, -9(%ebp)
	# 0x804e4cc:	je	0x804e4fd [IMM <CODEREF>]
	je	.label_684
	# 0x804e4ce:	cmpb	$0, -0xb(%ebp) [IMM, MEM]
	cmpb	$0, -0xb(%ebp)
	# 0x804e4d2:	jne	0x804e4e0 [IMM <CODEREF>]
	jne	.label_685
	# 0x804e4d4:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e4d9:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e4db:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804e4de:	je	0x804e4fd [IMM <CODEREF>]
	je	.label_684
	# 0x804e4e0:	movzbl	-9(%ebp), %eax [MEM, REG]
.label_685:
	movzbl	-9(%ebp), %eax
	# 0x804e4e4:	xorl	$1, %eax [IMM, REG]
	xorl	$1, %eax
	# 0x804e4e7:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e4e9:	je	0x804e4f6 [IMM <CODEREF>]
	je	.label_683
	# 0x804e4eb:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e4f0:	movl	$0, 0(%eax) [IMM, MEM]
	movl	$0, 0(%eax)
	# 0x804e4f6:	movl	$0xffffffff, %eax [IMM, REG]
.label_683:
	movl	$0xffffffff, %eax
	# 0x804e4fb:	jmp	0x804e502 [IMM <CODEREF>]
	jmp	.label_686
	# 0x804e4fd:	movl	$0, %eax [IMM, REG]
.label_684:
	movl	$0, %eax
	# 0x804e502:	leave	 []
.label_686:
	leave	
	# 0x804e503:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e504

	# 0x804e504:	pushl	%ebp [REG]
	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	pushl	%ebp
	# 0x804e505:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e507:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804e50a:	movb	$1, -0xd(%ebp) [IMM, MEM]
	movb	$1, -0xd(%ebp)
	# 0x804e50e:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e511:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e513:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e516:	calll	0x8048f20 [IMM <CODEREF>]
	calll	setlocale
	# 0x804e51b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e51e:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e521:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804e525:	je	0x804e559 [IMM <CODEREF>]
	je	.label_687
	# 0x804e527:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e52a:	pushl	$0x80504bf [IMM <DATAREF>]
	pushl	$label_688
	# 0x804e52f:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804e532:	calll	0x8048c50 [IMM <CODEREF>]
	calll	strcmp
	# 0x804e537:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e53a:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e53c:	je	0x804e555 [IMM <CODEREF>]
	je	.label_689
	# 0x804e53e:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e541:	pushl	$0x80504c1 [IMM <DATAREF>]
	pushl	$label_690
	# 0x804e546:	pushl	-0xc(%ebp) [MEM]
	pushl	-0xc(%ebp)
	# 0x804e549:	calll	0x8048c50 [IMM <CODEREF>]
	calll	strcmp
	# 0x804e54e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e551:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e553:	jne	0x804e559 [IMM <CODEREF>]
	jne	.label_687
	# 0x804e555:	movb	$0, -0xd(%ebp) [IMM, MEM]
.label_689:
	movb	$0, -0xd(%ebp)
	# 0x804e559:	movzbl	-0xd(%ebp), %eax [MEM, REG]
.label_687:
	movzbl	-0xd(%ebp), %eax
	# 0x804e55d:	leave	 []
	leave	
	# 0x804e55e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e55f

	# 0x804e55f:	pushl	%ebp [REG]
	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	pushl	%ebp
	# 0x804e560:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e562:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804e565:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e568:	pushl	$0xe [IMM]
	pushl	$0xe
	# 0x804e56a:	calll	0x804e87f [IMM <CODEREF>]
	calll	rpl_nl_langinfo
	# 0x804e56f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e572:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e575:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804e579:	jne	0x804e582 [IMM <CODEREF>]
	jne	.label_694
	# 0x804e57b:	movl	$0x80504c7, -0xc(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_692, -12(%ebp)
	# 0x804e582:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_694:
	movl	-0xc(%ebp), %eax
	# 0x804e585:	movzbl	0(%eax), %eax [MEM, REG]
	movzbl	0(%eax), %eax
	# 0x804e588:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e58a:	jne	0x804e593 [IMM <CODEREF>]
	jne	.label_691
	# 0x804e58c:	movl	$0x80504c8, -0xc(%ebp) [IMM <DATAREF>, MEM]
	movl	$label_693, -12(%ebp)
	# 0x804e593:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_691:
	movl	-0xc(%ebp), %eax
	# 0x804e596:	leave	 []
	leave	
	# 0x804e597:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e598
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	# 0x804e598:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e599:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e59b:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804e59e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e5a1:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e5a4:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e5a5:	calll	0x8048ca0 [IMM <CODEREF>]
	calll	wcwidth
	# 0x804e5aa:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e5ad:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e5b0:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804e5b4:	jns	0x804e5ce [IMM <CODEREF>]
	jns	.label_696
	# 0x804e5b6:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e5b9:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e5bc:	calll	0x8048d30 [IMM <CODEREF>]
	calll	iswcntrl
	# 0x804e5c1:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e5c4:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e5c6:	sete	%al [REG]
	sete	%al
	# 0x804e5c9:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804e5cc:	jmp	0x804e5d1 [IMM <CODEREF>]
	jmp	.label_695
	# 0x804e5ce:	movl	-0xc(%ebp), %eax [MEM, REG]
.label_696:
	movl	-0xc(%ebp), %eax
	# 0x804e5d1:	leave	 []
.label_695:
	leave	
	# 0x804e5d2:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e5d3

	# 0x804e5d3:	pushl	%ebp [REG]
	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	pushl	%ebp
	# 0x804e5d4:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e5d6:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e5d9:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e5dc:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e5de:	movl	0xc(%ebp), %edx [MEM, REG]
	movl	0xc(%ebp), %edx
	# 0x804e5e1:	addl	$0x10, %edx [IMM, REG]
	addl	$0x10, %edx
	# 0x804e5e4:	cmpl	%edx, %eax [REG, REG]
	cmpl	%edx, %eax
	# 0x804e5e6:	jne	0x804e615 [IMM <CODEREF>]
	jne	.label_697
	# 0x804e5e8:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e5eb:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804e5ee:	movl	0xc(%ebp), %edx [MEM, REG]
	movl	0xc(%ebp), %edx
	# 0x804e5f1:	leal	0x10(%edx), %ecx [MEM, REG]
	leal	0x10(%edx), %ecx
	# 0x804e5f4:	movl	8(%ebp), %edx [MEM, REG]
	movl	8(%ebp), %edx
	# 0x804e5f7:	addl	$0x10, %edx [IMM, REG]
	addl	$0x10, %edx
	# 0x804e5fa:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804e5fd:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e5fe:	pushl	%ecx [REG]
	pushl	%ecx
	# 0x804e5ff:	pushl	%edx [REG]
	pushl	%edx
	# 0x804e600:	calll	0x8048cc0 [IMM <CODEREF>]
	calll	memcpy
	# 0x804e605:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e608:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e60b:	leal	0x10(%eax), %edx [MEM, REG]
	leal	0x10(%eax), %edx
	# 0x804e60e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e611:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804e613:	jmp	0x804e61f [IMM <CODEREF>]
	jmp	.label_698
	# 0x804e615:	movl	0xc(%ebp), %eax [MEM, REG]
.label_697:
	movl	0xc(%ebp), %eax
	# 0x804e618:	movl	0(%eax), %edx [MEM, REG]
	movl	0(%eax), %edx
	# 0x804e61a:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e61d:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804e61f:	movl	0xc(%ebp), %eax [MEM, REG]
.label_698:
	movl	0xc(%ebp), %eax
	# 0x804e622:	movl	4(%eax), %edx [MEM, REG]
	movl	4(%eax), %edx
	# 0x804e625:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e628:	movl	%edx, 4(%eax) [REG, MEM]
	movl	%edx, 4(%eax)
	# 0x804e62b:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e62e:	movzbl	8(%eax), %edx [MEM, REG]
	movzbl	8(%eax), %edx
	# 0x804e632:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e635:	movb	%dl, 8(%eax) [REG, MEM]
	movb	%dl, 8(%eax)
	# 0x804e638:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e63b:	movzbl	8(%eax), %eax [MEM, REG]
	movzbl	8(%eax), %eax
	# 0x804e63f:	testb	%al, %al [REG, REG]
	testb	%al, %al
	# 0x804e641:	je	0x804e64f [IMM <CODEREF>]
	je	.label_699
	# 0x804e643:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e646:	movl	0xc(%eax), %edx [MEM, REG]
	movl	0xc(%eax), %edx
	# 0x804e649:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e64c:	movl	%edx, 0xc(%eax) [REG, MEM]
	movl	%edx, 0xc(%eax)
	# 0x804e64f:	nop	 []
.label_699:
	nop	
	# 0x804e650:	leave	 []
	leave	
	# 0x804e651:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e652

	# 0x804e652:	pushl	%ebp [REG]
	.globl is_basic
	.type is_basic, @function
is_basic:
	pushl	%ebp
	# 0x804e653:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e655:	subl	$4, %esp [IMM, REG]
	subl	$4, %esp
	# 0x804e658:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e65b:	movb	%al, -4(%ebp) [REG, MEM]
	movb	%al, -4(%ebp)
	# 0x804e65e:	movzbl	-4(%ebp), %eax [MEM, REG]
	movzbl	-4(%ebp), %eax
	# 0x804e662:	shrb	$5, %al [IMM, REG]
	shrb	$5, %al
	# 0x804e665:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804e668:	movl	0x80504e0(, %eax, 4), %edx [MEM, REG]
	movl	is_basic_table(, %eax, 4),  %edx
	# 0x804e66f:	movzbl	-4(%ebp), %eax [MEM, REG]
	movzbl	-4(%ebp), %eax
	# 0x804e673:	movzbl	%al, %eax [REG, REG]
	movzbl	%al, %eax
	# 0x804e676:	andl	$0x1f, %eax [IMM, REG]
	andl	$0x1f, %eax
	# 0x804e679:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804e67b:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804e67d:	movl	%edx, %eax [REG, REG]
	movl	%edx, %eax
	# 0x804e67f:	andl	$1, %eax [IMM, REG]
	andl	$1, %eax
	# 0x804e682:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e684:	setne	%al [REG]
	setne	%al
	# 0x804e687:	leave	 []
	leave	
	# 0x804e688:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e689

	# 0x804e689:	pushl	%ebp [REG]
	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	pushl	%ebp
	# 0x804e68a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e68c:	subl	$0x18, %esp [IMM, REG]
	subl	$0x18, %esp
	# 0x804e68f:	movl	$0, -0x14(%ebp) [IMM, MEM]
	movl	$0, -0x14(%ebp)
	# 0x804e696:	movl	$0, -0x10(%ebp) [IMM, MEM]
	movl	$0, -0x10(%ebp)
	# 0x804e69d:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e6a0:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e6a3:	calll	0x8048ef0 [IMM <CODEREF>]
	calll	fileno
	# 0x804e6a8:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e6ab:	movl	%eax, -0xc(%ebp) [REG, MEM]
	movl	%eax, -0xc(%ebp)
	# 0x804e6ae:	cmpl	$0, -0xc(%ebp) [IMM, MEM]
	cmpl	$0, -0xc(%ebp)
	# 0x804e6b2:	jns	0x804e6c7 [IMM <CODEREF>]
	jns	.label_700
	# 0x804e6b4:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e6b7:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e6ba:	calll	0x8048ce0 [IMM <CODEREF>]
	calll	fclose
	# 0x804e6bf:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e6c2:	jmp	0x804e74d [IMM <CODEREF>]
	jmp	.label_704
	# 0x804e6c7:	subl	$0xc, %esp [IMM, REG]
.label_700:
	subl	$0xc, %esp
	# 0x804e6ca:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e6cd:	calll	0x8048e30 [IMM <CODEREF>]
	calll	__freading
	# 0x804e6d2:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e6d5:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e6d7:	je	0x804e704 [IMM <CODEREF>]
	je	.label_703
	# 0x804e6d9:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e6dc:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e6df:	calll	0x8048ef0 [IMM <CODEREF>]
	calll	fileno
	# 0x804e6e4:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e6e7:	pushl	$1 [IMM]
	pushl	$1
	# 0x804e6e9:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e6eb:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e6ed:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e6ee:	calll	0x8048f40 [IMM <CODEREF>]
	calll	lseek64
	# 0x804e6f3:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e6f6:	movl	%edx, %ecx [REG, REG]
	movl	%edx, %ecx
	# 0x804e6f8:	xorl	$0xffffffff, %ecx [IMM, REG]
	xorl	$0xffffffff, %ecx
	# 0x804e6fb:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x804e6fe:	orl	%ecx, %eax [REG, REG]
	orl	%ecx, %eax
	# 0x804e700:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e702:	je	0x804e720 [IMM <CODEREF>]
	je	.label_702
	# 0x804e704:	subl	$0xc, %esp [IMM, REG]
.label_703:
	subl	$0xc, %esp
	# 0x804e707:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e70a:	calll	0x804e777 [IMM <CODEREF>]
	calll	rpl_fflush
	# 0x804e70f:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e712:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e714:	je	0x804e720 [IMM <CODEREF>]
	je	.label_702
	# 0x804e716:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e71b:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e71d:	movl	%eax, -0x14(%ebp) [REG, MEM]
	movl	%eax, -0x14(%ebp)
	# 0x804e720:	subl	$0xc, %esp [IMM, REG]
.label_702:
	subl	$0xc, %esp
	# 0x804e723:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e726:	calll	0x8048ce0 [IMM <CODEREF>]
	calll	fclose
	# 0x804e72b:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e72e:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804e731:	cmpl	$0, -0x14(%ebp) [IMM, MEM]
	cmpl	$0, -0x14(%ebp)
	# 0x804e735:	je	0x804e74a [IMM <CODEREF>]
	je	.label_701
	# 0x804e737:	calll	0x8048ed0 [IMM <CODEREF>]
	calll	__errno_location
	# 0x804e73c:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804e73e:	movl	-0x14(%ebp), %eax [MEM, REG]
	movl	-0x14(%ebp), %eax
	# 0x804e741:	movl	%eax, 0(%edx) [REG, MEM]
	movl	%eax, 0(%edx)
	# 0x804e743:	movl	$0xffffffff, -0x10(%ebp) [IMM, MEM]
	movl	$0xffffffff, -0x10(%ebp)
	# 0x804e74a:	movl	-0x10(%ebp), %eax [MEM, REG]
.label_701:
	movl	-0x10(%ebp), %eax
	# 0x804e74d:	leave	 []
.label_704:
	leave	
	# 0x804e74e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e74f

	# 0x804e74f:	pushl	%ebp [REG]
	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	pushl	%ebp
	# 0x804e750:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e752:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e755:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e758:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e75a:	andl	$0x100, %eax [IMM, REG]
	andl	$0x100, %eax
	# 0x804e75f:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e761:	je	0x804e774 [IMM <CODEREF>]
	je	.label_705
	# 0x804e763:	pushl	$1 [IMM]
	pushl	$1
	# 0x804e765:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e767:	pushl	$0 [IMM]
	pushl	$0
	# 0x804e769:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e76c:	calll	0x804e7c3 [IMM <CODEREF>]
	calll	rpl_fseeko
	# 0x804e771:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e774:	nop	 []
.label_705:
	nop	
	# 0x804e775:	leave	 []
	leave	
	# 0x804e776:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e777

	# 0x804e777:	pushl	%ebp [REG]
	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	pushl	%ebp
	# 0x804e778:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e77a:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e77d:	cmpl	$0, 8(%ebp) [IMM, MEM]
	cmpl	$0, 8(%ebp)
	# 0x804e781:	je	0x804e795 [IMM <CODEREF>]
	je	.label_707
	# 0x804e783:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e786:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e789:	calll	0x8048e30 [IMM <CODEREF>]
	calll	__freading
	# 0x804e78e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e791:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e793:	jne	0x804e7a5 [IMM <CODEREF>]
	jne	.label_708
	# 0x804e795:	subl	$0xc, %esp [IMM, REG]
.label_707:
	subl	$0xc, %esp
	# 0x804e798:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e79b:	calll	0x8048c80 [IMM <CODEREF>]
	calll	fflush
	# 0x804e7a0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e7a3:	jmp	0x804e7c1 [IMM <CODEREF>]
	jmp	.label_706
	# 0x804e7a5:	subl	$0xc, %esp [IMM, REG]
.label_708:
	subl	$0xc, %esp
	# 0x804e7a8:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e7ab:	calll	0x804e74f [IMM <CODEREF>]
	calll	clear_ungetc_buffer_preserving_position
	# 0x804e7b0:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e7b3:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e7b6:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e7b9:	calll	0x8048c80 [IMM <CODEREF>]
	calll	fflush
	# 0x804e7be:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e7c1:	leave	 []
.label_706:
	leave	
	# 0x804e7c2:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e7c3

	# 0x804e7c3:	pushl	%ebp [REG]
	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	pushl	%ebp
	# 0x804e7c4:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e7c6:	subl	$0x28, %esp [IMM, REG]
	subl	$0x28, %esp
	# 0x804e7c9:	movl	0xc(%ebp), %eax [MEM, REG]
	movl	0xc(%ebp), %eax
	# 0x804e7cc:	movl	%eax, -0x20(%ebp) [REG, MEM]
	movl	%eax, -0x20(%ebp)
	# 0x804e7cf:	movl	0x10(%ebp), %eax [MEM, REG]
	movl	0x10(%ebp), %eax
	# 0x804e7d2:	movl	%eax, -0x1c(%ebp) [REG, MEM]
	movl	%eax, -0x1c(%ebp)
	# 0x804e7d5:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e7d8:	movl	8(%eax), %edx [MEM, REG]
	movl	8(%eax), %edx
	# 0x804e7db:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e7de:	movl	4(%eax), %eax [MEM, REG]
	movl	4(%eax), %eax
	# 0x804e7e1:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x804e7e3:	jne	0x804e869 [IMM <CODEREF>]
	jne	.label_710
	# 0x804e7e9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e7ec:	movl	0x14(%eax), %edx [MEM, REG]
	movl	0x14(%eax), %edx
	# 0x804e7ef:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e7f2:	movl	0x10(%eax), %eax [MEM, REG]
	movl	0x10(%eax), %eax
	# 0x804e7f5:	cmpl	%eax, %edx [REG, REG]
	cmpl	%eax, %edx
	# 0x804e7f7:	jne	0x804e869 [IMM <CODEREF>]
	jne	.label_710
	# 0x804e7f9:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e7fc:	movl	0x24(%eax), %eax [MEM, REG]
	movl	0x24(%eax), %eax
	# 0x804e7ff:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e801:	jne	0x804e869 [IMM <CODEREF>]
	jne	.label_710
	# 0x804e803:	subl	$0xc, %esp [IMM, REG]
	subl	$0xc, %esp
	# 0x804e806:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e809:	calll	0x8048ef0 [IMM <CODEREF>]
	calll	fileno
	# 0x804e80e:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e811:	pushl	0x14(%ebp) [MEM]
	pushl	0x14(%ebp)
	# 0x804e814:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804e817:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804e81a:	pushl	%eax [REG]
	pushl	%eax
	# 0x804e81b:	calll	0x8048f40 [IMM <CODEREF>]
	calll	lseek64
	# 0x804e820:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e823:	movl	%eax, -0x10(%ebp) [REG, MEM]
	movl	%eax, -0x10(%ebp)
	# 0x804e826:	movl	%edx, -0xc(%ebp) [REG, MEM]
	movl	%edx, -0xc(%ebp)
	# 0x804e829:	movl	-0xc(%ebp), %eax [MEM, REG]
	movl	-0xc(%ebp), %eax
	# 0x804e82c:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x804e82f:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804e831:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804e834:	xorl	$0xffffffff, %eax [IMM, REG]
	xorl	$0xffffffff, %eax
	# 0x804e837:	orl	%edx, %eax [REG, REG]
	orl	%edx, %eax
	# 0x804e839:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e83b:	jne	0x804e844 [IMM <CODEREF>]
	jne	.label_709
	# 0x804e83d:	movl	$0xffffffff, %eax [IMM, REG]
	movl	$0xffffffff, %eax
	# 0x804e842:	jmp	0x804e87d [IMM <CODEREF>]
	jmp	.label_711
	# 0x804e844:	movl	8(%ebp), %eax [MEM, REG]
.label_709:
	movl	8(%ebp), %eax
	# 0x804e847:	movl	0(%eax), %eax [MEM, REG]
	movl	0(%eax), %eax
	# 0x804e849:	andl	$0xffffffef, %eax [IMM, REG]
	andl	$0xffffffef, %eax
	# 0x804e84c:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804e84e:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e851:	movl	%edx, 0(%eax) [REG, MEM]
	movl	%edx, 0(%eax)
	# 0x804e853:	movl	8(%ebp), %ecx [MEM, REG]
	movl	8(%ebp), %ecx
	# 0x804e856:	movl	-0x10(%ebp), %eax [MEM, REG]
	movl	-0x10(%ebp), %eax
	# 0x804e859:	movl	-0xc(%ebp), %edx [MEM, REG]
	movl	-0xc(%ebp), %edx
	# 0x804e85c:	movl	%eax, 0x4c(%ecx) [REG, MEM]
	movl	%eax, 0x4c(%ecx)
	# 0x804e85f:	movl	%edx, 0x50(%ecx) [REG, MEM]
	movl	%edx, 0x50(%ecx)
	# 0x804e862:	movl	$0, %eax [IMM, REG]
	movl	$0, %eax
	# 0x804e867:	jmp	0x804e87d [IMM <CODEREF>]
	jmp	.label_711
	# 0x804e869:	pushl	0x14(%ebp) [MEM]
.label_710:
	pushl	0x14(%ebp)
	# 0x804e86c:	pushl	-0x1c(%ebp) [MEM]
	pushl	-0x1c(%ebp)
	# 0x804e86f:	pushl	-0x20(%ebp) [MEM]
	pushl	-0x20(%ebp)
	# 0x804e872:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e875:	calll	0x8048d00 [IMM <CODEREF>]
	calll	fseeko64
	# 0x804e87a:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e87d:	leave	 []
.label_711:
	leave	
	# 0x804e87e:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e87f

	# 0x804e87f:	pushl	%ebp [REG]
	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	pushl	%ebp
	# 0x804e880:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e882:	subl	$8, %esp [IMM, REG]
	subl	$8, %esp
	# 0x804e885:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e888:	subl	$0x27d8, %eax [IMM, REG]
	subl	$0x27d8, %eax
	# 0x804e88d:	cmpl	$0xb, %eax [IMM, REG]
	cmpl	$0xb, %eax
	# 0x804e890:	ja	0x804e89b [IMM <CODEREF>]
	ja	.label_713
	# 0x804e892:	addl	$0x1d842, 8(%ebp) [IMM, MEM]
	addl	$0x1d842, 8(%ebp)
	# 0x804e899:	jmp	0x804e89c [IMM <CODEREF>]
	jmp	.label_712
	# 0x804e89b:	nop	 []
.label_713:
	nop	
	# 0x804e89c:	subl	$0xc, %esp [IMM, REG]
.label_712:
	subl	$0xc, %esp
	# 0x804e89f:	pushl	8(%ebp) [MEM]
	pushl	8(%ebp)
	# 0x804e8a2:	calll	0x8048f10 [IMM <CODEREF>]
	calll	nl_langinfo
	# 0x804e8a7:	addl	$0x10, %esp [IMM, REG]
	addl	$0x10, %esp
	# 0x804e8aa:	leave	 []
	leave	
	# 0x804e8ab:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e8ac
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	# 0x804e8ac:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e8ad:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e8af:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e8b2:	cmpl	$0x5a, %eax [IMM, REG]
	cmpl	$0x5a, %eax
	# 0x804e8b5:	jg	0x804e8c6 [IMM <CODEREF>]
	jg	.label_716
	# 0x804e8b7:	cmpl	$0x41, %eax [IMM, REG]
	cmpl	$0x41, %eax
	# 0x804e8ba:	jge	0x804e8ce [IMM <CODEREF>]
	jge	.label_714
	# 0x804e8bc:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804e8bf:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804e8c2:	ja	0x804e8d5 [IMM <CODEREF>]
	ja	.label_715
	# 0x804e8c4:	jmp	0x804e8ce [IMM <CODEREF>]
	jmp	.label_714
	# 0x804e8c6:	subl	$0x61, %eax [IMM, REG]
.label_716:
	subl	$0x61, %eax
	# 0x804e8c9:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804e8cc:	ja	0x804e8d5 [IMM <CODEREF>]
	ja	.label_715
	# 0x804e8ce:	movl	$1, %eax [IMM, REG]
.label_714:
	movl	$1, %eax
	# 0x804e8d3:	jmp	0x804e8da [IMM <CODEREF>]
	jmp	.label_717
	# 0x804e8d5:	movl	$0, %eax [IMM, REG]
.label_715:
	movl	$0, %eax
	# 0x804e8da:	popl	%ebp [REG]
.label_717:
	popl	%ebp
	# 0x804e8db:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e8dc
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	# 0x804e8dc:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e8dd:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e8df:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e8e2:	cmpl	$0x41, %eax [IMM, REG]
	cmpl	$0x41, %eax
	# 0x804e8e5:	jl	0x804e8fb [IMM <CODEREF>]
	jl	.label_720
	# 0x804e8e7:	cmpl	$0x5a, %eax [IMM, REG]
	cmpl	$0x5a, %eax
	# 0x804e8ea:	jle	0x804e8f4 [IMM <CODEREF>]
	jle	.label_719
	# 0x804e8ec:	subl	$0x61, %eax [IMM, REG]
	subl	$0x61, %eax
	# 0x804e8ef:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804e8f2:	ja	0x804e8fb [IMM <CODEREF>]
	ja	.label_720
	# 0x804e8f4:	movl	$1, %eax [IMM, REG]
.label_719:
	movl	$1, %eax
	# 0x804e8f9:	jmp	0x804e900 [IMM <CODEREF>]
	jmp	.label_718
	# 0x804e8fb:	movl	$0, %eax [IMM, REG]
.label_720:
	movl	$0, %eax
	# 0x804e900:	popl	%ebp [REG]
.label_718:
	popl	%ebp
	# 0x804e901:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e902
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	# 0x804e902:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e903:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e905:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e908:	addl	$0, %eax [IMM, REG]
	addl	$0, %eax
	# 0x804e90b:	cmpl	$0x7f, %eax [IMM, REG]
	cmpl	$0x7f, %eax
	# 0x804e90e:	ja	0x804e917 [IMM <CODEREF>]
	ja	.label_722
	# 0x804e910:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e915:	jmp	0x804e91c [IMM <CODEREF>]
	jmp	.label_721
	# 0x804e917:	movl	$0, %eax [IMM, REG]
.label_722:
	movl	$0, %eax
	# 0x804e91c:	popl	%ebp [REG]
.label_721:
	popl	%ebp
	# 0x804e91d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e91e
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	# 0x804e91e:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e91f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e921:	cmpl	$0x20, 8(%ebp) [IMM, MEM]
	cmpl	$0x20, 8(%ebp)
	# 0x804e925:	je	0x804e92d [IMM <CODEREF>]
	je	.label_724
	# 0x804e927:	cmpl	$9, 8(%ebp) [IMM, MEM]
	cmpl	$9, 8(%ebp)
	# 0x804e92b:	jne	0x804e934 [IMM <CODEREF>]
	jne	.label_725
	# 0x804e92d:	movl	$1, %eax [IMM, REG]
.label_724:
	movl	$1, %eax
	# 0x804e932:	jmp	0x804e939 [IMM <CODEREF>]
	jmp	.label_723
	# 0x804e934:	movl	$0, %eax [IMM, REG]
.label_725:
	movl	$0, %eax
	# 0x804e939:	andl	$1, %eax [IMM, REG]
.label_723:
	andl	$1, %eax
	# 0x804e93c:	popl	%ebp [REG]
	popl	%ebp
	# 0x804e93d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e93e
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	# 0x804e93e:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e93f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e941:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e944:	testl	%eax, %eax [REG, REG]
	testl	%eax, %eax
	# 0x804e946:	js	0x804e959 [IMM <CODEREF>]
	js	.label_728
	# 0x804e948:	cmpl	$0x1f, %eax [IMM, REG]
	cmpl	$0x1f, %eax
	# 0x804e94b:	jle	0x804e952 [IMM <CODEREF>]
	jle	.label_727
	# 0x804e94d:	cmpl	$0x7f, %eax [IMM, REG]
	cmpl	$0x7f, %eax
	# 0x804e950:	jne	0x804e959 [IMM <CODEREF>]
	jne	.label_728
	# 0x804e952:	movl	$1, %eax [IMM, REG]
.label_727:
	movl	$1, %eax
	# 0x804e957:	jmp	0x804e95e [IMM <CODEREF>]
	jmp	.label_726
	# 0x804e959:	movl	$0, %eax [IMM, REG]
.label_728:
	movl	$0, %eax
	# 0x804e95e:	popl	%ebp [REG]
.label_726:
	popl	%ebp
	# 0x804e95f:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e960
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	# 0x804e960:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e961:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e963:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e966:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804e969:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804e96c:	ja	0x804e975 [IMM <CODEREF>]
	ja	.label_729
	# 0x804e96e:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e973:	jmp	0x804e97a [IMM <CODEREF>]
	jmp	.label_730
	# 0x804e975:	movl	$0, %eax [IMM, REG]
.label_729:
	movl	$0, %eax
	# 0x804e97a:	popl	%ebp [REG]
.label_730:
	popl	%ebp
	# 0x804e97b:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e97c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	# 0x804e97c:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e97d:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e97f:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e982:	subl	$0x21, %eax [IMM, REG]
	subl	$0x21, %eax
	# 0x804e985:	cmpl	$0x5d, %eax [IMM, REG]
	cmpl	$0x5d, %eax
	# 0x804e988:	ja	0x804e991 [IMM <CODEREF>]
	ja	.label_732
	# 0x804e98a:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e98f:	jmp	0x804e996 [IMM <CODEREF>]
	jmp	.label_731
	# 0x804e991:	movl	$0, %eax [IMM, REG]
.label_732:
	movl	$0, %eax
	# 0x804e996:	popl	%ebp [REG]
.label_731:
	popl	%ebp
	# 0x804e997:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e998
	.globl c_islower
	.type c_islower, @function
c_islower:

	# 0x804e998:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e999:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e99b:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e99e:	subl	$0x61, %eax [IMM, REG]
	subl	$0x61, %eax
	# 0x804e9a1:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804e9a4:	ja	0x804e9ad [IMM <CODEREF>]
	ja	.label_733
	# 0x804e9a6:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e9ab:	jmp	0x804e9b2 [IMM <CODEREF>]
	jmp	.label_734
	# 0x804e9ad:	movl	$0, %eax [IMM, REG]
.label_733:
	movl	$0, %eax
	# 0x804e9b2:	popl	%ebp [REG]
.label_734:
	popl	%ebp
	# 0x804e9b3:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e9b4
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	# 0x804e9b4:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e9b5:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e9b7:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e9ba:	subl	$0x20, %eax [IMM, REG]
	subl	$0x20, %eax
	# 0x804e9bd:	cmpl	$0x5e, %eax [IMM, REG]
	cmpl	$0x5e, %eax
	# 0x804e9c0:	ja	0x804e9c9 [IMM <CODEREF>]
	ja	.label_736
	# 0x804e9c2:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804e9c7:	jmp	0x804e9ce [IMM <CODEREF>]
	jmp	.label_735
	# 0x804e9c9:	movl	$0, %eax [IMM, REG]
.label_736:
	movl	$0, %eax
	# 0x804e9ce:	popl	%ebp [REG]
.label_735:
	popl	%ebp
	# 0x804e9cf:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e9d0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	# 0x804e9d0:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804e9d1:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804e9d3:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804e9d6:	cmpl	$0x40, %eax [IMM, REG]
	cmpl	$0x40, %eax
	# 0x804e9d9:	jg	0x804e9ea [IMM <CODEREF>]
	jg	.label_737
	# 0x804e9db:	cmpl	$0x3a, %eax [IMM, REG]
	cmpl	$0x3a, %eax
	# 0x804e9de:	jge	0x804e9fc [IMM <CODEREF>]
	jge	.label_739
	# 0x804e9e0:	subl	$0x21, %eax [IMM, REG]
	subl	$0x21, %eax
	# 0x804e9e3:	cmpl	$0xe, %eax [IMM, REG]
	cmpl	$0xe, %eax
	# 0x804e9e6:	ja	0x804ea03 [IMM <CODEREF>]
	ja	.label_738
	# 0x804e9e8:	jmp	0x804e9fc [IMM <CODEREF>]
	jmp	.label_739
	# 0x804e9ea:	cmpl	$0x5b, %eax [IMM, REG]
.label_737:
	cmpl	$0x5b, %eax
	# 0x804e9ed:	jl	0x804ea03 [IMM <CODEREF>]
	jl	.label_738
	# 0x804e9ef:	cmpl	$0x60, %eax [IMM, REG]
	cmpl	$0x60, %eax
	# 0x804e9f2:	jle	0x804e9fc [IMM <CODEREF>]
	jle	.label_739
	# 0x804e9f4:	subl	$0x7b, %eax [IMM, REG]
	subl	$0x7b, %eax
	# 0x804e9f7:	cmpl	$3, %eax [IMM, REG]
	cmpl	$3, %eax
	# 0x804e9fa:	ja	0x804ea03 [IMM <CODEREF>]
	ja	.label_738
	# 0x804e9fc:	movl	$1, %eax [IMM, REG]
.label_739:
	movl	$1, %eax
	# 0x804ea01:	jmp	0x804ea08 [IMM <CODEREF>]
	jmp	.label_740
	# 0x804ea03:	movl	$0, %eax [IMM, REG]
.label_738:
	movl	$0, %eax
	# 0x804ea08:	popl	%ebp [REG]
.label_740:
	popl	%ebp
	# 0x804ea09:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea0a
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	# 0x804ea0a:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ea0b:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ea0d:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea10:	cmpl	$9, %eax [IMM, REG]
	cmpl	$9, %eax
	# 0x804ea13:	jl	0x804ea26 [IMM <CODEREF>]
	jl	.label_742
	# 0x804ea15:	cmpl	$0xd, %eax [IMM, REG]
	cmpl	$0xd, %eax
	# 0x804ea18:	jle	0x804ea1f [IMM <CODEREF>]
	jle	.label_741
	# 0x804ea1a:	cmpl	$0x20, %eax [IMM, REG]
	cmpl	$0x20, %eax
	# 0x804ea1d:	jne	0x804ea26 [IMM <CODEREF>]
	jne	.label_742
	# 0x804ea1f:	movl	$1, %eax [IMM, REG]
.label_741:
	movl	$1, %eax
	# 0x804ea24:	jmp	0x804ea2b [IMM <CODEREF>]
	jmp	.label_743
	# 0x804ea26:	movl	$0, %eax [IMM, REG]
.label_742:
	movl	$0, %eax
	# 0x804ea2b:	popl	%ebp [REG]
.label_743:
	popl	%ebp
	# 0x804ea2c:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea2d
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	# 0x804ea2d:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ea2e:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ea30:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea33:	subl	$0x41, %eax [IMM, REG]
	subl	$0x41, %eax
	# 0x804ea36:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804ea39:	ja	0x804ea42 [IMM <CODEREF>]
	ja	.label_745
	# 0x804ea3b:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804ea40:	jmp	0x804ea47 [IMM <CODEREF>]
	jmp	.label_744
	# 0x804ea42:	movl	$0, %eax [IMM, REG]
.label_745:
	movl	$0, %eax
	# 0x804ea47:	popl	%ebp [REG]
.label_744:
	popl	%ebp
	# 0x804ea48:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea49
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	# 0x804ea49:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ea4a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ea4c:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea4f:	subl	$0x30, %eax [IMM, REG]
	subl	$0x30, %eax
	# 0x804ea52:	cmpl	$0x36, %eax [IMM, REG]
	cmpl	$0x36, %eax
	# 0x804ea55:	ja	0x804ea67 [IMM <CODEREF>]
	ja	.label_747
	# 0x804ea57:	movl	0x8050500(, %eax, 4), %eax [MEM, REG]
	movl	label_748(, %eax, 4),  %eax
	# 0x804ea5e:	jmpl	*%eax [REG]
	jmpl	*%eax
	# 0x804ea60:	movl	$1, %eax [IMM, REG]
.label_851:
	movl	$1, %eax
	# 0x804ea65:	jmp	0x804ea6c [IMM <CODEREF>]
	jmp	.label_746
	# 0x804ea67:	movl	$0, %eax [IMM, REG]
.label_747:
	movl	$0, %eax
	# 0x804ea6c:	popl	%ebp [REG]
.label_746:
	popl	%ebp
	# 0x804ea6d:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea6e

	# 0x804ea6e:	pushl	%ebp [REG]
	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	pushl	%ebp
	# 0x804ea6f:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ea71:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea74:	subl	$0x41, %eax [IMM, REG]
	subl	$0x41, %eax
	# 0x804ea77:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804ea7a:	ja	0x804ea84 [IMM <CODEREF>]
	ja	.label_750
	# 0x804ea7c:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea7f:	addl	$0x20, %eax [IMM, REG]
	addl	$0x20, %eax
	# 0x804ea82:	jmp	0x804ea87 [IMM <CODEREF>]
	jmp	.label_749
	# 0x804ea84:	movl	8(%ebp), %eax [MEM, REG]
.label_750:
	movl	8(%ebp), %eax
	# 0x804ea87:	popl	%ebp [REG]
.label_749:
	popl	%ebp
	# 0x804ea88:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea89
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	# 0x804ea89:	pushl	%ebp [REG]
	pushl	%ebp
	# 0x804ea8a:	movl	%esp, %ebp [REG, REG]
	movl	%esp, %ebp
	# 0x804ea8c:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea8f:	subl	$0x61, %eax [IMM, REG]
	subl	$0x61, %eax
	# 0x804ea92:	cmpl	$0x19, %eax [IMM, REG]
	cmpl	$0x19, %eax
	# 0x804ea95:	ja	0x804ea9f [IMM <CODEREF>]
	ja	.label_751
	# 0x804ea97:	movl	8(%ebp), %eax [MEM, REG]
	movl	8(%ebp), %eax
	# 0x804ea9a:	subl	$0x20, %eax [IMM, REG]
	subl	$0x20, %eax
	# 0x804ea9d:	jmp	0x804eaa2 [IMM <CODEREF>]
	jmp	.label_752
	# 0x804ea9f:	movl	8(%ebp), %eax [MEM, REG]
.label_751:
	movl	8(%ebp), %eax
	# 0x804eaa2:	popl	%ebp [REG]
.label_752:
	popl	%ebp
	# 0x804eaa3:	retl	 []
	retl	
	.section	.text
	.align	32
	#Procedure 0x804eab0

	# 0x804eab0:	pushl	%ebp [REG]
	.globl __divdi3
	.type __divdi3, @function
__divdi3:
	pushl	%ebp
	# 0x804eab1:	pushl	%edi [REG]
	pushl	%edi
	# 0x804eab2:	pushl	%esi [REG]
	pushl	%esi
	# 0x804eab3:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804eab4:	subl	$0x1c, %esp [IMM, REG]
	subl	$0x1c, %esp
	# 0x804eab7:	movl	0x34(%esp), %ebx [MEM, REG]
	movl	0x34(%esp), %ebx
	# 0x804eabb:	movl	0x3c(%esp), %esi [MEM, REG]
	movl	0x3c(%esp), %esi
	# 0x804eabf:	movl	0x38(%esp), %ebp [MEM, REG]
	movl	0x38(%esp), %ebp
	# 0x804eac3:	movl	0x30(%esp), %eax [MEM, REG]
	movl	0x30(%esp), %eax
	# 0x804eac7:	movl	$0, 8(%esp) [IMM, MEM]
	movl	$0, 8(%esp)
	# 0x804eacf:	testl	%ebx, %ebx [REG, REG]
	testl	%ebx, %ebx
	# 0x804ead1:	movl	%esi, %edi [REG, REG]
	movl	%esi, %edi
	# 0x804ead3:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x804ead5:	js	0x804eb98 [IMM <CODEREF>]
	js	.label_761
	# 0x804eadb:	testl	%edi, %edi [REG, REG]
.label_758:
	testl	%edi, %edi
	# 0x804eadd:	movl	%ebp, 0(%esp) [REG, MEM]
	movl	%ebp, 0(%esp)
	# 0x804eae0:	movl	%esi, 4(%esp) [REG, MEM]
	movl	%esi, 4(%esp)
	# 0x804eae4:	js	0x804eb80 [IMM <CODEREF>]
	js	.label_760
	# 0x804eaea:	movl	4(%esp), %ebx [MEM, REG]
.label_753:
	movl	4(%esp), %ebx
	# 0x804eaee:	movl	0(%esp), %ecx [MEM, REG]
	movl	0(%esp), %ecx
	# 0x804eaf1:	movl	%edx, %esi [REG, REG]
	movl	%edx, %esi
	# 0x804eaf3:	movl	%eax, 0xc(%esp) [REG, MEM]
	movl	%eax, 0xc(%esp)
	# 0x804eaf7:	movl	%eax, %ebp [REG, REG]
	movl	%eax, %ebp
	# 0x804eaf9:	testl	%ebx, %ebx [REG, REG]
	testl	%ebx, %ebx
	# 0x804eafb:	movl	%ecx, %edi [REG, REG]
	movl	%ecx, %edi
	# 0x804eafd:	movl	0(%esp), %ecx [MEM, REG]
	movl	0(%esp), %ecx
	# 0x804eb00:	jne	0x804eb10 [IMM <CODEREF>]
	jne	.label_762
	# 0x804eb02:	cmpl	%edx, %edi [REG, REG]
	cmpl	%edx, %edi
	# 0x804eb04:	jbe	0x804eb58 [IMM <CODEREF>]
	jbe	.label_755
	# 0x804eb06:	divl	%edi [REG]
	divl	%edi
	# 0x804eb08:	xorl	%ebp, %ebp [REG, REG]
	xorl	%ebp, %ebp
	# 0x804eb0a:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804eb0c:	jmp	0x804eb18 [IMM <CODEREF>]
	jmp	.label_756
	# 0x804eb10:	cmpl	%edx, %ebx [REG, REG]
.label_762:
	cmpl	%edx, %ebx
	# 0x804eb12:	jbe	0x804eb38 [IMM <CODEREF>]
	jbe	.label_757
	# 0x804eb14:	xorl	%ebp, %ebp [REG, REG]
	xorl	%ebp, %ebp
	# 0x804eb16:	xorl	%ecx, %ecx [REG, REG]
	xorl	%ecx, %ecx
	# 0x804eb18:	movl	%ecx, %eax [REG, REG]
.label_756:
	movl	%ecx, %eax
	# 0x804eb1a:	movl	8(%esp), %ecx [MEM, REG]
	movl	8(%esp), %ecx
	# 0x804eb1e:	movl	%ebp, %edx [REG, REG]
	movl	%ebp, %edx
	# 0x804eb20:	testl	%ecx, %ecx [REG, REG]
	testl	%ecx, %ecx
	# 0x804eb22:	je	0x804eb2b [IMM <CODEREF>]
	je	.label_759
	# 0x804eb24:	negl	%eax [REG]
	negl	%eax
	# 0x804eb26:	adcl	$0, %edx [IMM, REG]
	adcl	$0, %edx
	# 0x804eb29:	negl	%edx [REG]
	negl	%edx
	# 0x804eb2b:	addl	$0x1c, %esp [IMM, REG]
.label_759:
	addl	$0x1c, %esp
	# 0x804eb2e:	popl	%ebx [REG]
	popl	%ebx
	# 0x804eb2f:	popl	%esi [REG]
	popl	%esi
	# 0x804eb30:	popl	%edi [REG]
	popl	%edi
	# 0x804eb31:	popl	%ebp [REG]
	popl	%ebp
	# 0x804eb32:	retl	 []
	retl	
	# 0x804eb38:	bsrl	%ebx, %ebp [REG, REG]
.label_757:
	bsrl	%ebx, %ebp
	# 0x804eb3b:	xorl	$0x1f, %ebp [IMM, REG]
	xorl	$0x1f, %ebp
	# 0x804eb3e:	jne	0x804ebb0 [IMM <CODEREF>]
	jne	.label_766
	# 0x804eb40:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804eb42:	jb	0x804eb4c [IMM <CODEREF>]
	jb	.label_754
	# 0x804eb44:	xorl	%ecx, %ecx [REG, REG]
	xorl	%ecx, %ecx
	# 0x804eb46:	cmpl	0xc(%esp), %edi [MEM, REG]
	cmpl	0xc(%esp), %edi
	# 0x804eb4a:	ja	0x804eb18 [IMM <CODEREF>]
	ja	.label_756
	# 0x804eb4c:	movl	$1, %ecx [IMM, REG]
.label_754:
	movl	$1, %ecx
	# 0x804eb51:	jmp	0x804eb18 [IMM <CODEREF>]
	jmp	.label_756
	# 0x804eb58:	testl	%ecx, %ecx [REG, REG]
.label_755:
	testl	%ecx, %ecx
	# 0x804eb5a:	jne	0x804eb67 [IMM <CODEREF>]
	jne	.label_763
	# 0x804eb5c:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804eb61:	xorl	%edx, %edx [REG, REG]
	xorl	%edx, %edx
	# 0x804eb63:	divl	%ecx [REG]
	divl	%ecx
	# 0x804eb65:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804eb67:	xorl	%edx, %edx [REG, REG]
.label_763:
	xorl	%edx, %edx
	# 0x804eb69:	movl	%esi, %eax [REG, REG]
	movl	%esi, %eax
	# 0x804eb6b:	divl	%ecx [REG]
	divl	%ecx
	# 0x804eb6d:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804eb6f:	movl	%ebp, %eax [REG, REG]
	movl	%ebp, %eax
	# 0x804eb71:	movl	%ebx, %ebp [REG, REG]
	movl	%ebx, %ebp
	# 0x804eb73:	divl	%ecx [REG]
	divl	%ecx
	# 0x804eb75:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804eb77:	jmp	0x804eb18 [IMM <CODEREF>]
	jmp	.label_756
	# 0x804eb80:	negl	0(%esp) [MEM]
.label_760:
	negl	0(%esp)
	# 0x804eb83:	notl	8(%esp) [MEM]
	notl	8(%esp)
	# 0x804eb87:	adcl	$0, 4(%esp) [IMM, MEM]
	adcl	$0, 4(%esp)
	# 0x804eb8c:	negl	4(%esp) [MEM]
	negl	4(%esp)
	# 0x804eb90:	jmp	0x804eaea [IMM <CODEREF>]
	jmp	.label_753
	# 0x804eb98:	negl	%eax [REG]
.label_761:
	negl	%eax
	# 0x804eb9a:	movl	$0xffffffff, 8(%esp) [IMM, MEM]
	movl	$0xffffffff, 8(%esp)
	# 0x804eba2:	adcl	$0, %edx [IMM, REG]
	adcl	$0, %edx
	# 0x804eba5:	negl	%edx [REG]
	negl	%edx
	# 0x804eba7:	jmp	0x804eadb [IMM <CODEREF>]
	jmp	.label_758
	# 0x804ebb0:	movl	$0x20, %eax [IMM, REG]
.label_766:
	movl	$0x20, %eax
	# 0x804ebb5:	movl	%ebp, %ecx [REG, REG]
	movl	%ebp, %ecx
	# 0x804ebb7:	movl	%edi, %edx [REG, REG]
	movl	%edi, %edx
	# 0x804ebb9:	subl	%ebp, %eax [REG, REG]
	subl	%ebp, %eax
	# 0x804ebbb:	shll	%cl, %ebx [REG, REG]
	shll	%cl, %ebx
	# 0x804ebbd:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804ebbf:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804ebc1:	movl	%ebp, %ecx [REG, REG]
	movl	%ebp, %ecx
	# 0x804ebc3:	orl	%ebx, %edx [REG, REG]
	orl	%ebx, %edx
	# 0x804ebc5:	shll	%cl, %edi [REG, REG]
	shll	%cl, %edi
	# 0x804ebc7:	movl	%esi, %ebx [REG, REG]
	movl	%esi, %ebx
	# 0x804ebc9:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804ebcb:	movl	%edx, 0(%esp) [REG, MEM]
	movl	%edx, 0(%esp)
	# 0x804ebce:	movl	0xc(%esp), %edx [MEM, REG]
	movl	0xc(%esp), %edx
	# 0x804ebd2:	shrl	%cl, %ebx [REG, REG]
	shrl	%cl, %ebx
	# 0x804ebd4:	movl	%ebp, %ecx [REG, REG]
	movl	%ebp, %ecx
	# 0x804ebd6:	shll	%cl, %esi [REG, REG]
	shll	%cl, %esi
	# 0x804ebd8:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804ebda:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804ebdc:	orl	%edx, %esi [REG, REG]
	orl	%edx, %esi
	# 0x804ebde:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x804ebe0:	movl	%esi, %eax [REG, REG]
	movl	%esi, %eax
	# 0x804ebe2:	divl	0(%esp) [MEM]
	divl	0(%esp)
	# 0x804ebe5:	movl	%edx, %ebx [REG, REG]
	movl	%edx, %ebx
	# 0x804ebe7:	movl	%eax, %esi [REG, REG]
	movl	%eax, %esi
	# 0x804ebe9:	mull	%edi [REG]
	mull	%edi
	# 0x804ebeb:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804ebed:	jb	0x804ec10 [IMM <CODEREF>]
	jb	.label_765
	# 0x804ebef:	movl	0xc(%esp), %edi [MEM, REG]
	movl	0xc(%esp), %edi
	# 0x804ebf3:	movl	%ebp, %ecx [REG, REG]
	movl	%ebp, %ecx
	# 0x804ebf5:	shll	%cl, %edi [REG, REG]
	shll	%cl, %edi
	# 0x804ebf7:	cmpl	%eax, %edi [REG, REG]
	cmpl	%eax, %edi
	# 0x804ebf9:	jae	0x804ebff [IMM <CODEREF>]
	jae	.label_764
	# 0x804ebfb:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804ebfd:	je	0x804ec10 [IMM <CODEREF>]
	je	.label_765
	# 0x804ebff:	movl	%esi, %ecx [REG, REG]
.label_764:
	movl	%esi, %ecx
	# 0x804ec01:	xorl	%ebp, %ebp [REG, REG]
	xorl	%ebp, %ebp
	# 0x804ec03:	jmp	0x804eb18 [IMM <CODEREF>]
	jmp	.label_756
	# 0x804ec10:	leal	-1(%esi), %ecx [MEM, REG]
.label_765:
	leal	-1(%esi), %ecx
	# 0x804ec13:	xorl	%ebp, %ebp [REG, REG]
	xorl	%ebp, %ebp
	# 0x804ec15:	jmp	0x804eb18 [IMM <CODEREF>]
	jmp	.label_756
	.section	.text
	.align	32
	#Procedure 0x804ec20

	# 0x804ec20:	pushl	%ebp [REG]
	.globl __moddi3
	.type __moddi3, @function
__moddi3:
	pushl	%ebp
	# 0x804ec21:	pushl	%edi [REG]
	pushl	%edi
	# 0x804ec22:	xorl	%ebp, %ebp [REG, REG]
	xorl	%ebp, %ebp
	# 0x804ec24:	pushl	%esi [REG]
	pushl	%esi
	# 0x804ec25:	pushl	%ebx [REG]
	pushl	%ebx
	# 0x804ec26:	subl	$0x2c, %esp [IMM, REG]
	subl	$0x2c, %esp
	# 0x804ec29:	movl	0x44(%esp), %ebx [MEM, REG]
	movl	0x44(%esp), %ebx
	# 0x804ec2d:	movl	0x4c(%esp), %eax [MEM, REG]
	movl	0x4c(%esp), %eax
	# 0x804ec31:	movl	0x40(%esp), %edi [MEM, REG]
	movl	0x40(%esp), %edi
	# 0x804ec35:	movl	0x48(%esp), %esi [MEM, REG]
	movl	0x48(%esp), %esi
	# 0x804ec39:	testl	%ebx, %ebx [REG, REG]
	testl	%ebx, %ebx
	# 0x804ec3b:	movl	%eax, %edx [REG, REG]
	movl	%eax, %edx
	# 0x804ec3d:	movl	%ebx, 0xc(%esp) [REG, MEM]
	movl	%ebx, 0xc(%esp)
	# 0x804ec41:	movl	%edi, 8(%esp) [REG, MEM]
	movl	%edi, 8(%esp)
	# 0x804ec45:	js	0x804ed00 [IMM <CODEREF>]
	js	.label_776
	# 0x804ec4b:	testl	%edx, %edx [REG, REG]
.label_767:
	testl	%edx, %edx
	# 0x804ec4d:	movl	%esi, %ecx [REG, REG]
	movl	%esi, %ecx
	# 0x804ec4f:	movl	%eax, %ebx [REG, REG]
	movl	%eax, %ebx
	# 0x804ec51:	js	0x804ecf0 [IMM <CODEREF>]
	js	.label_771
	# 0x804ec57:	movl	8(%esp), %esi [MEM, REG]
.label_780:
	movl	8(%esp), %esi
	# 0x804ec5b:	movl	0xc(%esp), %edi [MEM, REG]
	movl	0xc(%esp), %edi
	# 0x804ec5f:	movl	%ecx, 0x10(%esp) [REG, MEM]
	movl	%ecx, 0x10(%esp)
	# 0x804ec63:	movl	%esi, %eax [REG, REG]
	movl	%esi, %eax
	# 0x804ec65:	movl	%edi, %esi [REG, REG]
	movl	%edi, %esi
	# 0x804ec67:	movl	%ebx, %edi [REG, REG]
	movl	%ebx, %edi
	# 0x804ec69:	testl	%edi, %edi [REG, REG]
	testl	%edi, %edi
	# 0x804ec6b:	movl	8(%esp), %ebx [MEM, REG]
	movl	8(%esp), %ebx
	# 0x804ec6f:	movl	%esi, 0x14(%esp) [REG, MEM]
	movl	%esi, 0x14(%esp)
	# 0x804ec73:	jne	0x804ec88 [IMM <CODEREF>]
	jne	.label_774
	# 0x804ec75:	cmpl	%esi, %ecx [REG, REG]
	cmpl	%esi, %ecx
	# 0x804ec77:	jbe	0x804ecd0 [IMM <CODEREF>]
	jbe	.label_782
	# 0x804ec79:	movl	%esi, %edx [REG, REG]
	movl	%esi, %edx
	# 0x804ec7b:	divl	%ecx [REG]
	divl	%ecx
	# 0x804ec7d:	movl	%edx, %esi [REG, REG]
	movl	%edx, %esi
	# 0x804ec7f:	movl	%esi, %eax [REG, REG]
.label_775:
	movl	%esi, %eax
	# 0x804ec81:	xorl	%edx, %edx [REG, REG]
	xorl	%edx, %edx
	# 0x804ec83:	jmp	0x804ec92 [IMM <CODEREF>]
	jmp	.label_769
	# 0x804ec88:	cmpl	%esi, %edi [REG, REG]
.label_774:
	cmpl	%esi, %edi
	# 0x804ec8a:	jbe	0x804eca8 [IMM <CODEREF>]
	jbe	.label_770
	# 0x804ec8c:	movl	8(%esp), %eax [MEM, REG]
	movl	8(%esp), %eax
	# 0x804ec90:	movl	%esi, %edx [REG, REG]
	movl	%esi, %edx
	# 0x804ec92:	testl	%ebp, %ebp [REG, REG]
.label_769:
	testl	%ebp, %ebp
	# 0x804ec94:	je	0x804ec9d [IMM <CODEREF>]
	je	.label_779
	# 0x804ec96:	negl	%eax [REG]
	negl	%eax
	# 0x804ec98:	adcl	$0, %edx [IMM, REG]
	adcl	$0, %edx
	# 0x804ec9b:	negl	%edx [REG]
	negl	%edx
	# 0x804ec9d:	addl	$0x2c, %esp [IMM, REG]
.label_779:
	addl	$0x2c, %esp
	# 0x804eca0:	popl	%ebx [REG]
	popl	%ebx
	# 0x804eca1:	popl	%esi [REG]
	popl	%esi
	# 0x804eca2:	popl	%edi [REG]
	popl	%edi
	# 0x804eca3:	popl	%ebp [REG]
	popl	%ebp
	# 0x804eca4:	retl	 []
	retl	
	# 0x804eca8:	bsrl	%edi, %edx [REG, REG]
.label_770:
	bsrl	%edi, %edx
	# 0x804ecab:	xorl	$0x1f, %edx [IMM, REG]
	xorl	$0x1f, %edx
	# 0x804ecae:	movl	%edx, 8(%esp) [REG, MEM]
	movl	%edx, 8(%esp)
	# 0x804ecb2:	jne	0x804ed20 [IMM <CODEREF>]
	jne	.label_778
	# 0x804ecb4:	cmpl	%esi, %edi [REG, REG]
	cmpl	%esi, %edi
	# 0x804ecb6:	jb	0x804edd0 [IMM <CODEREF>]
	jb	.label_781
	# 0x804ecbc:	cmpl	%ebx, %ecx [REG, REG]
	cmpl	%ebx, %ecx
	# 0x804ecbe:	jbe	0x804edd0 [IMM <CODEREF>]
	jbe	.label_781
	# 0x804ecc4:	movl	%ebx, %eax [REG, REG]
.label_773:
	movl	%ebx, %eax
	# 0x804ecc6:	movl	0x14(%esp), %edx [MEM, REG]
	movl	0x14(%esp), %edx
	# 0x804ecca:	jmp	0x804ec92 [IMM <CODEREF>]
	jmp	.label_769
	# 0x804ecd0:	testl	%ecx, %ecx [REG, REG]
.label_782:
	testl	%ecx, %ecx
	# 0x804ecd2:	jne	0x804ecdf [IMM <CODEREF>]
	jne	.label_777
	# 0x804ecd4:	movl	$1, %eax [IMM, REG]
	movl	$1, %eax
	# 0x804ecd9:	xorl	%edx, %edx [REG, REG]
	xorl	%edx, %edx
	# 0x804ecdb:	divl	%ecx [REG]
	divl	%ecx
	# 0x804ecdd:	movl	%eax, %ecx [REG, REG]
	movl	%eax, %ecx
	# 0x804ecdf:	movl	%esi, %eax [REG, REG]
.label_777:
	movl	%esi, %eax
	# 0x804ece1:	xorl	%edx, %edx [REG, REG]
	xorl	%edx, %edx
	# 0x804ece3:	divl	%ecx [REG]
	divl	%ecx
	# 0x804ece5:	movl	%ebx, %eax [REG, REG]
	movl	%ebx, %eax
	# 0x804ece7:	divl	%ecx [REG]
	divl	%ecx
	# 0x804ece9:	movl	%edx, %esi [REG, REG]
	movl	%edx, %esi
	# 0x804eceb:	jmp	0x804ec7f [IMM <CODEREF>]
	jmp	.label_775
	# 0x804ecf0:	negl	%ecx [REG]
.label_771:
	negl	%ecx
	# 0x804ecf2:	adcl	$0, %ebx [IMM, REG]
	adcl	$0, %ebx
	# 0x804ecf5:	negl	%ebx [REG]
	negl	%ebx
	# 0x804ecf7:	jmp	0x804ec57 [IMM <CODEREF>]
	jmp	.label_780
	# 0x804ed00:	negl	8(%esp) [MEM]
.label_776:
	negl	8(%esp)
	# 0x804ed04:	movl	$0xffffffff, %ebp [IMM, REG]
	movl	$0xffffffff, %ebp
	# 0x804ed09:	adcl	$0, 0xc(%esp) [IMM, MEM]
	adcl	$0, 0xc(%esp)
	# 0x804ed0e:	negl	0xc(%esp) [MEM]
	negl	0xc(%esp)
	# 0x804ed12:	jmp	0x804ec4b [IMM <CODEREF>]
	jmp	.label_767
	# 0x804ed20:	movl	8(%esp), %ecx [MEM, REG]
.label_778:
	movl	8(%esp), %ecx
	# 0x804ed24:	movl	$0x20, %edx [IMM, REG]
	movl	$0x20, %edx
	# 0x804ed29:	subl	%ecx, %edx [REG, REG]
	subl	%ecx, %edx
	# 0x804ed2b:	shll	%cl, %edi [REG, REG]
	shll	%cl, %edi
	# 0x804ed2d:	movl	%edx, %ebx [REG, REG]
	movl	%edx, %ebx
	# 0x804ed2f:	movl	%edx, 0x18(%esp) [REG, MEM]
	movl	%edx, 0x18(%esp)
	# 0x804ed33:	movl	0x10(%esp), %edx [MEM, REG]
	movl	0x10(%esp), %edx
	# 0x804ed37:	movl	%ebx, %ecx [REG, REG]
	movl	%ebx, %ecx
	# 0x804ed39:	shrl	%cl, %edx [REG, REG]
	shrl	%cl, %edx
	# 0x804ed3b:	movzbl	8(%esp), %ecx [MEM, REG]
	movzbl	8(%esp), %ecx
	# 0x804ed40:	orl	%edx, %edi [REG, REG]
	orl	%edx, %edi
	# 0x804ed42:	movl	0x10(%esp), %edx [MEM, REG]
	movl	0x10(%esp), %edx
	# 0x804ed46:	movl	%edi, 0x14(%esp) [REG, MEM]
	movl	%edi, 0x14(%esp)
	# 0x804ed4a:	movl	%esi, %edi [REG, REG]
	movl	%esi, %edi
	# 0x804ed4c:	shll	%cl, %edx [REG, REG]
	shll	%cl, %edx
	# 0x804ed4e:	movl	%ebx, %ecx [REG, REG]
	movl	%ebx, %ecx
	# 0x804ed50:	shrl	%cl, %edi [REG, REG]
	shrl	%cl, %edi
	# 0x804ed52:	movzbl	8(%esp), %ecx [MEM, REG]
	movzbl	8(%esp), %ecx
	# 0x804ed57:	movl	%edx, 0x10(%esp) [REG, MEM]
	movl	%edx, 0x10(%esp)
	# 0x804ed5b:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x804ed5d:	movl	%edi, %ebx [REG, REG]
	movl	%edi, %ebx
	# 0x804ed5f:	movl	%eax, %edi [REG, REG]
	movl	%eax, %edi
	# 0x804ed61:	shll	%cl, %esi [REG, REG]
	shll	%cl, %esi
	# 0x804ed63:	movl	%edx, %ecx [REG, REG]
	movl	%edx, %ecx
	# 0x804ed65:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x804ed67:	shrl	%cl, %edi [REG, REG]
	shrl	%cl, %edi
	# 0x804ed69:	movzbl	8(%esp), %ecx [MEM, REG]
	movzbl	8(%esp), %ecx
	# 0x804ed6e:	orl	%edi, %esi [REG, REG]
	orl	%edi, %esi
	# 0x804ed70:	shll	%cl, %eax [REG, REG]
	shll	%cl, %eax
	# 0x804ed72:	movl	%eax, %edi [REG, REG]
	movl	%eax, %edi
	# 0x804ed74:	movl	%eax, 0x1c(%esp) [REG, MEM]
	movl	%eax, 0x1c(%esp)
	# 0x804ed78:	movl	%esi, %eax [REG, REG]
	movl	%esi, %eax
	# 0x804ed7a:	divl	0x14(%esp) [MEM]
	divl	0x14(%esp)
	# 0x804ed7e:	movl	%edx, %ebx [REG, REG]
	movl	%edx, %ebx
	# 0x804ed80:	mull	0x10(%esp) [MEM]
	mull	0x10(%esp)
	# 0x804ed84:	cmpl	%edx, %ebx [REG, REG]
	cmpl	%edx, %ebx
	# 0x804ed86:	movl	%eax, %esi [REG, REG]
	movl	%eax, %esi
	# 0x804ed88:	movl	%edx, %ecx [REG, REG]
	movl	%edx, %ecx
	# 0x804ed8a:	jb	0x804ed92 [IMM <CODEREF>]
	jb	.label_768
	# 0x804ed8c:	jne	0x804ed9e [IMM <CODEREF>]
	jne	.label_772
	# 0x804ed8e:	cmpl	%eax, %edi [REG, REG]
	cmpl	%eax, %edi
	# 0x804ed90:	jae	0x804ed9e [IMM <CODEREF>]
	jae	.label_772
	# 0x804ed92:	subl	0x10(%esp), %eax [MEM, REG]
.label_768:
	subl	0x10(%esp), %eax
	# 0x804ed96:	sbbl	0x14(%esp), %edx [MEM, REG]
	sbbl	0x14(%esp), %edx
	# 0x804ed9a:	movl	%edx, %ecx [REG, REG]
	movl	%edx, %ecx
	# 0x804ed9c:	movl	%eax, %esi [REG, REG]
	movl	%eax, %esi
	# 0x804ed9e:	movl	0x1c(%esp), %eax [MEM, REG]
.label_772:
	movl	0x1c(%esp), %eax
	# 0x804eda2:	movl	8(%esp), %edi [MEM, REG]
	movl	8(%esp), %edi
	# 0x804eda6:	subl	%esi, %eax [REG, REG]
	subl	%esi, %eax
	# 0x804eda8:	sbbl	%ecx, %ebx [REG, REG]
	sbbl	%ecx, %ebx
	# 0x804edaa:	movzbl	0x18(%esp), %ecx [MEM, REG]
	movzbl	0x18(%esp), %ecx
	# 0x804edaf:	movl	%ebx, %esi [REG, REG]
	movl	%ebx, %esi
	# 0x804edb1:	shll	%cl, %esi [REG, REG]
	shll	%cl, %esi
	# 0x804edb3:	movl	%edi, %ecx [REG, REG]
	movl	%edi, %ecx
	# 0x804edb5:	shrl	%cl, %eax [REG, REG]
	shrl	%cl, %eax
	# 0x804edb7:	movl	%edi, %ecx [REG, REG]
	movl	%edi, %ecx
	# 0x804edb9:	orl	%eax, %esi [REG, REG]
	orl	%eax, %esi
	# 0x804edbb:	shrl	%cl, %ebx [REG, REG]
	shrl	%cl, %ebx
	# 0x804edbd:	movl	%esi, %eax [REG, REG]
	movl	%esi, %eax
	# 0x804edbf:	movl	%ebx, %edx [REG, REG]
	movl	%ebx, %edx
	# 0x804edc1:	jmp	0x804ec92 [IMM <CODEREF>]
	jmp	.label_769
	# 0x804edd0:	subl	%ecx, %ebx [REG, REG]
.label_781:
	subl	%ecx, %ebx
	# 0x804edd2:	sbbl	%edi, %esi [REG, REG]
	sbbl	%edi, %esi
	# 0x804edd4:	movl	%esi, 0x14(%esp) [REG, MEM]
	movl	%esi, 0x14(%esp)
	# 0x804edd8:	jmp	0x804ecc4 [IMM <CODEREF>]
	jmp	.label_773
	.section .rodata
	.align 32
	# data @ 0x804eea0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804eea8
label_12:
	.asciz "["
	# data @ 0x804eeaa
label_13:
	.asciz "test invocation"
	# data @ 0x804eeba
label_14:
	.asciz "coreutils"
	# data @ 0x804eec4
label_15:
	.asciz "Multi-call invocation"
	# data @ 0x804eeda
label_16:
	.asciz "sha224sum"
	# data @ 0x804eee4
label_17:
	.asciz "sha2 utilities"
	# data @ 0x804eef3
label_18:
	.asciz "sha256sum"
	# data @ 0x804eefd
label_19:
	.asciz "sha384sum"
	# data @ 0x804ef07
label_20:
	.asciz "sha512sum"
	# data @ 0x804ef11
label_27:
	.asciz "\n%s online help: <%s>\n"
	# data @ 0x804ef28
label_28:
	.asciz "https://www.gnu.org/software/coreutils/"
	# data @ 0x804ef50
label_31:
	.asciz "GNU coreutils"
	# data @ 0x804ef5e
label_26:
	.asciz "en_"
	# data @ 0x804ef62
	.byte 0
	.byte 0
	# data @ 0x804ef64
label_6:
	.asciz "Report %s translation bugs to <https://translationproject.org/team/>\n"
	# data @ 0x804efaa
	.byte 0
	.byte 0
	# data @ 0x804efac
label_25:
	.asciz "Full documentation at: <%s%s>\n"
	# data @ 0x804efcb
label_8:
	.asciz " invocation"
	# data @ 0x804efd7
label_11:
	.byte 0
	# data @ 0x804efd8
label_23:
	.asciz "or available locally via: info '(coreutils) %s%s'\n"
	# data @ 0x804f00b
	.byte 0
	# data @ 0x804f00c
label_108:
	.asciz "Try '%s --help' for more information.\n"
	# data @ 0x804f033
	.byte 0
	# data @ 0x804f034
label_111:
	.asciz "Usage: %s EXPRESSION\n  or:  %s OPTION\n"
	# data @ 0x804f05b
	.byte 0
	# data @ 0x804f05c
label_101:
	.asciz "      --help     display this help and exit\n"
	# data @ 0x804f089
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804f08c
label_110:
	.asciz "      --version  output version information and exit\n"
	# data @ 0x804f0c2
	.byte 0
	.byte 0
	# data @ 0x804f0c4
label_103:
	.asciz "\nPrint the value of EXPRESSION to standard output.  A blank line below\nseparates increasing precedence groups.  EXPRESSION may be:\n\n  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\n\n  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\n"
	# data @ 0x804f1d6
	.byte 0
	.byte 0
	# data @ 0x804f1d8
label_112:
	.asciz "\n  ARG1 < ARG2       ARG1 is less than ARG2\n  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\n  ARG1 = ARG2       ARG1 is equal to ARG2\n  ARG1 != ARG2      ARG1 is unequal to ARG2\n  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\n  ARG1 > ARG2       ARG1 is greater than ARG2\n"
	# data @ 0x804f2fa
	.byte 0
	.byte 0
	# data @ 0x804f2fc
label_104:
	.asciz "\n  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\n  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\n"
	# data @ 0x804f36d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804f370
label_99:
	.asciz "\n  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\n  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\n  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\n"
	# data @ 0x804f42b
	.byte 0
	# data @ 0x804f42c
label_106:
	.asciz "\n  STRING : REGEXP   anchored pattern match of REGEXP in STRING\n\n  match STRING REGEXP        same as STRING : REGEXP\n  substr STRING POS LENGTH   substring of STRING, POS counted from 1\n  index STRING CHARS         index in STRING where any CHARS is found, or 0\n  length STRING              length of STRING\n"
	# data @ 0x804f562
	.byte 0
	.byte 0
	# data @ 0x804f564
label_98:
	.asciz "  + TOKEN                    interpret TOKEN as a string, even if it is a\n                               keyword like 'match' or an operator like '/'\n\n  ( EXPRESSION )             value of EXPRESSION\n"
	# data @ 0x804f62d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804f630
label_107:
	.asciz "\nBeware that many operators need to be escaped or quoted for shells.\nComparisons are arithmetic if both ARGs are numbers, else lexicographical.\nPattern matches return the string matched between \\( and \\) or null; if\n\\( and \\) are not used, they return the number of characters matched or 0.\n"
	# data @ 0x804f754
label_100:
	.asciz "\nExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\nor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\n"
	# data @ 0x804f7f0
label_109:
	.asciz "expr"
	# data @ 0x804f7f5
label_113:
	.asciz "%c"
	# data @ 0x804f7f8
label_119:
	.asciz "/usr/local/share/locale"
	# data @ 0x804f810
label_120:
	.asciz "Paul Eggert"
	# data @ 0x804f81c
label_121:
	.asciz "James Youngman"
	# data @ 0x804f82b
label_122:
	.asciz "Mike Parker"
	# data @ 0x804f837
label_123:
	.asciz "8.30"
	# data @ 0x804f83c
label_124:
	.asciz "--"
	# data @ 0x804f83f
label_117:
	.asciz "missing operand"
	# data @ 0x804f84f
	.byte 0
	# data @ 0x804f850
label_115:
	.asciz "syntax error: unexpected argument %s"
	# data @ 0x804f875
label_146:
	.asciz "%s"
	# data @ 0x804f878
label_158:
	.asciz "syntax error: missing argument after %s"
	# data @ 0x804f8a0
label_166:
	.asciz "error in regular expression matcher"
	# data @ 0x804f8c4
label_181:
	.byte 40
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804f8c8
label_172:
	.asciz "syntax error: expecting ')' after %s"
	# data @ 0x804f8ed
label_178:
	.asciz ")"
	# data @ 0x804f8ef
	.byte 0
	# data @ 0x804f8f0
label_176:
	.asciz "syntax error: expecting ')' instead of %s"
	# data @ 0x804f91a
label_175:
	.asciz "syntax error: unexpected ')'"
	# data @ 0x804f937
label_184:
	.asciz "+"
	# data @ 0x804f939
label_191:
	.asciz "length"
	# data @ 0x804f940
label_188:
	.asciz "match"
	# data @ 0x804f946
label_183:
	.asciz "index"
	# data @ 0x804f94c
label_196:
	.asciz "substr"
	# data @ 0x804f953
label_200:
	.byte 58
	.byte 0
	# data @ 0x804f955
label_206:
	.byte 42
	.byte 0
	# data @ 0x804f957
label_217:
	.byte 47
	.byte 0
	# data @ 0x804f959
label_215:
	.asciz "%"
	# data @ 0x804f95b
label_219:
	.asciz "non-integer argument"
	# data @ 0x804f970
label_218:
	.asciz "division by zero"
	# data @ 0x804f981
label_225:
	.byte 45
	.byte 0
	# data @ 0x804f983
label_248:
	.asciz "<"
	# data @ 0x804f985
label_231:
	.asciz "<="
	# data @ 0x804f988
label_241:
	.asciz "="
	# data @ 0x804f98a
label_245:
	.asciz "=="
	# data @ 0x804f98d
label_247:
	.asciz "!="
	# data @ 0x804f990
label_254:
	.asciz ">="
	# data @ 0x804f993
label_234:
	.asciz ">"
	# data @ 0x804f995
label_252:
	.asciz "string comparison failed"
	# data @ 0x804f9ae
	.byte 0
	.byte 0
	# data @ 0x804f9b0
label_251:
	.asciz "set LC_ALL='C' to work around the problem"
	# data @ 0x804f9da
	.byte 0
	.byte 0
	# data @ 0x804f9dc
label_250:
	.asciz "the strings compared were %s and %s"
	# data @ 0x804fa00
label_235:
	.long .label_787
	.long .label_788
	.long .label_789
	.long .label_790
	.long .label_791
	.long .label_792
	# data @ 0x804fa18
label_256:
	.byte 38
	.byte 0
	# data @ 0x804fa1a
label_266:
	.asciz "|"
	# data @ 0x804fa1c
label_273:
	.asciz "write error"
	# data @ 0x804fa28
label_278:
	.asciz "%s: %s"
	# data @ 0x804fa2f
label_274:
	.asciz "%s"
	# data @ 0x804fa32
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa40
label_856:
	.asciz "help"
	# data @ 0x804fa45
	.asciz "version"
	# data @ 0x804fa4d
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa60
	.globl long_options
	.type long_options, @object
long_options:
	.long label_856
	# data @ 0x804fa64
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa6c
	.byte 104
	.byte 0
	.byte 0
	.byte 0
	.byte 69
	# data @ 0x804fa71
	.byte 250
	.byte 4
	.byte 8
	# data @ 0x804fa74
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa7c
	.byte 118
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa80
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa90
label_285:
	.byte 43
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fa94
label_308:
	.asciz "lib/mbuiter.h"
	# data @ 0x804faa2
label_319:
	.asciz "mbsinit (&iter->state)"
	# data @ 0x804fab9
label_309:
	.asciz "*iter->cur.ptr == '\\0'"
	# data @ 0x804fad0
label_314:
	.asciz "iter->cur.wc == 0"
	# data @ 0x804fae2
	.byte 0
	.byte 0
	# data @ 0x804fae4
	.globl __PRETTY_FUNCTION__.3732
	.type __PRETTY_FUNCTION__.3732, @object
__PRETTY_FUNCTION__.3732:
	.asciz "mbuiter_multi_next"
	# data @ 0x804faf7
	.byte 0
	# data @ 0x804faf8
label_322:
	.asciz "A NULL argv[0] was passed through an exec system call.\n"
	# data @ 0x804fb30
label_327:
	.asciz "/.libs/"
	# data @ 0x804fb38
label_326:
	.asciz "lt-"
	# data @ 0x804fb3c
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fb40
label_822:
	.asciz "literal"
	# data @ 0x804fb48
label_823:
	.asciz "shell"
	# data @ 0x804fb4e
label_824:
	.asciz "shell-always"
	# data @ 0x804fb5b
label_825:
	.asciz "shell-escape"
	# data @ 0x804fb68
label_826:
	.asciz "shell-escape-always"
	# data @ 0x804fb7c
label_827:
	.asciz "c"
	# data @ 0x804fb7e
label_828:
	.asciz "c-maybe"
	# data @ 0x804fb86
label_829:
	.asciz "escape"
	# data @ 0x804fb8d
label_830:
	.asciz "locale"
	# data @ 0x804fb94
label_831:
	.ascii "clocale"
	# data @ 0x804fb9b
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fba0
	.long label_822
	.long label_823
	.long label_824
	.long label_825
	.long label_826
	.long label_827
	.long label_828
	.long label_829
	.long label_830
	.long label_831
	# data @ 0x804fbc8
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fbe4
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	.byte 4
	.byte 0
	.byte 0
	.byte 0
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	.byte 6
	.byte 0
	.byte 0
	.byte 0
	.byte 7
	.byte 0
	.byte 0
	.byte 0
	.byte 8
	.byte 0
	.byte 0
	.byte 0
	.byte 9
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x804fc08
label_357:
	.asciz "UTF-8"
	# data @ 0x804fc0e
label_345:
	.byte 226
	.byte 128
	.byte 152
	.byte 0
	# data @ 0x804fc12
label_350:
	.byte 226
	.byte 128
	.byte 153
	.byte 0
	# data @ 0x804fc16
label_353:
	.asciz "GB18030"
	# data @ 0x804fc1e
label_356:
	.byte 161
	.byte 7
	.byte 101
	.byte 0
	# data @ 0x804fc22
label_354:
	.byte 161
	.byte 175
	.byte 0
	# data @ 0x804fc25
label_347:
	.byte 34
	.byte 0
	# data @ 0x804fc27
label_352:
	.byte 39
	.byte 0
	# data @ 0x804fc29
label_486:
	.asciz "`"
	# data @ 0x804fc2b
	.byte 0
	# data @ 0x804fc2c
label_478:
	.long .label_794
	.long .label_795
	.long .label_417
	.long .label_796
	.long .label_797
	.long .label_798
	.long .label_799
	.long .label_800
	.long .label_801
	.long .label_801
	.long .label_801
label_468:
	.long .label_802
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_803
	.long .label_804
	.long .label_805
	.long .label_806
	.long .label_807
	.long .label_808
	.long .label_809
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_464
	.long .label_810
	.long .label_811
	.long .label_811
	.long .label_812
	.long .label_811
	.long .label_813
	.long .label_811
	.long .label_814
	.long .label_811
	.long .label_811
	.long .label_811
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_811
	.long .label_811
	.long .label_811
	.long .label_811
	.long .label_815
	.long .label_464
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_811
	.long .label_816
	.long .label_813
	.long .label_811
	.long .label_813
	.long .label_811
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_813
	.long .label_817
	.long .label_811
	.long .label_817
	.long .label_812
label_448:
	.long .label_818
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_818
	.long .label_818
	.long .label_818
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_818
	.long .label_443
	.long .label_818
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_443
	.long .label_818
	.long .label_818
	.long .label_818
label_382:
	.long .label_819
	.long .label_819
	.long .label_460
	.long .label_819
	.long .label_460
	.long .label_819
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_460
	.long .label_819
	# data @ 0x804ff54
label_588:
	.asciz "%s (%s) %s\n"
	# data @ 0x804ff60
label_593:
	.asciz "%s %s\n"
	# data @ 0x804ff67
label_594:
	.asciz "(C)"
	# data @ 0x804ff6b
	.byte 0
	# data @ 0x804ff6c
label_591:
	.asciz "\nLicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\nThis is free software: you are free to change and redistribute it.\nThere is NO WARRANTY, to the extent permitted by law.\n\n"
	# data @ 0x8050038
label_597:
	.asciz "Written by %s.\n"
	# data @ 0x8050048
label_598:
	.asciz "Written by %s and %s.\n"
	# data @ 0x805005f
label_599:
	.asciz "Written by %s, %s, and %s.\n"
	# data @ 0x805007b
	.byte 0
	# data @ 0x805007c
label_600:
	.asciz "Written by %s, %s, %s,\nand %s.\n"
	# data @ 0x805009c
label_601:
	.asciz "Written by %s, %s, %s,\n%s, and %s.\n"
	# data @ 0x80500c0
label_602:
	.asciz "Written by %s, %s, %s,\n%s, %s, and %s.\n"
	# data @ 0x80500e8
label_603:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, and %s.\n"
	# data @ 0x8050114
label_604:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\nand %s.\n"
	# data @ 0x8050144
label_605:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, and %s.\n"
	# data @ 0x8050178
label_587:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, %s, and others.\n"
	# data @ 0x80501b4
label_589:
	.long .label_878
	.long .label_879
	.long .label_880
	.long .label_881
	.long .label_882
	.long .label_883
	.long .label_884
	.long .label_885
	.long .label_886
	.long .label_887
	# data @ 0x80501dc
label_618:
	.asciz "\nReport bugs to: %s\n"
	# data @ 0x80501f1
label_613:
	.asciz "bug-coreutils@gnu.org"
	# data @ 0x8050207
label_614:
	.asciz "%s home page: <%s>\n"
	# data @ 0x805021b
	.byte 0
	# data @ 0x805021c
label_616:
	.asciz "https://www.gnu.org/software/coreutils/"
	# data @ 0x8050244
label_617:
	.asciz "GNU coreutils"
	# data @ 0x8050252
	.byte 0
	.byte 0
	# data @ 0x8050254
label_615:
	.asciz "General help using GNU software: <https://www.gnu.org/gethelp/>\n"
	# data @ 0x8050295
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80502a0
	.globl version_etc_copyright
	.type version_etc_copyright, @object
version_etc_copyright:
	.asciz "Copyright %s %d Free Software Foundation, Inc."
	# data @ 0x80502cf
label_643:
	.asciz "memory exhausted"
	# data @ 0x80502e0
label_644:
	.asciz "%s"
	# data @ 0x80502e3
	.byte 0
	# data @ 0x80502e4
label_660:
	.asciz "lib/xstrtol.c"
	# data @ 0x80502f2
	.byte 0
	.byte 0
	# data @ 0x80502f4
label_661:
	.asciz "0 <= strtol_base && strtol_base <= 36"
	# data @ 0x805031a
	.byte 0
	.byte 0
	# data @ 0x805031c
label_667:
	.long sub_804e174
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long sub_804e174
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long .label_656
	.long sub_804e174
label_662:
	.long sub_804e206
	.long .label_669
	.long .label_669
	.long sub_804e22e
	.long .label_669
	.long sub_804e24a
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e266
	.long .label_669
	.long sub_804e282
	.long .label_669
	.long .label_669
	.long sub_804e29e
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e2b7
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e2e6
	.long sub_804e2ff
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e1ea
	.long .label_865
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e24a
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e266
	.long .label_669
	.long sub_804e282
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long .label_669
	.long sub_804e2b7
	.long .label_669
	.long .label_669
	.long sub_804e2d0
	# data @ 0x80504b4
	.globl __PRETTY_FUNCTION__.3254
	.type __PRETTY_FUNCTION__.3254, @object
__PRETTY_FUNCTION__.3254:
	.asciz "xstrtoimax"
	# data @ 0x80504bf
label_688:
	.asciz "C"
	# data @ 0x80504c1
label_690:
	.asciz "POSIX"
	# data @ 0x80504c7
label_692:
	.byte 0
	# data @ 0x80504c8
label_693:
	.asciz "ASCII"
	# data @ 0x80504ce
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl is_basic_table
	.type is_basic_table, @object
is_basic_table:
	.byte 0
	# data @ 0x80504e1
	.byte 26
	.byte 0
	.byte 0
	.byte 239
	.byte 255
	.byte 255
	.byte 255
	.byte 254
	.byte 255
	.byte 255
	.byte 255
	.byte 254
	.byte 255
	.byte 255
	.byte 127
	# data @ 0x80504f0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8050500
label_748:
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_747
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.long .label_851
	.section .data
	.align 32
	# data @ 0x8053100
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8053108
	.globl exit_failure
	.type exit_failure, @object
exit_failure:
	.byte 1
	# data @ 0x8053109
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8053120
	.globl nslots
	.type nslots, @object
nslots:
	.long 0x1
	# data @ 0x8053124
	.globl slotvec0
	.type slotvec0, @object
slotvec0:
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	# data @ 0x8053128
label_496:
	.long slot0
	# data @ 0x805312c
	.globl slotvec
	.type slotvec, @object
slotvec:
	.long slotvec0
	# data @ 0x8053130
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8053140
	.globl quote_quoting_options
	.type quote_quoting_options, @object
quote_quoting_options:
	.byte 8
	# data @ 0x8053141
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
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
	# data @ 0x80531a0
	.globl opterr
	.type opterr, @object
opterr:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531a4
	.globl re_syntax_options
	.type re_syntax_options, @object
re_syntax_options:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531a8
	.globl completed.7209
	.type completed.7209, @object
completed.7209:
	.byte 0x0
	# data @ 0x80531a9
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531ac
	.globl args
	.type args, @object
args:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531b0
	.globl file_name
	.type file_name, @object
file_name:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531b4
	.globl ignore_EPIPE
	.type ignore_EPIPE, @object
ignore_EPIPE:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531b8
	.globl program_name
	.type program_name, @object
program_name:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531c0
	.globl default_quoting_options
	.type default_quoting_options, @object
default_quoting_options:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531c4
label_509:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531c8
label_510:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531cc
label_511:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531d0
label_512:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531d4
label_513:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531d8
label_514:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531dc
label_515:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531e0
label_516:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531e4
label_517:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531e8
label_518:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80531ec
label_519:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8053200
	.globl slot0
	.type slot0, @object
slot0:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8053300
		.globl _end
	.type _end, @notype
_end: