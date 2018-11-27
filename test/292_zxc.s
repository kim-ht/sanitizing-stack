	.section	.text
	.align	32
	#Procedure 0x8049cdb

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$1, 8(%ebp)
	je	.label_5
	movl	8(%ebp), %eax
	movl	%eax, exit_failure
.label_5:
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049cef

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049d01

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_7
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_10
	movl	$2, %edx
	jmp	.label_12
.label_10:
	movl	$1, %edx
.label_12:
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movb	%al, -1(%ebp)
	cmpb	$0, -1(%ebp)
	je	.label_8
	cmpb	$0x2f, -1(%ebp)
	jne	.label_9
.label_8:
	movl	$1, %eax
	jmp	.label_6
.label_9:
	movl	$0, %eax
.label_6:
	andl	$1, %eax
	jmp	.label_11
.label_7:
	movl	$0, %eax
.label_11:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049d59

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_13
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049d89

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_14
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049db9

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x64, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x5c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$label_31, -68(%ebp)
	movl	$label_32, -64(%ebp)
	movl	$label_33, -60(%ebp)
	movl	$label_34, -56(%ebp)
	movl	$label_35, -52(%ebp)
	movl	$label_36, -48(%ebp)
	movl	$label_37, -44(%ebp)
	movl	$label_36, -40(%ebp)
	movl	$label_38, -36(%ebp)
	movl	$label_36, -32(%ebp)
	movl	$label_39, -28(%ebp)
	movl	$label_36, -24(%ebp)
	movl	$0, -0x14(%ebp)
	movl	$0, -0x10(%ebp)
	movl	-0x5c(%ebp), %eax
	movl	%eax, -0x50(%ebp)
	leal	-0x44(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	jmp	.label_40
.label_24:
	addl	$8, -0x4c(%ebp)
.label_40:
	movl	-0x4c(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_16
	movl	-0x4c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x5c(%ebp)
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_24
.label_16:
	movl	-0x4c(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.label_27
	movl	-0x4c(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x50(%ebp)
.label_27:
	subl	$0xc, %esp
	pushl	$label_21
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	$label_17
	pushl	$label_18
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$0
	pushl	$5
	calll	setlocale
	addl	$0x10, %esp
	movl	%eax, -0x48(%ebp)
	cmpl	$0, -0x48(%ebp)
	je	.label_19
	subl	$4, %esp
	pushl	$3
	pushl	$label_30
	pushl	-0x48(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_19
	subl	$0xc, %esp
	pushl	$label_20
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	-0x5c(%ebp)
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
.label_19:
	subl	$0xc, %esp
	pushl	$label_29
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	-0x5c(%ebp)
	pushl	$label_17
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	movl	-0x50(%ebp), %eax
	cmpl	-0x5c(%ebp), %eax
	jne	.label_25
	movl	$label_22,  %ebx
	jmp	.label_23
.label_25:
	movl	$label_26,  %ebx
.label_23:
	subl	$0xc, %esp
	pushl	$label_28
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	%ebx
	pushl	-0x50(%ebp)
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	nop	
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_15
	calll	__stack_chk_fail
.label_15:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f5e

	.globl timetostr
	.type timetostr, @function
timetostr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	cltd	
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	%edx
	pushl	%eax
	calll	imaxtostr
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f7a

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f82

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0x5f, 8(%ebp)
	sete	%al
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f8e

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8049f98

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x38(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	$0x10, -0x20(%ebp)
	movl	$dev_ino_obstack, -28(%ebp)
	movl	-0x20(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	-0x18(%ebp), %eax
	jae	.label_41
	subl	$8, %esp
	pushl	-0x18(%ebp)
	pushl	-0x1c(%ebp)
	calll	_obstack_newchunk
	addl	$0x10, %esp
.label_41:
	movl	-0x1c(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	-0x18(%ebp), %eax
	addl	%eax, %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	label_42,  %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0x10, -0xc(%ebp)
	movl	-0xc(%ebp), %ecx
	movl	-0x30(%ebp), %eax
	movl	-0x2c(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 0xc(%ecx)
	movl	-0xc(%ebp), %ecx
	movl	-0x38(%ebp), %eax
	movl	-0x34(%ebp), %edx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a03b

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0x10, -0x18(%ebp)
	movl	$dev_ino_obstack, -20(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x18(%ebp), %eax
	cmpl	%eax, %edx
	jae	.label_45
	pushl	$__PRETTY_FUNCTION__.8064
	pushl	$0x403
	pushl	$label_43
	pushl	$label_44
	calll	__assert_fail
.label_45:
	movl	label_42,  %eax
	movl	-0x18(%ebp), %edx
	negl	%edx
	addl	%edx, %eax
	movl	%eax, label_42
	movl	label_42,  %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	0(%edx), %ecx
	movl	%ecx, 0(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	0xc(%edx), %edx
	movl	%edx, 0xc(%eax)
	movl	8(%ebp), %eax
	leave	
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x804a0c5

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, %edx
	movl	-0x1c(%ebp), %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, -0x18(%ebp)
	cmpl	$0, -0x18(%ebp)
	je	.label_47
	movl	0xc(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %eax
	cmpl	-0x10(%ebp), %eax
	jne	.label_49
	movl	-0x14(%ebp), %eax
	movzbl	0x28(%eax), %edx
	orl	$2, %edx
	movb	%dl, 0x28(%eax)
.label_49:
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	0x18(%eax), %eax
	addl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	0x18(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, %ecx
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	%eax, %edx
	jbe	.label_51
	movl	-0x14(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	-0x14(%ebp), %eax
	movl	%edx, 0xc(%eax)
.label_51:
	movl	-0x14(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	-0x14(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	$0, -0x20(%ebp)
	jmp	.label_50
.label_48:
	movl	-0x20(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	-0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$label_46
	calll	printf
	addl	$0x10, %esp
	addl	$1, -0x20(%ebp)
.label_50:
	movl	-0x20(%ebp), %eax
	cmpl	-0x18(%ebp), %eax
	jb	.label_48
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
.label_47:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a1df

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	pushl	%ebp
	movl	%esp, %ebp
	jmp	.label_56
.label_52:
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x25, %al
	jne	.label_53
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x25, %eax
	je	.label_54
	cmpl	$0x62, %eax
	jne	.label_53
	movl	8(%ebp), %eax
	jmp	.label_55
.label_54:
	addl	$1, 8(%ebp)
	nop	
.label_53:
	addl	$1, 8(%ebp)
.label_56:
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_52
	movl	$0, %eax
.label_55:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a223

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	jmp	.label_57
.label_59:
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	c_isalnum
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_58
	cmpl	$0x7e, -0xc(%ebp)
	je	.label_58
	cmpl	$0x2d, -0xc(%ebp)
	je	.label_58
	cmpl	$0x2e, -0xc(%ebp)
	je	.label_58
	cmpl	$0x5f, -0xc(%ebp)
	jne	.label_60
.label_58:
	movl	$1, %edx
	jmp	.label_61
.label_60:
	movl	$0, %edx
.label_61:
	movl	-0xc(%ebp), %eax
	addl	$RFC3986,  %eax
	movzbl	0(%eax), %eax
	orl	%eax, %edx
	movl	-0xc(%ebp), %eax
	addl	$RFC3986,  %eax
	movb	%dl, 0(%eax)
	addl	$1, -0xc(%ebp)
.label_57:
	cmpl	$0xff, -0xc(%ebp)
	jle	.label_59
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a28f

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0xc, -0x20(%ebp)
.label_66:
	movl	-0x20(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	$0, -0x20(%ebp)
	movl	$0, -0x1c(%ebp)
	jmp	.label_64
.label_63:
	movl	-0x18(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x1c(%ebp), %eax
	addl	$0x2000e, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	rpl_nl_langinfo
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	subl	$8, %esp
	pushl	$0x25
	pushl	-0x14(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_65
	movl	$0, %eax
	jmp	.label_67
.label_65:
	movl	-0x1c(%ebp), %eax
	shll	$7, %eax
	movl	%eax, %edx
	movl	-0x2c(%ebp), %eax
	addl	%eax, %edx
	subl	$8, %esp
	pushl	$0
	pushl	$0
	leal	-0x24(%ebp), %eax
	pushl	%eax
	pushl	$0x80
	pushl	%edx
	pushl	-0x14(%ebp)
	calll	mbsalign
	addl	$0x20, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0x7f, -0x10(%ebp)
	jbe	.label_68
	movl	$0, %eax
	jmp	.label_67
.label_68:
	movl	-0x24(%ebp), %edx
	movl	-0x20(%ebp), %eax
	cmpl	%eax, %edx
	cmovael	%edx, %eax
	movl	%eax, -0x20(%ebp)
	addl	$1, -0x1c(%ebp)
.label_64:
	cmpl	$0xb, -0x1c(%ebp)
	jle	.label_63
	movl	-0x18(%ebp), %eax
	cmpl	-0x20(%ebp), %eax
	ja	.label_66
	movl	$1, %eax
.label_67:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_62
	calll	__stack_chk_fail
.label_62:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a377

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x638, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x630(%ebp)
	jmp	.label_85
.label_70:
	movl	-0x630(%ebp), %eax
	movl	long_time_format(, %eax, 4),  %eax
	pushl	%eax
	calll	first_percent_b
	addl	$4, %esp
	movl	%eax, %edx
	movl	-0x630(%ebp), %eax
	movl	%edx, -0x614(%ebp, %eax, 4)
	addl	$1, -0x630(%ebp)
.label_85:
	cmpl	$1, -0x630(%ebp)
	jle	.label_70
	movl	-0x614(%ebp), %eax
	testl	%eax, %eax
	jne	.label_72
	movl	-0x610(%ebp), %eax
	testl	%eax, %eax
	je	.label_77
.label_72:
	subl	$0xc, %esp
	leal	-0x60c(%ebp), %eax
	pushl	%eax
	calll	abmon_init
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_83
	movl	$0, -0x62c(%ebp)
	jmp	.label_69
.label_75:
	movl	-0x62c(%ebp), %eax
	movl	long_time_format(, %eax, 4),  %eax
	movl	%eax, -0x620(%ebp)
	movl	$0, -0x628(%ebp)
	jmp	.label_74
.label_80:
	movl	-0x62c(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	movl	-0x628(%ebp), %edx
	addl	%edx, %eax
	shll	$7, %eax
	addl	$abformat,  %eax
	movl	%eax, -0x61c(%ebp)
	movl	-0x62c(%ebp), %eax
	movl	-0x614(%ebp, %eax, 4), %eax
	testl	%eax, %eax
	jne	.label_82
	pushl	-0x620(%ebp)
	pushl	$label_79
	pushl	$0x80
	pushl	-0x61c(%ebp)
	calll	snprintf
	addl	$0x10, %esp
	movl	%eax, -0x624(%ebp)
	jmp	.label_76
.label_82:
	movl	-0x62c(%ebp), %eax
	movl	-0x614(%ebp, %eax, 4), %eax
	movl	%eax, %edx
	movl	-0x620(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$0x80, %eax
	jg	.label_71
	movl	-0x62c(%ebp), %eax
	movl	-0x614(%ebp, %eax, 4), %eax
	movl	%eax, %edx
	movl	-0x620(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x618(%ebp)
	movl	-0x62c(%ebp), %eax
	movl	-0x614(%ebp, %eax, 4), %eax
	leal	2(%eax), %edx
	leal	-0x60c(%ebp), %eax
	movl	-0x628(%ebp), %ecx
	shll	$7, %ecx
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	-0x620(%ebp)
	pushl	-0x618(%ebp)
	pushl	$label_84
	pushl	$0x80
	pushl	-0x61c(%ebp)
	calll	snprintf
	addl	$0x20, %esp
	movl	%eax, -0x624(%ebp)
.label_76:
	cmpl	$0, -0x624(%ebp)
	js	.label_73
	cmpl	$0x7f, -0x624(%ebp)
	jg	.label_73
	addl	$1, -0x628(%ebp)
.label_74:
	cmpl	$0xb, -0x628(%ebp)
	jle	.label_80
	addl	$1, -0x62c(%ebp)
.label_69:
	cmpl	$1, -0x62c(%ebp)
	jle	.label_75
	movb	$1, use_abformat
	jmp	.label_78
.label_77:
	nop	
	jmp	.label_78
.label_83:
	nop	
	jmp	.label_78
.label_71:
	nop	
	jmp	.label_78
.label_73:
	nop	
.label_78:
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_81
	calll	__stack_chk_fail
.label_81:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a584

	.globl dev_ino_hash
	.type dev_ino_hash, @function
dev_ino_hash:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	movl	0xc(%ebp), %ecx
	movl	$0, %ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a5b2

	.globl dev_ino_compare
	.type dev_ino_compare, @function
dev_ino_compare:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %ecx
	movl	4(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_87
	movl	-0x10(%ebp), %eax
	movl	8(%eax), %ecx
	movl	0xc(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	8(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_87
	movl	$1, %eax
	jmp	.label_86
.label_87:
	movl	$0, %eax
.label_86:
	andl	$1, %eax
	addl	$0x10, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a616

	.globl dev_ino_free
	.type dev_ino_free, @function
dev_ino_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	free
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a62d

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	subl	$0xc, %esp
	pushl	$0x10
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %ecx
	movl	-0x28(%ebp), %eax
	movl	-0x24(%ebp), %edx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	-0x10(%ebp), %ecx
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 0xc(%ecx)
	movl	active_dir_set,  %eax
	subl	$8, %esp
	pushl	-0x10(%ebp)
	pushl	%eax
	calll	hash_insert
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_88
	calll	xalloc_die
.label_88:
	movl	-0xc(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	setne	%al
	movb	%al, -0x11(%ebp)
	cmpb	$0, -0x11(%ebp)
	je	.label_89
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	free
	addl	$0x10, %esp
.label_89:
	movzbl	-0x11(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a6c0

	.globl free_pending_ent
	.type free_pending_ent, @function
free_pending_ent:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	free
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a6fa

	.globl is_colored
	.type is_colored, @function
is_colored:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	color_indicator(, %eax, 8),  %eax
	movl	%eax, -0x10(%ebp)
	movl	8(%ebp), %eax
	movl	label_96(, %eax, 8),  %eax
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_91
	cmpl	$1, -0x10(%ebp)
	jne	.label_90
	movl	-0xc(%ebp), %eax
	movzbl	0(%eax), %edx
	movl	$label_93,  %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	je	.label_91
.label_90:
	cmpl	$2, -0x10(%ebp)
	jne	.label_95
	subl	$4, %esp
	pushl	$2
	pushl	$label_92
	pushl	-0xc(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_91
.label_95:
	movl	$1, %eax
	jmp	.label_94
.label_91:
	movl	$0, %eax
.label_94:
	andl	$1, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a768

	.globl restore_default_color
	.type restore_default_color, @function
restore_default_color:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$color_indicator
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_97
	calll	put_indicator
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a791

	.globl set_normal_color
	.type set_normal_color, @function
set_normal_color:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_99
	subl	$0xc, %esp
	pushl	$4
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_99
	subl	$0xc, %esp
	pushl	$color_indicator
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_98
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_97
	calll	put_indicator
	addl	$0x10, %esp
.label_99:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a7e6

	.globl sighandler
	.type sighandler, @function
sighandler:
	pushl	%ebp
	movl	%esp, %ebp
	movl	interrupt_signal,  %eax
	testl	%eax, %eax
	jne	.label_100
	movl	8(%ebp), %eax
	movl	%eax, interrupt_signal
.label_100:
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a7fd

	.globl stophandler
	.type stophandler, @function
stophandler:
	pushl	%ebp
	movl	%esp, %ebp
	movl	interrupt_signal,  %eax
	testl	%eax, %eax
	jne	.label_101
	movl	stop_signal_count,  %eax
	addl	$1, %eax
	movl	%eax, stop_signal_count
.label_101:
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a819

	.globl process_signals
	.type process_signals, @function
process_signals:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x98, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	jmp	.label_106
.label_104:
	movzbl	used_color,  %eax
	testb	%al, %al
	je	.label_105
	calll	restore_default_color
.label_105:
	movl	stdout,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	fflush_unlocked
	addl	$0x10, %esp
	subl	$4, %esp
	leal	-0x8c(%ebp), %eax
	pushl	%eax
	pushl	$caught_signals
	pushl	$0
	calll	sigprocmask
	addl	$0x10, %esp
	movl	interrupt_signal,  %eax
	movl	%eax, -0x94(%ebp)
	movl	stop_signal_count,  %eax
	movl	%eax, -0x90(%ebp)
	cmpl	$0, -0x90(%ebp)
	je	.label_103
	movl	-0x90(%ebp), %eax
	subl	$1, %eax
	movl	%eax, stop_signal_count
	movl	$0x13, -0x94(%ebp)
	jmp	.label_102
.label_103:
	subl	$8, %esp
	pushl	$0
	pushl	-0x94(%ebp)
	calll	signal
	addl	$0x10, %esp
.label_102:
	subl	$0xc, %esp
	pushl	-0x94(%ebp)
	calll	raise
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	$0
	leal	-0x8c(%ebp), %eax
	pushl	%eax
	pushl	$2
	calll	sigprocmask
	addl	$0x10, %esp
.label_106:
	movl	interrupt_signal,  %eax
	testl	%eax, %eax
	jne	.label_104
	movl	stop_signal_count,  %eax
	testl	%eax, %eax
	jne	.label_104
	nop	
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_107
	calll	__stack_chk_fail
.label_107:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804a90d

	.globl signal_setup
	.type signal_setup, @function
signal_setup:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0xbc, %esp
	movl	8(%ebp), %eax
	movb	%al, -0xbc(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0x1c(%ebp)
	xorl	%eax, %eax
	cmpb	$0, -0xbc(%ebp)
	je	.label_111
	subl	$0xc, %esp
	pushl	$caught_signals
	calll	sigemptyset
	addl	$0x10, %esp
	movl	$0, -0xac(%ebp)
	jmp	.label_108
.label_116:
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$4, %esp
	leal	-0xa8(%ebp), %edx
	pushl	%edx
	pushl	$0
	pushl	%eax
	calll	sigaction
	addl	$0x10, %esp
	movl	-0xa8(%ebp), %eax
	cmpl	$1, %eax
	je	.label_118
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$caught_signals
	calll	sigaddset
	addl	$0x10, %esp
.label_118:
	addl	$1, -0xac(%ebp)
.label_108:
	cmpl	$0xb, -0xac(%ebp)
	jle	.label_116
	leal	-0xa4(%ebp), %eax
	movl	$caught_signals,  %ebx
	movl	$0x20, %edx
	movl	%eax, %edi
	movl	%ebx, %esi
	movl	%edx, %ecx
	rep movsl	(%esi), %es:(%edi)
	movl	$0x10000000, -0x24(%ebp)
	movl	$0, -0xac(%ebp)
	jmp	.label_109
.label_110:
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$caught_signals
	calll	sigismember
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_119
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	cmpl	$0x14, %eax
	jne	.label_121
	movl	$stophandler,  %eax
	jmp	.label_112
.label_121:
	movl	$sighandler,  %eax
.label_112:
	movl	%eax, -0xa8(%ebp)
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$4, %esp
	pushl	$0
	leal	-0xa8(%ebp), %edx
	pushl	%edx
	pushl	%eax
	calll	sigaction
	addl	$0x10, %esp
.label_119:
	addl	$1, -0xac(%ebp)
.label_109:
	cmpl	$0xb, -0xac(%ebp)
	jle	.label_110
	jmp	.label_113
.label_111:
	movl	$0, -0xac(%ebp)
	jmp	.label_114
.label_115:
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$caught_signals
	calll	sigismember
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_120
	movl	-0xac(%ebp), %eax
	movl	sig.8191(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	$0
	pushl	%eax
	calll	signal
	addl	$0x10, %esp
.label_120:
	addl	$1, -0xac(%ebp)
.label_114:
	cmpl	$0xb, -0xac(%ebp)
	jle	.label_115
.label_113:
	nop	
	movl	-0x1c(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_117
	calll	__stack_chk_fail
.label_117:
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804aac9

	.globl signal_init
	.type signal_init, @function
signal_init:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$1
	calll	signal_setup
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804aadf

	.globl signal_restore
	.type signal_restore, @function
signal_restore:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$0
	calll	signal_setup
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804aaf5

	.globl main
	.type main, @function
main:
	leal	4(%esp), %ecx
	andl	$0xfffffff0, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	subl	$0x40, %esp
	movl	%ecx, %ebx
	movl	4(%ebx), %eax
	movl	%eax, -0x3c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x3c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	set_program_name
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$label_26
	pushl	$6
	calll	setlocale
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$label_143
	pushl	$label_33
	calll	bindtextdomain
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_33
	calll	textdomain
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$2
	calll	initialize_exit_failure
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$close_stdout
	calll	atexit
	addl	$0x10, %esp
	movl	$0, exit_status
	movb	$1, print_dir_name
	movl	$0, pending_dirs
	movl	$0x80000000, current_time
	movl	$0xffffffff, label_165
	subl	$8, %esp
	pushl	-0x3c(%ebp)
	pushl	0(%ebx)
	calll	decode_switches
	addl	$0x10, %esp
	movl	%eax, -0x30(%ebp)
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_158
	calll	parse_ls_color
.label_158:
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_125
	subl	$0xc, %esp
	pushl	$0xd
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_164
	subl	$0xc, %esp
	pushl	$0xe
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_167
	movzbl	color_symlink_as_referent,  %eax
	testb	%al, %al
	jne	.label_164
.label_167:
	subl	$0xc, %esp
	pushl	$0xc
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_125
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_125
.label_164:
	movb	$1, check_symlink_color
.label_125:
	movl	dereference,  %eax
	cmpl	$1, %eax
	jne	.label_133
	movzbl	immediate_dirs,  %eax
	testb	%al, %al
	jne	.label_139
	movl	indicator_style,  %eax
	cmpl	$3, %eax
	je	.label_139
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_156
.label_139:
	movl	$2, %eax
	jmp	.label_166
.label_156:
	movl	$4, %eax
.label_166:
	movl	%eax, dereference
.label_133:
	movzbl	recursive,  %eax
	testb	%al, %al
	je	.label_147
	subl	$0xc, %esp
	pushl	$dev_ino_free
	pushl	$dev_ino_compare
	pushl	$dev_ino_hash
	pushl	$0
	pushl	$0x1e
	calll	hash_initialize
	addl	$0x20, %esp
	movl	%eax, active_dir_set
	movl	active_dir_set,  %eax
	testl	%eax, %eax
	jne	.label_151
	calll	xalloc_die
.label_151:
	subl	$0xc, %esp
	pushl	$free
	pushl	$malloc
	pushl	$0
	pushl	$0
	pushl	$dev_ino_obstack
	calll	_obstack_begin
	addl	$0x20, %esp
.label_147:
	subl	$0xc, %esp
	pushl	$label_159
	calll	getenv
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	tzalloc
	addl	$0x10, %esp
	movl	%eax, localtz
	movl	sort_type,  %eax
	cmpl	$4, %eax
	je	.label_162
	movl	sort_type,  %eax
	cmpl	$2, %eax
	je	.label_162
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_162
	movzbl	print_scontext,  %eax
	testb	%al, %al
	jne	.label_162
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_123
.label_162:
	movl	$1, %eax
	jmp	.label_124
.label_123:
	movl	$0, %eax
.label_124:
	andl	$1, %eax
	movb	%al, format_needs_stat
	movzbl	format_needs_stat,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_130
	movzbl	recursive,  %eax
	testb	%al, %al
	jne	.label_138
	movzbl	print_with_color,  %eax
	testb	%al, %al
	jne	.label_138
	movl	indicator_style,  %eax
	testl	%eax, %eax
	jne	.label_138
	movzbl	directories_first,  %eax
	testb	%al, %al
	je	.label_130
.label_138:
	movl	$1, %eax
	jmp	.label_136
.label_130:
	movl	$0, %eax
.label_136:
	andl	$1, %eax
	movb	%al, format_needs_type
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_148
	subl	$0xc, %esp
	pushl	$free
	pushl	$malloc
	pushl	$0
	pushl	$0
	pushl	$dired_obstack
	calll	_obstack_begin
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	$free
	pushl	$malloc
	pushl	$0
	pushl	$0
	pushl	$subdired_obstack
	calll	_obstack_begin
	addl	$0x20, %esp
.label_148:
	movzbl	print_hyperlink,  %eax
	testb	%al, %al
	je	.label_157
	calll	file_escape_init
	calll	xgethostname
	movl	%eax, hostname
	movl	hostname,  %eax
	testl	%eax, %eax
	jne	.label_157
	movl	$label_26, hostname
.label_157:
	movl	$0x64, cwd_n_alloc
	movl	cwd_n_alloc,  %eax
	subl	$8, %esp
	pushl	$0x88
	pushl	%eax
	calll	xnmalloc
	addl	$0x10, %esp
	movl	%eax, cwd_file
	movl	$0, cwd_n_used
	calll	clear_files
	movl	0(%ebx), %eax
	subl	-0x30(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	cmpl	$0, -0x28(%ebp)
	jg	.label_128
	movzbl	immediate_dirs,  %eax
	testb	%al, %al
	je	.label_132
	subl	$8, %esp
	pushl	$label_26
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	$3
	pushl	$label_137
	calll	gobble_file
	addl	$0x20, %esp
	jmp	.label_146
.label_132:
	subl	$4, %esp
	pushl	$1
	pushl	$0
	pushl	$label_137
	calll	queue_directory
	addl	$0x10, %esp
	jmp	.label_146
.label_128:
	movl	-0x30(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x30(%ebp)
	leal	0(, %eax, 4), %edx
	movl	-0x3c(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	$label_26
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%eax
	calll	gobble_file
	addl	$0x20, %esp
	movl	-0x30(%ebp), %eax
	cmpl	0(%ebx), %eax
	jl	.label_128
.label_146:
	movl	cwd_n_used,  %eax
	testl	%eax, %eax
	je	.label_155
	calll	sort_files
	movzbl	immediate_dirs,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_155
	subl	$8, %esp
	pushl	$1
	pushl	$0
	calll	extract_dirs_from_files
	addl	$0x10, %esp
.label_155:
	movl	cwd_n_used,  %eax
	testl	%eax, %eax
	je	.label_160
	calll	print_current_files
	movl	pending_dirs,  %eax
	testl	%eax, %eax
	je	.label_122
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
	jmp	.label_122
.label_160:
	cmpl	$1, -0x28(%ebp)
	jg	.label_122
	movl	pending_dirs,  %eax
	testl	%eax, %eax
	je	.label_122
	movl	pending_dirs,  %eax
	movl	0xc(%eax), %eax
	testl	%eax, %eax
	jne	.label_122
	movb	$0, print_dir_name
	jmp	.label_122
.label_168:
	movl	pending_dirs,  %eax
	movl	%eax, -0x24(%ebp)
	movl	pending_dirs,  %eax
	movl	0xc(%eax), %eax
	movl	%eax, pending_dirs
	movl	active_dir_set,  %eax
	testl	%eax, %eax
	je	.label_141
	movl	-0x24(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_141
	leal	-0x1c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	dev_ino_pop
	addl	$0xc, %esp
	movl	active_dir_set,  %eax
	subl	$8, %esp
	leal	-0x1c(%ebp), %edx
	pushl	%edx
	pushl	%eax
	calll	hash_delete
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x20(%ebp)
	jne	.label_150
	pushl	$__PRETTY_FUNCTION__.8218
	pushl	$0x63c
	pushl	$label_43
	pushl	$label_152
	calll	__assert_fail
.label_150:
	subl	$0xc, %esp
	pushl	-0x20(%ebp)
	calll	dev_ino_free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x24(%ebp)
	calll	free_pending_ent
	addl	$0x10, %esp
	jmp	.label_122
.label_141:
	movl	-0x24(%ebp), %eax
	movzbl	8(%eax), %eax
	movzbl	%al, %ecx
	movl	-0x24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x24(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	print_dir
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x24(%ebp)
	calll	free_pending_ent
	addl	$0x10, %esp
	movb	$1, print_dir_name
.label_122:
	movl	pending_dirs,  %eax
	testl	%eax, %eax
	jne	.label_168
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_126
	movzbl	used_color,  %eax
	testb	%al, %al
	je	.label_126
	movl	color_indicator,  %eax
	cmpl	$2, %eax
	jne	.label_131
	movl	label_96,  %eax
	subl	$4, %esp
	pushl	$2
	pushl	$label_135
	pushl	%eax
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_131
	movl	label_97,  %eax
	cmpl	$1, %eax
	jne	.label_131
	movl	label_144,  %eax
	movzbl	0(%eax), %eax
	cmpb	$0x6d, %al
	je	.label_145
.label_131:
	calll	restore_default_color
.label_145:
	movl	stdout,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	fflush_unlocked
	addl	$0x10, %esp
	calll	signal_restore
	movl	stop_signal_count,  %eax
	movl	%eax, -0x2c(%ebp)
	jmp	.label_149
.label_154:
	subl	$0xc, %esp
	pushl	$0x13
	calll	raise
	addl	$0x10, %esp
	subl	$1, -0x2c(%ebp)
.label_149:
	cmpl	$0, -0x2c(%ebp)
	jne	.label_154
	movl	interrupt_signal,  %eax
	movl	%eax, -0x2c(%ebp)
	cmpl	$0, -0x2c(%ebp)
	je	.label_126
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	raise
	addl	$0x10, %esp
.label_126:
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_129
	subl	$8, %esp
	pushl	$dired_obstack
	pushl	$label_153
	calll	dired_dump_obstack
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$subdired_obstack
	pushl	$label_161
	calll	dired_dump_obstack
	addl	$0x10, %esp
	movl	filename_quoting_options,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	get_quoting_style
	addl	$0x10, %esp
	movl	quoting_style_args(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$label_163
	calll	printf
	addl	$0x10, %esp
.label_129:
	movl	active_dir_set,  %eax
	testl	%eax, %eax
	je	.label_127
	movl	active_dir_set,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	hash_get_n_entries
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_134
	pushl	$__PRETTY_FUNCTION__.8218
	pushl	$0x670
	pushl	$label_43
	pushl	$label_142
	calll	__assert_fail
.label_134:
	movl	active_dir_set,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	hash_free
	addl	$0x10, %esp
.label_127:
	movl	exit_status,  %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_140
	calll	__stack_chk_fail
.label_140:
	leal	-8(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%ebp
	leal	-4(%ecx), %esp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b17e

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$0xc, %esp
	pushl	$label_26
	leal	-0x18(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	-0x1c(%ebp)
	calll	xstrtoumax
	addl	$0x20, %esp
	testl	%eax, %eax
	je	.label_169
	cmpl	$1, %eax
	je	.label_172
	jmp	.label_173
.label_169:
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	cmpl	$0, %edx
	jbe	.label_174
	movl	$0xffffffff, %eax
	movl	$0, %edx
.label_174:
	movl	%eax, line_length
	movl	$1, %eax
	jmp	.label_170
.label_172:
	movl	$0xffffffff, line_length
	movl	$1, %eax
	jmp	.label_170
.label_173:
	movl	$0, %eax
.label_170:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_171
	calll	__stack_chk_fail
.label_171:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804b205

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x74, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x6c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x58(%ebp)
	movb	$0, -0x5a(%ebp)
	movb	$0, -0x59(%ebp)
	movb	$0, qmark_funny_chars
	movl	ls_mode,  %eax
	cmpl	$2, %eax
	je	.label_178
	cmpl	$3, %eax
	je	.label_189
	cmpl	$1, %eax
	je	.label_246
	jmp	.label_190
.label_178:
	movl	$2, format
	subl	$8, %esp
	pushl	$7
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_197
.label_189:
	movl	$0, format
	subl	$8, %esp
	pushl	$7
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_197
.label_246:
	subl	$0xc, %esp
	pushl	$1
	calll	isatty
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_248
	movl	$2, format
	subl	$8, %esp
	pushl	$3
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	movb	$1, qmark_funny_chars
	jmp	.label_197
.label_248:
	movl	$1, format
	movb	$0, qmark_funny_chars
	jmp	.label_197
.label_190:
	calll	abort
.label_197:
	movl	$0, time_type
	movl	$0, sort_type
	movb	$0, sort_reverse
	movb	$0, numeric_ids
	movb	$0, print_block_size
	movl	$0, indicator_style
	movb	$0, print_inode
	movl	$1, dereference
	movb	$0, recursive
	movb	$0, immediate_dirs
	movl	$0, ignore_mode
	movl	$0, ignore_patterns
	movl	$0, hide_patterns
	movb	$0, print_scontext
	calll	getenv_quoting_style
	movl	$0x50, line_length
	subl	$0xc, %esp
	pushl	$label_238
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x38(%ebp)
	cmpl	$0, -0x38(%ebp)
	je	.label_204
	movl	-0x38(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_204
	subl	$0xc, %esp
	pushl	-0x38(%ebp)
	calll	set_line_length
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_204
	subl	$0xc, %esp
	pushl	-0x38(%ebp)
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_226
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
.label_204:
	subl	$4, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	$0x5413
	pushl	$1
	calll	ioctl
	addl	$0x10, %esp
	cmpl	$-1, %eax
	je	.label_256
	movzwl	-0x12(%ebp), %eax
	testw	%ax, %ax
	je	.label_256
	movzwl	-0x12(%ebp), %eax
	movzwl	%ax, %eax
	movl	%eax, line_length
.label_256:
	subl	$0xc, %esp
	pushl	$label_243
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x34(%ebp)
	movl	$8, tabsize
	cmpl	$0, -0x34(%ebp)
	je	.label_184
	subl	$0xc, %esp
	pushl	$0
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	-0x34(%ebp)
	calll	xstrtoul
	addl	$0x20, %esp
	testl	%eax, %eax
	jne	.label_183
	movl	-0x14(%ebp), %eax
	movl	%eax, tabsize
	jmp	.label_184
.label_183:
	subl	$0xc, %esp
	pushl	-0x34(%ebp)
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_188
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
.label_184:
	movl	$0xffffffff, -0x14(%ebp)
	subl	$0xc, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	$long_options
	pushl	$label_195
	pushl	-0x6c(%ebp)
	pushl	8(%ebp)
	calll	getopt_long
	addl	$0x20, %esp
	movl	%eax, -0x30(%ebp)
	cmpl	$-1, -0x30(%ebp)
	jne	.label_207
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	orl	%edx, %eax
	testl	%eax, %eax
	je	.label_239
	jmp	.label_214
.label_207:
	movl	-0x30(%ebp), %eax
	addl	$0x83, %eax
	cmpl	$0x113, %eax
	ja	.label_217
	movl	label_222(, %eax, 4),  %eax
	jmpl	*%eax
.label_2583:
	movl	$2, ignore_mode
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b4d1
	.type sub_804b4d1, @function
sub_804b4d1:
	subl	$8, %esp
	pushl	$7
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_181
.label_2584:
	movl	$1, time_type
	jmp	.label_181
.label_2585:
	movb	$1, immediate_dirs
	jmp	.label_181
.label_2586:
	movl	$2, ignore_mode
	movl	$0xffffffff, sort_type
	movb	$1, -0x5a(%ebp)
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_230
	.section	.text
	.align	32

	.globl sub_804b521
	.type sub_804b521, @function
sub_804b521:

	subl	$0xc, %esp
	pushl	$1
	calll	isatty
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_266
	movl	$2, %eax
	jmp	.label_265
.label_266:
	movl	$1, %eax
.label_265:
	movl	%eax, format
.label_230:
	movb	$0, print_block_size
	movb	$0, print_with_color
	movb	$0, print_hyperlink
	jmp	.label_181
.label_2608:
	movl	$2, indicator_style
	jmp	.label_181
.label_2587:
	movl	$0, format
	movb	$0, print_owner
	jmp	.label_181
.label_2588:
	movl	$0xb0, human_output_opts
	movl	human_output_opts,  %eax
	movl	%eax, file_human_output_opts
	movl	$1, output_block_size
	movl	$0, label_215
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	%eax, file_output_block_size
	movl	%edx, label_216
	jmp	.label_181
.label_2589:
	movb	$1, print_inode
	jmp	.label_181
.label_2590:
	movb	$1, -0x59(%ebp)
	jmp	.label_181
.label_2591:
	movl	$0, format
	jmp	.label_181
.label_2592:
	movl	$4, format
	jmp	.label_181
.label_2593:
	movb	$1, numeric_ids
	movl	$0, format
	jmp	.label_181
.label_2594:
	movl	$0, format
	movb	$0, print_group
	jmp	.label_181
.label_2595:
	movl	$1, indicator_style
	jmp	.label_181
.label_2596:
	movb	$1, qmark_funny_chars
	jmp	.label_181
.label_2597:
	movb	$1, sort_reverse
	jmp	.label_181
.label_2598:
	movb	$1, print_block_size
	jmp	.label_181
.label_2599:
	movl	$4, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
.label_2600:
	movl	$2, time_type
	jmp	.label_181
.label_2601:
	movl	$3, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
.label_2602:
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b691
	.type sub_804b691, @function
sub_804b691:

	subl	$0xc, %esp
	pushl	%eax
	calll	set_line_length
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_268
	movl	optarg,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_267
	calll	gettext
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$label_269
	pushl	$0
	pushl	$2
	calll	error
	addl	$0x20, %esp
.label_2603:
	movl	$3, format
	jmp	.label_181
.label_2570:
	movl	$1, ignore_mode
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b6ff
	.type sub_804b6ff, @function
sub_804b6ff:
	subl	$0xc, %esp
	pushl	$label_271
	calll	add_ignore_pattern
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_270
	calll	add_ignore_pattern
	addl	$0x10, %esp
	jmp	.label_181
.label_2571:
	movl	$2, format
	jmp	.label_181
.label_2572:
	movb	$1, dired
	jmp	.label_181
.label_2573:
	movl	$3, indicator_style
	jmp	.label_181
.label_2574:
	movb	$0, print_group
	jmp	.label_181
.label_2575:
	movl	$3, dereference
	jmp	.label_181
.label_2607:
	movl	$4, dereference
	jmp	.label_181
.label_2576:
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b77d
	.type sub_804b77d, @function
sub_804b77d:

	subl	$0xc, %esp
	pushl	%eax
	calll	add_ignore_pattern
	addl	$0x10, %esp
	jmp	.label_181
.label_2577:
	movl	$5, dereference
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b79d
	.type sub_804b79d, @function
sub_804b79d:
	subl	$8, %esp
	pushl	$0
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b7b1
	.type sub_804b7b1, @function
sub_804b7b1:
	subl	$8, %esp
	pushl	$5
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_181
.label_2578:
	movb	$1, recursive
	jmp	.label_181
.label_2579:
	movl	$2, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b7e4
	.type sub_804b7e4, @function
sub_804b7e4:
	subl	$0xc, %esp
	pushl	$label_272
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	optarg,  %eax
	subl	$0xc, %esp
	pushl	$2
	pushl	%edx
	pushl	$label_26
	pushl	$0
	pushl	$-1
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	%eax
	calll	xnumtoumax
	addl	$0x30, %esp
	movl	%eax, tabsize
	jmp	.label_181
.label_2580:
	movl	$0xffffffff, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
.label_2581:
	movl	$1, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
.label_2569:
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_191
	movl	$1, format
	jmp	.label_191
.label_2604:
	movb	$1, print_author
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804b871
	.type sub_804b871, @function
sub_804b871:
	subl	$0xc, %esp
	pushl	$8
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x2c(%ebp)
	movl	optarg,  %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	hide_patterns,  %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x2c(%ebp), %eax
	movl	%eax, hide_patterns
	jmp	.label_181
.label_2617:
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b8b0
	.type sub_804b8b0, @function
sub_804b8b0:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$sort_types
	pushl	$sort_args
	pushl	%eax
	pushl	$label_273
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	sort_types(, %eax, 4),  %eax
	movl	%eax, sort_type
	movb	$1, -0x5a(%ebp)
	jmp	.label_181
.label_2611:
	movb	$1, directories_first
	jmp	.label_181
.label_2618:
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b8fa
	.type sub_804b8fa, @function
sub_804b8fa:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$time_types
	pushl	$time_args
	pushl	%eax
	pushl	$label_274
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	time_types(, %eax, 4),  %eax
	movl	%eax, time_type
	jmp	.label_181
.label_2609:
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b934
	.type sub_804b934, @function
sub_804b934:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$format_types
	pushl	$format_args
	pushl	%eax
	pushl	$label_275
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	format_types(, %eax, 4),  %eax
	movl	%eax, format
	jmp	.label_181
.label_2610:
	movl	$0, format
	.section	.text
	.align	32

	.globl sub_804b96d
	.type sub_804b96d, @function
sub_804b96d:

	subl	$0xc, %esp
	pushl	$label_276
	calll	bad_cast
	addl	$0x10, %esp
	movl	%eax, -0x58(%ebp)
	jmp	.label_181
.label_2606:
	movl	optarg,  %eax
	testl	%eax, %eax
	je	.label_245
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804b999
	.type sub_804b999, @function
sub_804b999:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$when_types
	pushl	$when_args
	pushl	%eax
	pushl	$label_277
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	when_types(, %eax, 4),  %eax
	movl	%eax, -0x54(%ebp)
	jmp	.label_278
.label_245:
	movl	$1, -0x54(%ebp)
.label_278:
	cmpl	$1, -0x54(%ebp)
	je	.label_257
	cmpl	$2, -0x54(%ebp)
	jne	.label_258
	subl	$0xc, %esp
	pushl	$1
	calll	isatty
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_258
.label_257:
	movl	$1, %eax
	jmp	.label_261
.label_258:
	movl	$0, %eax
.label_261:
	andl	$1, %eax
	movb	%al, print_with_color
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_180
	movl	$0, tabsize
	jmp	.label_180
.label_2612:
	movl	optarg,  %eax
	testl	%eax, %eax
	je	.label_182
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804ba2d
	.type sub_804ba2d, @function
sub_804ba2d:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$when_types
	pushl	$when_args
	pushl	%eax
	pushl	$label_280
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	when_types(, %eax, 4),  %eax
	movl	%eax, -0x50(%ebp)
	jmp	.label_279
.label_182:
	movl	$1, -0x50(%ebp)
.label_279:
	cmpl	$1, -0x50(%ebp)
	je	.label_196
	cmpl	$2, -0x50(%ebp)
	jne	.label_202
	subl	$0xc, %esp
	pushl	$1
	calll	isatty
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_202
.label_196:
	movl	$1, %eax
	jmp	.label_205
.label_202:
	movl	$0, %eax
.label_205:
	andl	$1, %eax
	movb	%al, print_hyperlink
	jmp	.label_181
.label_2613:
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804ba9f
	.type sub_804ba9f, @function
sub_804ba9f:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$indicator_style_types
	pushl	$indicator_style_args
	pushl	%eax
	pushl	$label_281
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	indicator_style_types(, %eax, 4),  %eax
	movl	%eax, indicator_style
	jmp	.label_181
.label_2614:
	movl	argmatch_die,  %edx
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804bad9
	.type sub_804bad9, @function
sub_804bad9:

	subl	$8, %esp
	pushl	%edx
	pushl	$4
	pushl	$quoting_style_vals
	pushl	$quoting_style_args
	pushl	%eax
	pushl	$label_282
	calll	__xargmatch_internal
	addl	$0x20, %esp
	movl	quoting_style_vals(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_181
.label_2619:
	movl	optarg,  %eax
	movl	%eax, -0x58(%ebp)
	jmp	.label_181
.label_2615:
	movb	$0, qmark_funny_chars
	jmp	.label_181
.label_2605:
	movl	optarg,  %eax
	.section	.text
	.align	32

	.globl sub_804bb2f
	.type sub_804bb2f, @function
sub_804bb2f:

	subl	$4, %esp
	pushl	$output_block_size
	pushl	$human_output_opts
	pushl	%eax
	calll	human_options
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
	cmpl	$0, -0x28(%ebp)
	je	.label_283
	movl	optarg,  %edx
	movl	-0x14(%ebp), %eax
	subl	$0xc, %esp
	pushl	%edx
	pushl	$long_options
	pushl	$0
	pushl	%eax
	pushl	-0x28(%ebp)
	calll	xstrtol_fatal
.label_283:
	movl	human_output_opts,  %eax
	movl	%eax, file_human_output_opts
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	%eax, file_output_block_size
	movl	%edx, label_216
	jmp	.label_181
.label_2616:
	movl	$0x90, human_output_opts
	movl	human_output_opts,  %eax
	movl	%eax, file_human_output_opts
	movl	$1, output_block_size
	movl	$0, label_215
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	%eax, file_output_block_size
	movl	%edx, label_216
	jmp	.label_181
.label_2582:
	movb	$1, print_scontext
	jmp	.label_181
	.section	.text
	.align	32


	.globl sub_804bbdc
	.type sub_804bbdc, @function
sub_804bbdc:
	subl	$0xc, %esp
	pushl	$0
	calll	usage
.label_2568:
	movl	Version,  %ecx
	movl	ls_mode,  %eax
	cmpl	$1, %eax
	je	.label_260
	movl	ls_mode,  %eax
	cmpl	$2, %eax
	jne	.label_262
	movl	$label_175,  %eax
	jmp	.label_176
.label_262:
	movl	$label_179,  %eax
	jmp	.label_176
.label_260:
	movl	$label_194,  %eax
.label_176:
	movl	stdout,  %edx
	.section	.text
	.align	32

	.globl sub_804bc19
	.type sub_804bc19, @function
sub_804bc19:

	subl	$4, %esp
	pushl	$0
	pushl	$label_284
	pushl	$label_285
	pushl	%ecx
	pushl	$label_18
	pushl	%eax
	pushl	%edx
	calll	version_etc
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	$0
	calll	exit
.label_217:
	subl	$0xc, %esp
	pushl	$2
	calll	usage
.label_268:
	nop	
	jmp	.label_184
.label_191:
	nop	
	jmp	.label_184
.label_180:
	nop	
.label_181:
	jmp	.label_184
.label_239:
	subl	$0xc, %esp
	pushl	$label_187
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x24(%ebp)
	subl	$4, %esp
	pushl	$output_block_size
	pushl	$human_output_opts
	pushl	-0x24(%ebp)
	calll	human_options
	addl	$0x10, %esp
	cmpl	$0, -0x24(%ebp)
	jne	.label_235
	subl	$0xc, %esp
	pushl	$label_209
	calll	getenv
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_213
.label_235:
	movl	human_output_opts,  %eax
	movl	%eax, file_human_output_opts
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	%eax, file_output_block_size
	movl	%edx, label_216
.label_213:
	cmpb	$0, -0x59(%ebp)
	je	.label_214
	movl	$0, human_output_opts
	movl	$0x400, output_block_size
	movl	$0, label_215
.label_214:
	movl	line_length,  %eax
	movl	$0xaaaaaaab, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$1, %eax
	movl	%eax, max_idx
	movl	line_length,  %ecx
	movl	$0xaaaaaaab, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$1, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	max_idx,  %eax
	addl	%edx, %eax
	movl	%eax, max_idx
	subl	$0xc, %esp
	pushl	$0
	calll	get_quoting_style
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	format,  %eax
	cmpl	$4, %eax
	je	.label_237
	movl	format,  %eax
	cmpl	$1, %eax
	je	.label_237
	movl	line_length,  %eax
	testl	%eax, %eax
	jne	.label_240
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_237
.label_240:
	cmpl	$1, -0x20(%ebp)
	je	.label_242
	cmpl	$3, -0x20(%ebp)
	je	.label_242
	cmpl	$6, -0x20(%ebp)
	jne	.label_237
.label_242:
	movl	$1, %eax
	jmp	.label_244
.label_237:
	movl	$0, %eax
.label_244:
	andl	$1, %eax
	movb	%al, align_variable_outer_quotes
	subl	$0xc, %esp
	pushl	$0
	calll	clone_quoting_options
	addl	$0x10, %esp
	movl	%eax, filename_quoting_options
	cmpl	$7, -0x20(%ebp)
	jne	.label_247
	movl	filename_quoting_options,  %eax
	subl	$4, %esp
	pushl	$1
	pushl	$0x20
	pushl	%eax
	calll	set_char_quoting
	addl	$0x10, %esp
.label_247:
	movl	indicator_style,  %eax
	cmpl	$1, %eax
	jbe	.label_252
	movl	indicator_style,  %eax
	subl	$2, %eax
	addl	$label_253,  %eax
	movl	%eax, -0x4c(%ebp)
	jmp	.label_254
.label_251:
	movl	-0x4c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %edx
	movl	filename_quoting_options,  %eax
	subl	$4, %esp
	pushl	$1
	pushl	%edx
	pushl	%eax
	calll	set_char_quoting
	addl	$0x10, %esp
	addl	$1, -0x4c(%ebp)
.label_254:
	movl	-0x4c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_251
.label_252:
	subl	$0xc, %esp
	pushl	$0
	calll	clone_quoting_options
	addl	$0x10, %esp
	movl	%eax, dirname_quoting_options
	movl	dirname_quoting_options,  %eax
	subl	$4, %esp
	pushl	$1
	pushl	$0x3a
	pushl	%eax
	calll	set_char_quoting
	addl	$0x10, %esp
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_185
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_234
	movzbl	print_hyperlink,  %eax
	testb	%al, %al
	je	.label_185
.label_234:
	movb	$0, dired
.label_185:
	movl	time_type,  %eax
	cmpl	$1, %eax
	je	.label_192
	movl	time_type,  %eax
	cmpl	$2, %eax
	jne	.label_193
.label_192:
	movzbl	-0x5a(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_193
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_193
	movl	$4, sort_type
.label_193:
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_206
	movl	-0x58(%ebp), %eax
	movl	%eax, -0x48(%ebp)
	cmpl	$0, -0x48(%ebp)
	jne	.label_208
	subl	$0xc, %esp
	pushl	$label_210
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x48(%ebp)
	cmpl	$0, -0x48(%ebp)
	jne	.label_208
	subl	$0xc, %esp
	pushl	$label_221
	calll	bad_cast
	addl	$0x10, %esp
	movl	%eax, -0x48(%ebp)
	jmp	.label_208
.label_228:
	subl	$0xc, %esp
	pushl	$2
	calll	hard_locale
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_223
	movl	optind,  %eax
	jmp	.label_225
.label_223:
	addl	$6, -0x48(%ebp)
.label_208:
	subl	$4, %esp
	pushl	$6
	pushl	$posix_prefix.8331
	pushl	-0x48(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_228
	movl	-0x48(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2b, %al
	jne	.label_229
	movl	-0x48(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0x1c(%ebp)
	subl	$8, %esp
	pushl	$0xa
	pushl	-0x1c(%ebp)
	calll	strchr
	addl	$0x10, %esp
	movl	%eax, -0x44(%ebp)
	cmpl	$0, -0x44(%ebp)
	jne	.label_264
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	jmp	.label_236
.label_264:
	movl	-0x44(%ebp), %eax
	addl	$1, %eax
	subl	$8, %esp
	pushl	$0xa
	pushl	%eax
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_249
	subl	$0xc, %esp
	pushl	-0x1c(%ebp)
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_241
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$2
	calll	error
	addl	$0x10, %esp
.label_249:
	movl	-0x44(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x44(%ebp)
	movb	$0, 0(%eax)
.label_236:
	movl	-0x1c(%ebp), %eax
	movl	%eax, long_time_format
	movl	-0x44(%ebp), %eax
	movl	%eax, label_212
	jmp	.label_200
.label_229:
	pushl	$4
	pushl	$time_style_types
	pushl	$time_style_args
	pushl	-0x48(%ebp)
	calll	argmatch
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	cmpl	$0, -0x18(%ebp)
	jns	.label_250
	subl	$4, %esp
	pushl	-0x18(%ebp)
	pushl	-0x48(%ebp)
	pushl	$label_255
	calll	argmatch_invalid
	addl	$0x10, %esp
	movl	stderr,  %ebx
	subl	$0xc, %esp
	pushl	$label_259
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	$time_style_args, -64(%ebp)
	jmp	.label_263
.label_227:
	movl	-0x40(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -0x40(%ebp)
	movl	0(%eax), %edx
	movl	stderr,  %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$label_177
	pushl	%eax
	calll	fprintf
	addl	$0x10, %esp
.label_263:
	movl	-0x40(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_227
	movl	stderr,  %ebx
	subl	$0xc, %esp
	pushl	$label_186
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$2
	calll	usage
.label_250:
	movl	-0x18(%ebp), %eax
	cmpl	$1, %eax
	je	.label_218
	cmpl	$1, %eax
	jg	.label_198
	testl	%eax, %eax
	je	.label_199
	jmp	.label_200
.label_198:
	cmpl	$2, %eax
	je	.label_201
	cmpl	$3, %eax
	je	.label_203
	jmp	.label_200
.label_199:
	movl	$label_231, label_212
	movl	label_212,  %eax
	movl	%eax, long_time_format
	jmp	.label_200
.label_218:
	movl	$label_211, label_212
	movl	label_212,  %eax
	movl	%eax, long_time_format
	jmp	.label_200
.label_201:
	movl	$label_219, long_time_format
	movl	$label_220, label_212
	jmp	.label_200
.label_203:
	subl	$0xc, %esp
	pushl	$2
	calll	hard_locale
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_200
	movl	$0, -0x3c(%ebp)
	jmp	.label_224
.label_232:
	movl	-0x3c(%ebp), %eax
	movl	long_time_format(, %eax, 4),  %eax
	subl	$4, %esp
	pushl	$2
	pushl	%eax
	pushl	$0
	calll	dcgettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x3c(%ebp), %eax
	movl	%edx, long_time_format(, %eax, 4)
	addl	$1, -0x3c(%ebp)
.label_224:
	cmpl	$1, -0x3c(%ebp)
	jle	.label_232
.label_200:
	calll	abformat_init
.label_206:
	movl	optind,  %eax
.label_225:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_233
	calll	__stack_chk_fail
.label_233:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c12c

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	movl	$0, -0x18(%ebp)
	movb	$0, -0x19(%ebp)
	movl	$0, -0x14(%ebp)
	jmp	.label_289
.label_305:
	cmpl	$4, -0x14(%ebp)
	ja	.label_303
	movl	-0x14(%ebp), %eax
	shll	$2, %eax
	addl	$label_304,  %eax
	movl	0(%eax), %eax
	jmpl	*%eax
.label_2681:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x3d, %eax
	je	.label_307
	cmpl	$0x3d, %eax
	jg	.label_287
	testl	%eax, %eax
	je	.label_291
	cmpl	$0x3a, %eax
	je	.label_291
	jmp	.label_295
.label_287:
	cmpl	$0x5c, %eax
	je	.label_293
	cmpl	$0x5e, %eax
	je	.label_294
	jmp	.label_295
.label_291:
	movl	$5, -0x14(%ebp)
	jmp	.label_297
.label_293:
	movl	$1, -0x14(%ebp)
	addl	$1, -0x10(%ebp)
	jmp	.label_297
.label_294:
	movl	$4, -0x14(%ebp)
	addl	$1, -0x10(%ebp)
	jmp	.label_297
.label_307:
	cmpb	$0, -0x2c(%ebp)
	je	.label_295
	movl	$5, -0x14(%ebp)
	jmp	.label_297
.label_295:
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movl	-0x10(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x10(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x18(%ebp)
	nop	
.label_297:
	jmp	.label_289
.label_2682:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x78, %eax
	ja	.label_306
	movl	label_286(, %eax, 4),  %eax
	jmpl	*%eax
.label_2687:
	movl	$2, -0x14(%ebp)
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	subl	$0x30, %eax
	movb	%al, -0x19(%ebp)
	jmp	.label_296
.label_2689:
	movl	$3, -0x14(%ebp)
	movb	$0, -0x19(%ebp)
	jmp	.label_296
.label_2691:
	movb	$7, -0x19(%ebp)
	jmp	.label_296
.label_2692:
	movb	$8, -0x19(%ebp)
	jmp	.label_296
.label_2693:
	movb	$0x1b, -0x19(%ebp)
	jmp	.label_296
.label_2694:
	movb	$0xc, -0x19(%ebp)
	jmp	.label_296
.label_2695:
	movb	$0xa, -0x19(%ebp)
	jmp	.label_296
.label_2696:
	movb	$0xd, -0x19(%ebp)
	jmp	.label_296
.label_2697:
	movb	$9, -0x19(%ebp)
	jmp	.label_296
.label_2698:
	movb	$0xb, -0x19(%ebp)
	jmp	.label_296
.label_2688:
	movb	$0x7f, -0x19(%ebp)
	jmp	.label_296
.label_2690:
	movb	$0x20, -0x19(%ebp)
	jmp	.label_296
.label_2686:
	movl	$6, -0x14(%ebp)
	jmp	.label_296
.label_306:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x19(%ebp)
	nop	
.label_296:
	cmpl	$1, -0x14(%ebp)
	jne	.label_309
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movzbl	-0x19(%ebp), %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x18(%ebp)
	movl	$0, -0x14(%ebp)
.label_309:
	addl	$1, -0x10(%ebp)
	jmp	.label_289
.label_2683:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jle	.label_298
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x37, %al
	jle	.label_300
.label_298:
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movzbl	-0x19(%ebp), %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x18(%ebp)
	movl	$0, -0x14(%ebp)
	jmp	.label_302
.label_300:
	movzbl	-0x19(%ebp), %eax
	leal	0(, %eax, 8), %ecx
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movzbl	0(%eax), %eax
	addl	%ecx, %eax
	subl	$0x30, %eax
	movb	%al, -0x19(%ebp)
.label_302:
	jmp	.label_289
.label_2684:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x30, %eax
	cmpl	$0x36, %eax
	ja	.label_308
	movl	label_288(, %eax, 4),  %eax
	jmpl	*%eax
.label_2699:
	movzbl	-0x19(%ebp), %eax
	shll	$4, %eax
	movl	%eax, %ecx
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movzbl	0(%eax), %eax
	addl	%ecx, %eax
	subl	$0x30, %eax
	movb	%al, -0x19(%ebp)
	jmp	.label_292
.label_2701:
	movzbl	-0x19(%ebp), %eax
	shll	$4, %eax
	movl	%eax, %ecx
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movzbl	0(%eax), %eax
	addl	%ecx, %eax
	subl	$0x57, %eax
	movb	%al, -0x19(%ebp)
	jmp	.label_292
.label_2700:
	movzbl	-0x19(%ebp), %eax
	shll	$4, %eax
	movl	%eax, %ecx
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movzbl	0(%eax), %eax
	addl	%ecx, %eax
	subl	$0x37, %eax
	movb	%al, -0x19(%ebp)
	jmp	.label_292
.label_308:
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movzbl	-0x19(%ebp), %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x18(%ebp)
	movl	$0, -0x14(%ebp)
	nop	
.label_292:
	jmp	.label_289
.label_2685:
	movl	$0, -0x14(%ebp)
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x3f, %al
	jle	.label_290
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x7f, %al
	je	.label_290
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movl	-0x10(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x10(%ebp)
	movzbl	0(%edx), %edx
	andl	$0x1f, %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x18(%ebp)
	jmp	.label_299
.label_290:
	movl	-0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x3f, %al
	jne	.label_301
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	movb	$0x7f, 0(%eax)
	addl	$1, -0x18(%ebp)
	jmp	.label_289
.label_301:
	movl	$6, -0x14(%ebp)
.label_299:
	jmp	.label_289
.label_303:
	calll	abort
.label_289:
	cmpl	$4, -0x14(%ebp)
	jbe	.label_305
	movl	8(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	0xc(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	0x14(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	cmpl	$6, -0x14(%ebp)
	setne	%al
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c41e

	.globl known_term_type
	.type known_term_type, @function
known_term_type:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	$label_317
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	je	.label_315
	movl	-0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_316
.label_315:
	movl	$0, %eax
	jmp	.label_310
.label_316:
	movl	$G_line, -16(%ebp)
	jmp	.label_314
.label_312:
	subl	$4, %esp
	pushl	$5
	pushl	$label_313
	pushl	-0x10(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_311
	movl	-0x10(%ebp), %eax
	addl	$5, %eax
	subl	$4, %esp
	pushl	$0
	pushl	-0xc(%ebp)
	pushl	%eax
	calll	fnmatch
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_311
	movl	$1, %eax
	jmp	.label_310
.label_311:
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	addl	%eax, -0x10(%ebp)
.label_314:
	movl	-0x10(%ebp), %eax
	movl	$G_line,  %edx
	subl	%edx, %eax
	cmpl	$0x1043, %eax
	jbe	.label_312
	movl	$0, %eax
.label_310:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c4be

	.globl parse_ls_color
	.type parse_ls_color, @function
parse_ls_color:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x34, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$0xc, %esp
	pushl	$label_343
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x30(%ebp)
	movl	-0x30(%ebp), %eax
	testl	%eax, %eax
	je	.label_339
	movl	-0x30(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_341
.label_339:
	subl	$0xc, %esp
	pushl	$label_344
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	cmpl	$0, -0x14(%ebp)
	je	.label_319
	movl	-0x14(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_327
.label_319:
	calll	known_term_type
	xorl	$1, %eax
	testb	%al, %al
	je	.label_327
	movb	$0, print_with_color
	jmp	.label_327
.label_341:
	movl	$0, -0x24(%ebp)
	movw	$0x3f3f, -0xf(%ebp)
	movb	$0, -0xd(%ebp)
	movl	-0x30(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, color_buf
	movl	color_buf,  %eax
	movl	%eax, -0x2c(%ebp)
	movl	$1, -0x20(%ebp)
.label_325:
	cmpl	$6, -0x20(%ebp)
	ja	.label_336
	movl	-0x20(%ebp), %eax
	shll	$2, %eax
	addl	$label_345,  %eax
	movl	0(%eax), %eax
	jmpl	*%eax
.label_2360:
	movl	-0x30(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x2a, %eax
	je	sub_804c5ab
	cmpl	$0x3a, %eax
	je	.label_329
	testl	%eax, %eax
	je	.label_330
	jmp	.label_332
.label_329:
	movl	-0x30(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0x30(%ebp)
	jmp	.label_331
	.section	.text
	.align	32


	.globl sub_804c5ab
	.type sub_804c5ab, @function
sub_804c5ab:
	subl	$0xc, %esp
	pushl	$0x14
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x24(%ebp)
	movl	color_ext_list,  %edx
	movl	-0x24(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	-0x24(%ebp), %eax
	movl	%eax, color_ext_list
	movl	-0x30(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0x30(%ebp)
	movl	-0x2c(%ebp), %edx
	movl	-0x24(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x24(%ebp), %eax
	pushl	%eax
	pushl	$1
	leal	-0x30(%ebp), %eax
	pushl	%eax
	leal	-0x2c(%ebp), %eax
	pushl	%eax
	calll	get_funky_string
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_348
	movl	$4, %eax
	jmp	.label_347
.label_348:
	movl	$6, %eax
.label_347:
	movl	%eax, -0x20(%ebp)
	jmp	.label_331
.label_330:
	movl	$5, -0x20(%ebp)
	jmp	.label_326
.label_332:
	movl	-0x30(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x30(%ebp)
	movzbl	0(%eax), %eax
	movb	%al, -0xf(%ebp)
	movl	$2, -0x20(%ebp)
	nop	
.label_331:
	jmp	.label_333
.label_2361:
	movl	-0x30(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_334
	movl	-0x30(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x30(%ebp)
	movzbl	0(%eax), %eax
	movb	%al, -0xe(%ebp)
	movl	$3, -0x20(%ebp)
	jmp	.label_333
.label_334:
	movl	$6, -0x20(%ebp)
	jmp	.label_333
.label_2362:
	movl	$6, -0x20(%ebp)
	movl	-0x30(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x30(%ebp)
	movzbl	0(%eax), %eax
	cmpb	$0x3d, %al
	jne	.label_337
	movl	$0, -0x28(%ebp)
	jmp	.label_318
.label_342:
	movl	-0x28(%ebp), %eax
	movl	indicator_name(, %eax, 4),  %eax
	.section	.text
	.align	32

	.globl sub_804c693
	.type sub_804c693, @function
sub_804c693:

	subl	$8, %esp
	pushl	%eax
	leal	-0xf(%ebp), %eax
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_349
	movl	-0x2c(%ebp), %edx
	movl	-0x28(%ebp), %eax
	movl	%edx, label_96(, %eax, 8)
	movl	-0x28(%ebp), %eax
	shll	$3, %eax
	addl	$color_indicator,  %eax
	pushl	%eax
	pushl	$0
	leal	-0x30(%ebp), %eax
	pushl	%eax
	leal	-0x2c(%ebp), %eax
	pushl	%eax
	calll	get_funky_string
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_352
	movl	$1, %eax
	jmp	.label_351
.label_352:
	movl	$6, %eax
.label_351:
	movl	%eax, -0x20(%ebp)
	jmp	.label_350
.label_349:
	addl	$1, -0x28(%ebp)
.label_318:
	movl	-0x28(%ebp), %eax
	movl	indicator_name(, %eax, 4),  %eax
	testl	%eax, %eax
	jne	.label_342
.label_350:
	cmpl	$6, -0x20(%ebp)
	jne	.label_337
	subl	$0xc, %esp
	leal	-0xf(%ebp), %eax
	pushl	%eax
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_338
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
	jmp	.label_337
.label_2363:
	movl	-0x30(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x30(%ebp)
	movzbl	0(%eax), %eax
	cmpb	$0x3d, %al
	jne	.label_335
	movl	-0x2c(%ebp), %edx
	movl	-0x24(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	-0x24(%ebp), %eax
	addl	$8, %eax
	pushl	%eax
	pushl	$0
	leal	-0x30(%ebp), %eax
	pushl	%eax
	leal	-0x2c(%ebp), %eax
	pushl	%eax
	calll	get_funky_string
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_340
	movl	$1, %eax
	jmp	.label_346
.label_340:
	movl	$6, %eax
.label_346:
	movl	%eax, -0x20(%ebp)
	jmp	.label_333
.label_335:
	movl	$6, -0x20(%ebp)
	jmp	.label_333
.label_336:
	calll	abort
.label_337:
	nop	
.label_333:
	jmp	.label_325
.label_2364:
	nop	
.label_326:
	cmpl	$6, -0x20(%ebp)
	jne	.label_328
	.section	.text
	.align	32

	.globl sub_804c796
	.type sub_804c796, @function
sub_804c796:

	subl	$0xc, %esp
	pushl	$label_354
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
	movl	color_buf,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	color_ext_list,  %eax
	movl	%eax, -0x1c(%ebp)
	jmp	.label_353
.label_355:
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	free
	addl	$0x10, %esp
.label_353:
	cmpl	$0, -0x1c(%ebp)
	jne	.label_355
	movb	$0, print_with_color
.label_328:
	movl	label_323,  %eax
	cmpl	$6, %eax
	jne	.label_324
	movl	label_321,  %eax
	subl	$4, %esp
	pushl	$6
	pushl	$label_322
	pushl	%eax
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_324
	movb	$1, color_symlink_as_referent
	jmp	.label_324
.label_327:
	nop	
.label_324:
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_320
	calll	__stack_chk_fail
.label_320:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c841

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	subl	$0xc, %esp
	pushl	$label_356
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_357
	pushl	$4
	pushl	$quoting_style_vals
	pushl	$quoting_style_args
	pushl	-0x10(%ebp)
	calll	argmatch
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	js	.label_359
	movl	-0xc(%ebp), %eax
	movl	quoting_style_vals(, %eax, 4),  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0
	calll	set_quoting_style
	addl	$0x10, %esp
	jmp	.label_357
.label_359:
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_358
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
.label_357:
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c8cf

	.globl set_exit_status
	.type set_exit_status, @function
set_exit_status:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	cmpb	$0, -4(%ebp)
	je	.label_361
	movl	$2, exit_status
	jmp	.label_360
.label_361:
	movl	exit_status,  %eax
	testl	%eax, %eax
	jne	.label_360
	movl	$1, exit_status
.label_360:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c903

	.globl file_failure
	.type file_failure, @function
file_failure:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	8(%ebp), %eax
	movb	%al, -0xc(%ebp)
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	$4
	calll	quotearg_style
	addl	$0x10, %esp
	movl	%eax, %ebx
	calll	__errno_location
	movl	0(%eax), %eax
	pushl	%ebx
	pushl	0xc(%ebp)
	pushl	%eax
	pushl	$0
	calll	error
	addl	$0x10, %esp
	movzbl	-0xc(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	set_exit_status
	addl	$0x10, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c94e

	.globl queue_directory
	.type queue_directory, @function
queue_directory:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	subl	$0xc, %esp
	pushl	$0x10
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, 0xc(%ebp)
	je	.label_362
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, %edx
	jmp	.label_365
.label_362:
	movl	$0, %edx
.label_365:
	movl	-0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	cmpl	$0, 8(%ebp)
	je	.label_364
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, %edx
	jmp	.label_363
.label_364:
	movl	$0, %edx
.label_363:
	movl	-0xc(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0xc(%ebp), %eax
	movzbl	-0x1c(%ebp), %edx
	movb	%dl, 8(%eax)
	movl	pending_dirs,  %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	-0xc(%ebp), %eax
	movl	%eax, pending_dirs
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804c9d0

	.globl print_dir
	.type print_dir, @function
print_dir:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x324, %esp
	movl	0x10(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, -0x31c(%ebp)
	movl	0xc(%ebp), %edx
	movl	%edx, -0x320(%ebp)
	movb	%al, -0x324(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x300(%ebp)
	movl	$0, -0x2fc(%ebp)
	calll	__errno_location
	movl	$0, 0(%eax)
	subl	$0xc, %esp
	pushl	-0x31c(%ebp)
	calll	opendir
	addl	$0x10, %esp
	movl	%eax, -0x310(%ebp)
	cmpl	$0, -0x310(%ebp)
	jne	.label_368
	subl	$0xc, %esp
	pushl	$label_395
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x324(%ebp), %eax
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
	jmp	.label_369
.label_368:
	movl	active_dir_set,  %eax
	testl	%eax, %eax
	je	.label_382
	subl	$0xc, %esp
	pushl	-0x310(%ebp)
	calll	dirfd
	addl	$0x10, %esp
	movl	%eax, -0x30c(%ebp)
	cmpl	$0, -0x30c(%ebp)
	js	.label_376
	subl	$8, %esp
	leal	-0x2f8(%ebp), %eax
	pushl	%eax
	pushl	-0x30c(%ebp)
	calll	fstat64
	addl	$0x10, %esp
	shrl	$0x1f, %eax
	jmp	.label_392
.label_376:
	subl	$8, %esp
	leal	-0x2f8(%ebp), %eax
	pushl	%eax
	pushl	-0x31c(%ebp)
	calll	stat64
	addl	$0x10, %esp
	shrl	$0x1f, %eax
.label_392:
	testb	%al, %al
	je	.label_397
	subl	$0xc, %esp
	pushl	$label_398
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x324(%ebp), %eax
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x310(%ebp)
	calll	closedir
	addl	$0x10, %esp
	jmp	.label_369
.label_397:
	movl	-0x2a0(%ebp), %ecx
	movl	-0x29c(%ebp), %ebx
	movl	-0x2f8(%ebp), %eax
	movl	-0x2f4(%ebp), %edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	visit_dir
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_374
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	$3
	pushl	$0
	calll	quotearg_n_style_colon
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	$label_378
	calll	gettext
	addl	$0x10, %esp
	pushl	%ebx
	pushl	%eax
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x310(%ebp)
	calll	closedir
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$1
	calll	set_exit_status
	addl	$0x10, %esp
	nop	
	jmp	.label_369
.label_374:
	movl	-0x2a0(%ebp), %ecx
	movl	-0x29c(%ebp), %ebx
	movl	-0x2f8(%ebp), %eax
	movl	-0x2f4(%ebp), %edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	dev_ino_push
	addl	$0x10, %esp
.label_382:
	calll	clear_files
	movzbl	recursive,  %eax
	testb	%al, %al
	jne	.label_396
	movzbl	print_dir_name,  %eax
	testb	%al, %al
	je	.label_387
.label_396:
	movzbl	first.8510,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_399
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
.label_399:
	movb	$0, first.8510
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_366
	movl	stdout,  %eax
	pushl	%eax
	pushl	$2
	pushl	$1
	pushl	$label_373
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$2, %eax
	movl	%eax, dired_pos
.label_366:
	movl	$0, -0x318(%ebp)
	movzbl	print_hyperlink,  %eax
	testb	%al, %al
	je	.label_375
	subl	$8, %esp
	pushl	$2
	pushl	-0x31c(%ebp)
	calll	canonicalize_filename_mode
	addl	$0x10, %esp
	movl	%eax, -0x318(%ebp)
	cmpl	$0, -0x318(%ebp)
	jne	.label_375
	subl	$0xc, %esp
	pushl	$label_383
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x324(%ebp), %eax
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
.label_375:
	movl	dirname_quoting_options,  %edx
	cmpl	$0, -0x320(%ebp)
	je	.label_388
	movl	-0x320(%ebp), %eax
	jmp	.label_391
.label_388:
	movl	-0x31c(%ebp), %eax
.label_391:
	subl	$4, %esp
	pushl	-0x318(%ebp)
	pushl	$subdired_obstack
	pushl	$1
	pushl	$0
	pushl	$-1
	pushl	%edx
	pushl	%eax
	calll	quote_name
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	-0x318(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	stdout,  %eax
	pushl	%eax
	pushl	$2
	pushl	$1
	pushl	$label_384
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$2, %eax
	movl	%eax, dired_pos
.label_387:
	calll	__errno_location
	movl	$0, 0(%eax)
	subl	$0xc, %esp
	pushl	-0x310(%ebp)
	calll	readdir64
	addl	$0x10, %esp
	movl	%eax, -0x308(%ebp)
	cmpl	$0, -0x308(%ebp)
	je	.label_372
	movl	-0x308(%ebp), %eax
	addl	$0x13, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	file_ignored
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_370
	movl	$0, -0x314(%ebp)
	movl	-0x308(%ebp), %eax
	movzbl	0x12(%eax), %eax
	movzbl	%al, %eax
	cmpl	$0xe, %eax
	ja	.label_380
	movl	label_385(, %eax, 4),  %eax
	jmpl	*%eax
.label_2499:
	movl	$4, -0x314(%ebp)
	jmp	.label_380
.label_2497:
	movl	$2, -0x314(%ebp)
	jmp	.label_380
.label_2498:
	movl	$3, -0x314(%ebp)
	jmp	.label_380
.label_2496:
	movl	$1, -0x314(%ebp)
	jmp	.label_380
.label_2501:
	movl	$6, -0x314(%ebp)
	jmp	.label_380
.label_2500:
	movl	$5, -0x314(%ebp)
	jmp	.label_380
.label_2502:
	movl	$7, -0x314(%ebp)
	jmp	.label_380
.label_2503:
	movl	$8, -0x314(%ebp)
	nop	
.label_380:
	movl	-0x308(%ebp), %eax
	addl	$0x13, %eax
	subl	$8, %esp
	pushl	-0x31c(%ebp)
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	-0x314(%ebp)
	pushl	%eax
	calll	gobble_file
	addl	$0x20, %esp
	addl	%eax, -0x300(%ebp)
	adcl	%edx, -0x2fc(%ebp)
	movl	format,  %eax
	cmpl	$1, %eax
	jne	.label_370
	movl	sort_type,  %eax
	cmpl	$-1, %eax
	jne	.label_370
	movzbl	print_block_size,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_370
	movzbl	recursive,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_370
	calll	sort_files
	calll	print_current_files
	calll	clear_files
	jmp	.label_370
.label_372:
	calll	__errno_location
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_379
	subl	$0xc, %esp
	pushl	$label_381
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x324(%ebp), %eax
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x4b, %eax
	jne	.label_394
.label_370:
	calll	process_signals
	jmp	.label_387
.label_379:
	nop	
	jmp	.label_390
.label_394:
	nop	
.label_390:
	subl	$0xc, %esp
	pushl	-0x310(%ebp)
	calll	closedir
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_393
	subl	$0xc, %esp
	pushl	$label_389
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x324(%ebp), %eax
	subl	$4, %esp
	pushl	-0x31c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
.label_393:
	calll	sort_files
	movzbl	recursive,  %eax
	testb	%al, %al
	je	.label_400
	subl	$8, %esp
	pushl	$0
	pushl	-0x31c(%ebp)
	calll	extract_dirs_from_files
	addl	$0x10, %esp
.label_400:
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_367
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_386
.label_367:
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_371
	movl	stdout,  %eax
	pushl	%eax
	pushl	$2
	pushl	$1
	pushl	$label_373
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$2, %eax
	movl	%eax, dired_pos
.label_371:
	subl	$0xc, %esp
	pushl	$label_401
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, -0x304(%ebp)
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x304(%ebp)
	calll	fputs_unlocked
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x304(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	dired_pos,  %eax
	addl	%edx, %eax
	movl	%eax, dired_pos
	subl	$0xc, %esp
	pushl	$0x20
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	human_output_opts,  %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0x200
	pushl	%ecx
	leal	-0x298(%ebp), %eax
	pushl	%eax
	pushl	-0x2fc(%ebp)
	pushl	-0x300(%ebp)
	calll	human_readable
	addl	$0x20, %esp
	movl	%eax, -0x304(%ebp)
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x304(%ebp)
	calll	fputs_unlocked
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x304(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	dired_pos,  %eax
	addl	%edx, %eax
	movl	%eax, dired_pos
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
.label_386:
	movl	cwd_n_used,  %eax
	testl	%eax, %eax
	je	.label_369
	calll	print_current_files
.label_369:
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_377
	calll	__stack_chk_fail
.label_377:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d069

	.globl add_ignore_pattern
	.type add_ignore_pattern, @function
add_ignore_pattern:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	$8
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	ignore_patterns,  %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0xc(%ebp), %eax
	movl	%eax, ignore_patterns
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d09e

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	jmp	.label_404
.label_403:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	$4
	pushl	0xc(%ebp)
	pushl	%eax
	calll	fnmatch
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_405
	movl	$1, %eax
	jmp	.label_402
.label_405:
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
.label_404:
	cmpl	$0, -0xc(%ebp)
	jne	.label_403
	movl	$0, %eax
.label_402:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d0e3

	.globl file_ignored
	.type file_ignored, @function
file_ignored:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	ignore_mode,  %eax
	cmpl	$2, %eax
	je	.label_406
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_406
	movl	ignore_mode,  %eax
	testl	%eax, %eax
	je	.label_408
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_409
	movl	$2, %edx
	jmp	.label_410
.label_409:
	movl	$1, %edx
.label_410:
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_408
.label_406:
	movl	ignore_mode,  %eax
	testl	%eax, %eax
	jne	.label_411
	movl	hide_patterns,  %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	patterns_match
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_408
.label_411:
	movl	ignore_patterns,  %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	patterns_match
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_412
.label_408:
	movl	$1, %eax
	jmp	.label_407
.label_412:
	movl	$0, %eax
.label_407:
	andl	$1, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d175

	.globl unsigned_file_size
	.type unsigned_file_size, @function
unsigned_file_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d18f

	.globl has_capability
	.type has_capability, @function
has_capability:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d1a7

	.globl free_ent
	.type free_ent, @function
free_ent:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	0x74(%eax), %eax
	cmpl	$UNKNOWN_SECURITY_CONTEXT,  %eax
	je	.label_413
	calll	is_smack_enabled
	testb	%al, %al
	je	.label_414
	movl	8(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	jmp	.label_413
.label_414:
	movl	8(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	freecon
	addl	$0x10, %esp
.label_413:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d221

	.globl clear_files
	.type clear_files, @function
clear_files:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x10(%ebp)
	jmp	.label_415
.label_416:
	movl	sorted_file,  %eax
	movl	-0x10(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	free_ent
	addl	$0x10, %esp
	addl	$1, -0x10(%ebp)
.label_415:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x10(%ebp)
	jb	.label_416
	movl	$0, cwd_n_used
	movb	$0, cwd_some_quoted
	movb	$0, any_has_acl
	movl	$0, inode_number_width
	movl	$0, block_size_width
	movl	$0, nlink_width
	movl	$0, owner_width
	movl	$0, group_width
	movl	$0, author_width
	movl	$0, scontext_width
	movl	$0, major_device_number_width
	movl	$0, minor_device_number_width
	movl	$0, file_size_width
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d2dd

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0x16, 8(%ebp)
	je	.label_418
	cmpl	$0x26, 8(%ebp)
	je	.label_418
	pushl	8(%ebp)
	calll	is_ENOTSUP
	addl	$4, %esp
	testb	%al, %al
	je	.label_417
.label_418:
	movl	$1, %eax
	jmp	.label_419
.label_417:
	movl	$0, %eax
.label_419:
	andl	$1, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d30c

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x20, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	movl	0xc(%eax), %ecx
	movl	0x10(%eax), %ebx
	movl	unsupported_device.8568,  %eax
	movl	label_423,  %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_424
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	jmp	.label_425
.label_424:
	movl	$0, -0xc(%ebp)
	cmpb	$0, -0x1c(%ebp)
	je	.label_421
	movl	0xc(%ebp), %eax
	addl	$0x74, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	getfilecon
	addl	$0x10, %esp
	jmp	.label_422
.label_421:
	movl	0xc(%ebp), %eax
	addl	$0x74, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	lgetfilecon
	addl	$0x10, %esp
.label_422:
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jns	.label_420
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	errno_unsupported
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_420
	movl	0xc(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%eax), %eax
	movl	%eax, unsupported_device.8568
	movl	%edx, label_423
.label_420:
	movl	-0xc(%ebp), %eax
.label_425:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d3c3

	.globl file_has_acl_cache
	.type file_has_acl_cache, @function
file_has_acl_cache:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	0xc(%ebp), %eax
	movl	0xc(%eax), %ecx
	movl	0x10(%eax), %ebx
	movl	unsupported_device.8574,  %eax
	movl	label_426,  %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_427
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0, %eax
	jmp	.label_428
.label_427:
	calll	__errno_location
	movl	$0, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$0xc, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	file_has_acl
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jg	.label_429
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	errno_unsupported
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_429
	movl	0xc(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%eax), %eax
	movl	%eax, unsupported_device.8574
	movl	%edx, label_426
.label_429:
	movl	-0xc(%ebp), %eax
.label_428:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d45b

	.globl has_capability_cache
	.type has_capability_cache, @function
has_capability_cache:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	0xc(%ebp), %eax
	movl	0xc(%eax), %ecx
	movl	0x10(%eax), %ebx
	movl	unsupported_device.8580,  %eax
	movl	label_431,  %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_433
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0, %eax
	jmp	.label_432
.label_433:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	has_capability
	addl	$0x10, %esp
	movb	%al, -9(%ebp)
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_430
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	errno_unsupported
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_430
	movl	0xc(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%eax), %eax
	movl	%eax, unsupported_device.8580
	movl	%edx, label_431
.label_430:
	movzbl	-9(%ebp), %eax
.label_432:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d4e7

	.globl needs_quoting
	.type needs_quoting, @function
needs_quoting:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	filename_quoting_options,  %eax
	subl	$0xc, %esp
	pushl	%eax
	pushl	$-1
	pushl	-0x1c(%ebp)
	pushl	$2
	leal	-0xe(%ebp), %eax
	pushl	%eax
	calll	quotearg_buffer
	addl	$0x20, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x1c(%ebp), %eax
	movzbl	0(%eax), %edx
	movzbl	-0xe(%ebp), %eax
	cmpb	%al, %dl
	jne	.label_435
	subl	$0xc, %esp
	pushl	-0x1c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	cmpl	-0x14(%ebp), %eax
	je	.label_434
.label_435:
	movl	$1, %eax
	jmp	.label_437
.label_434:
	movl	$0, %eax
.label_437:
	andl	$1, %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_436
	calll	__stack_chk_fail
.label_436:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804d560

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x384, %esp
	movl	0x18(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, -0x36c(%ebp)
	movl	0x10(%ebp), %edx
	movl	%edx, -0x378(%ebp)
	movl	0x14(%ebp), %edx
	movl	%edx, -0x374(%ebp)
	movb	%al, -0x370(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0x37c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x320(%ebp)
	movl	$0, -0x31c(%ebp)
	cmpb	$0, -0x370(%ebp)
	je	.label_485
	movl	-0x374(%ebp), %eax
	orl	-0x378(%ebp), %eax
	testl	%eax, %eax
	je	.label_485
	pushl	$__PRETTY_FUNCTION__.8596
	pushl	$0xc2b
	pushl	$label_43
	pushl	$label_498
	calll	__assert_fail
.label_485:
	movl	cwd_n_used,  %edx
	movl	cwd_n_alloc,  %eax
	cmpl	%eax, %edx
	jne	.label_502
	movl	cwd_n_alloc,  %edx
	movl	cwd_file,  %eax
	subl	$4, %esp
	pushl	$0x110
	pushl	%edx
	pushl	%eax
	calll	xnrealloc
	addl	$0x10, %esp
	movl	%eax, cwd_file
	movl	cwd_n_alloc,  %eax
	addl	%eax, %eax
	movl	%eax, cwd_n_alloc
.label_502:
	movl	cwd_file,  %edx
	movl	cwd_n_used,  %eax
	shll	$3, %eax
	movl	%eax, %ecx
	shll	$4, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, -0x354(%ebp)
	subl	$4, %esp
	pushl	$0x88
	pushl	$0
	pushl	-0x354(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x354(%ebp), %ecx
	movl	-0x378(%ebp), %eax
	movl	-0x374(%ebp), %edx
	movl	%eax, 0x64(%ecx)
	movl	%edx, 0x68(%ecx)
	movl	-0x354(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0x6c(%eax)
	movl	-0x354(%ebp), %eax
	movl	$0xffffffff, 0x84(%eax)
	movzbl	cwd_some_quoted,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_452
	movzbl	align_variable_outer_quotes,  %eax
	testb	%al, %al
	je	.label_452
	subl	$0xc, %esp
	pushl	-0x36c(%ebp)
	calll	needs_quoting
	addl	$0x10, %esp
	movzbl	%al, %edx
	movl	-0x354(%ebp), %eax
	movl	%edx, 0x84(%eax)
	movl	-0x354(%ebp), %eax
	movl	0x84(%eax), %eax
	testl	%eax, %eax
	je	.label_452
	movb	$1, cwd_some_quoted
.label_452:
	cmpb	$0, -0x370(%ebp)
	jne	.label_443
	movzbl	print_hyperlink,  %eax
	testb	%al, %al
	jne	.label_443
	movzbl	format_needs_stat,  %eax
	testb	%al, %al
	jne	.label_443
	cmpl	$3, 0xc(%ebp)
	jne	.label_479
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_479
	subl	$0xc, %esp
	pushl	$0x13
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
	subl	$0xc, %esp
	pushl	$0x12
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
	subl	$0xc, %esp
	pushl	$0x14
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
.label_479:
	movzbl	print_inode,  %eax
	testb	%al, %al
	jne	.label_483
	movzbl	format_needs_type,  %eax
	testb	%al, %al
	je	.label_487
.label_483:
	cmpl	$6, 0xc(%ebp)
	je	.label_489
	cmpl	$0, 0xc(%ebp)
	jne	.label_487
.label_489:
	movl	dereference,  %eax
	cmpl	$5, %eax
	je	.label_443
	movzbl	color_symlink_as_referent,  %eax
	testb	%al, %al
	jne	.label_443
	movzbl	check_symlink_color,  %eax
	testb	%al, %al
	jne	.label_443
.label_487:
	movzbl	print_inode,  %eax
	testb	%al, %al
	je	.label_494
	movl	-0x374(%ebp), %eax
	orl	-0x378(%ebp), %eax
	testl	%eax, %eax
	je	.label_443
.label_494:
	movzbl	format_needs_type,  %eax
	testb	%al, %al
	je	.label_448
	cmpl	$0, 0xc(%ebp)
	je	.label_443
	cmpb	$0, -0x370(%ebp)
	jne	.label_443
	cmpl	$5, 0xc(%ebp)
	jne	.label_448
	movl	indicator_style,  %eax
	cmpl	$3, %eax
	je	.label_443
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_448
	subl	$0xc, %esp
	pushl	$0xe
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
	subl	$0xc, %esp
	pushl	$0x10
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
	subl	$0xc, %esp
	pushl	$0x11
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_443
	subl	$0xc, %esp
	pushl	$0x15
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_448
.label_443:
	movl	-0x36c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_451
	movl	-0x37c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_454
.label_451:
	movl	-0x36c(%ebp), %eax
	movl	%eax, -0x35c(%ebp)
	jmp	.label_456
.label_454:
	subl	$0xc, %esp
	pushl	-0x36c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$0xc, %esp
	pushl	-0x37c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	%ebx, %eax
	addl	$2, %eax
	leal	0xf(%eax), %edx
	movl	$0x10, %eax
	subl	$1, %eax
	addl	%edx, %eax
	movl	$0x10, %ebx
	movl	$0, %edx
	divl	%ebx
	imull	$0x10, %eax, %eax
	subl	%eax, %esp
	movl	%esp, %eax
	addl	$0xf, %eax
	shrl	$4, %eax
	shll	$4, %eax
	movl	%eax, -0x35c(%ebp)
	subl	$4, %esp
	pushl	-0x36c(%ebp)
	pushl	-0x37c(%ebp)
	pushl	-0x35c(%ebp)
	calll	attach
	addl	$0x10, %esp
.label_456:
	movzbl	print_hyperlink,  %eax
	testb	%al, %al
	je	.label_476
	subl	$8, %esp
	pushl	$2
	pushl	-0x35c(%ebp)
	calll	canonicalize_filename_mode
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x354(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-0x354(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	.label_476
	subl	$0xc, %esp
	pushl	$label_383
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x370(%ebp), %eax
	subl	$4, %esp
	pushl	-0x35c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
.label_476:
	movl	dereference,  %eax
	cmpl	$3, %eax
	jb	.label_449
	cmpl	$4, %eax
	jbe	.label_484
	cmpl	$5, %eax
	jne	.label_449
	movl	-0x354(%ebp), %eax
	addl	$0xc, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x35c(%ebp)
	calll	stat64
	addl	$0x10, %esp
	movl	%eax, -0x358(%ebp)
	movb	$1, -0x360(%ebp)
	jmp	.label_446
.label_484:
	cmpb	$0, -0x370(%ebp)
	je	.label_449
	movl	-0x354(%ebp), %eax
	addl	$0xc, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x35c(%ebp)
	calll	stat64
	addl	$0x10, %esp
	movl	%eax, -0x358(%ebp)
	movb	$1, -0x360(%ebp)
	movl	dereference,  %eax
	cmpl	$3, %eax
	je	.label_496
	cmpl	$0, -0x358(%ebp)
	jns	.label_499
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$2, %eax
	sete	%al
	jmp	.label_501
.label_499:
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	setne	%al
.label_501:
	movb	%al, -0x35d(%ebp)
	movzbl	-0x35d(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_438
.label_449:
	movl	-0x354(%ebp), %eax
	addl	$0xc, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x35c(%ebp)
	calll	lstat64
	addl	$0x10, %esp
	movl	%eax, -0x358(%ebp)
	movb	$0, -0x360(%ebp)
	jmp	.label_446
.label_496:
	nop	
	jmp	.label_446
.label_438:
	nop	
.label_446:
	cmpl	$0, -0x358(%ebp)
	je	.label_447
	subl	$0xc, %esp
	pushl	$label_450
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0x370(%ebp), %eax
	subl	$4, %esp
	pushl	-0x35c(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
	cmpb	$0, -0x370(%ebp)
	je	.label_457
	movl	$0, %eax
	movl	$0, %edx
	jmp	.label_460
.label_457:
	subl	$0xc, %esp
	pushl	-0x36c(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x354(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	cwd_n_used,  %eax
	addl	$1, %eax
	movl	%eax, cwd_n_used
	movl	$0, %eax
	movl	$0, %edx
	jmp	.label_460
.label_447:
	movl	-0x354(%ebp), %eax
	movb	$1, 0x78(%eax)
	cmpl	$5, 0xc(%ebp)
	je	.label_466
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x8000, %eax
	jne	.label_474
.label_466:
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_474
	subl	$0xc, %esp
	pushl	$0x15
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_474
	subl	$8, %esp
	pushl	-0x354(%ebp)
	pushl	-0x35c(%ebp)
	calll	has_capability_cache
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x354(%ebp), %eax
	movb	%dl, 0x80(%eax)
.label_474:
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_481
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_468
.label_481:
	movb	$0, -0x35f(%ebp)
	movb	$0, -0x35e(%ebp)
	movzbl	-0x360(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-0x354(%ebp)
	pushl	-0x35c(%ebp)
	calll	getfilecon_cache
	addl	$0x10, %esp
	movl	%eax, -0x350(%ebp)
	movl	-0x350(%ebp), %eax
	shrl	$0x1f, %eax
	movzbl	%al, %eax
	movl	%eax, -0x358(%ebp)
	cmpl	$0, -0x358(%ebp)
	jne	.label_488
	calll	is_smack_enabled
	testb	%al, %al
	je	.label_492
	movl	-0x354(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$label_493
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -0x35f(%ebp)
	jmp	.label_442
.label_492:
	movl	-0x354(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$label_497
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -0x35f(%ebp)
	jmp	.label_442
.label_488:
	movl	-0x354(%ebp), %eax
	movl	$UNKNOWN_SECURITY_CONTEXT, 116(%eax)
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	is_ENOTSUP
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_440
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x3d, %eax
	jne	.label_442
.label_440:
	movl	$0, -0x358(%ebp)
.label_442:
	cmpl	$0, -0x358(%ebp)
	jne	.label_441
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_441
	subl	$8, %esp
	pushl	-0x354(%ebp)
	pushl	-0x35c(%ebp)
	calll	file_has_acl_cache
	addl	$0x10, %esp
	movl	%eax, -0x34c(%ebp)
	movl	-0x34c(%ebp), %eax
	shrl	$0x1f, %eax
	movzbl	%al, %eax
	movl	%eax, -0x358(%ebp)
	cmpl	$0, -0x34c(%ebp)
	setg	%al
	movb	%al, -0x35e(%ebp)
.label_441:
	cmpb	$0, -0x35f(%ebp)
	jne	.label_469
	cmpb	$0, -0x35e(%ebp)
	je	.label_459
.label_469:
	cmpb	$0, -0x35f(%ebp)
	je	.label_461
	movzbl	-0x35e(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_461
	movl	$1, %eax
	jmp	.label_465
.label_461:
	movl	$2, %eax
	jmp	.label_465
.label_459:
	movl	$0, %eax
.label_465:
	movl	-0x354(%ebp), %edx
	movl	%eax, 0x7c(%edx)
	movzbl	any_has_acl,  %eax
	movzbl	%al, %edx
	movl	-0x354(%ebp), %eax
	movl	0x7c(%eax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, any_has_acl
	cmpl	$0, -0x358(%ebp)
	je	.label_468
	subl	$4, %esp
	pushl	-0x35c(%ebp)
	pushl	$3
	pushl	$0
	calll	quotearg_n_style_colon
	addl	$0x10, %esp
	movl	%eax, %ebx
	calll	__errno_location
	movl	0(%eax), %eax
	pushl	%ebx
	pushl	$label_79
	pushl	%eax
	pushl	$0
	calll	error
	addl	$0x10, %esp
.label_468:
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	jne	.label_480
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_482
	movzbl	check_symlink_color,  %eax
	testb	%al, %al
	je	.label_480
.label_482:
	movzbl	-0x370(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-0x354(%ebp)
	pushl	-0x35c(%ebp)
	calll	get_link_name
	addl	$0x10, %esp
	movl	-0x354(%ebp), %eax
	movl	4(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x35c(%ebp)
	calll	make_link_name
	addl	$0x10, %esp
	movl	%eax, -0x348(%ebp)
	cmpl	$0, -0x348(%ebp)
	je	.label_490
	movl	-0x354(%ebp), %eax
	movl	0x84(%eax), %eax
	testl	%eax, %eax
	jne	.label_490
	movl	-0x354(%ebp), %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	needs_quoting
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_490
	movl	-0x354(%ebp), %eax
	movl	$0xffffffff, 0x84(%eax)
.label_490:
	cmpl	$0, -0x348(%ebp)
	je	.label_444
	movl	indicator_style,  %eax
	cmpl	$1, %eax
	ja	.label_500
	movzbl	check_symlink_color,  %eax
	testb	%al, %al
	je	.label_444
.label_500:
	subl	$8, %esp
	leal	-0x310(%ebp), %eax
	pushl	%eax
	pushl	-0x348(%ebp)
	calll	stat64
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_444
	movl	-0x354(%ebp), %eax
	movb	$1, 0x79(%eax)
	movzbl	-0x370(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_439
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_439
	movl	-0x300(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	je	.label_444
.label_439:
	movl	-0x300(%ebp), %edx
	movl	-0x354(%ebp), %eax
	movl	%edx, 0x70(%eax)
.label_444:
	subl	$0xc, %esp
	pushl	-0x348(%ebp)
	calll	free
	addl	$0x10, %esp
.label_480:
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	jne	.label_453
	movl	-0x354(%ebp), %eax
	movl	$6, 0x6c(%eax)
	jmp	.label_467
.label_453:
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	jne	.label_458
	cmpb	$0, -0x370(%ebp)
	je	.label_462
	movzbl	immediate_dirs,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_462
	movl	-0x354(%ebp), %eax
	movl	$9, 0x6c(%eax)
	jmp	.label_467
.label_462:
	movl	-0x354(%ebp), %eax
	movl	$3, 0x6c(%eax)
	jmp	.label_467
.label_458:
	movl	-0x354(%ebp), %eax
	movl	$5, 0x6c(%eax)
.label_467:
	movl	-0x354(%ebp), %eax
	movl	0x48(%eax), %edx
	movl	0x44(%eax), %eax
	movl	%eax, -0x320(%ebp)
	movl	%edx, -0x31c(%ebp)
	movl	format,  %eax
	testl	%eax, %eax
	je	.label_472
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_478
.label_472:
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	human_output_opts,  %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0x200
	pushl	%ecx
	leal	-0x298(%ebp), %eax
	pushl	%eax
	pushl	-0x31c(%ebp)
	pushl	-0x320(%ebp)
	calll	human_readable
	addl	$0x20, %esp
	subl	$8, %esp
	pushl	$0
	pushl	%eax
	calll	gnu_mbswidth
	addl	$0x10, %esp
	movl	%eax, -0x344(%ebp)
	movl	block_size_width,  %eax
	cmpl	-0x344(%ebp), %eax
	jge	.label_478
	movl	-0x344(%ebp), %eax
	movl	%eax, block_size_width
.label_478:
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_486
	movzbl	print_owner,  %eax
	testb	%al, %al
	je	.label_463
	movl	-0x354(%ebp), %eax
	movl	0x24(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	format_user_width
	addl	$0x10, %esp
	movl	%eax, -0x340(%ebp)
	movl	owner_width,  %eax
	cmpl	-0x340(%ebp), %eax
	jge	.label_463
	movl	-0x340(%ebp), %eax
	movl	%eax, owner_width
.label_463:
	movzbl	print_group,  %eax
	testb	%al, %al
	je	.label_495
	movl	-0x354(%ebp), %eax
	movl	0x28(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	format_group_width
	addl	$0x10, %esp
	movl	%eax, -0x33c(%ebp)
	movl	group_width,  %eax
	cmpl	-0x33c(%ebp), %eax
	jge	.label_495
	movl	-0x33c(%ebp), %eax
	movl	%eax, group_width
.label_495:
	movzbl	print_author,  %eax
	testb	%al, %al
	je	.label_486
	movl	-0x354(%ebp), %eax
	movl	0x24(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	format_user_width
	addl	$0x10, %esp
	movl	%eax, -0x338(%ebp)
	movl	author_width,  %eax
	cmpl	-0x338(%ebp), %eax
	jge	.label_486
	movl	-0x338(%ebp), %eax
	movl	%eax, author_width
.label_486:
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_445
	movl	-0x354(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x334(%ebp)
	movl	scontext_width,  %eax
	cmpl	-0x334(%ebp), %eax
	jge	.label_445
	movl	-0x334(%ebp), %eax
	movl	%eax, scontext_width
.label_445:
	movl	format,  %eax
	testl	%eax, %eax
	jne	.label_448
	movl	-0x354(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x2ad(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x330(%ebp)
	movl	nlink_width,  %eax
	cmpl	-0x330(%ebp), %eax
	jge	.label_464
	movl	-0x330(%ebp), %eax
	movl	%eax, nlink_width
.label_464:
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x2000, %eax
	je	.label_470
	movl	-0x354(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x6000, %eax
	jne	.label_473
.label_470:
	movl	-0x354(%ebp), %eax
	movl	0x30(%eax), %edx
	movl	0x2c(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	gnu_dev_major
	addl	$0x10, %esp
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x298(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x328(%ebp)
	movl	major_device_number_width,  %eax
	cmpl	-0x328(%ebp), %eax
	jge	.label_477
	movl	-0x328(%ebp), %eax
	movl	%eax, major_device_number_width
.label_477:
	movl	-0x354(%ebp), %eax
	movl	0x30(%eax), %edx
	movl	0x2c(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	gnu_dev_minor
	addl	$0x10, %esp
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x298(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x328(%ebp)
	movl	minor_device_number_width,  %eax
	cmpl	-0x328(%ebp), %eax
	jge	.label_491
	movl	-0x328(%ebp), %eax
	movl	%eax, minor_device_number_width
.label_491:
	movl	major_device_number_width,  %eax
	leal	2(%eax), %edx
	movl	minor_device_number_width,  %eax
	addl	%edx, %eax
	movl	%eax, -0x328(%ebp)
	movl	file_size_width,  %eax
	cmpl	-0x328(%ebp), %eax
	jge	.label_471
	movl	-0x328(%ebp), %eax
	movl	%eax, file_size_width
	jmp	.label_471
.label_473:
	movl	-0x354(%ebp), %eax
	movl	0x3c(%eax), %edx
	movl	0x38(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	unsigned_file_size
	addl	$0x10, %esp
	movl	%eax, -0x318(%ebp)
	movl	%edx, -0x314(%ebp)
	movl	file_output_block_size,  %eax
	movl	label_216,  %edx
	movl	file_human_output_opts,  %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$1
	pushl	%ecx
	leal	-0x298(%ebp), %eax
	pushl	%eax
	pushl	-0x314(%ebp)
	pushl	-0x318(%ebp)
	calll	human_readable
	addl	$0x20, %esp
	subl	$8, %esp
	pushl	$0
	pushl	%eax
	calll	gnu_mbswidth
	addl	$0x10, %esp
	movl	%eax, -0x32c(%ebp)
	movl	file_size_width,  %eax
	cmpl	-0x32c(%ebp), %eax
	jge	.label_448
	movl	-0x32c(%ebp), %eax
	movl	%eax, file_size_width
	jmp	.label_448
.label_471:
	nop	
.label_448:
	movzbl	print_inode,  %eax
	testb	%al, %al
	je	.label_455
	movl	-0x354(%ebp), %eax
	movl	0x68(%eax), %edx
	movl	0x64(%eax), %eax
	subl	$4, %esp
	leal	-0x298(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x324(%ebp)
	movl	inode_number_width,  %eax
	cmpl	-0x324(%ebp), %eax
	jge	.label_455
	movl	-0x324(%ebp), %eax
	movl	%eax, inode_number_width
.label_455:
	subl	$0xc, %esp
	pushl	-0x36c(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x354(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	cwd_n_used,  %eax
	addl	$1, %eax
	movl	%eax, cwd_n_used
	movl	-0x320(%ebp), %eax
	movl	-0x31c(%ebp), %edx
.label_460:
	movl	-0xc(%ebp), %ebx
	xorl	%gs:0x14, %ebx
	je	.label_475
	calll	__stack_chk_fail
.label_475:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e301

	.globl is_directory
	.type is_directory, @function
is_directory:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x6c(%eax), %eax
	cmpl	$3, %eax
	je	.label_503
	movl	8(%ebp), %eax
	movl	0x6c(%eax), %eax
	cmpl	$9, %eax
	jne	.label_505
.label_503:
	movl	$1, %eax
	jmp	.label_504
.label_505:
	movl	$0, %eax
.label_504:
	andl	$1, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e32b

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movl	0xc(%ebp), %eax
	movl	0x3c(%eax), %edx
	movl	0x38(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	areadlink_with_size
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	0xc(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.label_507
	subl	$0xc, %esp
	pushl	$label_506
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movzbl	-0xc(%ebp), %eax
	subl	$4, %esp
	pushl	8(%ebp)
	pushl	%edx
	pushl	%eax
	calll	file_failure
	addl	$0x10, %esp
.label_507:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e38a

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 0xc(%ebp)
	jne	.label_511
	movl	$0, %eax
	jmp	.label_512
.label_511:
	movl	0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_508
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	jmp	.label_512
.label_508:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	dir_len
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_510
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	jmp	.label_512
.label_510:
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	addl	$2, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_509
	addl	$1, -0x10(%ebp)
.label_509:
	subl	$4, %esp
	pushl	-0x10(%ebp)
	pushl	8(%ebp)
	pushl	-0xc(%ebp)
	calll	stpncpy
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	calll	strcpy
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
.label_512:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e449

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	last_component
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	dot_or_dotdot
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e470

	.globl extract_dirs_from_files
	.type extract_dirs_from_files, @function
extract_dirs_from_files:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	cmpl	$0, 8(%ebp)
	setne	%al
	movb	%al, -0x1d(%ebp)
	cmpl	$0, 8(%ebp)
	je	.label_515
	movl	active_dir_set,  %eax
	testl	%eax, %eax
	je	.label_515
	subl	$4, %esp
	pushl	$0
	pushl	8(%ebp)
	pushl	$0
	calll	queue_directory
	addl	$0x10, %esp
.label_515:
	movl	cwd_n_used,  %eax
	movl	%eax, -0x1c(%ebp)
	jmp	.label_517
.label_516:
	movl	sorted_file,  %eax
	movl	-0x1c(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	is_directory
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_517
	movzbl	-0x1d(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_519
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	basename_is_dot_or_dotdot
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_517
.label_519:
	cmpl	$0, 8(%ebp)
	je	.label_513
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_514
.label_513:
	movzbl	-0x2c(%ebp), %ecx
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	queue_directory
	addl	$0x10, %esp
	jmp	.label_518
.label_514:
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	$0
	pushl	%eax
	pushl	8(%ebp)
	calll	file_name_concat
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movzbl	-0x2c(%ebp), %edx
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	-0x10(%ebp)
	calll	queue_directory
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	free
	addl	$0x10, %esp
.label_518:
	movl	-0x14(%ebp), %eax
	movl	0x6c(%eax), %eax
	cmpl	$9, %eax
	jne	.label_517
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	free_ent
	addl	$0x10, %esp
.label_517:
	movl	-0x1c(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -0x1c(%ebp)
	testl	%eax, %eax
	jne	.label_516
	movl	$0, -0x1c(%ebp)
	movl	$0, -0x18(%ebp)
	jmp	.label_520
.label_521:
	movl	sorted_file,  %eax
	movl	-0x1c(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	movl	sorted_file,  %eax
	movl	-0x18(%ebp), %edx
	shll	$2, %edx
	addl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	-0xc(%ebp), %eax
	movl	0x6c(%eax), %eax
	cmpl	$9, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -0x18(%ebp)
	addl	$1, -0x1c(%ebp)
.label_520:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x1c(%ebp)
	jb	.label_521
	movl	-0x18(%ebp), %eax
	movl	%eax, cwd_n_used
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e5fe

	.globl xstrcoll
	.type xstrcoll, @function
xstrcoll:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x1c, %esp
	calll	__errno_location
	movl	$0, 0(%eax)
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	strcoll
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	calll	__errno_location
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_522
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	$1
	calll	quote_n
	addl	$0x10, %esp
	movl	%eax, %edi
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	$0
	calll	quote_n
	addl	$0x10, %esp
	movl	%eax, %esi
	subl	$0xc, %esp
	pushl	$label_523
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %ebx
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	$0
	calll	error
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	$0
	calll	set_exit_status
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$1
	pushl	$failed_strcoll
	calll	longjmp
.label_522:
	movl	-0x1c(%ebp), %eax
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e6a6

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x2c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1c(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_ctime
	addl	$0xc, %esp
	movl	-0x30(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x14(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_ctime
	addl	$0xc, %esp
	pushl	-0x18(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x10(%ebp)
	pushl	-0x14(%ebp)
	calll	timespec_cmp
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x20(%ebp)
	jne	.label_525
	movl	-0x30(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	-0x34(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_524
.label_525:
	movl	-0x20(%ebp), %eax
.label_524:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_526
	calll	__stack_chk_fail
.label_526:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e741

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x2c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1c(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_mtime
	addl	$0xc, %esp
	movl	-0x30(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x14(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_mtime
	addl	$0xc, %esp
	pushl	-0x18(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x10(%ebp)
	pushl	-0x14(%ebp)
	calll	timespec_cmp
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x20(%ebp)
	jne	.label_528
	movl	-0x30(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	-0x34(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_527
.label_528:
	movl	-0x20(%ebp), %eax
.label_527:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_529
	calll	__stack_chk_fail
.label_529:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e7dc

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x2c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1c(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_atime
	addl	$0xc, %esp
	movl	-0x30(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x14(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_atime
	addl	$0xc, %esp
	pushl	-0x18(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x10(%ebp)
	pushl	-0x14(%ebp)
	calll	timespec_cmp
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x20(%ebp)
	jne	.label_532
	movl	-0x30(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	-0x34(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_530
.label_532:
	movl	-0x20(%ebp), %eax
.label_530:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_531
	calll	__stack_chk_fail
.label_531:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e877

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x24, %esp
	movl	0xc(%ebp), %eax
	movl	0x38(%eax), %ecx
	movl	0x3c(%eax), %ebx
	movl	8(%ebp), %eax
	movl	0x3c(%eax), %edx
	movl	0x38(%eax), %eax
	cmpl	%edx, %ebx
	jl	.label_538
	cmpl	%edx, %ebx
	jg	.label_536
	cmpl	%eax, %ecx
	jb	.label_538
.label_536:
	movl	0xc(%ebp), %eax
	movl	0x38(%eax), %ecx
	movl	0x3c(%eax), %ebx
	movl	8(%ebp), %eax
	movl	0x3c(%eax), %edx
	movl	0x38(%eax), %eax
	movb	$1, -0x19(%ebp)
	cmpl	%edx, %ebx
	jg	.label_539
	cmpl	%edx, %ebx
	jl	.label_537
	cmpl	%eax, %ecx
	ja	.label_539
.label_537:
	movb	$0, -0x19(%ebp)
.label_539:
	movzbl	-0x19(%ebp), %eax
	jmp	.label_533
.label_538:
	movl	$0xffffffff, %eax
.label_533:
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_535
	movl	0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	0x10(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_534
.label_535:
	movl	-0xc(%ebp), %eax
.label_534:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e8f7

	.globl cmp_name
	.type cmp_name, @function
cmp_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	0x10(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e916

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	$0x2e
	pushl	%eax
	calll	strrchr
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	$0x2e
	pushl	%eax
	calll	strrchr
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_540
	movl	-0x10(%ebp), %edx
	jmp	.label_542
.label_540:
	movl	$label_26,  %edx
.label_542:
	cmpl	$0, -0x14(%ebp)
	je	.label_544
	movl	-0x14(%ebp), %eax
	jmp	.label_545
.label_544:
	movl	$label_26,  %eax
.label_545:
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	0x10(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_543
	movl	0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	movl	0x10(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_541
.label_543:
	movl	-0xc(%ebp), %eax
.label_541:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e99c

	.globl xstrcoll_ctime
	.type xstrcoll_ctime, @function
xstrcoll_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e9ba

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e9d8

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804e9f6

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea14

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_546
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_546
	movl	$0xffffffff, %eax
	jmp	.label_547
.label_546:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_548
	cmpb	$0, -9(%ebp)
	je	.label_548
	movl	$1, %eax
	jmp	.label_547
.label_548:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
.label_547:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ea7e

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_551
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_551
	movl	$0xffffffff, %eax
	jmp	.label_549
.label_551:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_550
	cmpb	$0, -9(%ebp)
	je	.label_550
	movl	$1, %eax
	jmp	.label_549
.label_550:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
.label_549:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804eae8

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_552
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_552
	movl	$0xffffffff, %eax
	jmp	.label_554
.label_552:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_553
	cmpb	$0, -9(%ebp)
	je	.label_553
	movl	$1, %eax
	jmp	.label_554
.label_553:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
.label_554:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804eb52

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_557
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_557
	movl	$0xffffffff, %eax
	jmp	.label_555
.label_557:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_556
	cmpb	$0, -9(%ebp)
	je	.label_556
	movl	$1, %eax
	jmp	.label_555
.label_556:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_ctime
	addl	$0x10, %esp
.label_555:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ebbc

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ebda

	.globl strcmp_mtime
	.type strcmp_mtime, @function
strcmp_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ebf8

	.globl rev_xstrcoll_mtime
	.type rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ec16

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ec34

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_558
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_558
	movl	$0xffffffff, %eax
	jmp	.label_559
.label_558:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_560
	cmpb	$0, -9(%ebp)
	je	.label_560
	movl	$1, %eax
	jmp	.label_559
.label_560:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
.label_559:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ec9e

	.globl strcmp_df_mtime
	.type strcmp_df_mtime, @function
strcmp_df_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_563
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_563
	movl	$0xffffffff, %eax
	jmp	.label_561
.label_563:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_562
	cmpb	$0, -9(%ebp)
	je	.label_562
	movl	$1, %eax
	jmp	.label_561
.label_562:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
.label_561:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ed08

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_564
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_564
	movl	$0xffffffff, %eax
	jmp	.label_566
.label_564:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_565
	cmpb	$0, -9(%ebp)
	je	.label_565
	movl	$1, %eax
	jmp	.label_566
.label_565:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
.label_566:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ed72

	.globl rev_strcmp_df_mtime
	.type rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_569
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_569
	movl	$0xffffffff, %eax
	jmp	.label_567
.label_569:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_568
	cmpb	$0, -9(%ebp)
	je	.label_568
	movl	$1, %eax
	jmp	.label_567
.label_568:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_mtime
	addl	$0x10, %esp
.label_567:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804eddc

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804edfa

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ee18

	.globl rev_xstrcoll_atime
	.type rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ee36

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ee54

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_570
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_570
	movl	$0xffffffff, %eax
	jmp	.label_571
.label_570:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_572
	cmpb	$0, -9(%ebp)
	je	.label_572
	movl	$1, %eax
	jmp	.label_571
.label_572:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
.label_571:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804eebe

	.globl strcmp_df_atime
	.type strcmp_df_atime, @function
strcmp_df_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_575
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_575
	movl	$0xffffffff, %eax
	jmp	.label_573
.label_575:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_574
	cmpb	$0, -9(%ebp)
	je	.label_574
	movl	$1, %eax
	jmp	.label_573
.label_574:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
.label_573:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ef28

	.globl rev_xstrcoll_df_atime
	.type rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_576
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_576
	movl	$0xffffffff, %eax
	jmp	.label_578
.label_576:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_577
	cmpb	$0, -9(%ebp)
	je	.label_577
	movl	$1, %eax
	jmp	.label_578
.label_577:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
.label_578:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804ef92

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_581
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_581
	movl	$0xffffffff, %eax
	jmp	.label_579
.label_581:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_580
	cmpb	$0, -9(%ebp)
	je	.label_580
	movl	$1, %eax
	jmp	.label_579
.label_580:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_atime
	addl	$0x10, %esp
.label_579:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804effc

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f01a

	.globl strcmp_size
	.type strcmp_size, @function
strcmp_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f038

	.globl rev_xstrcoll_size
	.type rev_xstrcoll_size, @function
rev_xstrcoll_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f056

	.globl rev_strcmp_size
	.type rev_strcmp_size, @function
rev_strcmp_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f074

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_582
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_582
	movl	$0xffffffff, %eax
	jmp	.label_583
.label_582:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_584
	cmpb	$0, -9(%ebp)
	je	.label_584
	movl	$1, %eax
	jmp	.label_583
.label_584:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
.label_583:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f0de

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_587
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_587
	movl	$0xffffffff, %eax
	jmp	.label_585
.label_587:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_586
	cmpb	$0, -9(%ebp)
	je	.label_586
	movl	$1, %eax
	jmp	.label_585
.label_586:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
.label_585:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f148

	.globl rev_xstrcoll_df_size
	.type rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_588
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_588
	movl	$0xffffffff, %eax
	jmp	.label_590
.label_588:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_589
	cmpb	$0, -9(%ebp)
	je	.label_589
	movl	$1, %eax
	jmp	.label_590
.label_589:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
.label_590:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f1b2

	.globl rev_strcmp_df_size
	.type rev_strcmp_df_size, @function
rev_strcmp_df_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_593
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_593
	movl	$0xffffffff, %eax
	jmp	.label_591
.label_593:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_592
	cmpb	$0, -9(%ebp)
	je	.label_592
	movl	$1, %eax
	jmp	.label_591
.label_592:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_size
	addl	$0x10, %esp
.label_591:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f21c

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f23a

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f258

	.globl rev_xstrcoll_name
	.type rev_xstrcoll_name, @function
rev_xstrcoll_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f276

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f294

	.globl xstrcoll_df_name
	.type xstrcoll_df_name, @function
xstrcoll_df_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_594
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_594
	movl	$0xffffffff, %eax
	jmp	.label_595
.label_594:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_596
	cmpb	$0, -9(%ebp)
	je	.label_596
	movl	$1, %eax
	jmp	.label_595
.label_596:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
.label_595:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f2fe

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_599
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_599
	movl	$0xffffffff, %eax
	jmp	.label_597
.label_599:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_598
	cmpb	$0, -9(%ebp)
	je	.label_598
	movl	$1, %eax
	jmp	.label_597
.label_598:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
.label_597:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f368

	.globl rev_xstrcoll_df_name
	.type rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_600
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_600
	movl	$0xffffffff, %eax
	jmp	.label_602
.label_600:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_601
	cmpb	$0, -9(%ebp)
	je	.label_601
	movl	$1, %eax
	jmp	.label_602
.label_601:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
.label_602:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f3d2

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_605
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_605
	movl	$0xffffffff, %eax
	jmp	.label_603
.label_605:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_604
	cmpb	$0, -9(%ebp)
	je	.label_604
	movl	$1, %eax
	jmp	.label_603
.label_604:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_name
	addl	$0x10, %esp
.label_603:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f43c

	.globl xstrcoll_extension
	.type xstrcoll_extension, @function
xstrcoll_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f45a

	.globl strcmp_extension
	.type strcmp_extension, @function
strcmp_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f478

	.globl rev_xstrcoll_extension
	.type rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f496

	.globl rev_strcmp_extension
	.type rev_strcmp_extension, @function
rev_strcmp_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f4b4

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_606
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_606
	movl	$0xffffffff, %eax
	jmp	.label_607
.label_606:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_608
	cmpb	$0, -9(%ebp)
	je	.label_608
	movl	$1, %eax
	jmp	.label_607
.label_608:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
.label_607:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f51e

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_611
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_611
	movl	$0xffffffff, %eax
	jmp	.label_609
.label_611:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_610
	cmpb	$0, -9(%ebp)
	je	.label_610
	movl	$1, %eax
	jmp	.label_609
.label_610:
	subl	$4, %esp
	pushl	$strcmp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
.label_609:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f588

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_612
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_612
	movl	$0xffffffff, %eax
	jmp	.label_614
.label_612:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_613
	cmpb	$0, -9(%ebp)
	je	.label_613
	movl	$1, %eax
	jmp	.label_614
.label_613:
	subl	$4, %esp
	pushl	$xstrcoll
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
.label_614:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f5f2

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_617
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_617
	movl	$0xffffffff, %eax
	jmp	.label_615
.label_617:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_616
	cmpb	$0, -9(%ebp)
	je	.label_616
	movl	$1, %eax
	jmp	.label_615
.label_616:
	subl	$4, %esp
	pushl	$strcmp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_extension
	addl	$0x10, %esp
.label_615:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f65c

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	filevercmp
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f67b

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_version
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f694

	.globl rev_xstrcoll_version
	.type rev_xstrcoll_version, @function
rev_xstrcoll_version:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_version
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f6ad

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_620
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_620
	movl	$0xffffffff, %eax
	jmp	.label_618
.label_620:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_619
	cmpb	$0, -9(%ebp)
	je	.label_619
	movl	$1, %eax
	jmp	.label_618
.label_619:
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	cmp_version
	addl	$0x10, %esp
.label_618:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f712

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	8(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -0xa(%ebp)
	pushl	0xc(%ebp)
	calll	is_directory
	addl	$4, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_623
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_623
	movl	$0xffffffff, %eax
	jmp	.label_621
.label_623:
	movzbl	-0xa(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_622
	cmpb	$0, -9(%ebp)
	je	.label_622
	movl	$1, %eax
	jmp	.label_621
.label_622:
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	0xc(%ebp)
	calll	cmp_version
	addl	$0x10, %esp
.label_621:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f777

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x10, %esp
	movl	$0, -8(%ebp)
	jmp	.label_625
.label_624:
	movl	sorted_file,  %eax
	movl	-8(%ebp), %edx
	shll	$2, %edx
	addl	%eax, %edx
	movl	cwd_file,  %ecx
	movl	-8(%ebp), %eax
	shll	$3, %eax
	movl	%eax, %ebx
	shll	$4, %ebx
	addl	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, 0(%edx)
	addl	$1, -8(%ebp)
.label_625:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -8(%ebp)
	jb	.label_624
	nop	
	addl	$0x10, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f7c0

	.globl sort_files
	.type sort_files, @function
sort_files:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	cwd_n_used,  %eax
	shrl	$1, %eax
	movl	%eax, %edx
	movl	cwd_n_used,  %eax
	addl	%eax, %edx
	movl	sorted_file_alloc,  %eax
	cmpl	%eax, %edx
	jbe	.label_626
	movl	sorted_file,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	cwd_n_used,  %eax
	subl	$8, %esp
	pushl	$0xc
	pushl	%eax
	calll	xnmalloc
	addl	$0x10, %esp
	movl	%eax, sorted_file
	movl	cwd_n_used,  %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, sorted_file_alloc
.label_626:
	calll	initialize_ordering_vector
	movl	sort_type,  %eax
	cmpl	$-1, %eax
	je	.label_634
	subl	$0xc, %esp
	pushl	$failed_strcoll
	calll	_setjmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_632
	movb	$0, -9(%ebp)
	jmp	.label_627
.label_632:
	movb	$1, -9(%ebp)
	movl	sort_type,  %eax
	cmpl	$3, %eax
	jne	.label_628
	pushl	$__PRETTY_FUNCTION__.8996
	pushl	$0xee8
	pushl	$label_43
	pushl	$label_631
	calll	__assert_fail
.label_628:
	calll	initialize_ordering_vector
.label_627:
	movl	sort_type,  %eax
	cmpl	$4, %eax
	jne	.label_630
	movl	time_type,  %eax
	jmp	.label_629
.label_630:
	movl	$0, %eax
.label_629:
	movl	sort_type,  %edx
	leal	0(%eax, %edx), %ebx
	movzbl	-9(%ebp), %ecx
	movzbl	sort_reverse,  %eax
	movzbl	%al, %edx
	movzbl	directories_first,  %eax
	movzbl	%al, %eax
	addl	%ebx, %ebx
	addl	%ebx, %ecx
	addl	%ecx, %ecx
	addl	%ecx, %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movl	sort_functions(, %eax, 4),  %ecx
	movl	cwd_n_used,  %edx
	movl	sorted_file,  %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	mpsort
	addl	$0x10, %esp
	jmp	.label_633
.label_634:
	nop	
.label_633:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f8de

	.globl print_current_files
	.type print_current_files, @function
print_current_files:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	format,  %eax
	cmpl	$4, %eax
	ja	.label_638
	movl	label_640(, %eax, 4),  %eax
	jmpl	*%eax
.label_2710:
	movl	$0, -0xc(%ebp)
	jmp	.label_636
.label_639:
	movl	sorted_file,  %eax
	movl	-0xc(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	.section	.text
	.align	32

	.globl sub_804f913
	.type sub_804f913, @function
sub_804f913:

	subl	$8, %esp
	pushl	$0
	pushl	%eax
	calll	print_file_name_and_frills
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	addl	$1, -0xc(%ebp)
.label_636:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0xc(%ebp)
	jb	.label_639
	jmp	.label_638
.label_2711:
	movl	line_length,  %eax
	testl	%eax, %eax
	jne	.label_635
	.section	.text
	.align	32

	.globl sub_804f94a
	.type sub_804f94a, @function
sub_804f94a:

	subl	$0xc, %esp
	pushl	$0x20
	calll	print_with_separator
	addl	$0x10, %esp
	jmp	.label_638
.label_635:
	calll	print_many_per_line
	jmp	.label_638
.label_2712:
	movl	line_length,  %eax
	testl	%eax, %eax
	jne	.label_637
	.section	.text
	.align	32

	.globl sub_804f96f
	.type sub_804f96f, @function
sub_804f96f:

	subl	$0xc, %esp
	pushl	$0x20
	calll	print_with_separator
	addl	$0x10, %esp
	jmp	.label_638
.label_637:
	calll	print_horizontal
	jmp	.label_638
	.section	.text
	.align	32


	.globl sub_804f985
	.type sub_804f985, @function
sub_804f985:
	subl	$0xc, %esp
	pushl	$0x2c
	calll	print_with_separator
	addl	$0x10, %esp
	jmp	.label_638
.label_2709:
	movl	$0, -0xc(%ebp)
	jmp	.label_641
.label_642:
	calll	set_normal_color
	movl	sorted_file,  %eax
	movl	-0xc(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	.section	.text
	.align	32

	.globl sub_804f9b1
	.type sub_804f9b1, @function
sub_804f9b1:

	subl	$0xc, %esp
	pushl	%eax
	calll	print_long_format
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
	addl	$1, -0xc(%ebp)
.label_641:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0xc(%ebp)
	jb	.label_642
	nop	
.label_638:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804f9e9

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	movzbl	use_abformat,  %eax
	testb	%al, %al
	je	.label_644
	movzbl	-0x1c(%ebp), %edx
	movl	0x14(%ebp), %eax
	movl	0x10(%eax), %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	shll	$7, %eax
	addl	$abformat,  %eax
	jmp	.label_643
.label_644:
	movzbl	-0x1c(%ebp), %eax
	movl	long_time_format(, %eax, 4),  %eax
.label_643:
	movl	%eax, -0xc(%ebp)
	subl	$8, %esp
	pushl	0x1c(%ebp)
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	-0xc(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	nstrftime
	addl	$0x20, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fa4c

	.globl long_time_expected_width
	.type long_time_expected_width, @function
long_time_expected_width:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x438, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	width.9025,  %eax
	testl	%eax, %eax
	jns	.label_646
	movl	$0, -0x42c(%ebp)
	movl	localtz,  %eax
	subl	$4, %esp
	leal	-0x424(%ebp), %edx
	pushl	%edx
	leal	-0x42c(%ebp), %edx
	pushl	%edx
	pushl	%eax
	calll	localtime_rz
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_647
	movl	localtz,  %eax
	subl	$8, %esp
	pushl	$0
	pushl	%eax
	leal	-0x424(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$0x3e9
	leal	-0x3f5(%ebp), %eax
	pushl	%eax
	calll	align_nstrftime
	addl	$0x20, %esp
	movl	%eax, -0x428(%ebp)
	cmpl	$0, -0x428(%ebp)
	je	.label_647
	subl	$4, %esp
	pushl	$0
	pushl	-0x428(%ebp)
	leal	-0x3f5(%ebp), %eax
	pushl	%eax
	calll	mbsnwidth
	addl	$0x10, %esp
	movl	%eax, width.9025
.label_647:
	movl	width.9025,  %eax
	testl	%eax, %eax
	jns	.label_646
	movl	$0, width.9025
.label_646:
	movl	width.9025,  %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_645
	calll	__stack_chk_fail
.label_645:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fb1b

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 8(%ebp)
	je	.label_650
	subl	$8, %esp
	pushl	$0
	pushl	8(%ebp)
	calll	gnu_mbswidth
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	0x10(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	movl	$0, %eax
	cmpl	$0, -0xc(%ebp)
	cmovnsl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	fputs_unlocked
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x14(%ebp)
.label_648:
	subl	$0xc, %esp
	pushl	$0x20
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	-0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	testl	%eax, %eax
	jne	.label_648
	jmp	.label_651
.label_650:
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	0x10(%ebp)
	pushl	$label_649
	calll	printf
	addl	$0x10, %esp
	movl	0x10(%ebp), %eax
	movl	%eax, -0x14(%ebp)
.label_651:
	movl	dired_pos,  %edx
	movl	-0x14(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, dired_pos
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fbcb

	.globl format_user
	.type format_user, @function
format_user:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movzbl	-0xc(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_655
	movl	$label_652,  %eax
	jmp	.label_653
.label_655:
	movzbl	numeric_ids,  %eax
	testb	%al, %al
	je	.label_654
	movl	$0, %eax
	jmp	.label_653
.label_654:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getuser
	addl	$0x10, %esp
.label_653:
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	calll	format_user_or_group
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fc1e

	.globl format_group
	.type format_group, @function
format_group:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movzbl	-0xc(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_658
	movl	$label_652,  %eax
	jmp	.label_656
.label_658:
	movzbl	numeric_ids,  %eax
	testb	%al, %al
	je	.label_657
	movl	$0, %eax
	jmp	.label_656
.label_657:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getgroup
	addl	$0x10, %esp
.label_656:
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	calll	format_user_or_group
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fc71

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	cmpl	$0, -0x2c(%ebp)
	je	.label_660
	subl	$8, %esp
	pushl	$0
	pushl	-0x2c(%ebp)
	calll	gnu_mbswidth
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x1c(%ebp)
	cmovnsl	-0x1c(%ebp), %eax
	jmp	.label_662
.label_660:
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	$label_659
	leal	-0x17(%ebp), %eax
	pushl	%eax
	calll	sprintf
	addl	$0x10, %esp
	subl	$0xc, %esp
	leal	-0x17(%ebp), %eax
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
.label_662:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_661
	calll	__stack_chk_fail
.label_661:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fce9

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movzbl	numeric_ids,  %eax
	testb	%al, %al
	je	.label_663
	movl	$0, %eax
	jmp	.label_664
.label_663:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getuser
	addl	$0x10, %esp
.label_664:
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	format_user_or_group_width
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fd20

	.globl format_group_width
	.type format_group_width, @function
format_group_width:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movzbl	numeric_ids,  %eax
	testb	%al, %al
	je	.label_665
	movl	$0, %eax
	jmp	.label_666
.label_665:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getgroup
	addl	$0x10, %esp
.label_666:
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	format_user_or_group_width
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fd57

	.globl format_inode
	.type format_inode, @function
format_inode:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0x14, 0xc(%ebp)
	ja	.label_670
	pushl	$__PRETTY_FUNCTION__.9067
	pushl	$0xfaa
	pushl	$label_43
	pushl	$label_667
	calll	__assert_fail
.label_670:
	movl	0x10(%ebp), %eax
	movzbl	0x78(%eax), %eax
	testb	%al, %al
	je	.label_668
	movl	0x10(%ebp), %eax
	movl	0x68(%eax), %edx
	movl	0x64(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.label_668
	movl	0x10(%ebp), %eax
	movl	0x68(%eax), %edx
	movl	0x64(%eax), %eax
	subl	$4, %esp
	pushl	8(%ebp)
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	jmp	.label_669
.label_668:
	movl	$label_652,  %eax
.label_669:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x804fdb8

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x116c, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x116c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0x1c(%ebp)
	xorl	%eax, %eax
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	testb	%al, %al
	je	.label_710
	movl	-0x116c(%ebp), %eax
	leal	0xc(%eax), %edx
	subl	$8, %esp
	leal	-0x1104(%ebp), %eax
	pushl	%eax
	pushl	%edx
	calll	filemodestring
	addl	$0x10, %esp
	jmp	.label_722
.label_710:
	movl	-0x116c(%ebp), %eax
	movl	0x6c(%eax), %eax
	movzbl	filetype_letter(%eax),  %eax
	movb	%al, -0x1104(%ebp)
	leal	-0x1104(%ebp), %eax
	addl	$1, %eax
	subl	$4, %esp
	pushl	$0xa
	pushl	$0x3f
	pushl	%eax
	calll	memset
	addl	$0x10, %esp
	movb	$0, -0x10f9(%ebp)
.label_722:
	movzbl	any_has_acl,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_682
	movb	$0, -0x10fa(%ebp)
	jmp	.label_687
.label_682:
	movl	-0x116c(%ebp), %eax
	movl	0x7c(%eax), %eax
	cmpl	$1, %eax
	jne	.label_691
	movb	$0x2e, -0x10fa(%ebp)
	jmp	.label_687
.label_691:
	movl	-0x116c(%ebp), %eax
	movl	0x7c(%eax), %eax
	cmpl	$2, %eax
	jne	.label_687
	movb	$0x2b, -0x10fa(%ebp)
.label_687:
	movl	time_type,  %eax
	cmpl	$1, %eax
	je	.label_700
	cmpl	$1, %eax
	jb	.label_702
	cmpl	$2, %eax
	je	.label_688
	jmp	.label_704
.label_700:
	movl	-0x116c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1178(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_ctime
	addl	$0xc, %esp
	movl	-0x1178(%ebp), %eax
	movl	-0x1174(%ebp), %edx
	movl	%eax, -0x1140(%ebp)
	movl	%edx, -0x113c(%ebp)
	jmp	.label_674
.label_702:
	movl	-0x116c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1178(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_mtime
	addl	$0xc, %esp
	movl	-0x1178(%ebp), %eax
	movl	-0x1174(%ebp), %edx
	movl	%eax, -0x1140(%ebp)
	movl	%edx, -0x113c(%ebp)
	jmp	.label_674
.label_688:
	movl	-0x116c(%ebp), %eax
	leal	0xc(%eax), %edx
	leal	-0x1178(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	get_stat_atime
	addl	$0xc, %esp
	movl	-0x1178(%ebp), %eax
	movl	-0x1174(%ebp), %edx
	movl	%eax, -0x1140(%ebp)
	movl	%edx, -0x113c(%ebp)
	jmp	.label_674
.label_704:
	calll	abort
.label_674:
	leal	-0xe57(%ebp), %eax
	movl	%eax, -0x115c(%ebp)
	movzbl	print_inode,  %eax
	testb	%al, %al
	je	.label_683
	subl	$4, %esp
	pushl	-0x116c(%ebp)
	pushl	$0x15
	leal	-0x10e3(%ebp), %eax
	pushl	%eax
	calll	format_inode
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	inode_number_width,  %eax
	pushl	%edx
	pushl	%eax
	pushl	$label_672
	pushl	-0x115c(%ebp)
	calll	sprintf
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x115c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	%eax, -0x115c(%ebp)
.label_683:
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_707
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_709
	movl	$label_652,  %eax
	jmp	.label_713
.label_709:
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	human_output_opts,  %esi
	movl	-0x116c(%ebp), %ecx
	movl	0x48(%ecx), %ebx
	movl	0x44(%ecx), %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0x200
	pushl	%esi
	leal	-0x10e3(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	calll	human_readable
	addl	$0x20, %esp
.label_713:
	movl	%eax, -0x1158(%ebp)
	movl	block_size_width,  %ebx
	subl	$8, %esp
	pushl	$0
	pushl	-0x1158(%ebp)
	calll	gnu_mbswidth
	addl	$0x10, %esp
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -0x1154(%ebp)
	jmp	.label_675
.label_685:
	movl	-0x115c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x115c(%ebp)
	movb	$0x20, 0(%eax)
	subl	$1, -0x1154(%ebp)
.label_675:
	cmpl	$0, -0x1154(%ebp)
	jg	.label_685
	jmp	.label_717
.label_690:
	nop	
.label_717:
	movl	-0x115c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x115c(%ebp)
	movl	-0x1158(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x1158(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_690
	movl	-0x115c(%ebp), %eax
	subl	$1, %eax
	movb	$0x20, 0(%eax)
.label_707:
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_701
	movl	$label_652,  %edx
	jmp	.label_705
.label_701:
	movl	-0x116c(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x10e3(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	movl	%eax, %edx
.label_705:
	movl	nlink_width,  %eax
	subl	$0xc, %esp
	pushl	%edx
	pushl	%eax
	leal	-0x1104(%ebp), %eax
	pushl	%eax
	pushl	$label_714
	pushl	-0x115c(%ebp)
	calll	sprintf
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	-0x115c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	%eax, -0x115c(%ebp)
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_720
	movl	stdout,  %eax
	pushl	%eax
	pushl	$2
	pushl	$1
	pushl	$label_373
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$2, %eax
	movl	%eax, dired_pos
.label_720:
	movzbl	print_owner,  %eax
	testb	%al, %al
	jne	.label_679
	movzbl	print_group,  %eax
	testb	%al, %al
	jne	.label_679
	movzbl	print_author,  %eax
	testb	%al, %al
	jne	.label_679
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_689
.label_679:
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	leal	-0xe57(%ebp), %eax
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	-0x115c(%ebp), %edx
	leal	-0xe57(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	dired_pos,  %eax
	addl	%edx, %eax
	movl	%eax, dired_pos
	movzbl	print_owner,  %eax
	testb	%al, %al
	je	.label_696
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %ecx
	movl	owner_width,  %edx
	movl	-0x116c(%ebp), %eax
	movl	0x24(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	format_user
	addl	$0x10, %esp
.label_696:
	movzbl	print_group,  %eax
	testb	%al, %al
	je	.label_716
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %ecx
	movl	group_width,  %edx
	movl	-0x116c(%ebp), %eax
	movl	0x28(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	format_group
	addl	$0x10, %esp
.label_716:
	movzbl	print_author,  %eax
	testb	%al, %al
	je	.label_721
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %ecx
	movl	author_width,  %edx
	movl	-0x116c(%ebp), %eax
	movl	0x24(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	format_user
	addl	$0x10, %esp
.label_721:
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_681
	movl	scontext_width,  %edx
	movl	-0x116c(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$0
	pushl	%eax
	calll	format_user_or_group
	addl	$0x10, %esp
.label_681:
	leal	-0xe57(%ebp), %eax
	movl	%eax, -0x115c(%ebp)
.label_689:
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	testb	%al, %al
	je	.label_694
	movl	-0x116c(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x2000, %eax
	je	.label_697
	movl	-0x116c(%ebp), %eax
	movl	0x1c(%eax), %eax
	andl	$0xf000, %eax
	cmpl	$0x6000, %eax
	jne	.label_694
.label_697:
	movl	file_size_width,  %eax
	movl	major_device_number_width,  %edx
	leal	2(%edx), %ecx
	movl	minor_device_number_width,  %edx
	addl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, -0x1148(%ebp)
	movl	-0x116c(%ebp), %eax
	movl	0x30(%eax), %edx
	movl	0x2c(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	gnu_dev_minor
	addl	$0x10, %esp
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x10e3(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	movl	%eax, %esi
	movl	minor_device_number_width,  %ebx
	movl	-0x116c(%ebp), %eax
	movl	0x30(%eax), %edx
	movl	0x2c(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	gnu_dev_major
	addl	$0x10, %esp
	movl	$0, %edx
	subl	$4, %esp
	leal	-0x10f8(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	movl	%eax, %ecx
	movl	$0, %eax
	cmpl	$0, -0x1148(%ebp)
	cmovnsl	-0x1148(%ebp), %eax
	movl	%eax, %edx
	movl	major_device_number_width,  %eax
	addl	%edx, %eax
	subl	$8, %esp
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%eax
	pushl	$label_680
	pushl	-0x115c(%ebp)
	calll	sprintf
	addl	$0x20, %esp
	movl	file_size_width,  %eax
	addl	$1, %eax
	addl	%eax, -0x115c(%ebp)
	jmp	.label_693
.label_694:
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_699
	movl	$label_652,  %eax
	jmp	.label_703
.label_699:
	movl	file_output_block_size,  %ebx
	movl	label_216,  %esi
	movl	file_human_output_opts,  %edi
	movl	-0x116c(%ebp), %eax
	movl	0x3c(%eax), %edx
	movl	0x38(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	unsigned_file_size
	addl	$0x10, %esp
	pushl	%esi
	pushl	%ebx
	pushl	$0
	pushl	$1
	pushl	%edi
	leal	-0x10e3(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	human_readable
	addl	$0x20, %esp
.label_703:
	movl	%eax, -0x1150(%ebp)
	movl	file_size_width,  %ebx
	subl	$8, %esp
	pushl	$0
	pushl	-0x1150(%ebp)
	calll	gnu_mbswidth
	addl	$0x10, %esp
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -0x114c(%ebp)
	jmp	.label_719
.label_673:
	movl	-0x115c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x115c(%ebp)
	movb	$0x20, 0(%eax)
	subl	$1, -0x114c(%ebp)
.label_719:
	cmpl	$0, -0x114c(%ebp)
	jg	.label_673
	jmp	.label_676
.label_677:
	nop	
.label_676:
	movl	-0x115c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x115c(%ebp)
	movl	-0x1150(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x1150(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_677
	movl	-0x115c(%ebp), %eax
	subl	$1, %eax
	movb	$0x20, 0(%eax)
.label_693:
	movl	$0, -0x1160(%ebp)
	movl	-0x115c(%ebp), %eax
	movb	$1, 0(%eax)
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	testb	%al, %al
	je	.label_678
	movl	localtz,  %eax
	subl	$4, %esp
	leal	-0x1130(%ebp), %edx
	pushl	%edx
	leal	-0x1140(%ebp), %edx
	pushl	%edx
	pushl	%eax
	calll	localtime_rz
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_678
	pushl	-0x113c(%ebp)
	pushl	-0x1140(%ebp)
	pushl	label_165
	pushl	current_time
	calll	timespec_cmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jns	.label_715
	subl	$0xc, %esp
	pushl	$current_time
	calll	gettime
	addl	$0x10, %esp
.label_715:
	movl	current_time,  %eax
	subl	$0xf0c2ac, %eax
	movl	%eax, -0x1138(%ebp)
	movl	label_165,  %eax
	movl	%eax, -0x1134(%ebp)
	pushl	-0x113c(%ebp)
	pushl	-0x1140(%ebp)
	pushl	-0x1134(%ebp)
	pushl	-0x1138(%ebp)
	calll	timespec_cmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jns	.label_698
	pushl	label_165
	pushl	current_time
	pushl	-0x113c(%ebp)
	pushl	-0x1140(%ebp)
	calll	timespec_cmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jns	.label_698
	movl	$1, %eax
	jmp	.label_684
.label_698:
	movl	$0, %eax
.label_684:
	movb	%al, -0x1161(%ebp)
	andb	$1, -0x1161(%ebp)
	movl	-0x113c(%ebp), %ecx
	movl	localtz,  %edx
	movzbl	-0x1161(%ebp), %eax
	subl	$8, %esp
	pushl	%ecx
	pushl	%edx
	leal	-0x1130(%ebp), %edx
	pushl	%edx
	pushl	%eax
	pushl	$0x3e9
	pushl	-0x115c(%ebp)
	calll	align_nstrftime
	addl	$0x20, %esp
	movl	%eax, -0x1160(%ebp)
.label_678:
	cmpl	$0, -0x1160(%ebp)
	jne	.label_695
	movl	-0x115c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_706
.label_695:
	movl	-0x1160(%ebp), %eax
	addl	%eax, -0x115c(%ebp)
	movl	-0x115c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x115c(%ebp)
	movb	$0x20, 0(%eax)
	movl	-0x115c(%ebp), %eax
	movb	$0, 0(%eax)
	jmp	.label_708
.label_706:
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_718
	movl	$label_652,  %ebx
	jmp	.label_686
.label_718:
	movl	-0x1140(%ebp), %eax
	subl	$8, %esp
	leal	-0x10e3(%ebp), %edx
	pushl	%edx
	pushl	%eax
	calll	timetostr
	addl	$0x10, %esp
	movl	%eax, %ebx
.label_686:
	calll	long_time_expected_width
	pushl	%ebx
	pushl	%eax
	pushl	$label_672
	pushl	-0x115c(%ebp)
	calll	sprintf
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x115c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	%eax, -0x115c(%ebp)
.label_708:
	movl	stdout,  %eax
	subl	$8, %esp
	pushl	%eax
	leal	-0xe57(%ebp), %eax
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	-0x115c(%ebp), %edx
	leal	-0xe57(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	dired_pos,  %eax
	addl	%edx, %eax
	movl	%eax, dired_pos
	movl	-0x115c(%ebp), %edx
	leal	-0xe57(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	%eax
	pushl	$dired_obstack
	pushl	$0
	pushl	-0x116c(%ebp)
	calll	print_name_with_quoting
	addl	$0x10, %esp
	movl	%eax, -0x1144(%ebp)
	movl	-0x116c(%ebp), %eax
	movl	0x6c(%eax), %eax
	cmpl	$6, %eax
	jne	.label_712
	movl	-0x116c(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.label_671
	movl	stdout,  %eax
	pushl	%eax
	pushl	$4
	pushl	$1
	pushl	$label_711
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$4, %eax
	movl	%eax, dired_pos
	movl	-0x115c(%ebp), %edx
	leal	-0xe57(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x1144(%ebp), %eax
	addl	%edx, %eax
	addl	$4, %eax
	pushl	%eax
	pushl	$0
	pushl	$1
	pushl	-0x116c(%ebp)
	calll	print_name_with_quoting
	addl	$0x10, %esp
	movl	indicator_style,  %eax
	testl	%eax, %eax
	je	.label_671
	movl	-0x116c(%ebp), %eax
	movl	0x70(%eax), %eax
	subl	$4, %esp
	pushl	$0
	pushl	%eax
	pushl	$1
	calll	print_type_indicator
	addl	$0x10, %esp
	jmp	.label_671
.label_712:
	movl	indicator_style,  %eax
	testl	%eax, %eax
	je	.label_671
	movl	-0x116c(%ebp), %eax
	movl	0x6c(%eax), %ecx
	movl	-0x116c(%ebp), %eax
	movl	0x1c(%eax), %edx
	movl	-0x116c(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	print_type_indicator
	addl	$0x10, %esp
.label_671:
	nop	
	movl	-0x1c(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_692
	calll	__stack_chk_fail
.label_692:
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8050781

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x74, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x5c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x60(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x64(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0x68(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0x6c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x5c(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x40(%ebp)
	subl	$0xc, %esp
	pushl	-0x64(%ebp)
	calll	get_quoting_style
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
	movzbl	qmark_funny_chars,  %eax
	testb	%al, %al
	je	.label_754
	cmpl	$1, -0x28(%ebp)
	je	.label_755
	cmpl	$2, -0x28(%ebp)
	je	.label_755
	cmpl	$0, -0x28(%ebp)
	jne	.label_754
.label_755:
	movl	$1, %eax
	jmp	.label_759
.label_754:
	movl	$0, %eax
.label_759:
	movb	%al, -0x4d(%ebp)
	andb	$1, -0x4d(%ebp)
	cmpl	$0, 0x18(%ebp)
	je	.label_760
	subl	$0xc, %esp
	pushl	-0x64(%ebp)
	pushl	$-1
	pushl	-0x60(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x48(%ebp)
	calll	quotearg_buffer
	addl	$0x20, %esp
	movl	%eax, -0x40(%ebp)
	movl	0xc(%ebp), %eax
	cmpl	-0x40(%ebp), %eax
	ja	.label_730
	movl	-0x40(%ebp), %eax
	addl	$1, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x48(%ebp)
	movl	-0x40(%ebp), %eax
	addl	$1, %eax
	subl	$0xc, %esp
	pushl	-0x64(%ebp)
	pushl	$-1
	pushl	-0x60(%ebp)
	pushl	%eax
	pushl	-0x48(%ebp)
	calll	quotearg_buffer
	addl	$0x20, %esp
.label_730:
	movl	-0x60(%ebp), %eax
	movzbl	0(%eax), %edx
	movl	-0x48(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	jne	.label_741
	subl	$0xc, %esp
	pushl	-0x60(%ebp)
	calll	strlen
	addl	$0x10, %esp
	cmpl	-0x40(%ebp), %eax
	je	.label_744
.label_741:
	movl	$1, %eax
	jmp	.label_746
.label_744:
	movl	$0, %eax
.label_746:
	movb	%al, -0x4e(%ebp)
	andb	$1, -0x4e(%ebp)
	jmp	.label_733
.label_760:
	cmpb	$0, -0x4d(%ebp)
	je	.label_747
	subl	$0xc, %esp
	pushl	-0x60(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x40(%ebp)
	movl	0xc(%ebp), %eax
	cmpl	-0x40(%ebp), %eax
	ja	.label_750
	movl	-0x40(%ebp), %eax
	addl	$1, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x48(%ebp)
.label_750:
	movl	-0x40(%ebp), %eax
	addl	$1, %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-0x60(%ebp)
	pushl	-0x48(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movb	$0, -0x4e(%ebp)
	jmp	.label_733
.label_747:
	subl	$0xc, %esp
	pushl	-0x60(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x40(%ebp)
	movl	-0x60(%ebp), %eax
	movl	%eax, -0x48(%ebp)
	movb	$0, -0x4e(%ebp)
.label_733:
	cmpb	$0, -0x4d(%ebp)
	je	.label_723
	calll	__ctype_get_mb_cur_max
	cmpl	$1, %eax
	jbe	.label_726
	movl	-0x48(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	-0x48(%ebp), %edx
	movl	-0x40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x48(%ebp), %eax
	movl	%eax, -0x38(%ebp)
	movl	$0, -0x44(%ebp)
	jmp	.label_729
.label_757:
	movl	-0x3c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x3f, %eax
	jg	.label_736
	cmpl	$0x25, %eax
	jge	.label_738
	subl	$0x20, %eax
	cmpl	$3, %eax
	ja	.label_739
	jmp	.label_738
.label_736:
	cmpl	$0x41, %eax
	jl	.label_739
	cmpl	$0x5f, %eax
	jle	.label_738
	subl	$0x61, %eax
	cmpl	$0x1d, %eax
	ja	.label_739
.label_738:
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x38(%ebp)
	movl	-0x3c(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x3c(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	addl	$1, -0x44(%ebp)
	jmp	.label_729
.label_739:
	movl	$0, -0x14(%ebp)
	movl	$0, -0x10(%ebp)
.label_743:
	movl	-0x24(%ebp), %edx
	movl	-0x3c(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	%edx
	pushl	-0x3c(%ebp)
	leal	-0x4c(%ebp), %eax
	pushl	%eax
	calll	rpl_mbrtowc
	addl	$0x10, %esp
	movl	%eax, -0x34(%ebp)
	cmpl	$-1, -0x34(%ebp)
	jne	.label_734
	addl	$1, -0x3c(%ebp)
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x38(%ebp)
	movb	$0x3f, 0(%eax)
	addl	$1, -0x44(%ebp)
	jmp	.label_753
.label_734:
	cmpl	$-2, -0x34(%ebp)
	jne	.label_756
	movl	-0x24(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x38(%ebp)
	movb	$0x3f, 0(%eax)
	addl	$1, -0x44(%ebp)
	jmp	.label_753
.label_756:
	cmpl	$0, -0x34(%ebp)
	jne	.label_761
	movl	$1, -0x34(%ebp)
.label_761:
	movl	-0x4c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	wcwidth
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x20(%ebp)
	js	.label_727
	jmp	.label_731
.label_735:
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x38(%ebp)
	movl	-0x3c(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -0x3c(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	subl	$1, -0x34(%ebp)
.label_731:
	cmpl	$0, -0x34(%ebp)
	jne	.label_735
	movl	-0x20(%ebp), %eax
	addl	%eax, -0x44(%ebp)
	jmp	.label_737
.label_727:
	movl	-0x34(%ebp), %eax
	addl	%eax, -0x3c(%ebp)
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x38(%ebp)
	movb	$0x3f, 0(%eax)
	addl	$1, -0x44(%ebp)
.label_737:
	subl	$0xc, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	mbsinit
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_743
.label_753:
	nop	
.label_729:
	movl	-0x3c(%ebp), %eax
	cmpl	-0x24(%ebp), %eax
	jb	.label_757
	movl	-0x38(%ebp), %edx
	movl	-0x48(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x40(%ebp)
	jmp	.label_728
.label_726:
	movl	-0x48(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	-0x48(%ebp), %edx
	movl	-0x40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x1c(%ebp)
	jmp	.label_748
.label_758:
	calll	__ctype_b_loc
	movl	0(%eax), %ebx
	movl	-0x30(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	to_uchar
	addl	$0x10, %esp
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	%ebx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x4000, %eax
	testl	%eax, %eax
	jne	.label_752
	movl	-0x30(%ebp), %eax
	movb	$0x3f, 0(%eax)
.label_752:
	addl	$1, -0x30(%ebp)
.label_748:
	movl	-0x30(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jb	.label_758
	movl	-0x40(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	jmp	.label_728
.label_723:
	cmpl	$0, -0x68(%ebp)
	je	.label_728
	calll	__ctype_get_mb_cur_max
	cmpl	$1, %eax
	jbe	.label_724
	subl	$4, %esp
	pushl	$0
	pushl	-0x40(%ebp)
	pushl	-0x48(%ebp)
	calll	mbsnwidth
	addl	$0x10, %esp
	movl	%eax, -0x44(%ebp)
	jmp	.label_728
.label_724:
	movl	-0x48(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	-0x48(%ebp), %edx
	movl	-0x40(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x18(%ebp)
	movl	$0, -0x44(%ebp)
	jmp	.label_732
.label_742:
	calll	__ctype_b_loc
	movl	0(%eax), %ebx
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	to_uchar
	addl	$0x10, %esp
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	%ebx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x4000, %eax
	testl	%eax, %eax
	je	.label_740
	addl	$1, -0x44(%ebp)
.label_740:
	addl	$1, -0x2c(%ebp)
.label_732:
	movl	-0x2c(%ebp), %eax
	cmpl	-0x18(%ebp), %eax
	jb	.label_742
.label_728:
	movzbl	align_variable_outer_quotes,  %eax
	testb	%al, %al
	je	.label_745
	movzbl	cwd_some_quoted,  %eax
	testb	%al, %al
	je	.label_745
	movzbl	-0x4e(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_745
	movl	$1, %eax
	jmp	.label_749
.label_745:
	movl	$0, %eax
.label_749:
	andl	$1, %eax
	movl	-0x6c(%ebp), %edx
	movb	%al, 0(%edx)
	cmpl	$0, -0x68(%ebp)
	je	.label_725
	movl	-0x68(%ebp), %eax
	movl	-0x44(%ebp), %edx
	movl	%edx, 0(%eax)
.label_725:
	movl	-0x5c(%ebp), %eax
	movl	-0x48(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x40(%ebp), %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_751
	calll	__stack_chk_fail
.label_751:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8050be4

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x2028, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x201c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x2020(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x200c(%ebp), %eax
	movl	%eax, -0x2014(%ebp)
	subl	$4, %esp
	leal	-0x2015(%ebp), %eax
	pushl	%eax
	leal	-0x2010(%ebp), %eax
	pushl	%eax
	pushl	0x10(%ebp)
	pushl	-0x2020(%ebp)
	pushl	-0x201c(%ebp)
	pushl	$0x2000
	leal	-0x2014(%ebp), %eax
	pushl	%eax
	calll	quote_name_buf
	addl	$0x20, %esp
	movl	-0x2014(%ebp), %edx
	leal	-0x200c(%ebp), %eax
	cmpl	%eax, %edx
	je	.label_762
	movl	-0x2014(%ebp), %eax
	cmpl	-0x201c(%ebp), %eax
	je	.label_762
	movl	-0x2014(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
.label_762:
	movzbl	-0x2015(%ebp), %eax
	movzbl	%al, %edx
	movl	-0x2010(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x2010(%ebp)
	movl	-0x2010(%ebp), %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_763
	calll	__stack_chk_fail
.label_763:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8050cab

	.globl file_escape
	.type file_escape, @function
file_escape:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$3
	calll	xnmalloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_765
.label_766:
	cmpb	$0, -0x1c(%ebp)
	je	.label_764
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_764
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movb	$0x2f, 0(%eax)
	addl	$1, 8(%ebp)
	jmp	.label_765
.label_764:
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	to_uchar
	addl	$0x10, %esp
	movzbl	%al, %eax
	movzbl	RFC3986(%eax),  %eax
	testb	%al, %al
	je	.label_767
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movl	8(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 8(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
	jmp	.label_765
.label_767:
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	to_uchar
	addl	$0x10, %esp
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	%eax
	pushl	$label_768
	pushl	-0x10(%ebp)
	calll	sprintf
	addl	$0x10, %esp
	addl	%eax, -0x10(%ebp)
.label_765:
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_766
	movl	-0x10(%ebp), %eax
	movb	$0, 0(%eax)
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8050d90

	.globl quote_name
	.type quote_name, @function
quote_name:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x2054, %esp
	movl	0x18(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, -0x203c(%ebp)
	movl	0xc(%ebp), %edx
	movl	%edx, -0x2040(%ebp)
	movl	0x14(%ebp), %edx
	movl	%edx, -0x2044(%ebp)
	movb	%al, -0x2048(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0x204c(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0x2050(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x200c(%ebp), %eax
	movl	%eax, -0x2034(%ebp)
	subl	$4, %esp
	leal	-0x2036(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	0x10(%ebp)
	pushl	-0x2040(%ebp)
	pushl	-0x203c(%ebp)
	pushl	$0x2000
	leal	-0x2034(%ebp), %eax
	pushl	%eax
	calll	quote_name_buf
	addl	$0x20, %esp
	movl	%eax, -0x2030(%ebp)
	movzbl	-0x2036(%ebp), %eax
	testb	%al, %al
	je	.label_772
	cmpb	$0, -0x2048(%ebp)
	je	.label_772
	subl	$0xc, %esp
	pushl	$0x20
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
.label_772:
	cmpl	$0, -0x2044(%ebp)
	je	.label_777
	subl	$0xc, %esp
	pushl	-0x2044(%ebp)
	calll	print_color_indicator
	addl	$0x10, %esp
.label_777:
	movb	$0, -0x2035(%ebp)
	cmpl	$0, -0x2050(%ebp)
	je	.label_779
	movzbl	align_variable_outer_quotes,  %eax
	testb	%al, %al
	je	.label_770
	movzbl	cwd_some_quoted,  %eax
	testb	%al, %al
	je	.label_770
	movzbl	-0x2036(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_770
	movb	$1, -0x2035(%ebp)
	movl	-0x2034(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	putchar_unlocked
	addl	$0x10, %esp
.label_770:
	movl	hostname,  %eax
	subl	$8, %esp
	pushl	$0
	pushl	%eax
	calll	file_escape
	addl	$0x10, %esp
	movl	%eax, -0x202c(%ebp)
	subl	$8, %esp
	pushl	$1
	pushl	-0x2050(%ebp)
	calll	file_escape
	addl	$0x10, %esp
	movl	%eax, -0x2028(%ebp)
	movl	-0x2028(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_781
	movl	$label_26,  %eax
	jmp	.label_784
.label_781:
	movl	$label_769,  %eax
.label_784:
	pushl	-0x2028(%ebp)
	pushl	%eax
	pushl	-0x202c(%ebp)
	pushl	$label_771
	calll	printf
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x202c(%ebp)
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x2028(%ebp)
	calll	free
	addl	$0x10, %esp
.label_779:
	cmpl	$0, -0x204c(%ebp)
	je	.label_776
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_776
	movl	-0x204c(%ebp), %eax
	movl	%eax, -0x2024(%ebp)
	movl	$4, -0x2020(%ebp)
	movl	-0x2024(%ebp), %eax
	movl	%eax, -0x201c(%ebp)
	movl	-0x201c(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, %edx
	movl	-0x201c(%ebp), %eax
	movl	0xc(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	-0x2020(%ebp), %eax
	jae	.label_780
	subl	$8, %esp
	pushl	-0x2020(%ebp)
	pushl	-0x2024(%ebp)
	calll	_obstack_newchunk
	addl	$0x10, %esp
.label_780:
	movl	-0x2024(%ebp), %eax
	movl	0xc(%eax), %eax
	subl	$4, %esp
	pushl	-0x2020(%ebp)
	pushl	$dired_pos
	pushl	%eax
	calll	memcpy
	addl	$0x10, %esp
	movl	-0x2024(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	-0x2020(%ebp), %eax
	addl	%eax, %edx
	movl	-0x2024(%ebp), %eax
	movl	%edx, 0xc(%eax)
.label_776:
	movl	stdout,  %eax
	movzbl	-0x2035(%ebp), %edx
	addl	%edx, %edx
	movl	%edx, %ecx
	movl	-0x2030(%ebp), %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	movl	-0x2034(%ebp), %ebx
	movzbl	-0x2035(%ebp), %edx
	addl	%ebx, %edx
	pushl	%eax
	pushl	%ecx
	pushl	$1
	pushl	%edx
	calll	fwrite_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %edx
	movl	-0x2030(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, dired_pos
	cmpl	$0, -0x204c(%ebp)
	je	.label_773
	movzbl	dired,  %eax
	testb	%al, %al
	je	.label_773
	movl	-0x204c(%ebp), %eax
	movl	%eax, -0x2018(%ebp)
	movl	$4, -0x2014(%ebp)
	movl	-0x2018(%ebp), %eax
	movl	%eax, -0x2010(%ebp)
	movl	-0x2010(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, %edx
	movl	-0x2010(%ebp), %eax
	movl	0xc(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	-0x2014(%ebp), %eax
	jae	.label_778
	subl	$8, %esp
	pushl	-0x2014(%ebp)
	pushl	-0x2018(%ebp)
	calll	_obstack_newchunk
	addl	$0x10, %esp
.label_778:
	movl	-0x2018(%ebp), %eax
	movl	0xc(%eax), %eax
	subl	$4, %esp
	pushl	-0x2014(%ebp)
	pushl	$dired_pos
	pushl	%eax
	calll	memcpy
	addl	$0x10, %esp
	movl	-0x2018(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	-0x2014(%ebp), %eax
	addl	%eax, %edx
	movl	-0x2018(%ebp), %eax
	movl	%edx, 0xc(%eax)
.label_773:
	cmpl	$0, -0x2050(%ebp)
	je	.label_774
	movl	stdout,  %eax
	pushl	%eax
	pushl	$6
	pushl	$1
	pushl	$label_783
	calll	fwrite_unlocked
	addl	$0x10, %esp
	cmpb	$0, -0x2035(%ebp)
	je	.label_774
	movl	-0x2034(%ebp), %eax
	movl	-0x2030(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	putchar_unlocked
	addl	$0x10, %esp
.label_774:
	movl	-0x2034(%ebp), %edx
	leal	-0x200c(%ebp), %eax
	cmpl	%eax, %edx
	je	.label_775
	movl	-0x2034(%ebp), %eax
	cmpl	-0x203c(%ebp), %eax
	je	.label_775
	movl	-0x2034(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
.label_775:
	movzbl	-0x2036(%ebp), %eax
	movzbl	%al, %edx
	movl	-0x2030(%ebp), %eax
	addl	%edx, %eax
	movl	-0xc(%ebp), %ebx
	xorl	%gs:0x14, %ebx
	je	.label_782
	calll	__stack_chk_fail
.label_782:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805118d

	.globl print_name_with_quoting
	.type print_name_with_quoting, @function
print_name_with_quoting:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x24, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	cmpb	$0, -0x1c(%ebp)
	je	.label_788
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	jmp	.label_790
.label_788:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
.label_790:
	movl	%eax, -0x14(%ebp)
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_792
	movzbl	-0x1c(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	get_color_indicator
	addl	$0x10, %esp
	jmp	.label_785
.label_792:
	movl	$0, %eax
.label_785:
	movl	%eax, -0x10(%ebp)
	movzbl	print_with_color,  %eax
	testb	%al, %al
	je	.label_789
	cmpl	$0, -0x10(%ebp)
	jne	.label_791
	subl	$0xc, %esp
	pushl	$4
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_789
.label_791:
	movl	$1, %eax
	jmp	.label_793
.label_789:
	movl	$0, %eax
.label_793:
	movb	%al, -0x15(%ebp)
	andb	$1, -0x15(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %ebx
	movzbl	-0x1c(%ebp), %eax
	xorl	$1, %eax
	movzbl	%al, %ecx
	movl	8(%ebp), %eax
	movl	0x84(%eax), %edx
	movl	filename_quoting_options,  %eax
	subl	$4, %esp
	pushl	%ebx
	pushl	0x10(%ebp)
	pushl	%ecx
	pushl	-0x10(%ebp)
	pushl	%edx
	pushl	%eax
	pushl	-0x14(%ebp)
	calll	quote_name
	addl	$0x20, %esp
	movl	%eax, -0xc(%ebp)
	calll	process_signals
	cmpb	$0, -0x15(%ebp)
	je	.label_786
	calll	prep_non_filename_text
	movl	line_length,  %eax
	testl	%eax, %eax
	je	.label_786
	movl	line_length,  %ebx
	movl	0x14(%ebp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %ecx
	movl	0x14(%ebp), %edx
	movl	-0xc(%ebp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	line_length,  %ebx
	movl	$0, %edx
	divl	%ebx
	cmpl	%eax, %ecx
	je	.label_786
	subl	$0xc, %esp
	pushl	$label_787
	calll	put_indicator
	addl	$0x10, %esp
.label_786:
	movl	-0xc(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80512a5

	.globl prep_non_filename_text
	.type prep_non_filename_text, @function
prep_non_filename_text:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	label_797,  %eax
	testl	%eax, %eax
	je	.label_798
	subl	$0xc, %esp
	pushl	$label_796
	calll	put_indicator
	addl	$0x10, %esp
	jmp	.label_794
.label_798:
	subl	$0xc, %esp
	pushl	$color_indicator
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_795
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_97
	calll	put_indicator
	addl	$0x10, %esp
.label_794:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80512f9

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x2b0, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2ac(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	calll	set_normal_color
	movzbl	print_inode,  %eax
	testb	%al, %al
	je	.label_800
	subl	$4, %esp
	pushl	-0x2ac(%ebp)
	pushl	$0x28c
	leal	-0x298(%ebp), %eax
	pushl	%eax
	calll	format_inode
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	format,  %eax
	cmpl	$4, %eax
	je	.label_799
	movl	inode_number_width,  %eax
	jmp	.label_805
.label_799:
	movl	$0, %eax
.label_805:
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$label_672
	calll	printf
	addl	$0x10, %esp
.label_800:
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_807
	movl	-0x2ac(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_810
	movl	$label_652,  %edx
	jmp	.label_802
.label_810:
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	human_output_opts,  %esi
	movl	-0x2ac(%ebp), %ecx
	movl	0x48(%ecx), %ebx
	movl	0x44(%ecx), %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0x200
	pushl	%esi
	leal	-0x298(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	calll	human_readable
	addl	$0x20, %esp
	movl	%eax, %edx
.label_802:
	movl	format,  %eax
	cmpl	$4, %eax
	je	.label_803
	movl	block_size_width,  %eax
	jmp	.label_806
.label_803:
	movl	$0, %eax
.label_806:
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$label_672
	calll	printf
	addl	$0x10, %esp
.label_807:
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_809
	movl	-0x2ac(%ebp), %eax
	movl	0x74(%eax), %edx
	movl	format,  %eax
	cmpl	$4, %eax
	je	.label_811
	movl	scontext_width,  %eax
	jmp	.label_808
.label_811:
	movl	$0, %eax
.label_808:
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	$label_672
	calll	printf
	addl	$0x10, %esp
.label_809:
	pushl	0xc(%ebp)
	pushl	$0
	pushl	$0
	pushl	-0x2ac(%ebp)
	calll	print_name_with_quoting
	addl	$0x10, %esp
	movl	%eax, -0x29c(%ebp)
	movl	indicator_style,  %eax
	testl	%eax, %eax
	je	.label_804
	movl	-0x2ac(%ebp), %eax
	movl	0x6c(%eax), %ecx
	movl	-0x2ac(%ebp), %eax
	movl	0x1c(%eax), %edx
	movl	-0x2ac(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	print_type_indicator
	addl	$0x10, %esp
	movzbl	%al, %eax
	addl	%eax, -0x29c(%ebp)
.label_804:
	movl	-0x29c(%ebp), %eax
	movl	-0xc(%ebp), %ebx
	xorl	%gs:0x14, %ebx
	je	.label_801
	calll	__stack_chk_fail
.label_801:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x80514a8

	.globl get_type_indicator
	.type get_type_indicator, @function
get_type_indicator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x14, %esp
	movl	8(%ebp), %eax
	movb	%al, -0x14(%ebp)
	cmpb	$0, -0x14(%ebp)
	je	.label_826
	movl	0xc(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x8000, %eax
	sete	%al
	jmp	.label_831
.label_826:
	cmpl	$5, 0x10(%ebp)
	sete	%al
.label_831:
	testb	%al, %al
	je	.label_825
	cmpb	$0, -0x14(%ebp)
	je	.label_818
	movl	indicator_style,  %eax
	cmpl	$3, %eax
	jne	.label_818
	movl	0xc(%ebp), %eax
	andl	$0x49, %eax
	testl	%eax, %eax
	je	.label_818
	movb	$0x2a, -1(%ebp)
	jmp	.label_815
.label_818:
	movb	$0, -1(%ebp)
	jmp	.label_815
.label_825:
	cmpb	$0, -0x14(%ebp)
	je	.label_813
	movl	0xc(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	sete	%al
	jmp	.label_816
.label_813:
	cmpl	$3, 0x10(%ebp)
	je	.label_820
	cmpl	$9, 0x10(%ebp)
	jne	.label_822
.label_820:
	movl	$1, %eax
	jmp	.label_828
.label_822:
	movl	$0, %eax
.label_828:
	andl	$1, %eax
.label_816:
	testb	%al, %al
	je	.label_830
	movb	$0x2f, -1(%ebp)
	jmp	.label_815
.label_830:
	movl	indicator_style,  %eax
	cmpl	$1, %eax
	jne	.label_817
	movb	$0, -1(%ebp)
	jmp	.label_815
.label_817:
	cmpb	$0, -0x14(%ebp)
	je	.label_827
	movl	0xc(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	sete	%al
	jmp	.label_819
.label_827:
	cmpl	$6, 0x10(%ebp)
	sete	%al
.label_819:
	testb	%al, %al
	je	.label_829
	movb	$0x40, -1(%ebp)
	jmp	.label_815
.label_829:
	cmpb	$0, -0x14(%ebp)
	je	.label_832
	movl	0xc(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x1000, %eax
	sete	%al
	jmp	.label_812
.label_832:
	cmpl	$1, 0x10(%ebp)
	sete	%al
.label_812:
	testb	%al, %al
	je	.label_823
	movb	$0x7c, -1(%ebp)
	jmp	.label_815
.label_823:
	cmpb	$0, -0x14(%ebp)
	je	.label_824
	movl	0xc(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xc000, %eax
	sete	%al
	jmp	.label_821
.label_824:
	cmpl	$7, 0x10(%ebp)
	sete	%al
.label_821:
	testb	%al, %al
	je	.label_814
	movb	$0x3d, -1(%ebp)
	jmp	.label_815
.label_814:
	movb	$0, -1(%ebp)
.label_815:
	movzbl	-1(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80515d8

	.globl print_type_indicator
	.type print_type_indicator, @function
print_type_indicator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movb	%al, -0x1c(%ebp)
	movzbl	-0x1c(%ebp), %eax
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	%eax
	calll	get_type_indicator
	addl	$0xc, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -9(%ebp)
	je	.label_833
	movsbl	-9(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	dired_pos,  %eax
	addl	$1, %eax
	movl	%eax, dired_pos
.label_833:
	cmpb	$0, -9(%ebp)
	setne	%al
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051626

	.globl print_color_indicator
	.type print_color_indicator, @function
print_color_indicator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 8(%ebp)
	je	.label_834
	subl	$0xc, %esp
	pushl	$4
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_835
	calll	restore_default_color
.label_835:
	subl	$0xc, %esp
	pushl	$color_indicator
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	put_indicator
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_97
	calll	put_indicator
	addl	$0x10, %esp
.label_834:
	cmpl	$0, 8(%ebp)
	setne	%al
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805167f

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x34, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	cmpb	$0, -0x2c(%ebp)
	je	.label_868
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	8(%ebp), %eax
	movl	0x70(%eax), %eax
	movl	%eax, -0x18(%ebp)
	movl	8(%ebp), %eax
	movzbl	0x79(%eax), %eax
	testb	%al, %al
	je	.label_843
	movl	$0, %eax
	jmp	.label_848
.label_843:
	movl	$0xffffffff, %eax
.label_848:
	movl	%eax, -0x14(%ebp)
	jmp	.label_853
.label_868:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movzbl	color_symlink_as_referent,  %eax
	testb	%al, %al
	je	.label_855
	movl	8(%ebp), %eax
	movzbl	0x79(%eax), %eax
	testb	%al, %al
	je	.label_855
	movl	8(%ebp), %eax
	movl	0x70(%eax), %eax
	jmp	.label_862
.label_855:
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
.label_862:
	movl	%eax, -0x18(%ebp)
	movl	8(%ebp), %eax
	movzbl	0x79(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -0x14(%ebp)
.label_853:
	cmpl	$-1, -0x14(%ebp)
	jne	.label_839
	subl	$0xc, %esp
	pushl	$0xc
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_839
	movl	$0xc, -0x24(%ebp)
	jmp	.label_836
.label_839:
	movl	8(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_846
	movl	8(%ebp), %eax
	movl	0x6c(%eax), %eax
	movl	filetype_indicator.9329(, %eax, 4),  %eax
	movl	%eax, -0x24(%ebp)
	jmp	.label_836
.label_846:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x8000, %eax
	jne	.label_856
	movl	$5, -0x24(%ebp)
	movl	-0x18(%ebp), %eax
	andl	$0x800, %eax
	testl	%eax, %eax
	je	.label_861
	subl	$0xc, %esp
	pushl	$0x10
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_861
	movl	$0x10, -0x24(%ebp)
	jmp	.label_836
.label_861:
	movl	-0x18(%ebp), %eax
	andl	$0x400, %eax
	testl	%eax, %eax
	je	.label_837
	subl	$0xc, %esp
	pushl	$0x11
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_837
	movl	$0x11, -0x24(%ebp)
	jmp	.label_836
.label_837:
	subl	$0xc, %esp
	pushl	$0x15
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_852
	movl	8(%ebp), %eax
	movzbl	0x80(%eax), %eax
	testb	%al, %al
	je	.label_852
	movl	$0x15, -0x24(%ebp)
	jmp	.label_836
.label_852:
	movl	-0x18(%ebp), %eax
	andl	$0x49, %eax
	testl	%eax, %eax
	je	.label_838
	subl	$0xc, %esp
	pushl	$0xe
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_838
	movl	$0xe, -0x24(%ebp)
	jmp	.label_836
.label_838:
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	cmpl	$1, %eax
	jbe	.label_836
	subl	$0xc, %esp
	pushl	$0x16
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_836
	movl	$0x16, -0x24(%ebp)
	jmp	.label_836
.label_856:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	jne	.label_849
	movl	$6, -0x24(%ebp)
	movl	-0x18(%ebp), %eax
	andl	$0x200, %eax
	testl	%eax, %eax
	je	.label_857
	movl	-0x18(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.label_857
	subl	$0xc, %esp
	pushl	$0x14
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_857
	movl	$0x14, -0x24(%ebp)
	jmp	.label_836
.label_857:
	movl	-0x18(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.label_859
	subl	$0xc, %esp
	pushl	$0x13
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_859
	movl	$0x13, -0x24(%ebp)
	jmp	.label_836
.label_859:
	movl	-0x18(%ebp), %eax
	andl	$0x200, %eax
	testl	%eax, %eax
	je	.label_836
	subl	$0xc, %esp
	pushl	$0x12
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_836
	movl	$0x12, -0x24(%ebp)
	jmp	.label_836
.label_849:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	jne	.label_860
	movl	$7, -0x24(%ebp)
	jmp	.label_836
.label_860:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x1000, %eax
	jne	.label_864
	movl	$8, -0x24(%ebp)
	jmp	.label_836
.label_864:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xc000, %eax
	jne	.label_840
	movl	$9, -0x24(%ebp)
	jmp	.label_836
.label_840:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x6000, %eax
	jne	.label_844
	movl	$0xa, -0x24(%ebp)
	jmp	.label_836
.label_844:
	movl	-0x18(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x2000, %eax
	jne	.label_850
	movl	$0xb, -0x24(%ebp)
	jmp	.label_836
.label_850:
	movl	$0xd, -0x24(%ebp)
.label_836:
	movl	$0, -0x20(%ebp)
	cmpl	$5, -0x24(%ebp)
	jne	.label_845
	subl	$0xc, %esp
	pushl	-0x1c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	addl	%eax, -0x1c(%ebp)
	movl	color_ext_list,  %eax
	movl	%eax, -0x20(%ebp)
	jmp	.label_863
.label_854:
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x10(%ebp), %eax
	ja	.label_851
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	-0x20(%ebp), %ecx
	movl	0(%ecx), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	movl	-0x1c(%ebp), %ecx
	addl	%ebx, %ecx
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	%ecx
	calll	c_strncasecmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_842
.label_851:
	movl	-0x20(%ebp), %eax
	movl	0x10(%eax), %eax
	movl	%eax, -0x20(%ebp)
.label_863:
	cmpl	$0, -0x20(%ebp)
	jne	.label_854
	jmp	.label_845
.label_842:
	nop	
.label_845:
	cmpl	$7, -0x24(%ebp)
	jne	.label_858
	cmpl	$0, -0x14(%ebp)
	jne	.label_858
	movzbl	color_symlink_as_referent,  %eax
	testb	%al, %al
	jne	.label_865
	subl	$0xc, %esp
	pushl	$0xd
	calll	is_colored
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_858
.label_865:
	movl	$0xd, -0x24(%ebp)
.label_858:
	cmpl	$0, -0x20(%ebp)
	je	.label_866
	movl	-0x20(%ebp), %eax
	addl	$8, %eax
	jmp	.label_867
.label_866:
	movl	-0x24(%ebp), %eax
	shll	$3, %eax
	addl	$color_indicator,  %eax
.label_867:
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.label_841
	movl	-0xc(%ebp), %eax
	jmp	.label_847
.label_841:
	movl	$0, %eax
.label_847:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051a2a

	.globl put_indicator
	.type put_indicator, @function
put_indicator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movzbl	used_color,  %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_869
	movb	$1, used_color
	subl	$0xc, %esp
	pushl	$1
	calll	tcgetpgrp
	addl	$0x10, %esp
	testl	%eax, %eax
	js	.label_870
	calll	signal_init
.label_870:
	calll	prep_non_filename_text
.label_869:
	movl	stdout,  %ecx
	movl	8(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	pushl	%ecx
	pushl	$1
	pushl	%edx
	pushl	%eax
	calll	fwrite_unlocked
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051a81

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x2b0, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2ac(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x29c(%ebp)
	movzbl	print_inode,  %eax
	testb	%al, %al
	je	.label_871
	movl	format,  %eax
	cmpl	$4, %eax
	jne	.label_882
	movl	-0x2ac(%ebp), %eax
	movl	0x68(%eax), %edx
	movl	0x64(%eax), %eax
	subl	$4, %esp
	leal	-0x298(%ebp), %ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	umaxtostr
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	jmp	.label_878
.label_882:
	movl	inode_number_width,  %eax
	addl	$1, %eax
.label_878:
	addl	%eax, -0x29c(%ebp)
.label_871:
	movzbl	print_block_size,  %eax
	testb	%al, %al
	je	.label_883
	movl	format,  %eax
	cmpl	$4, %eax
	jne	.label_873
	movl	-0x2ac(%ebp), %eax
	movzbl	0x78(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_875
	movl	$label_652,  %eax
	jmp	.label_876
.label_875:
	movl	output_block_size,  %eax
	movl	label_215,  %edx
	movl	human_output_opts,  %esi
	movl	-0x2ac(%ebp), %ecx
	movl	0x48(%ecx), %ebx
	movl	0x44(%ecx), %ecx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$0x200
	pushl	%esi
	leal	-0x298(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	calll	human_readable
	addl	$0x20, %esp
.label_876:
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	jmp	.label_880
.label_873:
	movl	block_size_width,  %eax
	addl	$1, %eax
.label_880:
	addl	%eax, -0x29c(%ebp)
.label_883:
	movzbl	print_scontext,  %eax
	testb	%al, %al
	je	.label_872
	movl	format,  %eax
	cmpl	$4, %eax
	jne	.label_874
	movl	-0x2ac(%ebp), %eax
	movl	0x74(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	jmp	.label_879
.label_874:
	movl	scontext_width,  %eax
	addl	$1, %eax
.label_879:
	addl	%eax, -0x29c(%ebp)
.label_872:
	movl	-0x2ac(%ebp), %eax
	movl	0x84(%eax), %ecx
	movl	filename_quoting_options,  %edx
	movl	-0x2ac(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	quote_name_width
	addl	$0x10, %esp
	addl	%eax, -0x29c(%ebp)
	movl	indicator_style,  %eax
	testl	%eax, %eax
	je	.label_877
	movl	-0x2ac(%ebp), %eax
	movl	0x6c(%eax), %ecx
	movl	-0x2ac(%ebp), %eax
	movl	0x1c(%eax), %edx
	movl	-0x2ac(%ebp), %eax
	movzbl	0x78(%eax), %eax
	movzbl	%al, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	get_type_indicator
	addl	$0x10, %esp
	movb	%al, -0x29d(%ebp)
	cmpb	$0, -0x29d(%ebp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -0x29c(%ebp)
.label_877:
	movl	-0x29c(%ebp), %eax
	movl	-0xc(%ebp), %ebx
	xorl	%gs:0x14, %ebx
	je	.label_881
	calll	__stack_chk_fail
.label_881:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051c5a

	.globl print_many_per_line
	.type print_many_per_line, @function
print_many_per_line:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	subl	$0xc, %esp
	pushl	$1
	calll	calculate_columns
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	subl	$0xc, %eax
	addl	%ecx, %eax
	movl	%eax, -0x1c(%ebp)
	movl	cwd_n_used,  %eax
	movl	$0, %edx
	divl	-0x20(%ebp)
	movl	%eax, %ecx
	movl	cwd_n_used,  %eax
	movl	$0, %edx
	divl	-0x20(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ecx, %eax
	movl	%eax, -0x18(%ebp)
	movl	$0, -0x30(%ebp)
	jmp	.label_885
.label_886:
	movl	$0, -0x2c(%ebp)
	movl	-0x30(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	$0, -0x24(%ebp)
.label_884:
	movl	sorted_file,  %eax
	movl	-0x28(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	length_of_file_name_and_frills
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	8(%eax), %ecx
	movl	-0x2c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x2c(%ebp)
	shll	$2, %eax
	addl	%ecx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$8, %esp
	pushl	-0x24(%ebp)
	pushl	-0x14(%ebp)
	calll	print_file_name_and_frills
	addl	$0x10, %esp
	movl	-0x18(%ebp), %eax
	addl	%eax, -0x28(%ebp)
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x28(%ebp)
	jae	.label_887
	movl	-0x24(%ebp), %edx
	movl	-0xc(%ebp), %eax
	addl	%eax, %edx
	movl	-0x24(%ebp), %ecx
	movl	-0x10(%ebp), %eax
	addl	%ecx, %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	indent
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	addl	%eax, -0x24(%ebp)
	jmp	.label_884
.label_887:
	nop	
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	addl	$1, -0x30(%ebp)
.label_885:
	movl	-0x30(%ebp), %eax
	cmpl	-0x18(%ebp), %eax
	jb	.label_886
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051d7b

	.globl print_horizontal
	.type print_horizontal, @function
print_horizontal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	$0, -0x24(%ebp)
	subl	$0xc, %esp
	pushl	$0
	calll	calculate_columns
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	movl	column_info,  %ecx
	movl	-0x18(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	subl	$0xc, %eax
	addl	%ecx, %eax
	movl	%eax, -0x14(%ebp)
	movl	sorted_file,  %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	length_of_file_name_and_frills
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	-0x14(%ebp), %eax
	movl	8(%eax), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	subl	$8, %esp
	pushl	$0
	pushl	-0x10(%ebp)
	calll	print_file_name_and_frills
	addl	$0x10, %esp
	movl	$1, -0x28(%ebp)
	jmp	.label_888
.label_889:
	movl	-0x28(%ebp), %eax
	movl	$0, %edx
	divl	-0x18(%ebp)
	movl	%edx, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_891
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	$0, -0x24(%ebp)
	jmp	.label_890
.label_891:
	movl	-0x24(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%eax, %edx
	movl	-0x24(%ebp), %ecx
	movl	-0x20(%ebp), %eax
	addl	%ecx, %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	indent
	addl	$0x10, %esp
	movl	-0x1c(%ebp), %eax
	addl	%eax, -0x24(%ebp)
.label_890:
	movl	sorted_file,  %eax
	movl	-0x28(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	subl	$8, %esp
	pushl	-0x24(%ebp)
	pushl	-0x10(%ebp)
	calll	print_file_name_and_frills
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	length_of_file_name_and_frills
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	-0x14(%ebp), %eax
	movl	8(%eax), %eax
	movl	-0xc(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	addl	$1, -0x28(%ebp)
.label_888:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x28(%ebp)
	jb	.label_889
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051eaa

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	movl	$0, -0x14(%ebp)
	movl	$0, -0x18(%ebp)
	jmp	.label_894
.label_899:
	movl	sorted_file,  %eax
	movl	-0x18(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	line_length,  %eax
	testl	%eax, %eax
	je	.label_893
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	length_of_file_name_and_frills
	addl	$0x10, %esp
	jmp	.label_897
.label_893:
	movl	$0, %eax
.label_897:
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0x18(%ebp)
	je	.label_898
	movl	line_length,  %eax
	testl	%eax, %eax
	je	.label_892
	movl	-0x14(%ebp), %edx
	movl	-0xc(%ebp), %eax
	addl	%edx, %eax
	leal	2(%eax), %edx
	movl	line_length,  %eax
	cmpl	%eax, %edx
	jae	.label_895
	movl	$0xfffffffd, %eax
	subl	-0xc(%ebp), %eax
	cmpl	-0x14(%ebp), %eax
	jb	.label_895
.label_892:
	addl	$2, -0x14(%ebp)
	movb	$0x20, -0x19(%ebp)
	jmp	.label_896
.label_895:
	movl	$0, -0x14(%ebp)
	movb	$0xa, -0x19(%ebp)
.label_896:
	movsbl	-0x2c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	putchar_unlocked
	addl	$0x10, %esp
	movsbl	-0x19(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	putchar_unlocked
	addl	$0x10, %esp
.label_898:
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	-0x10(%ebp)
	calll	print_file_name_and_frills
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	addl	%eax, -0x14(%ebp)
	addl	$1, -0x18(%ebp)
.label_894:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x18(%ebp)
	jb	.label_899
	subl	$0xc, %esp
	pushl	$0xa
	calll	putchar_unlocked
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8051f9a

	.globl indent
	.type indent, @function
indent:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	jmp	.label_902
.label_901:
	movl	tabsize,  %eax
	testl	%eax, %eax
	je	.label_900
	movl	tabsize,  %ebx
	movl	0xc(%ebp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	tabsize,  %ebx
	movl	$0, %edx
	divl	%ebx
	cmpl	%eax, %ecx
	jbe	.label_900
	subl	$0xc, %esp
	pushl	$9
	calll	putchar_unlocked
	addl	$0x10, %esp
	movl	tabsize,  %ecx
	movl	tabsize,  %ebx
	movl	8(%ebp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, 8(%ebp)
	jmp	.label_902
.label_900:
	subl	$0xc, %esp
	pushl	$0x20
	calll	putchar_unlocked
	addl	$0x10, %esp
	addl	$1, 8(%ebp)
.label_902:
	movl	8(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jb	.label_901
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052022

	.globl attach
	.type attach, @function
attach:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_904
	movl	0xc(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_903
	jmp	.label_904
.label_906:
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movl	-4(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, -4(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
.label_904:
	movl	-4(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_906
	movl	-4(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jbe	.label_903
	movl	-4(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_903
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movb	$0x2f, 0(%eax)
	jmp	.label_903
.label_905:
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movl	0x10(%ebp), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 0x10(%ebp)
	movzbl	0(%edx), %edx
	movb	%dl, 0(%eax)
.label_903:
	movl	0x10(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_905
	movl	8(%ebp), %eax
	movb	$0, 0(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80520b5

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	cwd_n_used,  %edx
	movl	max_idx,  %eax
	cmpl	%eax, %edx
	cmovbel	%edx, %eax
	movl	%eax, -0x18(%ebp)
	movl	column_info_alloc.9410,  %eax
	cmpl	-0x18(%ebp), %eax
	jae	.label_911
	movl	max_idx,  %eax
	shrl	$1, %eax
	cmpl	-0x18(%ebp), %eax
	jbe	.label_916
	movl	column_info,  %eax
	subl	$4, %esp
	pushl	$0x18
	pushl	-0x18(%ebp)
	pushl	%eax
	calll	xnrealloc
	addl	$0x10, %esp
	movl	%eax, column_info
	movl	-0x18(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, -0x24(%ebp)
	jmp	.label_915
.label_916:
	movl	max_idx,  %edx
	movl	column_info,  %eax
	subl	$4, %esp
	pushl	$0xc
	pushl	%edx
	pushl	%eax
	calll	xnrealloc
	addl	$0x10, %esp
	movl	%eax, column_info
	movl	max_idx,  %eax
	movl	%eax, -0x24(%ebp)
.label_915:
	movl	column_info_alloc.9410,  %eax
	movl	-0x24(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x14(%ebp)
	movl	column_info_alloc.9410,  %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	imull	-0x14(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	cmpl	-0x24(%ebp), %eax
	jb	.label_910
	movl	-0xc(%ebp), %eax
	movl	$0, %edx
	divl	-0x14(%ebp)
	cmpl	-0x10(%ebp), %eax
	je	.label_907
.label_910:
	calll	xalloc_die
.label_907:
	movl	-0xc(%ebp), %eax
	shrl	$1, %eax
	subl	$8, %esp
	pushl	$4
	pushl	%eax
	calll	xnmalloc
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	column_info_alloc.9410,  %eax
	movl	%eax, -0x28(%ebp)
	jmp	.label_914
.label_909:
	movl	column_info,  %ecx
	movl	-0x28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	leal	0(%ecx, %eax), %edx
	movl	-0x20(%ebp), %eax
	movl	%eax, 8(%edx)
	movl	-0x28(%ebp), %eax
	addl	$1, %eax
	shll	$2, %eax
	addl	%eax, -0x20(%ebp)
	addl	$1, -0x28(%ebp)
.label_914:
	movl	-0x28(%ebp), %eax
	cmpl	-0x24(%ebp), %eax
	jb	.label_909
	movl	-0x24(%ebp), %eax
	movl	%eax, column_info_alloc.9410
.label_911:
	movl	$0, -0x28(%ebp)
	jmp	.label_912
.label_913:
	movl	column_info,  %ecx
	movl	-0x28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	movb	$1, 0(%eax)
	movl	column_info,  %ecx
	movl	-0x28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%eax, %ecx
	movl	-0x28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, 4(%ecx)
	movl	$0, -0x1c(%ebp)
	jmp	.label_917
.label_908:
	movl	column_info,  %ecx
	movl	-0x28(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	movl	8(%eax), %eax
	movl	-0x1c(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	$3, 0(%eax)
	addl	$1, -0x1c(%ebp)
.label_917:
	movl	-0x1c(%ebp), %eax
	cmpl	-0x28(%ebp), %eax
	jbe	.label_908
	addl	$1, -0x28(%ebp)
.label_912:
	movl	-0x28(%ebp), %eax
	cmpl	-0x18(%ebp), %eax
	jb	.label_913
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052262

	.globl calculate_columns
	.type calculate_columns, @function
calculate_columns:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x30, %esp
	movl	8(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	movl	cwd_n_used,  %edx
	movl	max_idx,  %eax
	cmpl	%eax, %edx
	cmovbel	%edx, %eax
	movl	%eax, -0x1c(%ebp)
	calll	init_column_info
	movl	$0, -0x28(%ebp)
	jmp	.label_921
.label_925:
	movl	sorted_file,  %eax
	movl	-0x28(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	length_of_file_name_and_frills
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	$0, -0x20(%ebp)
	jmp	.label_926
.label_924:
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_919
	cmpb	$0, -0x2c(%ebp)
	je	.label_922
	movl	cwd_n_used,  %edx
	movl	-0x20(%ebp), %eax
	addl	%edx, %eax
	movl	-0x20(%ebp), %edx
	leal	1(%edx), %esi
	movl	$0, %edx
	divl	%esi
	movl	%eax, %esi
	movl	-0x28(%ebp), %eax
	movl	$0, %edx
	divl	%esi
	jmp	.label_927
.label_922:
	movl	-0x20(%ebp), %eax
	leal	1(%eax), %ecx
	movl	-0x28(%ebp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
.label_927:
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	cmpl	-0x20(%ebp), %eax
	jne	.label_918
	movl	$0, %edx
	jmp	.label_928
.label_918:
	movl	$2, %edx
.label_928:
	movl	-0x14(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	movl	8(%eax), %eax
	movl	-0x10(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	cmpl	-0xc(%ebp), %eax
	jae	.label_919
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%eax, %ecx
	movl	column_info,  %ebx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ebx, %eax
	movl	4(%eax), %ebx
	movl	column_info,  %esi
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%esi, %eax
	movl	8(%eax), %eax
	movl	-0x10(%ebp), %edx
	shll	$2, %edx
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	-0xc(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%ebx, %eax
	movl	%eax, 4(%ecx)
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ecx, %eax
	movl	8(%eax), %eax
	movl	-0x10(%ebp), %edx
	shll	$2, %edx
	addl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	column_info,  %ecx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%eax, %ecx
	movl	column_info,  %ebx
	movl	-0x20(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	addl	%ebx, %eax
	movl	4(%eax), %edx
	movl	line_length,  %eax
	cmpl	%eax, %edx
	setb	%al
	movb	%al, 0(%ecx)
.label_919:
	addl	$1, -0x20(%ebp)
.label_926:
	movl	-0x20(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jb	.label_924
	addl	$1, -0x28(%ebp)
.label_921:
	movl	cwd_n_used,  %eax
	cmpl	%eax, -0x28(%ebp)
	jb	.label_925
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	jmp	.label_930
.label_923:
	movl	column_info,  %ecx
	movl	-0x24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shll	$2, %eax
	subl	$0xc, %eax
	addl	%ecx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_920
	subl	$1, -0x24(%ebp)
.label_930:
	cmpl	$1, -0x24(%ebp)
	ja	.label_923
	jmp	.label_929
.label_920:
	nop	
.label_929:
	movl	-0x24(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805247b

	.globl usage
	.type usage, @function
usage:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	cmpl	$0, 8(%ebp)
	je	.label_959
	movl	program_name,  %ebx
	subl	$0xc, %esp
	pushl	$label_934
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	stderr,  %eax
	subl	$4, %esp
	pushl	%ebx
	pushl	%edx
	pushl	%eax
	calll	fprintf
	addl	$0x10, %esp
	jmp	.label_941
.label_959:
	movl	program_name,  %ebx
	subl	$0xc, %esp
	pushl	$label_946
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_956
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	calll	emit_mandatory_arg_note
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_933
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_955
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_950
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_960
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_935
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_943
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_954
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_964
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_938
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_947
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_957
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_931
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_942
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_951
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_961
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_936
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_944
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_963
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_965
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_939
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_948
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_958
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_932
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_940
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	calll	emit_size_note
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_953
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_962
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_937
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	ls_mode,  %eax
	cmpl	$1, %eax
	je	.label_945
	movl	ls_mode,  %eax
	cmpl	$2, %eax
	jne	.label_949
	movl	$label_175,  %eax
	jmp	.label_952
.label_949:
	movl	$label_179,  %eax
	jmp	.label_952
.label_945:
	movl	$label_194,  %eax
.label_952:
	subl	$0xc, %esp
	pushl	%eax
	calll	emit_ancillary_info
	addl	$0x10, %esp
.label_941:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	exit
	.section	.text
	.align	32
	#Procedure 0x80528f7

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	$0x400, -0x24(%ebp)
	movl	$0x2000, -0x20(%ebp)
	movl	-0x24(%ebp), %eax
	cmpl	-0x20(%ebp), %eax
	jae	.label_975
	movl	-0x24(%ebp), %eax
	addl	$1, %eax
	jmp	.label_969
.label_975:
	movl	-0x20(%ebp), %eax
.label_969:
	movl	%eax, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jae	.label_970
	movl	0xc(%ebp), %eax
	addl	$1, %eax
	jmp	.label_973
.label_970:
	movl	-0x1c(%ebp), %eax
.label_973:
	movl	%eax, -0x28(%ebp)
.label_971:
	subl	$0xc, %esp
	pushl	-0x28(%ebp)
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	cmpl	$0, -0x18(%ebp)
	jne	.label_967
	movl	$0, %eax
	jmp	.label_968
.label_967:
	subl	$4, %esp
	pushl	-0x28(%ebp)
	pushl	-0x18(%ebp)
	pushl	8(%ebp)
	calll	readlink
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x14(%ebp)
	jns	.label_966
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x22, %eax
	je	.label_966
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	free
	addl	$0x10, %esp
	calll	__errno_location
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	$0, %eax
	jmp	.label_968
.label_966:
	movl	-0x10(%ebp), %eax
	cmpl	-0x28(%ebp), %eax
	jae	.label_974
	movl	-0x18(%ebp), %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	movb	$0, 0(%eax)
	movl	-0x18(%ebp), %eax
	jmp	.label_968
.label_974:
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	free
	addl	$0x10, %esp
	cmpl	$0x3fffffff, -0x28(%ebp)
	ja	.label_976
	shll	$1, -0x28(%ebp)
	jmp	.label_971
.label_976:
	cmpl	$0x7ffffffe, -0x28(%ebp)
	ja	.label_972
	movl	$0x7fffffff, -0x28(%ebp)
	jmp	.label_971
.label_972:
	calll	__errno_location
	movl	$0xc, 0(%eax)
	movl	$0, %eax
.label_968:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052a10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$1
	calll	usage
	.section	.text
	.align	32
	#Procedure 0x8052a26

	.globl argmatch
	.type argmatch, @function
argmatch:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0xffffffff, -0x10(%ebp)
	movb	$0, -0x15(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	$0, -0x14(%ebp)
	jmp	.label_977
.label_981:
	movl	-0x14(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	-0xc(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_979
	movl	-0x14(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	cmpl	-0xc(%ebp), %eax
	jne	.label_983
	movl	-0x14(%ebp), %eax
	jmp	.label_980
.label_983:
	cmpl	$-1, -0x10(%ebp)
	jne	.label_984
	movl	-0x14(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_979
.label_984:
	cmpl	$0, 0x10(%ebp)
	je	.label_982
	movl	0x14(%ebp), %eax
	imull	-0x14(%ebp), %eax
	movl	%eax, %edx
	movl	0x10(%ebp), %eax
	addl	%eax, %edx
	movl	-0x10(%ebp), %eax
	imull	0x14(%ebp), %eax
	movl	%eax, %ecx
	movl	0x10(%ebp), %eax
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	0x14(%ebp)
	pushl	%edx
	pushl	%eax
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_979
.label_982:
	movb	$1, -0x15(%ebp)
.label_979:
	addl	$1, -0x14(%ebp)
.label_977:
	movl	-0x14(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_981
	cmpb	$0, -0x15(%ebp)
	je	.label_978
	movl	$0xfffffffe, %eax
	jmp	.label_980
.label_978:
	movl	-0x10(%ebp), %eax
.label_980:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052b19

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	cmpl	$-1, 0x10(%ebp)
	jne	.label_988
	subl	$0xc, %esp
	pushl	$label_986
	calll	gettext
	addl	$0x10, %esp
	jmp	.label_985
.label_988:
	subl	$0xc, %esp
	pushl	$label_987
	calll	gettext
	addl	$0x10, %esp
.label_985:
	movl	%eax, -0xc(%ebp)
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	$1
	calll	quote_n
	addl	$0x10, %esp
	movl	%eax, %ebx
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	$8
	pushl	$0
	calll	quotearg_n_style
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%ebx
	pushl	%eax
	pushl	-0xc(%ebp)
	pushl	$0
	pushl	$0
	calll	error
	addl	$0x20, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052b89

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	$0, -0xc(%ebp)
	movl	stderr,  %ebx
	subl	$0xc, %esp
	pushl	$label_992
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	movl	$0, -0x10(%ebp)
	jmp	.label_995
.label_994:
	cmpl	$0, -0x10(%ebp)
	je	.label_991
	movl	0x10(%ebp), %eax
	imull	-0x10(%ebp), %eax
	movl	%eax, %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	%eax
	pushl	-0xc(%ebp)
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_993
.label_991:
	movl	-0x10(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	stderr,  %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$label_996
	pushl	%eax
	calll	fprintf
	addl	$0x10, %esp
	movl	0x10(%ebp), %eax
	imull	-0x10(%ebp), %eax
	movl	%eax, %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	jmp	.label_990
.label_993:
	movl	-0x10(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	stderr,  %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$label_989
	pushl	%eax
	calll	fprintf
	addl	$0x10, %esp
.label_990:
	addl	$1, -0x10(%ebp)
.label_995:
	movl	-0x10(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_994
	movl	stderr,  %eax
	subl	$8, %esp
	pushl	%eax
	pushl	$0xa
	calll	putc_unlocked
	addl	$0x10, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052ca5

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	calll	argmatch
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	js	.label_998
	movl	-0xc(%ebp), %eax
	jmp	.label_997
.label_998:
	subl	$4, %esp
	pushl	-0xc(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	argmatch_invalid
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	calll	argmatch_valid
	addl	$0x10, %esp
	movl	0x1c(%ebp), %eax
	calll	*%eax
	movl	$0xffffffff, %eax
.label_997:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052d01
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	jmp	.label_999
.label_1001:
	movl	0x14(%ebp), %eax
	imull	-0xc(%ebp), %eax
	movl	%eax, %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	0x14(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1002
	movl	-0xc(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	jmp	.label_1000
.label_1002:
	addl	$1, -0xc(%ebp)
.label_999:
	movl	-0xc(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1001
	movl	$0, %eax
.label_1000:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052d67

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	$0x5a, %eax
	jg	.label_1006
	cmpl	$0x41, %eax
	jge	.label_1004
	subl	$0x30, %eax
	cmpl	$9, %eax
	ja	.label_1003
	jmp	.label_1004
.label_1006:
	subl	$0x61, %eax
	cmpl	$0x19, %eax
	ja	.label_1003
.label_1004:
	movl	$1, %eax
	jmp	.label_1005
.label_1003:
	movl	$0, %eax
.label_1005:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052d97

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	$0x41, %eax
	jl	.label_1008
	cmpl	$0x5a, %eax
	jle	.label_1007
	subl	$0x61, %eax
	cmpl	$0x19, %eax
	ja	.label_1008
.label_1007:
	movl	$1, %eax
	jmp	.label_1009
.label_1008:
	movl	$0, %eax
.label_1009:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052dbd
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	addl	$0, %eax
	cmpl	$0x7f, %eax
	ja	.label_1011
	movl	$1, %eax
	jmp	.label_1010
.label_1011:
	movl	$0, %eax
.label_1010:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052dd9
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0x20, 8(%ebp)
	je	.label_1013
	cmpl	$9, 8(%ebp)
	jne	.label_1014
.label_1013:
	movl	$1, %eax
	jmp	.label_1012
.label_1014:
	movl	$0, %eax
.label_1012:
	andl	$1, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052df9
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	js	.label_1016
	cmpl	$0x1f, %eax
	jle	.label_1015
	cmpl	$0x7f, %eax
	jne	.label_1016
.label_1015:
	movl	$1, %eax
	jmp	.label_1017
.label_1016:
	movl	$0, %eax
.label_1017:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052e1b

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x30, %eax
	cmpl	$9, %eax
	ja	.label_1019
	movl	$1, %eax
	jmp	.label_1018
.label_1019:
	movl	$0, %eax
.label_1018:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052e37
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x21, %eax
	cmpl	$0x5d, %eax
	ja	.label_1021
	movl	$1, %eax
	jmp	.label_1020
.label_1021:
	movl	$0, %eax
.label_1020:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052e53
	.globl c_islower
	.type c_islower, @function
c_islower:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x61, %eax
	cmpl	$0x19, %eax
	ja	.label_1023
	movl	$1, %eax
	jmp	.label_1022
.label_1023:
	movl	$0, %eax
.label_1022:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052e6f
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x20, %eax
	cmpl	$0x5e, %eax
	ja	.label_1025
	movl	$1, %eax
	jmp	.label_1024
.label_1025:
	movl	$0, %eax
.label_1024:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052e8b
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	$0x40, %eax
	jg	.label_1029
	cmpl	$0x3a, %eax
	jge	.label_1027
	subl	$0x21, %eax
	cmpl	$0xe, %eax
	ja	.label_1026
	jmp	.label_1027
.label_1029:
	cmpl	$0x5b, %eax
	jl	.label_1026
	cmpl	$0x60, %eax
	jle	.label_1027
	subl	$0x7b, %eax
	cmpl	$3, %eax
	ja	.label_1026
.label_1027:
	movl	$1, %eax
	jmp	.label_1028
.label_1026:
	movl	$0, %eax
.label_1028:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052ec5
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	$9, %eax
	jl	.label_1031
	cmpl	$0xd, %eax
	jle	.label_1030
	cmpl	$0x20, %eax
	jne	.label_1031
.label_1030:
	movl	$1, %eax
	jmp	.label_1032
.label_1031:
	movl	$0, %eax
.label_1032:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052ee8
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x41, %eax
	cmpl	$0x19, %eax
	ja	.label_1033
	movl	$1, %eax
	jmp	.label_1034
.label_1033:
	movl	$0, %eax
.label_1034:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052f04
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x30, %eax
	cmpl	$0x36, %eax
	ja	.label_1037
	movl	label_1035(, %eax, 4),  %eax
	jmpl	*%eax
.label_2651:
	movl	$1, %eax
	jmp	.label_1036
.label_1037:
	movl	$0, %eax
.label_1036:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052f29

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x41, %eax
	cmpl	$0x19, %eax
	ja	.label_1038
	movl	8(%ebp), %eax
	addl	$0x20, %eax
	jmp	.label_1039
.label_1038:
	movl	8(%ebp), %eax
.label_1039:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052f44
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	subl	$0x61, %eax
	cmpl	$0x19, %eax
	ja	.label_1040
	movl	8(%ebp), %eax
	subl	$0x20, %eax
	jmp	.label_1041
.label_1040:
	movl	8(%ebp), %eax
.label_1041:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052f5f

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	8(%ebp), %esi
	movl	0xc(%ebp), %ebx
	cmpl	%ebx, %esi
	je	.label_1045
	cmpl	$0, 0x10(%ebp)
	jne	.label_1042
.label_1045:
	movl	$0, %eax
	jmp	.label_1044
.label_1042:
	movzbl	0(%esi), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_tolower
	addl	$0x10, %esp
	movb	%al, -0xa(%ebp)
	movzbl	0(%ebx), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_tolower
	addl	$0x10, %esp
	movb	%al, -9(%ebp)
	subl	$1, 0x10(%ebp)
	cmpl	$0, 0x10(%ebp)
	je	.label_1043
	cmpb	$0, -0xa(%ebp)
	je	.label_1043
	addl	$1, %esi
	addl	$1, %ebx
	movzbl	-0xa(%ebp), %eax
	cmpb	-9(%ebp), %al
	je	.label_1042
.label_1043:
	movzbl	-0xa(%ebp), %edx
	movzbl	-9(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.label_1044:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8052fda

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1047
	movl	$7, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	$triple_free
	pushl	$triple_compare_ino_str
	pushl	$triple_hash
	pushl	$0
	pushl	-0xc(%ebp)
	calll	hash_initialize
	addl	$0x20, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1047
	calll	xalloc_die
.label_1047:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	%eax
	calll	seen_file
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1046
	movl	$1, %eax
	jmp	.label_1048
.label_1046:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	%eax
	calll	record_file
	addl	$0x10, %esp
	movl	$0, %eax
.label_1048:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053064

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0xc8, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xbc(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0xa8(%ebp)
	movl	$0, -0x98(%ebp)
	movl	$0, -0xb4(%ebp)
	movl	0xc(%ebp), %eax
	andl	$0xfffffffc, %eax
	movl	%eax, -0x88(%ebp)
	movl	-0x88(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -0xb5(%ebp)
	andl	$3, 0xc(%ebp)
	movl	0xc(%ebp), %eax
	subl	$1, %eax
	andl	0xc(%ebp), %eax
	testl	%eax, %eax
	je	.label_1076
	calll	__errno_location
	movl	$0x16, 0(%eax)
	movl	$0, %eax
	jmp	.label_1054
.label_1076:
	cmpl	$0, -0xbc(%ebp)
	jne	.label_1099
	calll	__errno_location
	movl	$0x16, 0(%eax)
	movl	$0, %eax
	jmp	.label_1054
.label_1099:
	movl	-0xbc(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1050
	calll	__errno_location
	movl	$2, 0(%eax)
	movl	$0, %eax
	jmp	.label_1054
.label_1050:
	movl	$0, -0x90(%ebp)
	movl	-0xbc(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1058
	calll	xgetcwd
	movl	%eax, -0xb0(%ebp)
	cmpl	$0, -0xb0(%ebp)
	jne	.label_1066
	movl	$0, %eax
	jmp	.label_1054
.label_1066:
	subl	$8, %esp
	pushl	$0
	pushl	-0xb0(%ebp)
	calll	strchr
	addl	$0x10, %esp
	movl	%eax, -0xac(%ebp)
	movl	-0xac(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$0xfff, %eax
	jg	.label_1080
	subl	$8, %esp
	pushl	$0x1000
	pushl	-0xb0(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	%eax, -0x84(%ebp)
	movl	-0xac(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x84(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xac(%ebp)
	movl	-0x84(%ebp), %eax
	movl	%eax, -0xb0(%ebp)
	movl	-0xb0(%ebp), %eax
	addl	$0x1000, %eax
	movl	%eax, -0x9c(%ebp)
	jmp	.label_1085
.label_1080:
	movl	-0xac(%ebp), %eax
	movl	%eax, -0x9c(%ebp)
.label_1085:
	movl	-0xbc(%ebp), %eax
	movl	%eax, -0xa4(%ebp)
	movl	$0, -0x90(%ebp)
	jmp	.label_1070
.label_1058:
	subl	$0xc, %esp
	pushl	$0x1000
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0xb0(%ebp)
	movl	-0xb0(%ebp), %eax
	addl	$0x1000, %eax
	movl	%eax, -0x9c(%ebp)
	movl	-0xb0(%ebp), %eax
	movl	%eax, -0xac(%ebp)
	cmpl	$0, -0x90(%ebp)
	je	.label_1055
	subl	$4, %esp
	pushl	-0x90(%ebp)
	pushl	-0xbc(%ebp)
	pushl	-0xb0(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	-0x90(%ebp), %eax
	addl	%eax, -0xac(%ebp)
.label_1055:
	movl	-0xac(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xac(%ebp)
	movb	$0x2f, 0(%eax)
	movl	-0xbc(%ebp), %edx
	movl	-0x90(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xa4(%ebp)
	jmp	.label_1070
.label_1087:
	addl	$1, -0xa4(%ebp)
.label_1059:
	movl	-0xa4(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1087
	movl	-0xa4(%ebp), %eax
	movl	%eax, -0xa0(%ebp)
	jmp	.label_1089
.label_1096:
	addl	$1, -0xa0(%ebp)
.label_1089:
	movl	-0xa0(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_1095
	movl	-0xa0(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1096
.label_1095:
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	cmpl	%eax, %edx
	je	.label_1098
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jne	.label_1101
	movl	-0xa4(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	je	.label_1049
.label_1101:
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$2, %eax
	jne	.label_1061
	movl	-0xa4(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1061
	movl	-0xa4(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1061
	movl	-0x90(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0xb0(%ebp), %eax
	addl	%edx, %eax
	cmpl	-0xac(%ebp), %eax
	jae	.label_1071
	subl	$1, -0xac(%ebp)
	jmp	.label_1079
.label_1073:
	subl	$1, -0xac(%ebp)
.label_1079:
	movl	-0xac(%ebp), %eax
	cmpl	-0xb0(%ebp), %eax
	jbe	.label_1071
	movl	-0xac(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1073
	jmp	.label_1071
.label_1061:
	movl	-0xac(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1086
	movl	-0xac(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xac(%ebp)
	movb	$0x2f, 0(%eax)
.label_1086:
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0xac(%ebp), %eax
	addl	%edx, %eax
	cmpl	-0x9c(%ebp), %eax
	jb	.label_1093
	movl	-0xac(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x80(%ebp)
	movl	-0x9c(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x8c(%ebp)
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cmpl	$0x1000, %eax
	jle	.label_1100
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x8c(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x8c(%ebp)
	jmp	.label_1060
.label_1100:
	addl	$0x1000, -0x8c(%ebp)
.label_1060:
	subl	$8, %esp
	pushl	-0x8c(%ebp)
	pushl	-0xb0(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	%eax, -0xb0(%ebp)
	movl	-0xb0(%ebp), %edx
	movl	-0x8c(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x9c(%ebp)
	movl	-0x80(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xac(%ebp)
.label_1093:
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-0xa4(%ebp)
	pushl	-0xac(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	%eax, -0xac(%ebp)
	movl	-0xa0(%ebp), %edx
	movl	-0xa4(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -0xac(%ebp)
	movl	-0xac(%ebp), %eax
	movb	$0, 0(%eax)
	cmpb	$0, -0xb5(%ebp)
	je	.label_1092
	cmpl	$2, 0xc(%ebp)
	jne	.label_1092
	movl	$0, -0x5c(%ebp)
	jmp	.label_1067
.label_1092:
	cmpb	$0, -0xb5(%ebp)
	je	.label_1051
	subl	$8, %esp
	leal	-0x6c(%ebp), %eax
	pushl	%eax
	pushl	-0xb0(%ebp)
	calll	stat64
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	jmp	.label_1056
.label_1051:
	subl	$8, %esp
	leal	-0x6c(%ebp), %eax
	pushl	%eax
	pushl	-0xb0(%ebp)
	calll	lstat64
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
.label_1056:
	testb	%al, %al
	je	.label_1067
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x94(%ebp)
	cmpl	$0, 0xc(%ebp)
	je	.label_1082
	cmpl	$1, 0xc(%ebp)
	jne	.label_1068
	subl	$8, %esp
	pushl	$label_1077
	pushl	-0xa0(%ebp)
	calll	strspn
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0xa0(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1082
	cmpl	$2, -0x94(%ebp)
	jne	.label_1082
	jmp	.label_1049
.label_1068:
	movl	$0, -0x5c(%ebp)
.label_1067:
	movl	-0x5c(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	jne	.label_1090
	subl	$4, %esp
	leal	-0x6c(%ebp), %eax
	pushl	%eax
	pushl	-0xbc(%ebp)
	leal	-0xb4(%ebp), %eax
	pushl	%eax
	calll	seen_triple
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1097
	cmpl	$2, 0xc(%ebp)
	je	.label_1062
	movl	$0x28, -0x94(%ebp)
	jmp	.label_1052
.label_1097:
	movl	-0x40(%ebp), %eax
	movl	-0x3c(%ebp), %edx
	subl	$8, %esp
	pushl	%eax
	pushl	-0xb0(%ebp)
	calll	areadlink_with_size
	addl	$0x10, %esp
	movl	%eax, -0x7c(%ebp)
	cmpl	$0, -0x7c(%ebp)
	jne	.label_1069
	cmpl	$2, 0xc(%ebp)
	jne	.label_1083
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0xc, %eax
	jne	.label_1057
.label_1083:
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x94(%ebp)
	jmp	.label_1052
.label_1069:
	subl	$0xc, %esp
	pushl	-0x7c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x78(%ebp)
	subl	$0xc, %esp
	pushl	-0xa0(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x74(%ebp)
	cmpl	$0, -0x98(%ebp)
	jne	.label_1075
	movl	-0x78(%ebp), %edx
	movl	-0x74(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	$0x1000, %edx
	cmpl	$0x1000, %eax
	cmovbl	%edx, %eax
	movl	%eax, -0x98(%ebp)
	subl	$0xc, %esp
	pushl	-0x98(%ebp)
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0xa8(%ebp)
	jmp	.label_1084
.label_1075:
	movl	-0x78(%ebp), %edx
	movl	-0x74(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	-0x98(%ebp), %eax
	jbe	.label_1084
	movl	-0x78(%ebp), %edx
	movl	-0x74(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x98(%ebp)
	subl	$8, %esp
	pushl	-0x98(%ebp)
	pushl	-0xa8(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	%eax, -0xa8(%ebp)
.label_1084:
	movl	-0x74(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0xa8(%ebp), %ecx
	movl	-0x78(%ebp), %eax
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	-0xa0(%ebp)
	pushl	%eax
	calll	memmove
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	-0x78(%ebp)
	pushl	-0x7c(%ebp)
	pushl	-0xa8(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	%eax, -0xa0(%ebp)
	movl	-0xa0(%ebp), %eax
	movl	%eax, -0xbc(%ebp)
	movl	-0x7c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1065
	movl	$0, -0x70(%ebp)
	cmpl	$0, -0x70(%ebp)
	je	.label_1064
	subl	$4, %esp
	pushl	-0x70(%ebp)
	pushl	-0x7c(%ebp)
	pushl	-0xb0(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1064:
	movl	-0xb0(%ebp), %edx
	movl	-0x70(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xac(%ebp)
	movl	-0xac(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xac(%ebp)
	movb	$0x2f, 0(%eax)
	movl	-0x70(%ebp), %eax
	movl	%eax, -0x90(%ebp)
	jmp	.label_1072
.label_1065:
	movl	-0x90(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0xb0(%ebp), %eax
	addl	%edx, %eax
	cmpl	-0xac(%ebp), %eax
	jae	.label_1072
	subl	$1, -0xac(%ebp)
	jmp	.label_1088
.label_1094:
	subl	$1, -0xac(%ebp)
.label_1088:
	movl	-0xac(%ebp), %eax
	cmpl	-0xb0(%ebp), %eax
	jbe	.label_1072
	movl	-0xac(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1094
.label_1072:
	subl	$0xc, %esp
	pushl	-0x7c(%ebp)
	calll	free
	addl	$0x10, %esp
	jmp	.label_1049
.label_1090:
	movl	-0x5c(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	je	.label_1049
	movl	-0xa0(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_1049
	cmpl	$2, 0xc(%ebp)
	je	.label_1049
	movl	$0x14, -0x94(%ebp)
	nop	
	jmp	.label_1052
.label_1071:
	nop	
	jmp	.label_1049
.label_1062:
	nop	
	jmp	.label_1049
.label_1057:
	nop	
.label_1049:
	movl	-0xa0(%ebp), %eax
	movl	%eax, -0xa4(%ebp)
.label_1070:
	movl	-0xa4(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1059
	jmp	.label_1063
.label_1098:
	nop	
.label_1063:
	movl	-0x90(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0xb0(%ebp), %eax
	addl	%edx, %eax
	cmpl	-0xac(%ebp), %eax
	jae	.label_1074
	movl	-0xac(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1074
	subl	$1, -0xac(%ebp)
.label_1074:
	movl	-0xac(%ebp), %eax
	movb	$0, 0(%eax)
	movl	-0xac(%ebp), %eax
	addl	$1, %eax
	cmpl	-0x9c(%ebp), %eax
	je	.label_1081
	movl	-0xac(%ebp), %edx
	movl	-0xb0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0xb0(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	%eax, -0xb0(%ebp)
.label_1081:
	subl	$0xc, %esp
	pushl	-0xa8(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0xb4(%ebp), %eax
	testl	%eax, %eax
	je	.label_1091
	movl	-0xb4(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	hash_free
	addl	$0x10, %esp
.label_1091:
	movl	-0xb0(%ebp), %eax
	jmp	.label_1054
.label_1082:
	nop	
.label_1052:
	subl	$0xc, %esp
	pushl	-0xa8(%ebp)
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0xb0(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0xb4(%ebp), %eax
	testl	%eax, %eax
	je	.label_1053
	movl	-0xb4(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	hash_free
	addl	$0x10, %esp
.label_1053:
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x94(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	$0, %eax
.label_1054:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1078
	calll	__stack_chk_fail
.label_1078:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805394f
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	%eax, file_name
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805395d
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	movzbl	-4(%ebp), %eax
	movb	%al, ignore_EPIPE
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053975

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	stdout,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	close_stream
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1102
	movzbl	ignore_EPIPE,  %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1109
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x20, %eax
	je	.label_1102
.label_1109:
	subl	$0xc, %esp
	pushl	$label_1103
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	file_name,  %eax
	testl	%eax, %eax
	je	.label_1108
	movl	file_name,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	quotearg_colon
	addl	$0x10, %esp
	movl	%eax, %ebx
	calll	__errno_location
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	pushl	%ebx
	pushl	$label_1107
	pushl	%eax
	pushl	$0
	calll	error
	addl	$0x20, %esp
	jmp	.label_1106
.label_1108:
	calll	__errno_location
	movl	0(%eax), %eax
	pushl	-0xc(%ebp)
	pushl	$label_1104
	pushl	%eax
	pushl	$0
	calll	error
	addl	$0x10, %esp
.label_1106:
	movl	exit_failure,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	_exit
.label_1102:
	movl	stderr,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	close_stream
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1105
	movl	exit_failure,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	_exit
.label_1105:
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053a4f

	.globl dir_len
	.type dir_len, @function
dir_len:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1113
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1110
	movl	$1, %eax
	jmp	.label_1111
.label_1110:
	movl	$0, %eax
	jmp	.label_1111
.label_1113:
	movl	$0, %eax
.label_1111:
	addl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	last_component
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1112
.label_1114:
	movl	-0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1116
	subl	$1, -0x10(%ebp)
.label_1112:
	movl	-0xc(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	jb	.label_1114
	jmp	.label_1115
.label_1116:
	nop	
.label_1115:
	movl	-0x10(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053ac4

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	dir_len
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	sete	%al
	movb	%al, -0x11(%ebp)
	movzbl	-0x11(%ebp), %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1118
	movl	$0, %eax
	jmp	.label_1117
.label_1118:
	subl	$4, %esp
	pushl	-0x10(%ebp)
	pushl	8(%ebp)
	pushl	-0xc(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	cmpb	$0, -0x11(%ebp)
	je	.label_1119
	movl	-0x10(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x10(%ebp)
	movl	-0xc(%ebp), %edx
	addl	%edx, %eax
	movb	$0x2e, 0(%eax)
.label_1119:
	movl	-0xc(%ebp), %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	movb	$0, 0(%eax)
	movl	-0xc(%ebp), %eax
.label_1117:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053b48

	.globl last_component
	.type last_component, @function
last_component:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	movb	$0, -9(%ebp)
	jmp	.label_1124
.label_1125:
	addl	$1, -8(%ebp)
.label_1124:
	movl	-8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1125
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.label_1121
.label_1123:
	movl	-4(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1120
	movb	$1, -9(%ebp)
	jmp	.label_1122
.label_1120:
	cmpb	$0, -9(%ebp)
	je	.label_1122
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	movb	$0, -9(%ebp)
.label_1122:
	addl	$1, -4(%ebp)
.label_1121:
	movl	-4(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1123
	movl	-8(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053ba3

	.globl base_len
	.type base_len, @function
base_len:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	jmp	.label_1127
.label_1128:
	subl	$1, -0x10(%ebp)
.label_1127:
	cmpl	$1, -0x10(%ebp)
	jbe	.label_1126
	movl	-0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1128
.label_1126:
	movl	-0x10(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053be4

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053bee

	.globl record_file
	.type record_file, @function
record_file:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 8(%ebp)
	je	.label_1131
	subl	$0xc, %esp
	pushl	$0x14
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	xstrdup
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	0x10(%ebp), %eax
	movl	0x5c(%eax), %edx
	movl	0x58(%eax), %eax
	movl	-0x10(%ebp), %ecx
	movl	%eax, 4(%ecx)
	movl	%edx, 8(%ecx)
	movl	0x10(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	movl	-0x10(%ebp), %ecx
	movl	%eax, 0xc(%ecx)
	movl	%edx, 0x10(%ecx)
	subl	$8, %esp
	pushl	-0x10(%ebp)
	pushl	8(%ebp)
	calll	hash_insert
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1129
	calll	xalloc_die
.label_1129:
	movl	-0xc(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	je	.label_1130
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	triple_free
	addl	$0x10, %esp
	jmp	.label_1130
.label_1131:
	nop	
.label_1130:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053c7c

	.globl seen_file
	.type seen_file, @function
seen_file:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	cmpl	$0, -0x2c(%ebp)
	jne	.label_1134
	movl	$0, %eax
	jmp	.label_1132
.label_1134:
	movl	-0x30(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	-0x34(%ebp), %eax
	movl	0x5c(%eax), %edx
	movl	0x58(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%edx, -0x18(%ebp)
	movl	-0x34(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	movl	%edx, -0x10(%ebp)
	subl	$8, %esp
	leal	-0x20(%ebp), %eax
	pushl	%eax
	pushl	-0x2c(%ebp)
	calll	hash_lookup
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
.label_1132:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1133
	calll	__stack_chk_fail
.label_1133:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053cf9

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x8000, %eax
	jne	.label_1142
	movl	$0x2d, %eax
	jmp	.label_1136
.label_1142:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x4000, %eax
	jne	.label_1140
	movl	$0x64, %eax
	jmp	.label_1136
.label_1140:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x6000, %eax
	jne	.label_1137
	movl	$0x62, %eax
	jmp	.label_1136
.label_1137:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x2000, %eax
	jne	.label_1135
	movl	$0x63, %eax
	jmp	.label_1136
.label_1135:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xa000, %eax
	jne	.label_1141
	movl	$0x6c, %eax
	jmp	.label_1136
.label_1141:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0x1000, %eax
	jne	.label_1138
	movl	$0x70, %eax
	jmp	.label_1136
.label_1138:
	movl	8(%ebp), %eax
	andl	$0xf000, %eax
	cmpl	$0xc000, %eax
	jne	.label_1139
	movl	$0x73, %eax
	jmp	.label_1136
.label_1139:
	movl	$0x3f, %eax
.label_1136:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053da0

	.globl strmode
	.type strmode, @function
strmode:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	8(%ebp)
	calll	ftypelet
	addl	$4, %esp
	movl	%eax, %edx
	movl	0xc(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$1, %eax
	movl	8(%ebp), %edx
	andl	$0x100, %edx
	testl	%edx, %edx
	je	.label_1144
	movl	$0x72, %edx
	jmp	.label_1147
.label_1144:
	movl	$0x2d, %edx
.label_1147:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$2, %eax
	movl	8(%ebp), %edx
	andl	$0x80, %edx
	testl	%edx, %edx
	je	.label_1153
	movl	$0x77, %edx
	jmp	.label_1160
.label_1153:
	movl	$0x2d, %edx
.label_1160:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	andl	$0x800, %eax
	testl	%eax, %eax
	je	.label_1163
	movl	8(%ebp), %eax
	andl	$0x40, %eax
	testl	%eax, %eax
	je	.label_1165
	movl	$0x73, %eax
	jmp	.label_1152
.label_1165:
	movl	$0x53, %eax
	jmp	.label_1152
.label_1163:
	movl	8(%ebp), %eax
	andl	$0x40, %eax
	testl	%eax, %eax
	je	.label_1157
	movl	$0x78, %eax
	jmp	.label_1152
.label_1157:
	movl	$0x2d, %eax
.label_1152:
	movb	%al, 0(%edx)
	movl	0xc(%ebp), %eax
	addl	$4, %eax
	movl	8(%ebp), %edx
	andl	$0x20, %edx
	testl	%edx, %edx
	je	.label_1149
	movl	$0x72, %edx
	jmp	.label_1148
.label_1149:
	movl	$0x2d, %edx
.label_1148:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$5, %eax
	movl	8(%ebp), %edx
	andl	$0x10, %edx
	testl	%edx, %edx
	je	.label_1154
	movl	$0x77, %edx
	jmp	.label_1159
.label_1154:
	movl	$0x2d, %edx
.label_1159:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	leal	6(%eax), %edx
	movl	8(%ebp), %eax
	andl	$0x400, %eax
	testl	%eax, %eax
	je	.label_1162
	movl	8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.label_1146
	movl	$0x73, %eax
	jmp	.label_1151
.label_1146:
	movl	$0x53, %eax
	jmp	.label_1151
.label_1162:
	movl	8(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.label_1156
	movl	$0x78, %eax
	jmp	.label_1151
.label_1156:
	movl	$0x2d, %eax
.label_1151:
	movb	%al, 0(%edx)
	movl	0xc(%ebp), %eax
	addl	$7, %eax
	movl	8(%ebp), %edx
	andl	$4, %edx
	testl	%edx, %edx
	je	.label_1166
	movl	$0x72, %edx
	jmp	.label_1150
.label_1166:
	movl	$0x2d, %edx
.label_1150:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$8, %eax
	movl	8(%ebp), %edx
	andl	$2, %edx
	testl	%edx, %edx
	je	.label_1164
	movl	$0x77, %edx
	jmp	.label_1158
.label_1164:
	movl	$0x2d, %edx
.label_1158:
	movb	%dl, 0(%eax)
	movl	0xc(%ebp), %eax
	leal	9(%eax), %edx
	movl	8(%ebp), %eax
	andl	$0x200, %eax
	testl	%eax, %eax
	je	.label_1161
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1145
	movl	$0x74, %eax
	jmp	.label_1143
.label_1145:
	movl	$0x54, %eax
	jmp	.label_1143
.label_1161:
	movl	8(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1155
	movl	$0x78, %eax
	jmp	.label_1143
.label_1155:
	movl	$0x2d, %eax
.label_1143:
	movb	%al, 0(%edx)
	movl	0xc(%ebp), %eax
	addl	$0xa, %eax
	movb	$0x20, 0(%eax)
	movl	0xc(%ebp), %eax
	addl	$0xb, %eax
	movb	$0, 0(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053f4a

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	pushl	0xc(%ebp)
	pushl	%eax
	calll	strmode
	addl	$8, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053f62

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	mfile_name_concat
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1167
	calll	xalloc_die
.label_1167:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8053f8f

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	last_component
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	subl	$0xc, %esp
	pushl	-0x20(%ebp)
	calll	base_len
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	movl	-0x20(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x18(%ebp)
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movb	$0, -0x21(%ebp)
	cmpl	$0, -0x1c(%ebp)
	je	.label_1170
	movl	-0x18(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1168
	movl	0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	je	.label_1168
	movb	$0x2f, -0x21(%ebp)
	jmp	.label_1168
.label_1170:
	movl	0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jne	.label_1168
	movb	$0x2e, -0x21(%ebp)
.label_1168:
	cmpb	$0, -0x21(%ebp)
	setne	%al
	movzbl	%al, %edx
	movl	-0x18(%ebp), %eax
	addl	%eax, %edx
	movl	-0x14(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_1172
	movl	$0, %eax
	jmp	.label_1169
.label_1172:
	subl	$4, %esp
	pushl	-0x18(%ebp)
	pushl	8(%ebp)
	pushl	-0x10(%ebp)
	calll	mempcpy
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movzbl	-0x21(%ebp), %edx
	movb	%dl, 0(%eax)
	cmpb	$0, -0x21(%ebp)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, -0xc(%ebp)
	cmpl	$0, 0x10(%ebp)
	je	.label_1171
	movl	0x10(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%edx, 0(%eax)
.label_1171:
	subl	$4, %esp
	pushl	-0x14(%ebp)
	pushl	0xc(%ebp)
	pushl	-0xc(%ebp)
	calll	mempcpy
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movb	$0, 0(%eax)
	movl	-0x10(%ebp), %eax
.label_1169:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80540a6

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	movb	$0, -0xd(%ebp)
	jmp	.label_1174
.label_1175:
	cmpb	$0, -0xd(%ebp)
	je	.label_1177
	movb	$0, -0xd(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isalpha
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1173
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x7e, %al
	je	.label_1173
	movl	$0, -0xc(%ebp)
	jmp	.label_1173
.label_1177:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1176
	movb	$1, -0xd(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1173
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	jmp	.label_1173
.label_1176:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isalnum
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1173
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x7e, %al
	je	.label_1173
	movl	$0, -0xc(%ebp)
.label_1173:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0(%eax)
.label_1174:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1175
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805416c

	.globl order
	.type order, @function
order:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movzbl	-0xc(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1180
	movl	$0, %eax
	jmp	.label_1179
.label_1180:
	movzbl	-0xc(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isalpha
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1178
	movzbl	-0xc(%ebp), %eax
	jmp	.label_1179
.label_1178:
	cmpb	$0x7e, -0xc(%ebp)
	jne	.label_1181
	movl	$0xffffffff, %eax
	jmp	.label_1179
.label_1181:
	movzbl	-0xc(%ebp), %eax
	addl	$0x100, %eax
.label_1179:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80541c5

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	$0, -0x1c(%ebp)
	movl	$0, -0x18(%ebp)
	jmp	.label_1185
.label_1186:
	movl	$0, -0x14(%ebp)
	jmp	.label_1198
.label_1187:
	movl	-0x1c(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	je	.label_1202
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	order
	addl	$0x10, %esp
	jmp	.label_1182
.label_1202:
	movl	$0, %eax
.label_1182:
	movl	%eax, -0x10(%ebp)
	movl	-0x18(%ebp), %eax
	cmpl	0x14(%ebp), %eax
	je	.label_1200
	movl	0x10(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	order
	addl	$0x10, %esp
	jmp	.label_1189
.label_1200:
	movl	$0, %eax
.label_1189:
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	cmpl	-0xc(%ebp), %eax
	je	.label_1192
	movl	-0x10(%ebp), %eax
	subl	-0xc(%ebp), %eax
	jmp	.label_1184
.label_1192:
	addl	$1, -0x1c(%ebp)
	addl	$1, -0x18(%ebp)
.label_1198:
	movl	-0x1c(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1196
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1187
.label_1196:
	movl	-0x18(%ebp), %eax
	cmpl	0x14(%ebp), %eax
	jae	.label_1183
	movl	0x10(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1187
	jmp	.label_1183
.label_1197:
	addl	$1, -0x1c(%ebp)
.label_1183:
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x30, %al
	je	.label_1197
	jmp	.label_1194
.label_1195:
	addl	$1, -0x18(%ebp)
.label_1194:
	movl	0x10(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x30, %al
	je	.label_1195
	jmp	.label_1190
.label_1193:
	cmpl	$0, -0x14(%ebp)
	jne	.label_1199
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %edx
	movl	0x10(%ebp), %ecx
	movl	-0x18(%ebp), %eax
	addl	%ecx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x14(%ebp)
.label_1199:
	addl	$1, -0x1c(%ebp)
	addl	$1, -0x18(%ebp)
.label_1190:
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1188
	movl	0x10(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	testb	%al, %al
	jne	.label_1193
.label_1188:
	movl	8(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1201
	movl	$1, %eax
	jmp	.label_1184
.label_1201:
	movl	0x10(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_isdigit
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1191
	movl	$0xffffffff, %eax
	jmp	.label_1184
.label_1191:
	cmpl	$0, -0x14(%ebp)
	je	.label_1185
	movl	-0x14(%ebp), %eax
	jmp	.label_1184
.label_1185:
	movl	-0x1c(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jb	.label_1186
	movl	-0x18(%ebp), %eax
	cmpl	0x14(%ebp), %eax
	jb	.label_1186
	movl	$0, %eax
.label_1184:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80543c1

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$8, %esp
	pushl	-0x40(%ebp)
	pushl	-0x3c(%ebp)
	calll	strcmp
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	cmpl	$0, -0x1c(%ebp)
	jne	.label_1206
	movl	$0, %eax
	jmp	.label_1204
.label_1206:
	movl	-0x3c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1203
	movl	$0xffffffff, %eax
	jmp	.label_1204
.label_1203:
	movl	-0x40(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1209
	movl	$1, %eax
	jmp	.label_1204
.label_1209:
	subl	$8, %esp
	pushl	-0x3c(%ebp)
	pushl	$label_1211
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1214
	movl	$0xffffffff, %eax
	jmp	.label_1204
.label_1214:
	subl	$8, %esp
	pushl	-0x40(%ebp)
	pushl	$label_1211
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1220
	movl	$1, %eax
	jmp	.label_1204
.label_1220:
	subl	$8, %esp
	pushl	-0x3c(%ebp)
	pushl	$label_1207
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1223
	movl	$0xffffffff, %eax
	jmp	.label_1204
.label_1223:
	subl	$8, %esp
	pushl	-0x40(%ebp)
	pushl	$label_1207
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1210
	movl	$1, %eax
	jmp	.label_1204
.label_1210:
	movl	-0x3c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1212
	movl	-0x40(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	je	.label_1212
	movl	$0xffffffff, %eax
	jmp	.label_1204
.label_1212:
	movl	-0x3c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	je	.label_1218
	movl	-0x40(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1218
	movl	$1, %eax
	jmp	.label_1204
.label_1218:
	movl	-0x3c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1222
	movl	-0x40(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2e, %al
	jne	.label_1222
	addl	$1, -0x3c(%ebp)
	addl	$1, -0x40(%ebp)
.label_1222:
	movl	-0x3c(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	-0x40(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	subl	$0xc, %esp
	leal	-0x2c(%ebp), %eax
	pushl	%eax
	calll	match_suffix
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	subl	$0xc, %esp
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	match_suffix
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	cmpl	$0, -0x18(%ebp)
	je	.label_1213
	movl	-0x18(%ebp), %eax
	jmp	.label_1215
.label_1213:
	movl	-0x2c(%ebp), %eax
.label_1215:
	movl	%eax, %edx
	movl	-0x3c(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x24(%ebp)
	cmpl	$0, -0x14(%ebp)
	je	.label_1216
	movl	-0x14(%ebp), %eax
	jmp	.label_1205
.label_1216:
	movl	-0x28(%ebp), %eax
.label_1205:
	movl	%eax, %edx
	movl	-0x40(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x20(%ebp)
	cmpl	$0, -0x18(%ebp)
	jne	.label_1221
	cmpl	$0, -0x14(%ebp)
	je	.label_1208
.label_1221:
	movl	-0x24(%ebp), %eax
	cmpl	-0x20(%ebp), %eax
	jne	.label_1208
	subl	$4, %esp
	pushl	-0x24(%ebp)
	pushl	-0x40(%ebp)
	pushl	-0x3c(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1208
	movl	-0x2c(%ebp), %eax
	movl	%eax, %edx
	movl	-0x3c(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x28(%ebp), %eax
	movl	%eax, %edx
	movl	-0x40(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x20(%ebp)
.label_1208:
	pushl	-0x20(%ebp)
	pushl	-0x40(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x3c(%ebp)
	calll	verrevcmp
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_1217
	movl	-0x1c(%ebp), %eax
	jmp	.label_1204
.label_1217:
	movl	-0x10(%ebp), %eax
	nop	
.label_1204:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1219
	calll	__stack_chk_fail
.label_1219:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80545ed

	.globl gettime
	.type gettime, @function
gettime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	$0
	calll	clock_gettime
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1224
	subl	$8, %esp
	pushl	$0
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	gettimeofday
	addl	$0x10, %esp
	movl	-0x14(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x10(%ebp), %eax
	imull	$0x3e8, %eax, %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	.label_1226
.label_1224:
	nop	
.label_1226:
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_1225
	calll	__stack_chk_fail
.label_1225:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054656

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movb	$1, -0xd(%ebp)
	subl	$8, %esp
	pushl	$0
	pushl	8(%ebp)
	calll	setlocale
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	je	.label_1228
	subl	$8, %esp
	pushl	$label_1230
	pushl	-0xc(%ebp)
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1229
	subl	$8, %esp
	pushl	$label_1227
	pushl	-0xc(%ebp)
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1228
.label_1229:
	movb	$0, -0xd(%ebp)
.label_1228:
	movzbl	-0xd(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80546b1

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x80546bc

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0xc(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x80546c7

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x80546d2

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1231
.label_1234:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1232
	movl	-0x10(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	$1, -4(%ebp)
	jmp	.label_1235
.label_1233:
	addl	$1, -4(%ebp)
.label_1235:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$0, -8(%ebp)
	jne	.label_1233
	movl	-4(%ebp), %eax
	cmpl	-0xc(%ebp), %eax
	jbe	.label_1232
	movl	-4(%ebp), %eax
	movl	%eax, -0xc(%ebp)
.label_1232:
	addl	$8, -0x10(%ebp)
.label_1231:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x10(%ebp), %eax
	ja	.label_1234
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054736
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -0xc(%ebp)
	movl	$0, -8(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1241
.label_1236:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1240
	movl	-0x10(%ebp), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -0xc(%ebp)
	addl	$1, -8(%ebp)
	jmp	.label_1242
.label_1238:
	addl	$1, -8(%ebp)
.label_1242:
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jne	.label_1238
.label_1240:
	addl	$8, -0x10(%ebp)
.label_1241:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x10(%ebp), %eax
	ja	.label_1236
	movl	8(%ebp), %eax
	movl	0xc(%eax), %eax
	cmpl	-0xc(%ebp), %eax
	jne	.label_1239
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	cmpl	-8(%ebp), %eax
	jne	.label_1239
	movl	$1, %eax
	jmp	.label_1237
.label_1239:
	movl	$0, %eax
.label_1237:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80547b3
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	pushl	8(%ebp)
	calll	hash_get_n_entries
	addl	$4, %esp
	movl	%eax, -0x18(%ebp)
	pushl	8(%ebp)
	calll	hash_get_n_buckets
	addl	$4, %esp
	movl	%eax, -0x14(%ebp)
	pushl	8(%ebp)
	calll	hash_get_n_buckets_used
	addl	$4, %esp
	movl	%eax, -0x10(%ebp)
	pushl	8(%ebp)
	calll	hash_get_max_bucket_length
	addl	$4, %esp
	movl	%eax, -0xc(%ebp)
	subl	$4, %esp
	pushl	-0x18(%ebp)
	pushl	$label_1247
	pushl	0xc(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	-0x14(%ebp)
	pushl	$label_1244
	pushl	0xc(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	movl	-0x10(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0x28(%ebp)
	movl	%edx, -0x24(%ebp)
	fildll	-0x28(%ebp)
	fstpl	-0x20(%ebp)
	fldl	-0x20(%ebp)
	fldl	label_1245
	fmulp	%st(1)
	movl	-0x14(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0x28(%ebp)
	movl	%edx, -0x24(%ebp)
	fildll	-0x28(%ebp)
	fstpl	-0x20(%ebp)
	fldl	-0x20(%ebp)
	fdivrp	%st(1)
	subl	$0xc, %esp
	leal	-8(%esp), %esp
	fstpl	0(%esp)
	pushl	-0x10(%ebp)
	pushl	$label_1246
	pushl	0xc(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	subl	$4, %esp
	pushl	-0xc(%ebp)
	pushl	$label_1243
	pushl	0xc(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805488b

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0x18(%eax), %eax
	movl	8(%ebp), %edx
	movl	8(%edx), %edx
	subl	$8, %esp
	pushl	%edx
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-0xc(%ebp), %eax
	ja	.label_1248
	calll	abort
.label_1248:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	-0xc(%ebp), %edx
	shll	$3, %edx
	addl	%edx, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80548cb

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	safe_hasher
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1254
	movl	$0, %eax
	jmp	.label_1249
.label_1254:
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1251
.label_1250:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	je	.label_1253
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
	movl	-0x10(%ebp), %edx
	movl	0(%edx), %edx
	subl	$8, %esp
	pushl	%edx
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1252
.label_1253:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	jmp	.label_1249
.label_1252:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1251:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1250
	movl	$0, %eax
.label_1249:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805493f
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	testl	%eax, %eax
	jne	.label_1257
	movl	$0, %eax
	jmp	.label_1256
.label_1257:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
.label_1258:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0xc(%ebp), %eax
	ja	.label_1259
	calll	abort
.label_1259:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1255
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	jmp	.label_1256
.label_1255:
	addl	$8, -0xc(%ebp)
	jmp	.label_1258
.label_1256:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054986
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	safe_hasher
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
.label_1260:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	jne	.label_1261
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.label_1261
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	movl	0(%eax), %eax
	jmp	.label_1263
.label_1261:
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1260
	jmp	.label_1262
.label_1264:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1262
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	jmp	.label_1263
.label_1262:
	addl	$8, -0x10(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, -0x10(%ebp)
	jb	.label_1264
	movl	$0, %eax
.label_1263:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80549fb
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.label_1270
.label_1271:
	movl	-8(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1266
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.label_1267
.label_1268:
	movl	-0xc(%ebp), %eax
	cmpl	0x10(%ebp), %eax
	jb	.label_1265
	movl	-0xc(%ebp), %eax
	jmp	.label_1269
.label_1265:
	movl	-0xc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xc(%ebp)
	leal	0(, %eax, 4), %edx
	movl	0xc(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, 0(%edx)
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
.label_1267:
	cmpl	$0, -4(%ebp)
	jne	.label_1268
.label_1266:
	addl	$8, -8(%ebp)
.label_1270:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-8(%ebp), %eax
	ja	.label_1271
	movl	-0xc(%ebp), %eax
.label_1269:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054a6f
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x14(%ebp)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1278
.label_1275:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1273
	movl	-0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	jmp	.label_1276
.label_1272:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	%eax
	movl	0xc(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1274
	movl	-0x14(%ebp), %eax
	jmp	.label_1277
.label_1274:
	addl	$1, -0x14(%ebp)
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
.label_1276:
	cmpl	$0, -0xc(%ebp)
	jne	.label_1272
.label_1273:
	addl	$8, -0x10(%ebp)
.label_1278:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x10(%ebp), %eax
	ja	.label_1275
	movl	-0x14(%ebp), %eax
.label_1277:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054ade
	.globl hash_string
	.type hash_string, @function
hash_string:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -4(%ebp)
	jmp	.label_1280
.label_1279:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	shll	$5, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movzbl	-5(%ebp), %eax
	addl	%edx, %eax
	movl	$0, %edx
	divl	0xc(%ebp)
	movl	%edx, -4(%ebp)
	addl	$1, 8(%ebp)
.label_1280:
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -5(%ebp)
	cmpb	$0, -5(%ebp)
	jne	.label_1279
	movl	-4(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054b22

	.globl is_prime
	.type is_prime, @function
is_prime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$3, -8(%ebp)
	movl	-8(%ebp), %eax
	imull	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.label_1282
.label_1281:
	addl	$1, -8(%ebp)
	movl	-8(%ebp), %eax
	shll	$2, %eax
	addl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
.label_1282:
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jae	.label_1283
	movl	8(%ebp), %eax
	movl	$0, %edx
	divl	-8(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.label_1281
.label_1283:
	movl	8(%ebp), %eax
	movl	$0, %edx
	divl	-8(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054b79

	.globl next_prime
	.type next_prime, @function
next_prime:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$9, 8(%ebp)
	ja	.label_1287
	movl	$0xa, 8(%ebp)
.label_1287:
	orl	$1, 8(%ebp)
	jmp	.label_1284
.label_1285:
	addl	$2, 8(%ebp)
.label_1284:
	cmpl	$-1, 8(%ebp)
	je	.label_1286
	pushl	8(%ebp)
	calll	is_prime
	addl	$4, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1285
.label_1286:
	movl	8(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054bb0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	fldz	
	fstps	0(%eax)
	movl	8(%ebp), %eax
	fld1	
	fstps	4(%eax)
	movl	8(%ebp), %eax
	flds	label_1288
	fstps	8(%eax)
	movl	8(%ebp), %eax
	flds	label_1289
	fstps	0xc(%eax)
	movl	8(%ebp), %eax
	movb	$0, 0x10(%eax)
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054be4

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	subl	$8, %esp
	pushl	$3
	pushl	%eax
	calll	rotr_sz
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	$0, %edx
	divl	0xc(%ebp)
	movl	%edx, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054c0d

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	sete	%al
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054c1b

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	0x14(%eax), %eax
	movl	%eax, -8(%ebp)
	cmpl	$default_tuning, -8(%ebp)
	jne	.label_1291
	movl	$1, %eax
	jmp	.label_1290
.label_1291:
	flds	label_1293
	fstps	-4(%ebp)
	movl	-8(%ebp), %eax
	flds	8(%eax)
	flds	-4(%ebp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1292
	movl	-8(%ebp), %eax
	flds	8(%eax)
	fld1	
	fsubs	-4(%ebp)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1292
	flds	-4(%ebp)
	fld1	
	faddp	%st(1)
	movl	-8(%ebp), %eax
	flds	0xc(%eax)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1292
	movl	-8(%ebp), %eax
	flds	0(%eax)
	fldz	
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jb	.label_1292
	movl	-8(%ebp), %eax
	flds	0(%eax)
	fadds	-4(%ebp)
	movl	-8(%ebp), %eax
	flds	4(%eax)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1292
	movl	-8(%ebp), %eax
	flds	4(%eax)
	fld1	
	fucompi	%st(1)
	fstp	%st(0)
	jb	.label_1292
	movl	-8(%ebp), %eax
	flds	0(%eax)
	fadds	-4(%ebp)
	movl	-8(%ebp), %eax
	flds	8(%eax)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1292
	movl	$1, %eax
	jmp	.label_1290
.label_1292:
	movl	8(%ebp), %eax
	movl	$default_tuning, 20(%eax)
	movl	$0, %eax
.label_1290:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054cd8

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x1c(%ebp), %eax
	movzbl	0x10(%eax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1298
	movl	8(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0x38(%ebp)
	movl	%edx, -0x34(%ebp)
	fildll	-0x38(%ebp)
	fstps	-0x20(%ebp)
	flds	-0x20(%ebp)
	movl	-0x1c(%ebp), %eax
	flds	8(%eax)
	fdivrp	%st(1)
	fstps	-0x10(%ebp)
	flds	-0x10(%ebp)
	flds	label_1300
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jb	.label_1301
	movl	$0, %eax
	jmp	.label_1297
.label_1301:
	flds	-0x10(%ebp)
	fnstcw	-0x22(%ebp)
	movzwl	-0x22(%ebp), %eax
	movb	$0xc, %ah
	movw	%ax, -0x24(%ebp)
	fldcw	-0x24(%ebp)
	fistpll	-0x30(%ebp)
	fldcw	-0x22(%ebp)
	movl	-0x30(%ebp), %eax
	movl	-0x2c(%ebp), %edx
	movl	%eax, 8(%ebp)
.label_1298:
	pushl	8(%ebp)
	calll	next_prime
	addl	$4, %esp
	movl	%eax, 8(%ebp)
	movl	$0, %ecx
	movl	$4, %edx
	movl	%edx, %eax
	mull	8(%ebp)
	jno	.label_1294
	movl	$1, %ecx
.label_1294:
	testl	%eax, %eax
	jns	.label_1296
	movl	$1, %ecx
.label_1296:
	movl	%eax, -0x14(%ebp)
	movl	%ecx, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_1295
	movl	$0, %eax
	jmp	.label_1297
.label_1295:
	movl	8(%ebp), %eax
.label_1297:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1299
	calll	__stack_chk_fail
.label_1299:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054daf

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 0x10(%ebp)
	jne	.label_1309
	movl	$raw_hasher, 16(%ebp)
.label_1309:
	cmpl	$0, 0x14(%ebp)
	jne	.label_1302
	movl	$raw_comparator, 20(%ebp)
.label_1302:
	subl	$0xc, %esp
	pushl	$0x28
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1305
	movl	$0, %eax
	jmp	.label_1307
.label_1305:
	cmpl	$0, 0xc(%ebp)
	jne	.label_1306
	movl	$default_tuning, 12(%ebp)
.label_1306:
	movl	-0xc(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0x14(%eax)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	check_tuning
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1303
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	compute_bucket_size
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	.label_1308
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %eax
	subl	$8, %esp
	pushl	$8
	pushl	%eax
	calll	calloc
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1304
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %eax
	shll	$3, %eax
	addl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0xc(%ebp), %eax
	movl	$0, 0xc(%eax)
	movl	-0xc(%ebp), %eax
	movl	$0, 0x10(%eax)
	movl	-0xc(%ebp), %eax
	movl	0x10(%ebp), %edx
	movl	%edx, 0x18(%eax)
	movl	-0xc(%ebp), %eax
	movl	0x14(%ebp), %edx
	movl	%edx, 0x1c(%eax)
	movl	-0xc(%ebp), %eax
	movl	0x18(%ebp), %edx
	movl	%edx, 0x20(%eax)
	movl	-0xc(%ebp), %eax
	movl	$0, 0x24(%eax)
	movl	-0xc(%ebp), %eax
	jmp	.label_1307
.label_1303:
	nop	
	jmp	.label_1310
.label_1308:
	nop	
	jmp	.label_1310
.label_1304:
	nop	
.label_1310:
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	$0, %eax
.label_1307:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054ed5
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_1316
.label_1312:
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1313
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1317
.label_1314:
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	testl	%eax, %eax
	je	.label_1311
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	-0x10(%ebp), %edx
	movl	0(%edx), %edx
	subl	$0xc, %esp
	pushl	%edx
	calll	*%eax
	addl	$0x10, %esp
.label_1311:
	movl	-0x10(%ebp), %eax
	movl	$0, 0(%eax)
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	0x24(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 0x24(%eax)
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
.label_1317:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1314
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	testl	%eax, %eax
	je	.label_1315
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	-0x14(%ebp), %edx
	movl	0(%edx), %edx
	subl	$0xc, %esp
	pushl	%edx
	calll	*%eax
	addl	$0x10, %esp
.label_1315:
	movl	-0x14(%ebp), %eax
	movl	$0, 0(%eax)
	movl	-0x14(%ebp), %eax
	movl	$0, 4(%eax)
.label_1313:
	addl	$8, -0x14(%ebp)
.label_1316:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x14(%ebp), %eax
	ja	.label_1312
	movl	8(%ebp), %eax
	movl	$0, 0xc(%eax)
	movl	8(%ebp), %eax
	movl	$0, 0x10(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8054fac

	.globl hash_free
	.type hash_free, @function
hash_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	testl	%eax, %eax
	je	.label_1328
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	testl	%eax, %eax
	je	.label_1328
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_1320
.label_1321:
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1323
	movl	-0x14(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1325
.label_1329:
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	-0x10(%ebp), %edx
	movl	0(%edx), %edx
	subl	$0xc, %esp
	pushl	%edx
	calll	*%eax
	addl	$0x10, %esp
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1325:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1329
.label_1323:
	addl	$8, -0x14(%ebp)
.label_1320:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x14(%ebp), %eax
	ja	.label_1321
.label_1328:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_1324
.label_1322:
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1327
.label_1319:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
.label_1327:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1319
	addl	$8, -0x14(%ebp)
.label_1324:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x14(%ebp), %eax
	ja	.label_1322
	movl	8(%ebp), %eax
	movl	0x24(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1326
.label_1318:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
.label_1326:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1318
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	free
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80550aa

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	0x24(%eax), %eax
	testl	%eax, %eax
	je	.label_1330
	movl	8(%ebp), %eax
	movl	0x24(%eax), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0x24(%eax)
	jmp	.label_1331
.label_1330:
	subl	$0xc, %esp
	pushl	$8
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
.label_1331:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80550e6

	.globl free_entry
	.type free_entry, @function
free_entry:
	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %eax
	movl	$0, 0(%eax)
	movl	8(%ebp), %eax
	movl	0x24(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0x24(%eax)
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805510a

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0x14(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	safe_hasher
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1336
	movl	$0, %eax
	jmp	.label_1334
.label_1336:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	je	.label_1332
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
	movl	-0x1c(%ebp), %edx
	movl	0(%edx), %edx
	subl	$8, %esp
	pushl	%edx
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1335
.label_1332:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	cmpb	$0, -0x2c(%ebp)
	je	.label_1337
	movl	-0x1c(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	.label_1341
	movl	-0x1c(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x1c(%ebp), %ecx
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	subl	$8, %esp
	pushl	-0xc(%ebp)
	pushl	8(%ebp)
	calll	free_entry
	addl	$0x10, %esp
	jmp	.label_1337
.label_1341:
	movl	-0x1c(%ebp), %eax
	movl	$0, 0(%eax)
.label_1337:
	movl	-0x10(%ebp), %eax
	jmp	.label_1334
.label_1335:
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	jmp	.label_1342
.label_1340:
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	je	.label_1333
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
	movl	-0x20(%ebp), %edx
	movl	4(%edx), %edx
	movl	0(%edx), %edx
	subl	$8, %esp
	pushl	%edx
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1338
.label_1333:
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	cmpb	$0, -0x2c(%ebp)
	je	.label_1339
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x20(%ebp), %eax
	movl	%edx, 4(%eax)
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	8(%ebp)
	calll	free_entry
	addl	$0x10, %esp
.label_1339:
	movl	-0x18(%ebp), %eax
	jmp	.label_1334
.label_1338:
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x20(%ebp)
.label_1342:
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.label_1340
	movl	$0, %eax
.label_1334:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055248

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x20(%ebp)
	jmp	.label_1344
.label_1348:
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1349
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	jmp	.label_1352
.label_1351:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	subl	$8, %esp
	pushl	-0x18(%ebp)
	pushl	8(%ebp)
	calll	safe_hasher
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1346
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x14(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	.label_1350
.label_1346:
	movl	-0x14(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	8(%ebp), %eax
	movl	0xc(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0xc(%eax)
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	8(%ebp)
	calll	free_entry
	addl	$0x10, %esp
.label_1350:
	movl	-0x10(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
.label_1352:
	cmpl	$0, -0x1c(%ebp)
	jne	.label_1351
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x20(%ebp), %eax
	movl	$0, 4(%eax)
	cmpb	$0, -0x2c(%ebp)
	jne	.label_1353
	subl	$8, %esp
	pushl	-0x18(%ebp)
	pushl	8(%ebp)
	calll	safe_hasher
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1347
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	allocate_entry
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1354
	movl	$0, %eax
	jmp	.label_1343
.label_1354:
	movl	-0xc(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x14(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	.label_1345
.label_1347:
	movl	-0x14(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	8(%ebp), %eax
	movl	0xc(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0xc(%eax)
.label_1345:
	movl	-0x20(%ebp), %eax
	movl	$0, 0(%eax)
	movl	0xc(%ebp), %eax
	movl	0xc(%eax), %eax
	leal	-1(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	%edx, 0xc(%eax)
	jmp	.label_1349
.label_1353:
	nop	
.label_1349:
	addl	$8, -0x20(%ebp)
.label_1344:
	movl	0xc(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	-0x20(%ebp), %eax
	ja	.label_1348
	movl	$1, %eax
.label_1343:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80553b4

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x4c(%ebp), %eax
	movl	0x14(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	0xc(%ebp)
	calll	compute_bucket_size
	addl	$0x10, %esp
	movl	%eax, -0x3c(%ebp)
	cmpl	$0, -0x3c(%ebp)
	jne	.label_1358
	movl	$0, %eax
	jmp	.label_1356
.label_1358:
	movl	-0x4c(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	-0x3c(%ebp), %eax
	jne	.label_1359
	movl	$1, %eax
	jmp	.label_1356
.label_1359:
	leal	-0x34(%ebp), %eax
	movl	%eax, -0x38(%ebp)
	subl	$8, %esp
	pushl	$8
	pushl	-0x3c(%ebp)
	calll	calloc
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x38(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1357
	movl	$0, %eax
	jmp	.label_1356
.label_1357:
	movl	-0x38(%ebp), %eax
	movl	-0x3c(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-0x38(%ebp), %eax
	movl	0(%eax), %eax
	movl	-0x3c(%ebp), %edx
	shll	$3, %edx
	addl	%eax, %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x38(%ebp), %eax
	movl	$0, 0xc(%eax)
	movl	-0x38(%ebp), %eax
	movl	$0, 0x10(%eax)
	movl	-0x4c(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0x14(%eax)
	movl	-0x4c(%ebp), %eax
	movl	0x18(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0x18(%eax)
	movl	-0x4c(%ebp), %eax
	movl	0x1c(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0x1c(%eax)
	movl	-0x4c(%ebp), %eax
	movl	0x20(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0x20(%eax)
	movl	-0x4c(%ebp), %eax
	movl	0x24(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, 0x24(%eax)
	subl	$4, %esp
	pushl	$0
	pushl	-0x4c(%ebp)
	pushl	-0x38(%ebp)
	calll	transfer_entries
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1362
	movl	-0x4c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	-0x38(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x38(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x38(%ebp), %eax
	movl	8(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-0x38(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	-0x38(%ebp), %eax
	movl	0x24(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 0x24(%eax)
	movl	$1, %eax
	jmp	.label_1356
.label_1362:
	movl	-0x38(%ebp), %eax
	movl	0x24(%eax), %edx
	movl	-0x4c(%ebp), %eax
	movl	%edx, 0x24(%eax)
	subl	$4, %esp
	pushl	$1
	pushl	-0x38(%ebp)
	pushl	-0x4c(%ebp)
	calll	transfer_entries
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1361
	subl	$4, %esp
	pushl	$0
	pushl	-0x38(%ebp)
	pushl	-0x4c(%ebp)
	calll	transfer_entries
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1355
.label_1361:
	calll	abort
.label_1355:
	movl	-0x38(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	$0, %eax
.label_1356:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1360
	calll	__stack_chk_fail
.label_1360:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805557b

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	cmpl	$0, -0x30(%ebp)
	jne	.label_1373
	calll	abort
.label_1373:
	pushl	$0
	leal	-0x20(%ebp), %eax
	pushl	%eax
	pushl	-0x30(%ebp)
	pushl	-0x2c(%ebp)
	calll	hash_find_entry
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	cmpl	$0, -0x1c(%ebp)
	je	.label_1372
	cmpl	$0, -0x34(%ebp)
	je	.label_1364
	movl	-0x34(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%edx, 0(%eax)
.label_1364:
	movl	$0, %eax
	jmp	.label_1367
.label_1372:
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	flds	8(%eax)
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	fmulp	%st(1)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1365
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	check_tuning
	addl	$0x10, %esp
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	flds	8(%eax)
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	fmulp	%st(1)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1365
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x18(%ebp), %eax
	movzbl	0x10(%eax), %eax
	testb	%al, %al
	je	.label_1374
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	movl	-0x18(%ebp), %eax
	flds	0xc(%eax)
	fmulp	%st(1)
	jmp	.label_1366
.label_1374:
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x50(%ebp)
	movl	$0, -0x4c(%ebp)
	fildll	-0x50(%ebp)
	fstps	-0x38(%ebp)
	flds	-0x38(%ebp)
	movl	-0x18(%ebp), %eax
	flds	0xc(%eax)
	fmulp	%st(1)
	movl	-0x18(%ebp), %eax
	flds	8(%eax)
	fmulp	%st(1)
.label_1366:
	fstps	-0x14(%ebp)
	flds	-0x14(%ebp)
	flds	label_1300
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jb	.label_1363
	movl	$0xffffffff, %eax
	jmp	.label_1367
.label_1363:
	flds	-0x14(%ebp)
	fnstcw	-0x3a(%ebp)
	movzwl	-0x3a(%ebp), %eax
	movb	$0xc, %ah
	movw	%ax, -0x3c(%ebp)
	fldcw	-0x3c(%ebp)
	fistpll	-0x48(%ebp)
	fldcw	-0x3a(%ebp)
	movl	-0x48(%ebp), %eax
	movl	-0x44(%ebp), %edx
	subl	$8, %esp
	pushl	%eax
	pushl	-0x2c(%ebp)
	calll	hash_rehash
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1370
	movl	$0xffffffff, %eax
	jmp	.label_1367
.label_1370:
	pushl	$0
	leal	-0x20(%ebp), %eax
	pushl	%eax
	pushl	-0x30(%ebp)
	pushl	-0x2c(%ebp)
	calll	hash_find_entry
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1365
	calll	abort
.label_1365:
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_1368
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	allocate_entry
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_1371
	movl	$0xffffffff, %eax
	jmp	.label_1367
.label_1371:
	movl	-0x10(%ebp), %eax
	movl	-0x30(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x20(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-0x2c(%ebp), %eax
	movl	0x10(%eax), %eax
	leal	1(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	$1, %eax
	jmp	.label_1367
.label_1368:
	movl	-0x20(%ebp), %eax
	movl	-0x30(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x2c(%ebp), %eax
	movl	0x10(%eax), %eax
	leal	1(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	leal	1(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	$1, %eax
.label_1367:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1369
	calll	__stack_chk_fail
.label_1369:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80557f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$4, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	-0x20(%ebp)
	pushl	-0x1c(%ebp)
	calll	hash_insert_if_absent
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$-1, -0x10(%ebp)
	je	.label_1378
	cmpl	$0, -0x10(%ebp)
	jne	.label_1376
	movl	-0x14(%ebp), %eax
	jmp	.label_1375
.label_1376:
	movl	-0x20(%ebp), %eax
	jmp	.label_1375
.label_1378:
	movl	$0, %eax
.label_1375:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1377
	calll	__stack_chk_fail
.label_1377:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055853

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	pushl	$1
	leal	-0x24(%ebp), %eax
	pushl	%eax
	pushl	-0x30(%ebp)
	pushl	-0x2c(%ebp)
	calll	hash_find_entry
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	cmpl	$0, -0x1c(%ebp)
	jne	.label_1379
	movl	$0, %eax
	jmp	.label_1383
.label_1379:
	movl	-0x2c(%ebp), %eax
	movl	0x10(%eax), %eax
	leal	-1(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	-0x24(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1380
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	leal	-1(%eax), %edx
	movl	-0x2c(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	flds	0(%eax)
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	fmulp	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1380
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	check_tuning
	addl	$0x10, %esp
	movl	-0x2c(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	flds	0(%eax)
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	fmulp	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1380
	movl	-0x2c(%ebp), %eax
	movl	0x14(%eax), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x18(%ebp), %eax
	movzbl	0x10(%eax), %eax
	testb	%al, %al
	je	.label_1386
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	movl	-0x18(%ebp), %eax
	flds	4(%eax)
	fmulp	%st(1)
	fnstcw	-0x36(%ebp)
	movzwl	-0x36(%ebp), %eax
	movb	$0xc, %ah
	movw	%ax, -0x38(%ebp)
	fldcw	-0x38(%ebp)
	fistpll	-0x40(%ebp)
	fldcw	-0x36(%ebp)
	movl	-0x40(%ebp), %eax
	movl	-0x3c(%ebp), %edx
	jmp	.label_1384
.label_1386:
	movl	-0x2c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x48(%ebp)
	movl	$0, -0x44(%ebp)
	fildll	-0x48(%ebp)
	fstps	-0x34(%ebp)
	flds	-0x34(%ebp)
	movl	-0x18(%ebp), %eax
	flds	4(%eax)
	fmulp	%st(1)
	movl	-0x18(%ebp), %eax
	flds	8(%eax)
	fmulp	%st(1)
	fnstcw	-0x36(%ebp)
	movzwl	-0x36(%ebp), %eax
	movb	$0xc, %ah
	movw	%ax, -0x38(%ebp)
	fldcw	-0x38(%ebp)
	fistpll	-0x40(%ebp)
	fldcw	-0x36(%ebp)
	movl	-0x40(%ebp), %eax
	movl	-0x3c(%ebp), %edx
.label_1384:
	movl	%eax, -0x14(%ebp)
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	-0x2c(%ebp)
	calll	hash_rehash
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1380
	movl	-0x2c(%ebp), %eax
	movl	0x24(%eax), %eax
	movl	%eax, -0x20(%ebp)
	jmp	.label_1385
.label_1382:
	movl	-0x20(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	-0x20(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0x10(%ebp), %eax
	movl	%eax, -0x20(%ebp)
.label_1385:
	cmpl	$0, -0x20(%ebp)
	jne	.label_1382
	movl	-0x2c(%ebp), %eax
	movl	$0, 0x24(%eax)
.label_1380:
	movl	-0x1c(%ebp), %eax
.label_1383:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1381
	calll	__stack_chk_fail
.label_1381:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055a5d

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x20, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	calll	hash_pjw
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	-0x10(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	-0x20(%ebp), %ecx
	xorl	%eax, %ecx
	movl	%ecx, %ebx
	movl	-0x1c(%ebp), %ecx
	xorl	%edx, %ecx
	movl	%ecx, %esi
	movl	0xc(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	calll	__umoddi3
	addl	$0x10, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055ac2
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	0xc(%ebp), %ecx
	movl	$0, %ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055af1
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_1387
	movl	-0x10(%ebp), %eax
	movl	0xc(%eax), %ecx
	movl	0x10(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_1387
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	same_name
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_1387
	movl	$1, %eax
	jmp	.label_1388
.label_1387:
	movl	$0, %eax
.label_1388:
	andl	$1, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055b72

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %ecx
	movl	8(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_1389
	movl	-0x10(%ebp), %eax
	movl	0xc(%eax), %ecx
	movl	0x10(%eax), %ebx
	movl	-0xc(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%eax), %eax
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_1389
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1389
	movl	$1, %eax
	jmp	.label_1390
.label_1389:
	movl	$0, %eax
.label_1390:
	andl	$1, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055bf3

	.globl triple_free
	.type triple_free, @function
triple_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	free
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055c21

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x24, %esp
	cmpl	$1, 8(%ebp)
	je	.label_1392
	fldt	label_1399
	fldt	0xc(%ebp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jbe	.label_1392
	fldt	0xc(%ebp)
	fldt	label_1394
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.label_1395
	fldt	0xc(%ebp)
	fnstcw	-0x1a(%ebp)
	movzwl	-0x1a(%ebp), %eax
	movb	$0xc, %ah
	movw	%ax, -0x1c(%ebp)
	fldcw	-0x1c(%ebp)
	fistpll	-0x10(%ebp)
	fldcw	-0x1a(%ebp)
	jmp	.label_1400
.label_1395:
	fldt	0xc(%ebp)
	fldt	label_1394
	fsubrp	%st(1)
	fnstcw	-0x1a(%ebp)
	movzwl	-0x1a(%ebp), %ecx
	movb	$0xc, %ch
	movw	%cx, -0x1c(%ebp)
	fldcw	-0x1c(%ebp)
	fistpll	-0x10(%ebp)
	fldcw	-0x1a(%ebp)
	movl	-0x10(%ebp), %ecx
	xorb	$0, %ch
	movl	%ecx, %eax
	movl	-0xc(%ebp), %ecx
	xorl	$0x80000000, %ecx
	movl	%ecx, %edx
	movl	%eax, -0x10(%ebp)
	movl	%edx, -0xc(%ebp)
.label_1400:
	movl	-0x10(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%eax, -0x10(%ebp)
	movl	%edx, -0xc(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.label_1397
	fildll	-0x10(%ebp)
	cmpl	$0, -0xc(%ebp)
	jns	.label_1402
	fldt	label_1396
	faddp	%st(1)
.label_1402:
	fldt	0xc(%ebp)
	fucompi	%st(1)
	jp	.label_1398
	fldt	0xc(%ebp)
	fucompi	%st(1)
	fstp	%st(0)
	je	.label_1397
	jmp	.label_1391
.label_1398:
	fstp	%st(0)
.label_1391:
	movl	$1, %eax
	jmp	.label_1393
.label_1397:
	movl	$0, %eax
.label_1393:
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$0x1f, %ebx
	movl	-0x10(%ebp), %eax
	movl	-0xc(%ebp), %edx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, -0x28(%ebp)
	movl	%ebx, -0x24(%ebp)
	fildll	-0x28(%ebp)
	cmpl	$0, -0x24(%ebp)
	jns	.label_1401
	fldt	label_1396
	faddp	%st(1)
.label_1401:
	fstpt	0xc(%ebp)
.label_1392:
	fldt	0xc(%ebp)
	addl	$0x24, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055d24

	.globl group_number
	.type group_number, @function
group_number:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x54, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x50(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x54(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0xffffffff, -0x44(%ebp)
	subl	$0xc, %esp
	pushl	-0x54(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x3c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	-0x4c(%ebp)
	leal	-0x35(%ebp), %eax
	pushl	%eax
	calll	memcpy
	addl	$0x10, %esp
	movl	-0x4c(%ebp), %edx
	movl	0xc(%ebp), %eax
	leal	0(%edx, %eax), %ebx
.label_1404:
	movl	-0x50(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x45(%ebp)
	cmpb	$0, -0x45(%ebp)
	je	.label_1403
	cmpb	$0x7e, -0x45(%ebp)
	ja	.label_1408
	movzbl	-0x45(%ebp), %eax
	jmp	.label_1410
.label_1408:
	movl	-0x40(%ebp), %eax
.label_1410:
	movl	%eax, -0x44(%ebp)
	addl	$1, -0x50(%ebp)
.label_1403:
	movl	-0x40(%ebp), %eax
	cmpl	-0x44(%ebp), %eax
	jae	.label_1405
	movl	-0x40(%ebp), %eax
	movl	%eax, -0x44(%ebp)
.label_1405:
	movl	-0x44(%ebp), %eax
	negl	%eax
	addl	%eax, %ebx
	movl	-0x44(%ebp), %eax
	subl	%eax, -0x40(%ebp)
	leal	-0x35(%ebp), %edx
	movl	-0x40(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	-0x44(%ebp)
	pushl	%eax
	pushl	%ebx
	calll	memcpy
	addl	$0x10, %esp
	cmpl	$0, -0x40(%ebp)
	jne	.label_1409
	movl	%ebx, %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1406
	jmp	.label_1407
.label_1409:
	movl	-0x3c(%ebp), %eax
	negl	%eax
	addl	%eax, %ebx
	subl	$4, %esp
	pushl	-0x3c(%ebp)
	pushl	-0x54(%ebp)
	pushl	%ebx
	calll	memcpy
	addl	$0x10, %esp
	jmp	.label_1404
.label_1407:
	calll	__stack_chk_fail
.label_1406:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8055e1a

	.globl human_readable
	.type human_readable, @function
human_readable:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0xdc, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0xd0(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xcc(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0xd8(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0xd4(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0xe0(%ebp)
	movl	0x24(%ebp), %eax
	movl	%eax, -0xdc(%ebp)
	movl	0x14(%ebp), %eax
	andl	$3, %eax
	movl	%eax, -0x9c(%ebp)
	movl	0x14(%ebp), %eax
	andl	$0x20, %eax
	testl	%eax, %eax
	je	.label_1420
	movl	$0x400, %eax
	jmp	.label_1443
.label_1420:
	movl	$0x3e8, %eax
.label_1443:
	movl	%eax, -0x98(%ebp)
	movl	$0xffffffff, -0xc4(%ebp)
	movl	$8, -0x94(%ebp)
	movl	$label_1447, -176(%ebp)
	movl	$1, -0xac(%ebp)
	movl	$label_1448, -144(%ebp)
	movl	$label_1448, -168(%ebp)
	calll	localeconv
	movl	%eax, -0x8c(%ebp)
	movl	-0x8c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x88(%ebp)
	cmpl	$0, -0x88(%ebp)
	je	.label_1452
	cmpl	$0x10, -0x88(%ebp)
	ja	.label_1452
	movl	-0x8c(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0xb0(%ebp)
	movl	-0x88(%ebp), %eax
	movl	%eax, -0xac(%ebp)
.label_1452:
	movl	-0x8c(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x90(%ebp)
	movl	-0x8c(%ebp), %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	strlen
	addl	$0x10, %esp
	cmpl	$0x10, %eax
	ja	.label_1428
	movl	-0x8c(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xa8(%ebp)
.label_1428:
	movl	0x10(%ebp), %eax
	addl	$0x287, %eax
	movl	%eax, -0xbc(%ebp)
	movl	-0xbc(%ebp), %eax
	movl	%eax, -0xc0(%ebp)
	movl	-0xe0(%ebp), %eax
	movl	-0xdc(%ebp), %edx
	cmpl	-0xd4(%ebp), %edx
	ja	.label_1435
	cmpl	-0xd4(%ebp), %edx
	jb	.label_1446
	cmpl	-0xd8(%ebp), %eax
	ja	.label_1435
.label_1446:
	movl	-0xd8(%ebp), %eax
	movl	-0xd4(%ebp), %edx
	pushl	-0xdc(%ebp)
	pushl	-0xe0(%ebp)
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.label_1418
	pushl	-0xdc(%ebp)
	pushl	-0xe0(%ebp)
	pushl	-0xd4(%ebp)
	pushl	-0xd8(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x68(%ebp)
	movl	%edx, -0x64(%ebp)
	movl	-0xcc(%ebp), %eax
	imull	-0x68(%ebp), %eax
	movl	%eax, %edx
	movl	-0x64(%ebp), %eax
	imull	-0xd0(%ebp), %eax
	leal	0(%edx, %eax), %ecx
	movl	-0x68(%ebp), %eax
	mull	-0xd0(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -0x78(%ebp)
	movl	%edx, -0x74(%ebp)
	movl	%eax, -0x78(%ebp)
	movl	%edx, -0x74(%ebp)
	pushl	-0x64(%ebp)
	pushl	-0x68(%ebp)
	pushl	-0x74(%ebp)
	pushl	-0x78(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%edx, %ecx
	xorl	-0xcc(%ebp), %ecx
	xorl	-0xd0(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1418
	movl	$0, -0xc8(%ebp)
	movl	$0, -0xb4(%ebp)
	jmp	.label_1430
.label_1435:
	movl	-0xd4(%ebp), %eax
	orl	-0xd8(%ebp), %eax
	testl	%eax, %eax
	je	.label_1418
	movl	-0xe0(%ebp), %eax
	movl	-0xdc(%ebp), %edx
	pushl	-0xd4(%ebp)
	pushl	-0xd8(%ebp)
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.label_1418
	pushl	-0xd4(%ebp)
	pushl	-0xd8(%ebp)
	pushl	-0xdc(%ebp)
	pushl	-0xe0(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x60(%ebp)
	movl	%edx, -0x5c(%ebp)
	movl	-0xd0(%ebp), %eax
	movl	-0xcc(%ebp), %edx
	pushl	-0x5c(%ebp)
	pushl	-0x60(%ebp)
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	imull	$0xa, %edx, %ebx
	imull	$0, %eax, %ecx
	addl	%ebx, %ecx
	movl	$0xa, %ebx
	mull	%ebx
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -0x58(%ebp)
	movl	%edx, -0x54(%ebp)
	movl	%eax, -0x58(%ebp)
	movl	%edx, -0x54(%ebp)
	movl	-0x58(%ebp), %eax
	movl	-0x54(%ebp), %edx
	pushl	-0x5c(%ebp)
	pushl	-0x60(%ebp)
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -0x50(%ebp)
	movl	%edx, -0x4c(%ebp)
	pushl	-0x5c(%ebp)
	pushl	-0x60(%ebp)
	pushl	-0xcc(%ebp)
	pushl	-0xd0(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x78(%ebp)
	movl	%edx, -0x74(%ebp)
	pushl	-0x5c(%ebp)
	pushl	-0x60(%ebp)
	pushl	-0x54(%ebp)
	pushl	-0x58(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0xc8(%ebp)
	movl	-0x50(%ebp), %eax
	movl	-0x4c(%ebp), %edx
	cmpl	-0x5c(%ebp), %edx
	ja	.label_1437
	cmpl	-0x5c(%ebp), %edx
	jb	.label_1440
	cmpl	-0x60(%ebp), %eax
	jae	.label_1437
.label_1440:
	movl	-0x50(%ebp), %eax
	orl	-0x4c(%ebp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.label_1438
.label_1437:
	movl	-0x60(%ebp), %eax
	movl	-0x5c(%ebp), %edx
	cmpl	-0x4c(%ebp), %edx
	ja	.label_1445
	cmpl	-0x4c(%ebp), %edx
	jb	.label_1450
	cmpl	-0x50(%ebp), %eax
	jae	.label_1445
.label_1450:
	movl	$3, %eax
	jmp	.label_1438
.label_1445:
	movl	$2, %eax
.label_1438:
	movl	%eax, -0xb4(%ebp)
	jmp	.label_1430
.label_1418:
	fildll	-0xe0(%ebp)
	cmpl	$0, -0xdc(%ebp)
	jns	.label_1456
	fldt	label_1396
	faddp	%st(1)
.label_1456:
	fstpt	-0x38(%ebp)
	fildll	-0xd0(%ebp)
	cmpl	$0, -0xcc(%ebp)
	jns	.label_1462
	fldt	label_1396
	faddp	%st(1)
.label_1462:
	fildll	-0xd8(%ebp)
	cmpl	$0, -0xd4(%ebp)
	jns	.label_1413
	fldt	label_1396
	faddp	%st(1)
.label_1413:
	fldt	-0x38(%ebp)
	fdivrp	%st(1)
	fmulp	%st(1)
	fstpt	-0x28(%ebp)
	movl	0x14(%ebp), %eax
	andl	$0x10, %eax
	testl	%eax, %eax
	jne	.label_1470
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	-0x9c(%ebp)
	calll	adjust_value
	addl	$0x10, %esp
	subl	$0xc, %esp
	leal	-0xc(%esp), %esp
	fstpt	0(%esp)
	pushl	$label_1419
	pushl	0x10(%ebp)
	calll	sprintf
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	0x10(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0xa4(%ebp)
	movl	$0, -0xa0(%ebp)
	jmp	.label_1429
.label_1470:
	fld1	
	fstpt	-0x48(%ebp)
	movl	$0, -0xc4(%ebp)
.label_1461:
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0xe8(%ebp)
	movl	%edx, -0xe4(%ebp)
	fildll	-0xe8(%ebp)
	fldt	-0x48(%ebp)
	fmulp	%st(1)
	fstpt	-0x48(%ebp)
	addl	$1, -0xc4(%ebp)
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	movl	%eax, -0xe8(%ebp)
	movl	%edx, -0xe4(%ebp)
	fildll	-0xe8(%ebp)
	fldt	-0x48(%ebp)
	fmulp	%st(1)
	fldt	-0x28(%ebp)
	fucompi	%st(1)
	fstp	%st(0)
	jb	.label_1439
	movl	-0xc4(%ebp), %eax
	cmpl	-0x94(%ebp), %eax
	jl	.label_1461
.label_1439:
	fldt	-0x28(%ebp)
	fldt	-0x48(%ebp)
	fdivrp	%st(1)
	fstpt	-0x28(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	-0x9c(%ebp)
	calll	adjust_value
	addl	$0x10, %esp
	subl	$0xc, %esp
	leal	-0xc(%esp), %esp
	fstpt	0(%esp)
	pushl	$label_1469
	pushl	0x10(%ebp)
	calll	sprintf
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	0x10(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0xa4(%ebp)
	movl	-0xac(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0xa0(%ebp)
	movl	0x14(%ebp), %eax
	andl	$0x20, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movl	-0xa0(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	cmpl	-0xa4(%ebp), %eax
	jb	.label_1417
	movl	0x14(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.label_1429
	movl	-0xa4(%ebp), %eax
	leal	-1(%eax), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x30, %al
	jne	.label_1429
.label_1417:
	fldt	-0x28(%ebp)
	fldt	label_1441
	fmulp	%st(1)
	leal	-0xc(%esp), %esp
	fstpt	0(%esp)
	pushl	-0x9c(%ebp)
	calll	adjust_value
	addl	$0x10, %esp
	fldt	label_1441
	fdivrp	%st(1)
	subl	$0xc, %esp
	leal	-0xc(%esp), %esp
	fstpt	0(%esp)
	pushl	$label_1419
	pushl	0x10(%ebp)
	calll	sprintf
	addl	$0x20, %esp
	subl	$0xc, %esp
	pushl	0x10(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0xa4(%ebp)
	movl	$0, -0xa0(%ebp)
.label_1429:
	movl	-0xa4(%ebp), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-0xbc(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xc0(%ebp)
	subl	$4, %esp
	pushl	-0xa4(%ebp)
	pushl	0x10(%ebp)
	pushl	-0xc0(%ebp)
	calll	memmove
	addl	$0x10, %esp
	movl	-0xa4(%ebp), %eax
	subl	-0xa0(%ebp), %eax
	movl	%eax, %edx
	movl	-0xc0(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0xb8(%ebp)
	jmp	.label_1471
.label_1430:
	movl	0x14(%ebp), %eax
	andl	$0x10, %eax
	testl	%eax, %eax
	je	.label_1421
	movl	$0, -0xc4(%ebp)
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	cmpl	-0x74(%ebp), %edx
	ja	.label_1421
	cmpl	-0x74(%ebp), %edx
	jb	.label_1434
	cmpl	-0x78(%ebp), %eax
	ja	.label_1421
.label_1434:
	movl	-0x98(%ebp), %ecx
	movl	$0, %ebx
	movl	-0x78(%ebp), %eax
	movl	-0x74(%ebp), %edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	%edx, %eax
	shll	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-0xc8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x84(%ebp)
	movl	-0x84(%ebp), %eax
	movl	$0, %edx
	divl	-0x98(%ebp)
	movl	%edx, %eax
	leal	0(%eax, %eax), %edx
	movl	-0xb4(%ebp), %eax
	sarl	$1, %eax
	addl	%edx, %eax
	movl	%eax, -0x80(%ebp)
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	pushl	%edx
	pushl	%eax
	pushl	-0x74(%ebp)
	pushl	-0x78(%ebp)
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x78(%ebp)
	movl	%edx, -0x74(%ebp)
	movl	-0x84(%ebp), %eax
	movl	$0, %edx
	divl	-0x98(%ebp)
	movl	%eax, -0xc8(%ebp)
	movl	-0x80(%ebp), %eax
	cmpl	-0x98(%ebp), %eax
	jae	.label_1460
	movl	-0xb4(%ebp), %edx
	movl	-0x80(%ebp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	jmp	.label_1458
.label_1460:
	movl	-0xb4(%ebp), %edx
	movl	-0x80(%ebp), %eax
	addl	%edx, %eax
	cmpl	-0x98(%ebp), %eax
	jbe	.label_1412
	movl	$3, %eax
	jmp	.label_1458
.label_1412:
	movl	$2, %eax
.label_1458:
	movl	%eax, -0xb4(%ebp)
	addl	$1, -0xc4(%ebp)
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	cmpl	-0x74(%ebp), %edx
	ja	.label_1425
	cmpl	-0x74(%ebp), %edx
	jb	.label_1433
	cmpl	-0x78(%ebp), %eax
	ja	.label_1425
.label_1433:
	movl	-0xc4(%ebp), %eax
	cmpl	-0x94(%ebp), %eax
	jl	.label_1434
.label_1425:
	cmpl	$0, -0x74(%ebp)
	ja	.label_1421
	cmpl	$0, -0x74(%ebp)
	jb	.label_1442
	cmpl	$9, -0x78(%ebp)
	ja	.label_1421
.label_1442:
	cmpl	$1, -0x9c(%ebp)
	jne	.label_1468
	movl	-0xc8(%ebp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-0xb4(%ebp), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	setg	%al
	jmp	.label_1449
.label_1468:
	cmpl	$0, -0x9c(%ebp)
	jne	.label_1454
	cmpl	$0, -0xb4(%ebp)
	jle	.label_1454
	movl	$1, %eax
	jmp	.label_1427
.label_1454:
	movl	$0, %eax
.label_1427:
	andl	$1, %eax
.label_1449:
	testb	%al, %al
	je	.label_1453
	addl	$1, -0xc8(%ebp)
	movl	$0, -0xb4(%ebp)
	cmpl	$0xa, -0xc8(%ebp)
	jne	.label_1453
	addl	$1, -0x78(%ebp)
	adcl	$0, -0x74(%ebp)
	movl	$0, -0xc8(%ebp)
.label_1453:
	cmpl	$0, -0x74(%ebp)
	ja	.label_1421
	cmpl	$0, -0x74(%ebp)
	jb	.label_1451
	cmpl	$9, -0x78(%ebp)
	ja	.label_1421
.label_1451:
	cmpl	$0, -0xc8(%ebp)
	jne	.label_1414
	movl	0x14(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.label_1421
.label_1414:
	subl	$1, -0xc0(%ebp)
	movl	-0xc8(%ebp), %eax
	addl	$0x30, %eax
	movl	%eax, %edx
	movl	-0xc0(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0xac(%ebp), %eax
	negl	%eax
	addl	%eax, -0xc0(%ebp)
	subl	$4, %esp
	pushl	-0xac(%ebp)
	pushl	-0xb0(%ebp)
	pushl	-0xc0(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	$0, -0xb4(%ebp)
	movl	-0xb4(%ebp), %eax
	movl	%eax, -0xc8(%ebp)
.label_1421:
	cmpl	$1, -0x9c(%ebp)
	jne	.label_1455
	movl	-0xb4(%ebp), %eax
	cltd	
	movl	-0x78(%ebp), %ecx
	andl	$1, %ecx
	movl	%ecx, %esi
	movl	-0x74(%ebp), %ecx
	andl	$0, %ecx
	movl	%ecx, %edi
	addl	%esi, %eax
	adcl	%edi, %edx
	orl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movl	-0xc8(%ebp), %eax
	addl	%edx, %eax
	cmpl	$5, %eax
	setg	%al
	jmp	.label_1444
.label_1455:
	cmpl	$0, -0x9c(%ebp)
	jne	.label_1436
	movl	-0xc8(%ebp), %edx
	movl	-0xb4(%ebp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jle	.label_1436
	movl	$1, %eax
	jmp	.label_1464
.label_1436:
	movl	$0, %eax
.label_1464:
	andl	$1, %eax
.label_1444:
	testb	%al, %al
	je	.label_1415
	addl	$1, -0x78(%ebp)
	adcl	$0, -0x74(%ebp)
	movl	0x14(%ebp), %eax
	andl	$0x10, %eax
	testl	%eax, %eax
	je	.label_1415
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	movl	%edx, %ecx
	xorl	-0x74(%ebp), %ecx
	xorl	-0x78(%ebp), %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1415
	movl	-0xc4(%ebp), %eax
	cmpl	-0x94(%ebp), %eax
	jge	.label_1415
	addl	$1, -0xc4(%ebp)
	movl	0x14(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.label_1422
	subl	$1, -0xc0(%ebp)
	movl	-0xc0(%ebp), %eax
	movb	$0x30, 0(%eax)
	movl	-0xac(%ebp), %eax
	negl	%eax
	addl	%eax, -0xc0(%ebp)
	subl	$4, %esp
	pushl	-0xac(%ebp)
	pushl	-0xb0(%ebp)
	pushl	-0xc0(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1422:
	movl	$1, -0x78(%ebp)
	movl	$0, -0x74(%ebp)
.label_1415:
	movl	-0xc0(%ebp), %eax
	movl	%eax, -0xb8(%ebp)
.label_1463:
	movl	-0x78(%ebp), %eax
	movl	-0x74(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	movl	%eax, -0x7c(%ebp)
	subl	$1, -0xc0(%ebp)
	movl	-0x7c(%ebp), %eax
	addl	$0x30, %eax
	movl	%eax, %edx
	movl	-0xc0(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x78(%ebp), %eax
	movl	-0x74(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x78(%ebp)
	movl	%edx, -0x74(%ebp)
	movl	-0x74(%ebp), %eax
	orl	-0x78(%ebp), %eax
	testl	%eax, %eax
	jne	.label_1463
.label_1471:
	movl	0x14(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.label_1466
	movl	-0xb8(%ebp), %edx
	movl	-0xc0(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	pushl	-0xa8(%ebp)
	pushl	-0x90(%ebp)
	pushl	%eax
	pushl	-0xc0(%ebp)
	calll	group_number
	addl	$0x10, %esp
	movl	%eax, -0xc0(%ebp)
.label_1466:
	movl	0x14(%ebp), %eax
	andl	$0x80, %eax
	testl	%eax, %eax
	je	.label_1416
	cmpl	$0, -0xc4(%ebp)
	jns	.label_1423
	movl	$0, -0xc4(%ebp)
	movl	$1, -0x70(%ebp)
	movl	$0, -0x6c(%ebp)
	jmp	.label_1426
.label_1424:
	addl	$1, -0xc4(%ebp)
	movl	-0xc4(%ebp), %eax
	cmpl	-0x94(%ebp), %eax
	je	.label_1432
	movl	-0x98(%ebp), %eax
	movl	$0, %edx
	movl	-0x6c(%ebp), %ecx
	movl	%ecx, %ebx
	imull	%eax, %ebx
	movl	-0x70(%ebp), %ecx
	imull	%edx, %ecx
	addl	%ebx, %ecx
	mull	-0x70(%ebp)
	addl	%edx, %ecx
	movl	%ecx, %edx
	movl	%eax, -0x70(%ebp)
	movl	%edx, -0x6c(%ebp)
	movl	%eax, -0x70(%ebp)
	movl	%edx, -0x6c(%ebp)
.label_1426:
	movl	-0x70(%ebp), %eax
	movl	-0x6c(%ebp), %edx
	cmpl	-0xdc(%ebp), %edx
	jb	.label_1424
	cmpl	-0xdc(%ebp), %edx
	ja	.label_1423
	cmpl	-0xe0(%ebp), %eax
	jb	.label_1424
	jmp	.label_1423
.label_1432:
	nop	
.label_1423:
	movl	0x14(%ebp), %eax
	andl	$0x100, %eax
	orl	-0xc4(%ebp), %eax
	testl	%eax, %eax
	je	.label_1457
	movl	0x14(%ebp), %eax
	andl	$0x40, %eax
	testl	%eax, %eax
	je	.label_1457
	movl	-0xbc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xbc(%ebp)
	movb	$0x20, 0(%eax)
.label_1457:
	cmpl	$0, -0xc4(%ebp)
	je	.label_1431
	movl	-0xbc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xbc(%ebp)
	movl	0x14(%ebp), %edx
	andl	$0x20, %edx
	testl	%edx, %edx
	jne	.label_1467
	cmpl	$1, -0xc4(%ebp)
	je	.label_1465
.label_1467:
	movl	-0xc4(%ebp), %edx
	addl	$power_letter,  %edx
	movzbl	0(%edx), %edx
	jmp	.label_1411
.label_1465:
	movl	$0x6b, %edx
.label_1411:
	movb	%dl, 0(%eax)
.label_1431:
	movl	0x14(%ebp), %eax
	andl	$0x100, %eax
	testl	%eax, %eax
	je	.label_1416
	movl	0x14(%ebp), %eax
	andl	$0x20, %eax
	testl	%eax, %eax
	je	.label_1459
	cmpl	$0, -0xc4(%ebp)
	je	.label_1459
	movl	-0xbc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xbc(%ebp)
	movb	$0x69, 0(%eax)
.label_1459:
	movl	-0xbc(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0xbc(%ebp)
	movb	$0x42, 0(%eax)
.label_1416:
	movl	-0xbc(%ebp), %eax
	movb	$0, 0(%eax)
	movl	-0xc0(%ebp), %eax
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056972

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$label_1472
	calll	getenv
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1474
	movl	$0x200, %eax
	movl	$0, %edx
	jmp	.label_1473
.label_1474:
	movl	$0x400, %eax
	movl	$0, %edx
.label_1473:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80569a4

	.globl humblock
	.type humblock, @function
humblock:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x18(%ebp)
	cmpl	$0, -0x2c(%ebp)
	jne	.label_1484
	subl	$0xc, %esp
	pushl	$label_1481
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x2c(%ebp)
	cmpl	$0, -0x2c(%ebp)
	jne	.label_1484
	subl	$0xc, %esp
	pushl	$label_1488
	calll	getenv
	addl	$0x10, %esp
	movl	%eax, -0x2c(%ebp)
	cmpl	$0, -0x2c(%ebp)
	jne	.label_1484
	calll	default_block_size
	movl	-0x30(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	jmp	.label_1476
.label_1484:
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x27, %al
	jne	.label_1482
	orl	$4, -0x18(%ebp)
	addl	$1, -0x2c(%ebp)
.label_1482:
	pushl	$4
	pushl	$block_size_opts
	pushl	$block_size_args
	pushl	-0x2c(%ebp)
	calll	argmatch
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	cmpl	$0, -0x14(%ebp)
	js	.label_1489
	movl	-0x14(%ebp), %eax
	movl	block_size_opts(, %eax, 4),  %eax
	orl	%eax, -0x18(%ebp)
	movl	-0x30(%ebp), %eax
	movl	$1, 0(%eax)
	movl	$0, 4(%eax)
	jmp	.label_1476
.label_1489:
	subl	$0xc, %esp
	pushl	$label_1487
	pushl	-0x30(%ebp)
	pushl	$0
	leal	-0x1c(%ebp), %eax
	pushl	%eax
	pushl	-0x2c(%ebp)
	calll	xstrtoumax
	addl	$0x20, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_1477
	movl	-0x34(%ebp), %eax
	movl	$0, 0(%eax)
	movl	-0x10(%ebp), %eax
	jmp	.label_1480
.label_1485:
	movl	-0x1c(%ebp), %eax
	cmpl	%eax, -0x2c(%ebp)
	jne	.label_1483
	orl	$0x80, -0x18(%ebp)
	movl	-0x1c(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x42, %al
	jne	.label_1486
	orl	$0x100, -0x18(%ebp)
.label_1486:
	movl	-0x1c(%ebp), %eax
	subl	$1, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x42, %al
	jne	.label_1475
	movl	-0x1c(%ebp), %eax
	subl	$2, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x69, %al
	jne	.label_1479
.label_1475:
	orl	$0x20, -0x18(%ebp)
	jmp	.label_1479
.label_1483:
	addl	$1, -0x2c(%ebp)
.label_1477:
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jle	.label_1485
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x39, %al
	jg	.label_1485
	jmp	.label_1476
.label_1479:
	nop	
.label_1476:
	movl	-0x34(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	$0, %eax
.label_1480:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1478
	calll	__stack_chk_fail
.label_1478:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056b1d

	.globl human_options
	.type human_options, @function
human_options:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	0x10(%ebp)
	pushl	8(%ebp)
	calll	humblock
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	0x10(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.label_1490
	calll	default_block_size
	movl	0x10(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	$4, -0xc(%ebp)
.label_1490:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056b61

	.globl getuser
	.type getuser, @function
getuser:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x14(%ebp)
	movl	user_alist,  %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_1491
.label_1495:
	movl	-0x18(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.label_1498
	movl	-0x18(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_1492
.label_1498:
	movl	-0x18(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x18(%ebp)
.label_1491:
	cmpl	$0, -0x18(%ebp)
	jne	.label_1495
.label_1492:
	cmpl	$0, -0x14(%ebp)
	jne	.label_1497
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getpwuid
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_1500
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	jmp	.label_1496
.label_1500:
	movl	$label_1494,  %eax
.label_1496:
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$0xc, %eax
	andl	$0xfffffffc, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x14(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	-0xc(%ebp)
	pushl	%eax
	calll	strcpy
	addl	$0x10, %esp
	movl	user_alist,  %edx
	movl	-0x14(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x14(%ebp), %eax
	movl	%eax, user_alist
.label_1497:
	movl	-0x14(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.label_1499
	movl	-0x14(%ebp), %eax
	addl	$8, %eax
	jmp	.label_1493
.label_1499:
	movl	$0, %eax
.label_1493:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056c33
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	user_alist,  %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1507
.label_1508:
	movl	-0x10(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	jne	.label_1501
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1501
	movl	-0x10(%ebp), %eax
	jmp	.label_1506
.label_1501:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1507:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1508
	movl	nouser_alist,  %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1502
.label_1503:
	movl	-0x10(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	jne	.label_1504
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1504
	movl	$0, %eax
	jmp	.label_1506
.label_1504:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1502:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1503
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getpwnam
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$0xc, %eax
	andl	$0xfffffffc, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcpy
	addl	$0x10, %esp
	cmpl	$0, -0xc(%ebp)
	je	.label_1505
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	user_alist,  %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x10(%ebp), %eax
	movl	%eax, user_alist
	movl	-0x10(%ebp), %eax
	jmp	.label_1506
.label_1505:
	movl	nouser_alist,  %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x10(%ebp), %eax
	movl	%eax, nouser_alist
	movl	$0, %eax
.label_1506:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056d5f

	.globl getgroup
	.type getgroup, @function
getgroup:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x14(%ebp)
	movl	group_alist,  %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_1517
.label_1513:
	movl	-0x18(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.label_1515
	movl	-0x18(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_1509
.label_1515:
	movl	-0x18(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x18(%ebp)
.label_1517:
	cmpl	$0, -0x18(%ebp)
	jne	.label_1513
.label_1509:
	cmpl	$0, -0x14(%ebp)
	jne	.label_1516
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getgrgid
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_1511
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	jmp	.label_1514
.label_1511:
	movl	$label_1494,  %eax
.label_1514:
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$0xc, %eax
	andl	$0xfffffffc, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x14(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	-0xc(%ebp)
	pushl	%eax
	calll	strcpy
	addl	$0x10, %esp
	movl	group_alist,  %edx
	movl	-0x14(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x14(%ebp), %eax
	movl	%eax, group_alist
.label_1516:
	movl	-0x14(%ebp), %eax
	movzbl	8(%eax), %eax
	testb	%al, %al
	je	.label_1512
	movl	-0x14(%ebp), %eax
	addl	$8, %eax
	jmp	.label_1510
.label_1512:
	movl	$0, %eax
.label_1510:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056e31
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	group_alist,  %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1524
.label_1525:
	movl	-0x10(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	jne	.label_1518
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1518
	movl	-0x10(%ebp), %eax
	jmp	.label_1520
.label_1518:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1524:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1525
	movl	nogroup_alist,  %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_1519
.label_1521:
	movl	-0x10(%ebp), %eax
	movzbl	8(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	%al, %dl
	jne	.label_1522
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1522
	movl	$0, %eax
	jmp	.label_1520
.label_1522:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
.label_1519:
	cmpl	$0, -0x10(%ebp)
	jne	.label_1521
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	getgrnam
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$0xc, %eax
	andl	$0xfffffffc, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	strcpy
	addl	$0x10, %esp
	cmpl	$0, -0xc(%ebp)
	je	.label_1523
	movl	-0xc(%ebp), %eax
	movl	8(%eax), %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	group_alist,  %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x10(%ebp), %eax
	movl	%eax, group_alist
	movl	-0x10(%ebp), %eax
	jmp	.label_1520
.label_1523:
	movl	nogroup_alist,  %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-0x10(%ebp), %eax
	movl	%eax, nogroup_alist
	movl	$0, %eax
.label_1520:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8056f5d

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	addl	$0x14, %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movb	$0, 0(%eax)
	cmpl	$0, -0x1c(%ebp)
	jns	.label_1527
.label_1528:
	subl	$1, -0xc(%ebp)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__moddi3
	addl	$0x10, %esp
	movl	$0x30, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__divdi3
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	-0x1c(%ebp), %eax
	orl	-0x20(%ebp), %eax
	testl	%eax, %eax
	jne	.label_1528
	subl	$1, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movb	$0x2d, 0(%eax)
	jmp	.label_1526
.label_1527:
	subl	$1, -0xc(%ebp)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__moddi3
	addl	$0x10, %esp
	addl	$0x30, %eax
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__divdi3
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	-0x1c(%ebp), %eax
	orl	-0x20(%ebp), %eax
	testl	%eax, %eax
	jne	.label_1527
.label_1526:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057027

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	addl	$0x14, %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	movb	$0, 0(%eax)
.label_1529:
	subl	$1, -0xc(%ebp)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__umoddi3
	addl	$0x10, %esp
	addl	$0x30, %eax
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x20(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	pushl	$0
	pushl	$0xa
	pushl	%edx
	pushl	%eax
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	-0x1c(%ebp), %eax
	orl	-0x20(%ebp), %eax
	testl	%eax, %eax
	jne	.label_1529
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057093

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movb	$0, -0xd(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	jmp	.label_1531
.label_1532:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	iswprint
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1530
	movl	-0xc(%ebp), %eax
	movl	$0xfffd, 0(%eax)
	movb	$1, -0xd(%ebp)
.label_1530:
	addl	$4, -0xc(%ebp)
.label_1531:
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1532
	movzbl	-0xd(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80570da

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x10(%ebp)
	movl	$0, -0xc(%ebp)
	jmp	.label_1535
.label_1533:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	wcwidth
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$-1, -0xc(%ebp)
	jne	.label_1537
	movl	8(%ebp), %eax
	movl	$0xfffd, 0(%eax)
	movl	$1, -0xc(%ebp)
.label_1537:
	movl	-0xc(%ebp), %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	cmpl	0xc(%ebp), %eax
	ja	.label_1534
	movl	-0xc(%ebp), %eax
	addl	%eax, -0x10(%ebp)
	addl	$4, 8(%ebp)
.label_1535:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_1533
	jmp	.label_1536
.label_1534:
	nop	
.label_1536:
	movl	8(%ebp), %eax
	movl	$0, 0(%eax)
	movl	-0x10(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805714b

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	pushl	%ebp
	movl	%esp, %ebp
	jmp	.label_1539
.label_1538:
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, 8(%ebp)
	movb	$0x20, 0(%eax)
.label_1539:
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, 0x10(%ebp)
	testl	%eax, %eax
	je	.label_1540
	movl	8(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jb	.label_1538
.label_1540:
	movl	8(%ebp), %eax
	movb	$0, 0(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805717c

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	$0xffffffff, -0x3c(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	movl	%eax, -0x38(%ebp)
	movl	$0, -0x34(%ebp)
	movl	$0, -0x30(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	-0x38(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -0x28(%ebp)
	movl	-0x28(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	$0, -0x20(%ebp)
	movb	$0, -0x3e(%ebp)
	movb	$0, -0x3d(%ebp)
	movl	0x1c(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.label_1544
	calll	__ctype_get_mb_cur_max
	cmpl	$1, %eax
	jbe	.label_1544
	subl	$4, %esp
	pushl	$0
	pushl	8(%ebp)
	pushl	$0
	calll	mbstowcs
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	cmpl	$-1, -0x14(%ebp)
	jne	.label_1556
	movl	0x1c(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1542
	jmp	.label_1541
.label_1556:
	addl	$1, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	shll	$2, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0x30(%ebp)
	cmpl	$0, -0x30(%ebp)
	jne	.label_1545
	movl	0x1c(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1548
	jmp	.label_1541
.label_1545:
	subl	$4, %esp
	pushl	-0x14(%ebp)
	pushl	8(%ebp)
	pushl	-0x30(%ebp)
	calll	mbstowcs
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1544
	movl	-0x14(%ebp), %eax
	addl	$0x3fffffff, %eax
	leal	0(, %eax, 4), %edx
	movl	-0x30(%ebp), %eax
	addl	%edx, %eax
	movl	$0, 0(%eax)
	movb	$1, -0x3d(%ebp)
	subl	$0xc, %esp
	pushl	-0x30(%ebp)
	calll	wc_ensure_printable
	addl	$0x10, %esp
	movb	%al, -0x3e(%ebp)
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	-0x30(%ebp)
	calll	wcswidth
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
.label_1544:
	cmpb	$0, -0x3d(%ebp)
	je	.label_1541
	cmpb	$0, -0x3e(%ebp)
	jne	.label_1546
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x28(%ebp), %eax
	jae	.label_1541
.label_1546:
	cmpb	$0, -0x3e(%ebp)
	je	.label_1551
	subl	$4, %esp
	pushl	$0
	pushl	-0x30(%ebp)
	pushl	$0
	calll	wcstombs
	addl	$0x10, %esp
	addl	$1, %eax
	movl	%eax, -0x38(%ebp)
.label_1551:
	subl	$0xc, %esp
	pushl	-0x38(%ebp)
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0x34(%ebp)
	cmpl	$0, -0x34(%ebp)
	jne	.label_1558
	movl	0x1c(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1559
	jmp	.label_1541
.label_1558:
	movl	-0x34(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x30(%ebp)
	calll	wc_truncate
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
	subl	$4, %esp
	pushl	-0x38(%ebp)
	pushl	-0x30(%ebp)
	pushl	-0x34(%ebp)
	calll	wcstombs
	addl	$0x10, %esp
	movl	%eax, -0x24(%ebp)
.label_1541:
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x28(%ebp), %eax
	jae	.label_1549
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x28(%ebp)
	movl	-0x28(%ebp), %eax
	movl	%eax, -0x24(%ebp)
.label_1549:
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x28(%ebp), %eax
	jbe	.label_1553
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	-0x28(%ebp), %eax
	movl	%eax, -0x20(%ebp)
.label_1553:
	movl	0x14(%ebp), %eax
	movl	-0x28(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	0x18(%ebp), %eax
	testl	%eax, %eax
	je	.label_1557
	cmpl	$1, %eax
	je	.label_1550
	jmp	.label_1560
.label_1557:
	movl	$0, -0x1c(%ebp)
	movl	-0x20(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_1543
.label_1550:
	movl	-0x20(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	$0, -0x18(%ebp)
	jmp	.label_1543
.label_1560:
	movl	-0x20(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, %edx
	movl	-0x20(%ebp), %eax
	andl	$1, %eax
	addl	%edx, %eax
	movl	%eax, -0x1c(%ebp)
	movl	-0x20(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, -0x18(%ebp)
	nop	
.label_1543:
	movl	0x1c(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.label_1547
	movl	$0, -0x1c(%ebp)
.label_1547:
	movl	0x1c(%ebp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.label_1555
	movl	$0, -0x18(%ebp)
.label_1555:
	cmpl	$0, 0x10(%ebp)
	je	.label_1554
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x10(%ebp)
	subl	$4, %esp
	pushl	-0x1c(%ebp)
	pushl	-0x10(%ebp)
	pushl	0xc(%ebp)
	calll	mbs_align_pad
	addl	$0x10, %esp
	movl	%eax, 0xc(%ebp)
	movl	-0x10(%ebp), %edx
	movl	0xc(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x24(%ebp), %eax
	cmpl	%eax, -0xc(%ebp)
	cmovbel	-0xc(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	-0x2c(%ebp)
	pushl	0xc(%ebp)
	calll	mempcpy
	addl	$0x10, %esp
	movl	%eax, 0xc(%ebp)
	subl	$4, %esp
	pushl	-0x18(%ebp)
	pushl	-0x10(%ebp)
	pushl	0xc(%ebp)
	calll	mbs_align_pad
	addl	$0x10, %esp
.label_1554:
	movl	-0x1c(%ebp), %edx
	movl	-0x18(%ebp), %eax
	addl	%eax, %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x3c(%ebp)
	jmp	.label_1552
.label_1542:
	nop	
	jmp	.label_1552
.label_1548:
	nop	
	jmp	.label_1552
.label_1559:
	nop	
.label_1552:
	subl	$0xc, %esp
	pushl	-0x30(%ebp)
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x34(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0x3c(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805747c
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	$0, -0x14(%ebp)
	jmp	.label_1562
.label_1563:
	movl	-0x18(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0x1c(%ebp)
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	-0x14(%ebp)
	calll	realloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_1564
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	$0, -0x14(%ebp)
	jmp	.label_1561
.label_1564:
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	movl	0xc(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 0(%eax)
	subl	$8, %esp
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x14(%ebp)
	pushl	8(%ebp)
	calll	mbsalign
	addl	$0x20, %esp
	movl	%eax, -0x18(%ebp)
	cmpl	$-1, -0x18(%ebp)
	jne	.label_1562
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	$0, -0x14(%ebp)
	jmp	.label_1561
.label_1562:
	movl	-0x18(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jae	.label_1563
.label_1561:
	movl	-0x14(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805753a

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	calll	mbsnwidth
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057562

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x3c(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	-0x28(%ebp), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x1c(%ebp)
	movl	$0, -0x24(%ebp)
	calll	__ctype_get_mb_cur_max
	cmpl	$1, %eax
	jbe	.label_1570
	jmp	.label_1579
.label_1589:
	movl	-0x28(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x3f, %eax
	jg	.label_1574
	cmpl	$0x25, %eax
	jge	.label_1575
	subl	$0x20, %eax
	cmpl	$3, %eax
	ja	.label_1578
	jmp	.label_1575
.label_1574:
	cmpl	$0x41, %eax
	jl	.label_1578
	cmpl	$0x5f, %eax
	jle	.label_1575
	subl	$0x61, %eax
	cmpl	$0x1d, %eax
	ja	.label_1578
.label_1575:
	addl	$1, -0x28(%ebp)
	addl	$1, -0x24(%ebp)
	jmp	.label_1579
.label_1578:
	subl	$4, %esp
	pushl	$8
	pushl	$0
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	memset
	addl	$0x10, %esp
.label_1573:
	movl	-0x1c(%ebp), %edx
	movl	-0x28(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	%edx
	pushl	-0x28(%ebp)
	leal	-0x2c(%ebp), %eax
	pushl	%eax
	calll	rpl_mbrtowc
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	cmpl	$-1, -0x20(%ebp)
	jne	.label_1566
	movl	0x10(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.label_1571
	addl	$1, -0x28(%ebp)
	addl	$1, -0x24(%ebp)
	jmp	.label_1576
.label_1571:
	movl	$0xffffffff, %eax
	jmp	.label_1565
.label_1566:
	cmpl	$-2, -0x20(%ebp)
	jne	.label_1580
	movl	0x10(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.label_1581
	movl	-0x1c(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	addl	$1, -0x24(%ebp)
	jmp	.label_1576
.label_1581:
	movl	$0xffffffff, %eax
	jmp	.label_1565
.label_1580:
	cmpl	$0, -0x20(%ebp)
	jne	.label_1586
	movl	$1, -0x20(%ebp)
.label_1586:
	movl	-0x2c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	wcwidth
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	cmpl	$0, -0x18(%ebp)
	js	.label_1590
	movl	$0x7fffffff, %eax
	subl	-0x24(%ebp), %eax
	cmpl	-0x18(%ebp), %eax
	jl	.label_1568
	movl	-0x18(%ebp), %eax
	addl	%eax, -0x24(%ebp)
	jmp	.label_1577
.label_1590:
	movl	0x10(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.label_1572
	movl	-0x2c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	iswcntrl
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1577
	cmpl	$0x7fffffff, -0x24(%ebp)
	je	.label_1585
	addl	$1, -0x24(%ebp)
	jmp	.label_1577
.label_1572:
	movl	$0xffffffff, %eax
	jmp	.label_1565
.label_1577:
	movl	-0x20(%ebp), %eax
	addl	%eax, -0x28(%ebp)
	subl	$0xc, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	mbsinit
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1573
.label_1576:
	nop	
.label_1579:
	movl	-0x28(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jb	.label_1589
	movl	-0x24(%ebp), %eax
	jmp	.label_1565
.label_1567:
	movl	-0x28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x28(%ebp)
	movzbl	0(%eax), %eax
	movb	%al, -0x2d(%ebp)
	calll	__ctype_b_loc
	movl	0(%eax), %eax
	movzbl	-0x2d(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x4000, %eax
	testl	%eax, %eax
	je	.label_1584
	cmpl	$0x7fffffff, -0x24(%ebp)
	je	.label_1587
	addl	$1, -0x24(%ebp)
	jmp	.label_1570
.label_1584:
	movl	0x10(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.label_1583
	calll	__ctype_b_loc
	movl	0(%eax), %eax
	movzbl	-0x2d(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.label_1570
	cmpl	$0x7fffffff, -0x24(%ebp)
	je	.label_1588
	addl	$1, -0x24(%ebp)
	jmp	.label_1570
.label_1583:
	movl	$0xffffffff, %eax
	jmp	.label_1565
.label_1570:
	movl	-0x28(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jb	.label_1567
	movl	-0x24(%ebp), %eax
	jmp	.label_1565
.label_1568:
	nop	
	jmp	.label_1569
.label_1585:
	nop	
	jmp	.label_1569
.label_1587:
	nop	
	jmp	.label_1569
.label_1588:
	nop	
.label_1569:
	movl	$0x7fffffff, %eax
.label_1565:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1582
	calll	__stack_chk_fail
.label_1582:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80577b7

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0xc(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, -0x14(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x14(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	$0, -0x28(%ebp)
	movl	-0x14(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x14(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x14(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	-0x10(%ebp)
	pushl	%eax
	calll	mpsort_with_tmp
	addl	$0x10, %esp
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	-0x14(%ebp)
	pushl	8(%ebp)
	calll	mpsort_with_tmp
	addl	$0x10, %esp
	movl	-0x28(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	-0x20(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
.label_1591:
	subl	$8, %esp
	pushl	-0x18(%ebp)
	pushl	-0x1c(%ebp)
	movl	0x14(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	testl	%eax, %eax
	jg	.label_1593
	movl	0x10(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, 0x10(%ebp)
	movl	-0x1c(%ebp), %edx
	movl	%edx, 0(%eax)
	addl	$1, -0x28(%ebp)
	movl	-0x28(%ebp), %eax
	cmpl	-0x24(%ebp), %eax
	jne	.label_1595
	movl	-0x20(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	jmp	.label_1594
.label_1595:
	movl	-0x28(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	jmp	.label_1591
.label_1593:
	movl	0x10(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, 0x10(%ebp)
	movl	-0x18(%ebp), %edx
	movl	%edx, 0(%eax)
	addl	$1, -0x20(%ebp)
	movl	-0x20(%ebp), %eax
	cmpl	-0xc(%ebp), %eax
	je	.label_1592
	movl	-0x20(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_1591
.label_1592:
	nop	
.label_1594:
	movl	-0x24(%ebp), %eax
	subl	-0x28(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	-0x28(%ebp), %eax
	leal	0(, %eax, 4), %ecx
	movl	8(%ebp), %eax
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	%eax
	pushl	0x10(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x80578fa

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x34, %esp
	cmpl	$2, 0xc(%ebp)
	ja	.label_1602
	cmpl	$2, 0xc(%ebp)
	jne	.label_1597
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x20(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	movl	0x14(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	testl	%eax, %eax
	jle	.label_1597
	movl	8(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	-0x20(%ebp), %eax
	movl	%eax, 0(%edx)
	jmp	.label_1597
.label_1602:
	movl	0xc(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, -0x18(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x18(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	movl	$0, -0x30(%ebp)
	movl	-0x18(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x18(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x18(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	-0x14(%ebp)
	pushl	%eax
	calll	mpsort_with_tmp
	addl	$0x10, %esp
	cmpl	$1, -0x18(%ebp)
	ja	.label_1603
	movl	8(%ebp), %eax
	movl	0(%eax), %edx
	movl	0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	jmp	.label_1596
.label_1603:
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	-0x18(%ebp)
	pushl	8(%ebp)
	calll	mpsort_into_tmp
	addl	$0x10, %esp
.label_1596:
	movl	-0x30(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x2c(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x28(%ebp)
	movl	$0, -0x34(%ebp)
.label_1599:
	subl	$8, %esp
	pushl	-0x28(%ebp)
	pushl	-0x24(%ebp)
	movl	0x14(%ebp), %eax
	calll	*%eax
	addl	$0x10, %esp
	testl	%eax, %eax
	jg	.label_1601
	movl	-0x34(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x34(%ebp)
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-0x24(%ebp), %eax
	movl	%eax, 0(%edx)
	addl	$1, -0x30(%ebp)
	movl	-0x30(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	je	.label_1598
	movl	-0x30(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x24(%ebp)
	jmp	.label_1599
.label_1601:
	movl	-0x34(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x34(%ebp)
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-0x28(%ebp), %eax
	movl	%eax, 0(%edx)
	addl	$1, -0x2c(%ebp)
	movl	-0x2c(%ebp), %eax
	cmpl	-0xc(%ebp), %eax
	jne	.label_1600
	movl	-0x10(%ebp), %eax
	subl	-0x30(%ebp), %eax
	leal	0(, %eax, 4), %ecx
	movl	-0x30(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0x10(%ebp), %eax
	addl	%eax, %edx
	movl	-0x34(%ebp), %eax
	leal	0(, %eax, 4), %ebx
	movl	8(%ebp), %eax
	addl	%ebx, %eax
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	memcpy
	addl	$0x10, %esp
	jmp	.label_1597
.label_1600:
	movl	-0x2c(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x28(%ebp)
	jmp	.label_1599
.label_1598:
	nop	
.label_1597:
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057ac9

	.globl mpsort
	.type mpsort, @function
mpsort:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	0xc(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	pushl	0x10(%ebp)
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	mpsort_with_tmp
	addl	$0x10, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057af3

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	jmp	.label_1605
.label_1604:
	movl	8(%ebp), %edx
	movl	0x10(%ebp), %eax
	leal	0(%edx, %eax), %ebx
	movl	0xc(%ebp), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	tolower
	addl	$0x10, %esp
	movb	%al, 0(%ebx)
.label_1605:
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, 0x10(%ebp)
	testl	%eax, %eax
	jne	.label_1604
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057b36

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	jmp	.label_1607
.label_1606:
	movl	8(%ebp), %edx
	movl	0x10(%ebp), %eax
	leal	0(%edx, %eax), %ebx
	movl	0xc(%ebp), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	toupper
	addl	$0x10, %esp
	movb	%al, 0(%ebx)
.label_1607:
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, 0x10(%ebp)
	testl	%eax, %eax
	jne	.label_1606
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057b79

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0x17a, -4(%ebp)
	movl	8(%ebp), %eax
	subl	0xc(%ebp), %eax
	leal	4(%eax), %edx
	movl	-4(%ebp), %eax
	leal	0(%edx, %eax), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	shll	$3, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	8(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$3, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057bc6

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movb	$0, -0xd(%ebp)
	pushl	0x1c(%ebp)
	pushl	-0x28(%ebp)
	leal	-0xd(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	-0x24(%ebp)
	pushl	-0x20(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x1c(%ebp)
	calll	__strftime_internal
	addl	$0x20, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1608
	calll	__stack_chk_fail
.label_1608:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x8057c26

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x5c0, %esp
	movl	0x18(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, -0x5ac(%ebp)
	movl	0x10(%ebp), %edx
	movl	%edx, -0x5b0(%ebp)
	movl	0x14(%ebp), %edx
	movl	%edx, -0x5b4(%ebp)
	movb	%al, -0x5b8(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0x5bc(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0x5c0(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x5b4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x59c(%ebp)
	movl	$0, -0x594(%ebp)
	movl	-0x5ac(%ebp), %eax
	movl	%eax, -0x590(%ebp)
	movl	$0, -0x598(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x28(%eax), %eax
	movl	%eax, -0x598(%ebp)
	cmpl	$0, -0x598(%ebp)
	jne	.label_1616
	movl	$label_1646, -1432(%ebp)
.label_1616:
	cmpl	$0xc, -0x59c(%ebp)
	jle	.label_1648
	subl	$0xc, -0x59c(%ebp)
	jmp	.label_1652
.label_1648:
	cmpl	$0, -0x59c(%ebp)
	jne	.label_1652
	movl	$0xc, -0x59c(%ebp)
.label_1652:
	movl	-0x5b0(%ebp), %eax
	movl	%eax, -0x58c(%ebp)
	jmp	.label_1658
.label_1747:
	movl	$0, -0x588(%ebp)
	movl	$0, -0x580(%ebp)
	movl	$0xffffffff, -0x568(%ebp)
	movb	$0, -0x5a0(%ebp)
	movzbl	-0x5b8(%ebp), %eax
	movb	%al, -0x59f(%ebp)
	movb	$0, -0x59e(%ebp)
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x25, %al
	je	.label_1661
	movl	$1, -0x450(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x44c(%ebp)
	movl	-0x44c(%ebp), %eax
	cmpl	%eax, -0x450(%ebp)
	cmovael	-0x450(%ebp), %eax
	movl	%eax, -0x448(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x448(%ebp), %eax
	ja	.label_1670
	movl	$0, %eax
	jmp	.label_1618
.label_1670:
	cmpl	$0, -0x590(%ebp)
	je	.label_1686
	cmpl	$0, -0x580(%ebp)
	jne	.label_1687
	movl	-0x450(%ebp), %eax
	cmpl	-0x44c(%ebp), %eax
	jae	.label_1687
	movl	-0x568(%ebp), %eax
	subl	-0x450(%ebp), %eax
	movl	%eax, -0x444(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	.label_1691
	subl	$4, %esp
	pushl	-0x444(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x444(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1687
.label_1691:
	subl	$4, %esp
	pushl	-0x444(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x444(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1687:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %edx
	movl	-0x590(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x450(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1686:
	movl	-0x448(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_1661:
	addl	$1, -0x58c(%ebp)
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x30, %eax
	je	.label_1699
	cmpl	$0x30, %eax
	jg	.label_1638
	cmpl	$0x23, %eax
	je	.label_1720
	cmpl	$0x2d, %eax
	je	.label_1699
	jmp	.label_1737
.label_1638:
	cmpl	$0x5e, %eax
	je	.label_1722
	cmpl	$0x5f, %eax
	je	.label_1699
	jmp	.label_1737
.label_1699:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -0x588(%ebp)
	jmp	.label_1724
.label_1722:
	movb	$1, -0x59f(%ebp)
	jmp	.label_1724
.label_1720:
	movb	$1, -0x59e(%ebp)
	jmp	.label_1724
.label_1737:
	nop	
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x30, %eax
	cmpl	$9, %eax
	ja	.label_1728
	jmp	.label_1731
.label_1724:
	jmp	.label_1661
.label_1731:
	movl	$0, -0x568(%ebp)
.label_1751:
	cmpl	$0xccccccc, -0x568(%ebp)
	jg	.label_1735
	cmpl	$0xccccccc, -0x568(%ebp)
	jne	.label_1738
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x30, %eax
	cmpl	$7, %eax
	jle	.label_1738
.label_1735:
	movl	$0x7fffffff, -0x568(%ebp)
	jmp	.label_1743
.label_1738:
	movl	-0x568(%ebp), %edx
	movl	%edx, %eax
	shll	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -0x568(%ebp)
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x30, %eax
	addl	%eax, -0x568(%ebp)
.label_1743:
	addl	$1, -0x58c(%ebp)
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x30, %eax
	cmpl	$9, %eax
	jbe	.label_1751
.label_1728:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x45, %eax
	je	.label_1754
	cmpl	$0x4f, %eax
	jne	.label_1755
.label_1754:
	movl	-0x58c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x58c(%ebp)
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -0x584(%ebp)
	jmp	.label_1757
.label_1755:
	movl	$0, -0x584(%ebp)
	nop	
.label_1757:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, -0x560(%ebp)
	cmpl	$0x7a, -0x560(%ebp)
	ja	.label_1645
	movl	-0x560(%ebp), %eax
	shll	$2, %eax
	addl	$label_1763,  %eax
	movl	0(%eax), %eax
	jmpl	*%eax
.label_2440:
	cmpl	$0, -0x584(%ebp)
	jne	.label_1769
	movl	$1, -0x540(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x53c(%ebp)
	movl	-0x53c(%ebp), %eax
	cmpl	%eax, -0x540(%ebp)
	cmovael	-0x540(%ebp), %eax
	movl	%eax, -0x538(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x538(%ebp), %eax
	ja	.label_1710
	movl	$0, %eax
	jmp	.label_1618
.label_1710:
	cmpl	$0, -0x590(%ebp)
	je	.label_1615
	cmpl	$0, -0x580(%ebp)
	jne	.label_1619
	movl	-0x540(%ebp), %eax
	cmpl	-0x53c(%ebp), %eax
	jae	.label_1619
	movl	-0x568(%ebp), %eax
	subl	-0x540(%ebp), %eax
	movl	%eax, -0x534(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_805808b
	.section	.text
	.align	32

	.globl sub_8058064
	.type sub_8058064, @function
sub_8058064:

	subl	$4, %esp
	pushl	-0x534(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x534(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1619
	.section	.text
	.align	32


	.globl sub_805808b
	.type sub_805808b, @function
sub_805808b:
	subl	$4, %esp
	pushl	-0x534(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x534(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1619:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %edx
	movl	-0x590(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x540(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1615:
	movl	-0x538(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2461:
	cmpl	$0, -0x584(%ebp)
	jne	.label_1655
	cmpb	$0, -0x59e(%ebp)
	je	.label_1659
	movb	$1, -0x59f(%ebp)
	movb	$0, -0x5a0(%ebp)
	jmp	.label_1659
.label_2442:
	cmpl	$0, -0x584(%ebp)
	jne	.label_1663
	cmpb	$0, -0x59e(%ebp)
	je	.label_1666
	movb	$1, -0x59f(%ebp)
	movb	$0, -0x5a0(%ebp)
	jmp	.label_1666
.label_2462:
	cmpb	$0, -0x59e(%ebp)
	je	.label_1667
	movb	$1, -0x59f(%ebp)
	movb	$0, -0x5a0(%ebp)
.label_1667:
	cmpl	$0x45, -0x584(%ebp)
	jne	.label_1674
	jmp	.label_1645
.label_2443:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1642
	cmpb	$0, -0x59e(%ebp)
	je	.label_1656
	movb	$1, -0x59f(%ebp)
	movb	$0, -0x5a0(%ebp)
	jmp	.label_1656
.label_2463:
	cmpl	$0x4f, -0x584(%ebp)
	jne	.label_1684
	jmp	.label_1645
.label_1650:
	movzbl	-0x59f(%ebp), %eax
	pushl	0x24(%ebp)
	pushl	-0x5c0(%ebp)
	pushl	-0x5bc(%ebp)
	pushl	%eax
	pushl	-0x5b4(%ebp)
	pushl	-0x570(%ebp)
	pushl	$-1
	pushl	$0
	calll	__strftime_internal
	addl	$0x20, %esp
	movl	%eax, -0x530(%ebp)
	movl	-0x530(%ebp), %eax
	movl	%eax, -0x52c(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x528(%ebp)
	movl	-0x528(%ebp), %eax
	cmpl	%eax, -0x52c(%ebp)
	cmovael	-0x52c(%ebp), %eax
	movl	%eax, -0x524(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x524(%ebp), %eax
	ja	.label_1700
	movl	$0, %eax
	jmp	.label_1618
.label_1700:
	cmpl	$0, -0x590(%ebp)
	je	.label_1712
	cmpl	$0, -0x580(%ebp)
	jne	.label_1714
	movl	-0x52c(%ebp), %eax
	cmpl	-0x528(%ebp), %eax
	jae	.label_1714
	movl	-0x568(%ebp), %eax
	subl	-0x52c(%ebp), %eax
	movl	%eax, -0x520(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_8058294
	.section	.text
	.align	32

	.globl sub_805826d
	.type sub_805826d, @function
sub_805826d:

	subl	$4, %esp
	pushl	-0x520(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x520(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1714
	.section	.text
	.align	32


	.globl sub_8058294
	.type sub_8058294, @function
sub_8058294:
	subl	$4, %esp
	pushl	-0x520(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x520(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1714:
	movzbl	-0x59f(%ebp), %edx
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	pushl	0x24(%ebp)
	pushl	-0x5c0(%ebp)
	pushl	-0x5bc(%ebp)
	pushl	%edx
	pushl	-0x5b4(%ebp)
	pushl	-0x570(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	__strftime_internal
	addl	$0x20, %esp
	movl	-0x52c(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1712:
	movl	-0x524(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2473:
	nop	
	jmp	.label_1729
.label_1659:
	nop	
	jmp	.label_1729
.label_1666:
	nop	
	jmp	.label_1729
.label_1674:
	nop	
	jmp	.label_1729
.label_1656:
	nop	
	jmp	.label_1729
.label_1684:
	nop	
	jmp	.label_1729
.label_1675:
	nop	
	jmp	.label_1729
.label_1702:
	nop	
	jmp	.label_1729
.label_1736:
	nop	
	jmp	.label_1729
.label_1701:
	nop	
	jmp	.label_1729
.label_1611:
	nop	
	jmp	.label_1729
.label_1681:
	nop	
	jmp	.label_1729
.label_1692:
	nop	
.label_1729:
	leal	-0x411(%ebp), %eax
	movl	%eax, -0x55c(%ebp)
	movl	-0x55c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x55c(%ebp)
	movb	$0x20, 0(%eax)
	movl	-0x55c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x55c(%ebp)
	movb	$0x25, 0(%eax)
	cmpl	$0, -0x584(%ebp)
	je	.label_1750
	movl	-0x55c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x55c(%ebp)
	movl	-0x584(%ebp), %edx
	movb	%dl, 0(%eax)
.label_1750:
	movl	-0x55c(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -0x55c(%ebp)
	movl	-0x560(%ebp), %edx
	movb	%dl, 0(%eax)
	movl	-0x55c(%ebp), %eax
	movb	$0, 0(%eax)
	pushl	-0x5b4(%ebp)
	leal	-0x411(%ebp), %eax
	pushl	%eax
	pushl	$0x400
	leal	-0x40c(%ebp), %eax
	pushl	%eax
	calll	strftime
	addl	$0x10, %esp
	movl	%eax, -0x4fc(%ebp)
	cmpl	$0, -0x4fc(%ebp)
	je	.label_1671
	movl	-0x4fc(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -0x4f8(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x4f4(%ebp)
	movl	-0x4f4(%ebp), %eax
	cmpl	%eax, -0x4f8(%ebp)
	cmovael	-0x4f8(%ebp), %eax
	movl	%eax, -0x4f0(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x4f0(%ebp), %eax
	ja	.label_1772
	movl	$0, %eax
	jmp	.label_1618
.label_1772:
	cmpl	$0, -0x590(%ebp)
	je	.label_1621
	cmpl	$0, -0x580(%ebp)
	jne	.label_1623
	movl	-0x4f8(%ebp), %eax
	cmpl	-0x4f4(%ebp), %eax
	jae	.label_1623
	movl	-0x568(%ebp), %eax
	subl	-0x4f8(%ebp), %eax
	movl	%eax, -0x4ec(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_805849c
	.section	.text
	.align	32

	.globl sub_8058475
	.type sub_8058475, @function
sub_8058475:

	subl	$4, %esp
	pushl	-0x4ec(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4ec(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1623
	.section	.text
	.align	32


	.globl sub_805849c
	.type sub_805849c, @function
sub_805849c:
	subl	$4, %esp
	pushl	-0x4ec(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4ec(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1623:
	cmpb	$0, -0x5a0(%ebp)
	je	.label_1647
	leal	-0x40c(%ebp), %eax
	addl	$1, %eax
	subl	$4, %esp
	pushl	-0x4f8(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy_lowcase
	addl	$0x10, %esp
	jmp	.label_1664
.label_1647:
	cmpb	$0, -0x59f(%ebp)
	je	.label_1660
	leal	-0x40c(%ebp), %eax
	addl	$1, %eax
	subl	$4, %esp
	pushl	-0x4f8(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy_uppcase
	addl	$0x10, %esp
	jmp	.label_1664
.label_1660:
	leal	-0x40c(%ebp), %eax
	addl	$1, %eax
	subl	$4, %esp
	pushl	-0x4f8(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1664:
	movl	-0x4f8(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1621:
	movl	-0x4f0(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1671
.label_2444:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1675
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$0x13, %eax
	movl	%eax, -0x51c(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jns	.label_1677
	cmpl	$0, -0x51c(%ebp)
	jle	.label_1677
	movl	$1, %eax
	jmp	.label_1690
.label_1677:
	movl	$0, %eax
.label_1690:
	subl	%eax, -0x51c(%ebp)
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	cmpl	$0xfffff894, %eax
	setl	%al
	movb	%al, -0x5a2(%ebp)
	movl	-0x51c(%ebp), %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_2478:
	cmpl	$0x4f, -0x584(%ebp)
	jne	.label_1702
	jmp	.label_1645
.label_2445:
	cmpl	$0, -0x584(%ebp)
	jne	.label_1705
	movl	$label_1708, -1392(%ebp)
	jmp	.label_1650
.label_2464:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1713
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2465:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1717
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1718
.label_1665:
	movb	$1, -0x5a1(%ebp)
	jmp	.label_1723
.label_1718:
	cmpl	$0x30, -0x588(%ebp)
	je	.label_1610
	cmpl	$0x2d, -0x588(%ebp)
	je	.label_1610
	movl	$0x5f, -0x588(%ebp)
.label_1610:
	movl	-0x57c(%ebp), %eax
	shrl	$0x1f, %eax
	movb	%al, -0x5a2(%ebp)
	movl	-0x57c(%ebp), %eax
	movl	%eax, -0x578(%ebp)
.label_1620:
	movb	$0, -0x5a1(%ebp)
	movl	$0, -0x574(%ebp)
.label_1723:
	cmpl	$0x4f, -0x584(%ebp)
	jne	.label_1733
	movzbl	-0x5a2(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1736
.label_1733:
	leal	-0x40c(%ebp), %eax
	addl	$0xe, %eax
	movl	%eax, -0x56c(%ebp)
	cmpb	$0, -0x5a2(%ebp)
	je	.label_1740
	negl	-0x578(%ebp)
.label_1740:
	movl	-0x574(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1745
	subl	$1, -0x56c(%ebp)
	movl	-0x56c(%ebp), %eax
	movb	$0x3a, 0(%eax)
.label_1745:
	sarl	$1, -0x574(%ebp)
	subl	$1, -0x56c(%ebp)
	movl	-0x578(%ebp), %ecx
	movl	$0xcccccccd, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	shll	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$0x30, %eax
	movl	%eax, %edx
	movl	-0x56c(%ebp), %eax
	movb	%dl, 0(%eax)
	movl	-0x578(%ebp), %eax
	movl	$0xcccccccd, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, -0x578(%ebp)
	cmpl	$0, -0x578(%ebp)
	jne	.label_1740
	cmpl	$0, -0x574(%ebp)
	jne	.label_1740
.label_1779:
	movl	-0x580(%ebp), %eax
	cmpl	-0x568(%ebp), %eax
	jge	.label_1760
	movl	-0x568(%ebp), %eax
	movl	%eax, -0x580(%ebp)
.label_1760:
	cmpb	$0, -0x5a2(%ebp)
	je	.label_1762
	movl	$0x2d, %eax
	jmp	.label_1711
.label_1762:
	cmpb	$0, -0x5a1(%ebp)
	je	.label_1766
	movl	$0x2b, %eax
	jmp	.label_1711
.label_1766:
	movl	$0, %eax
.label_1711:
	movb	%al, -0x59d(%ebp)
	cmpl	$0x2d, -0x588(%ebp)
	jne	.label_1770
	cmpb	$0, -0x59d(%ebp)
	je	.label_1632
	movl	$1, -0x4e4(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x4e0(%ebp)
	movl	-0x4e0(%ebp), %eax
	cmpl	%eax, -0x4e4(%ebp)
	cmovael	-0x4e4(%ebp), %eax
	movl	%eax, -0x4dc(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x4dc(%ebp), %eax
	ja	.label_1776
	movl	$0, %eax
	jmp	.label_1618
.label_1776:
	cmpl	$0, -0x590(%ebp)
	je	.label_1624
	cmpl	$0, -0x580(%ebp)
	jne	.label_1628
	movl	-0x4e4(%ebp), %eax
	cmpl	-0x4e0(%ebp), %eax
	jae	.label_1628
	movl	-0x568(%ebp), %eax
	subl	-0x4e4(%ebp), %eax
	movl	%eax, -0x4d8(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_80588ab
	.section	.text
	.align	32

	.globl sub_8058884
	.type sub_8058884, @function
sub_8058884:

	subl	$4, %esp
	pushl	-0x4d8(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4d8(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1628
	.section	.text
	.align	32


	.globl sub_80588ab
	.type sub_80588ab, @function
sub_80588ab:
	subl	$4, %esp
	pushl	-0x4d8(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4d8(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1628:
	movl	-0x590(%ebp), %eax
	movzbl	-0x59d(%ebp), %edx
	movb	%dl, 0(%eax)
	movl	-0x4e4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1624:
	movl	-0x4dc(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1632
.label_1770:
	leal	-0x40c(%ebp), %eax
	addl	$0xe, %eax
	movl	%eax, %edx
	movl	-0x56c(%ebp), %eax
	subl	%eax, %edx
	movl	-0x580(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	cmpb	$0, -0x59d(%ebp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x4d4(%ebp)
	cmpl	$0, -0x4d4(%ebp)
	jle	.label_1662
	cmpl	$0x5f, -0x588(%ebp)
	jne	.label_1682
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	movl	%eax, %edx
	movl	-0x4d4(%ebp), %eax
	cmpl	%eax, %edx
	ja	.label_1768
	movl	$0, %eax
	jmp	.label_1618
.label_1768:
	cmpl	$0, -0x590(%ebp)
	je	.label_1679
	movl	-0x4d4(%ebp), %eax
	.section	.text
	.align	32

	.globl sub_8058978
	.type sub_8058978, @function
sub_8058978:

	subl	$4, %esp
	pushl	%eax
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4d4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1679:
	movl	-0x4d4(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	movl	-0x568(%ebp), %eax
	cmpl	-0x4d4(%ebp), %eax
	jle	.label_1685
	movl	-0x568(%ebp), %eax
	subl	-0x4d4(%ebp), %eax
	jmp	.label_1689
.label_1685:
	movl	$0, %eax
.label_1689:
	movl	%eax, -0x568(%ebp)
	cmpb	$0, -0x59d(%ebp)
	je	.label_1632
	movl	$1, -0x4d0(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x4cc(%ebp)
	movl	-0x4cc(%ebp), %eax
	cmpl	%eax, -0x4d0(%ebp)
	cmovael	-0x4d0(%ebp), %eax
	movl	%eax, -0x4c8(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x4c8(%ebp), %eax
	ja	.label_1696
	movl	$0, %eax
	jmp	.label_1618
.label_1696:
	cmpl	$0, -0x590(%ebp)
	je	.label_1727
	cmpl	$0, -0x580(%ebp)
	jne	.label_1715
	movl	-0x4d0(%ebp), %eax
	cmpl	-0x4cc(%ebp), %eax
	jae	.label_1715
	movl	-0x568(%ebp), %eax
	subl	-0x4d0(%ebp), %eax
	movl	%eax, -0x4c4(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	.label_1704
	subl	$4, %esp
	pushl	-0x4c4(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4c4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1715
.label_1704:
	subl	$4, %esp
	pushl	-0x4c4(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4c4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1715:
	movl	-0x590(%ebp), %eax
	movzbl	-0x59d(%ebp), %edx
	movb	%dl, 0(%eax)
	movl	-0x4d0(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1727:
	movl	-0x4c8(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1632
.label_1682:
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	movl	%eax, %edx
	movl	-0x580(%ebp), %eax
	cmpl	%eax, %edx
	ja	.label_1739
	movl	$0, %eax
	jmp	.label_1618
.label_1739:
	cmpb	$0, -0x59d(%ebp)
	je	.label_1744
	movl	$1, -0x4c0(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x4bc(%ebp)
	movl	-0x4bc(%ebp), %eax
	cmpl	%eax, -0x4c0(%ebp)
	cmovael	-0x4c0(%ebp), %eax
	movl	%eax, -0x4b8(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x4b8(%ebp), %eax
	ja	.label_1746
	movl	$0, %eax
	jmp	.label_1618
.label_1746:
	cmpl	$0, -0x590(%ebp)
	je	.label_1758
	cmpl	$0, -0x580(%ebp)
	jne	.label_1759
	movl	-0x4c0(%ebp), %eax
	cmpl	-0x4bc(%ebp), %eax
	jae	.label_1759
	movl	-0x568(%ebp), %eax
	subl	-0x4c0(%ebp), %eax
	movl	%eax, -0x4b4(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_8058bcf
	.section	.text
	.align	32

	.globl sub_8058ba8
	.type sub_8058ba8, @function
sub_8058ba8:

	subl	$4, %esp
	pushl	-0x4b4(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4b4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1759
	.section	.text
	.align	32


	.globl sub_8058bcf
	.type sub_8058bcf, @function
sub_8058bcf:
	subl	$4, %esp
	pushl	-0x4b4(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4b4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1759:
	movl	-0x590(%ebp), %eax
	movzbl	-0x59d(%ebp), %edx
	movb	%dl, 0(%eax)
	movl	-0x4c0(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1758:
	movl	-0x4b8(%ebp), %eax
	addl	%eax, -0x594(%ebp)
.label_1744:
	cmpl	$0, -0x590(%ebp)
	je	.label_1612
	movl	-0x4d4(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4d4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1612:
	movl	-0x4d4(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	movl	$0, -0x568(%ebp)
	jmp	.label_1632
.label_1662:
	cmpb	$0, -0x59d(%ebp)
	je	.label_1632
	movl	$1, -0x4b0(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x4ac(%ebp)
	movl	-0x4ac(%ebp), %eax
	cmpl	%eax, -0x4b0(%ebp)
	cmovael	-0x4b0(%ebp), %eax
	movl	%eax, -0x4a8(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x4a8(%ebp), %eax
	ja	.label_1635
	movl	$0, %eax
	jmp	.label_1618
.label_1635:
	cmpl	$0, -0x590(%ebp)
	je	.label_1651
	cmpl	$0, -0x580(%ebp)
	jne	.label_1654
	movl	-0x4b0(%ebp), %eax
	cmpl	-0x4ac(%ebp), %eax
	jae	.label_1654
	movl	-0x568(%ebp), %eax
	subl	-0x4b0(%ebp), %eax
	movl	%eax, -0x4a4(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_8058d2f
	.section	.text
	.align	32

	.globl sub_8058d08
	.type sub_8058d08, @function
sub_8058d08:

	subl	$4, %esp
	pushl	-0x4a4(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4a4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1654
	.section	.text
	.align	32


	.globl sub_8058d2f
	.type sub_8058d2f, @function
sub_8058d2f:
	subl	$4, %esp
	pushl	-0x4a4(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x4a4(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1654:
	movl	-0x590(%ebp), %eax
	movzbl	-0x59d(%ebp), %edx
	movb	%dl, 0(%eax)
	movl	-0x4b0(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1651:
	movl	-0x4a8(%ebp), %eax
	addl	%eax, -0x594(%ebp)
.label_1632:
	leal	-0x40c(%ebp), %eax
	addl	$0xe, %eax
	movl	%eax, %edx
	movl	-0x56c(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x4a0(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x49c(%ebp)
	movl	-0x49c(%ebp), %eax
	cmpl	%eax, -0x4a0(%ebp)
	cmovael	-0x4a0(%ebp), %eax
	movl	%eax, -0x498(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x498(%ebp), %eax
	ja	.label_1683
	movl	$0, %eax
	jmp	.label_1618
.label_1683:
	cmpl	$0, -0x590(%ebp)
	je	.label_1697
	cmpl	$0, -0x580(%ebp)
	jne	.label_1698
	movl	-0x4a0(%ebp), %eax
	cmpl	-0x49c(%ebp), %eax
	jae	.label_1698
	movl	-0x568(%ebp), %eax
	subl	-0x4a0(%ebp), %eax
	movl	%eax, -0x494(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	.label_1703
	subl	$4, %esp
	pushl	-0x494(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x494(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1698
.label_1703:
	subl	$4, %esp
	pushl	-0x494(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x494(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1698:
	cmpb	$0, -0x5a0(%ebp)
	je	.label_1719
	subl	$4, %esp
	pushl	-0x4a0(%ebp)
	pushl	-0x56c(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy_lowcase
	addl	$0x10, %esp
	jmp	.label_1629
.label_1719:
	cmpb	$0, -0x59f(%ebp)
	je	.label_1725
	subl	$4, %esp
	pushl	-0x4a0(%ebp)
	pushl	-0x56c(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy_uppcase
	addl	$0x10, %esp
	jmp	.label_1629
.label_1725:
	subl	$4, %esp
	pushl	-0x4a0(%ebp)
	pushl	-0x56c(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1629:
	movl	-0x4a0(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1697:
	movl	-0x498(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2446:
	cmpl	$0, -0x584(%ebp)
	jne	.label_1741
	movl	$label_1649, -1392(%ebp)
	jmp	.label_1650
.label_2448:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1721
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2449:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1752
	movl	$2, -0x580(%ebp)
	movl	-0x59c(%ebp), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2467:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1756
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1718
.label_2468:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1761
	movl	$2, -0x580(%ebp)
	movl	-0x59c(%ebp), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1718
.label_2466:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1767
	movl	$3, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %eax
	cmpl	$-1, %eax
	setl	%al
	movb	%al, -0x5a2(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %eax
	addl	$1, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_2450:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1778
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2469:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1617
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x10(%eax), %eax
	cmpl	$-1, %eax
	setl	%al
	movb	%al, -0x5a2(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x10(%eax), %eax
	addl	$1, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_2451:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1634
	movl	0x24(%ebp), %eax
	movl	%eax, -0x57c(%ebp)
	cmpl	$-1, -0x568(%ebp)
	jne	.label_1637
	movl	$9, -0x568(%ebp)
	jmp	.label_1641
.label_1637:
	movl	-0x568(%ebp), %eax
	movl	%eax, -0x558(%ebp)
	jmp	.label_1644
.label_1636:
	movl	-0x57c(%ebp), %ecx
	movl	$0x66666667, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x57c(%ebp)
	addl	$1, -0x558(%ebp)
.label_1644:
	cmpl	$8, -0x558(%ebp)
	jle	.label_1636
.label_1641:
	movl	-0x568(%ebp), %eax
	movl	%eax, -0x580(%ebp)
	jmp	.label_1610
.label_2470:
	movl	$1, -0x490(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x48c(%ebp)
	movl	-0x48c(%ebp), %eax
	cmpl	%eax, -0x490(%ebp)
	cmovael	-0x490(%ebp), %eax
	movl	%eax, -0x488(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x488(%ebp), %eax
	ja	.label_1657
	movl	$0, %eax
	jmp	.label_1618
.label_1657:
	cmpl	$0, -0x590(%ebp)
	je	.label_1668
	cmpl	$0, -0x580(%ebp)
	jne	.label_1672
	movl	-0x490(%ebp), %eax
	cmpl	-0x48c(%ebp), %eax
	jae	.label_1672
	movl	-0x568(%ebp), %eax
	subl	-0x490(%ebp), %eax
	movl	%eax, -0x484(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_80591a3
	.section	.text
	.align	32

	.globl sub_805917c
	.type sub_805917c, @function
sub_805917c:

	subl	$4, %esp
	pushl	-0x484(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x484(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1672
	.section	.text
	.align	32


	.globl sub_80591a3
	.type sub_80591a3, @function
sub_80591a3:
	subl	$4, %esp
	pushl	-0x484(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x484(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1672:
	movl	-0x590(%ebp), %eax
	movb	$0xa, 0(%eax)
	movl	-0x490(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1668:
	movl	-0x488(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2452:
	movb	$1, -0x5a0(%ebp)
	movl	$0x70, -0x560(%ebp)
.label_2471:
	cmpb	$0, -0x59e(%ebp)
	je	.label_1701
	movb	$0, -0x59f(%ebp)
	movb	$1, -0x5a0(%ebp)
	jmp	.label_1701
.label_2472:
	movl	$1, -0x580(%ebp)
	movb	$0, -0x5a2(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	%edx, %eax
	shll	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sarl	$5, %eax
	addl	$1, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_2453:
	movl	$label_1716, -1392(%ebp)
	jmp	.label_1650
.label_2454:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1742
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2474:
	movl	-0x5b4(%ebp), %eax
	movl	0(%eax), %edx
	movl	%edx, -0x440(%ebp)
	movl	4(%eax), %edx
	movl	%edx, -0x43c(%ebp)
	movl	8(%eax), %edx
	movl	%edx, -0x438(%ebp)
	movl	0xc(%eax), %edx
	movl	%edx, -0x434(%ebp)
	movl	0x10(%eax), %edx
	movl	%edx, -0x430(%ebp)
	movl	0x14(%eax), %edx
	movl	%edx, -0x42c(%ebp)
	movl	0x18(%eax), %edx
	movl	%edx, -0x428(%ebp)
	movl	0x1c(%eax), %edx
	movl	%edx, -0x424(%ebp)
	movl	0x20(%eax), %edx
	movl	%edx, -0x420(%ebp)
	movl	0x24(%eax), %edx
	movl	%edx, -0x41c(%ebp)
	movl	0x28(%eax), %eax
	movl	%eax, -0x418(%ebp)
	.section	.text
	.align	32

	.globl sub_80592f6
	.type sub_80592f6, @function
sub_80592f6:

	subl	$8, %esp
	leal	-0x440(%ebp), %eax
	pushl	%eax
	pushl	-0x5c0(%ebp)
	calll	mktime_z
	addl	$0x10, %esp
	movl	%eax, -0x554(%ebp)
	leal	-0x40c(%ebp), %eax
	addl	$0xe, %eax
	movl	%eax, -0x56c(%ebp)
	movl	-0x554(%ebp), %eax
	shrl	$0x1f, %eax
	movb	%al, -0x5a2(%ebp)
.label_1781:
	movl	-0x554(%ebp), %ecx
	movl	$0x66666667, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	shll	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -0x4e8(%ebp)
	movl	-0x554(%ebp), %ecx
	movl	$0x66666667, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x554(%ebp)
	subl	$1, -0x56c(%ebp)
	cmpb	$0, -0x5a2(%ebp)
	je	.label_1780
	movl	-0x4e8(%ebp), %eax
	movl	$0x30, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	jmp	.label_1782
.label_1780:
	movl	-0x4e8(%ebp), %eax
	addl	$0x30, %eax
	movl	%eax, %edx
.label_1782:
	movl	-0x56c(%ebp), %eax
	movb	%dl, 0(%eax)
	cmpl	$0, -0x554(%ebp)
	jne	.label_1781
	movl	$1, -0x580(%ebp)
	movb	$0, -0x5a1(%ebp)
	nop	
	jmp	.label_1779
.label_2458:
	cmpl	$0x4f, -0x584(%ebp)
	jne	.label_1611
	jmp	.label_1645
.label_2455:
	movl	$label_1775, -1392(%ebp)
	jmp	.label_1650
.label_2475:
	movl	$1, -0x480(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x47c(%ebp)
	movl	-0x47c(%ebp), %eax
	cmpl	%eax, -0x480(%ebp)
	cmovael	-0x480(%ebp), %eax
	movl	%eax, -0x478(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x478(%ebp), %eax
	ja	.label_1777
	movl	$0, %eax
	jmp	.label_1618
.label_1777:
	cmpl	$0, -0x590(%ebp)
	je	.label_1627
	cmpl	$0, -0x580(%ebp)
	jne	.label_1630
	movl	-0x480(%ebp), %eax
	cmpl	-0x47c(%ebp), %eax
	jae	.label_1630
	movl	-0x568(%ebp), %eax
	subl	-0x480(%ebp), %eax
	movl	%eax, -0x474(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	sub_80594b7
	.section	.text
	.align	32

	.globl sub_8059490
	.type sub_8059490, @function
sub_8059490:

	subl	$4, %esp
	pushl	-0x474(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x474(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1630
	.section	.text
	.align	32


	.globl sub_80594b7
	.type sub_80594b7, @function
sub_80594b7:
	subl	$4, %esp
	pushl	-0x474(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x474(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1630:
	movl	-0x590(%ebp), %eax
	movb	$9, 0(%eax)
	movl	-0x480(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1627:
	movl	-0x478(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2476:
	movl	$1, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %eax
	leal	6(%eax), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	shll	$3, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2456:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1673
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %edx
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	7(%eax), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2447:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1693
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	testl	%eax, %eax
	jns	.label_1688
	movl	$0x12c, %eax
	jmp	.label_1694
.label_1688:
	movl	$0xffffff9c, %eax
.label_1694:
	addl	%edx, %eax
	movl	%eax, -0x508(%ebp)
	movl	$0, -0x550(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %edx
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %eax
	.section	.text
	.align	32

	.globl sub_80595f3
	.type sub_80595f3, @function
sub_80595f3:

	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	iso_week_days
	addl	$0x10, %esp
	movl	%eax, -0x54c(%ebp)
	cmpl	$0, -0x54c(%ebp)
	jns	.label_1795
	movl	$0xffffffff, -0x550(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %ebx
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %esi
	movl	-0x508(%ebp), %eax
	subl	$1, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.label_1788
	movl	-0x508(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1790
	movl	-0x508(%ebp), %eax
	leal	-1(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x190, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1788
.label_1790:
	movl	$1, %eax
	jmp	.label_1789
.label_1788:
	movl	$0, %eax
.label_1789:
	addl	$0x16d, %eax
	addl	%esi, %eax
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	iso_week_days
	addl	$0x10, %esp
	movl	%eax, -0x54c(%ebp)
	jmp	.label_1786
.label_1795:
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %ebx
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %esi
	movl	-0x508(%ebp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.label_1784
	movl	-0x508(%ebp), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1794
	movl	-0x508(%ebp), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$7, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x190, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.label_1784
.label_1794:
	movl	$1, %eax
	jmp	.label_1792
.label_1784:
	movl	$0, %eax
.label_1792:
	addl	$0x16d, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	iso_week_days
	addl	$0x10, %esp
	movl	%eax, -0x504(%ebp)
	cmpl	$0, -0x504(%ebp)
	js	.label_1786
	movl	$1, -0x550(%ebp)
	movl	-0x504(%ebp), %eax
	movl	%eax, -0x54c(%ebp)
.label_1786:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x47, %eax
	je	.label_1793
	cmpl	$0x67, %eax
	jne	.label_1785
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-0x550(%ebp), %edx
	leal	0(%eax, %edx), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x500(%ebp)
	movl	-0x500(%ebp), %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -0x500(%ebp)
	movl	$2, -0x580(%ebp)
	cmpl	$0, -0x500(%ebp)
	jns	.label_1787
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	$0xfffff894, %eax
	subl	-0x550(%ebp), %eax
	cmpl	%eax, %edx
	jge	.label_1783
	movl	-0x500(%ebp), %eax
	negl	%eax
	jmp	.label_1791
.label_1783:
	movl	-0x500(%ebp), %eax
	addl	$0x64, %eax
	jmp	.label_1791
.label_1787:
	movl	-0x500(%ebp), %eax
.label_1791:
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_1793:
	movl	$4, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	$0xfffff894, %eax
	subl	-0x550(%ebp), %eax
	cmpl	%eax, %edx
	setl	%al
	movb	%al, -0x5a2(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	movl	%eax, %edx
	movl	-0x550(%ebp), %eax
	addl	%edx, %eax
	addl	$0x76c, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_1785:
	movl	$2, -0x580(%ebp)
	movl	-0x54c(%ebp), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2457:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1643
	movl	$2, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x1c(%eax), %ebx
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %eax
	leal	6(%eax), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	shll	$3, %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	leal	7(%eax), %ecx
	movl	$0x92492493, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2477:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1669
	movl	$1, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x18(%eax), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2459:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1681
	cmpl	$0x4f, -0x584(%ebp)
	je	.label_1653
	movl	$4, -0x580(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	cmpl	$0xfffff894, %eax
	setl	%al
	movb	%al, -0x5a2(%ebp)
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	addl	$0x76c, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1620
.label_2479:
	cmpl	$0x45, -0x584(%ebp)
	je	.label_1692
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %ecx
	movl	$0x51eb851f, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x548(%ebp)
	movl	-0x548(%ebp), %eax
	imull	$0x64, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -0x548(%ebp)
	cmpl	$0, -0x548(%ebp)
	jns	.label_1695
	movl	-0x5b4(%ebp), %eax
	movl	0x14(%eax), %eax
	cmpl	$0xfffff894, %eax
	jge	.label_1625
	movl	-0x548(%ebp), %eax
	negl	%eax
	jmp	.label_1707
.label_1625:
	movl	-0x548(%ebp), %eax
	addl	$0x64, %eax
.label_1707:
	movl	%eax, -0x548(%ebp)
.label_1695:
	movl	$2, -0x580(%ebp)
	movl	-0x548(%ebp), %eax
	movl	%eax, -0x57c(%ebp)
	jmp	.label_1610
.label_2460:
	cmpb	$0, -0x59e(%ebp)
	je	sub_8059a67
	movb	$0, -0x59f(%ebp)
	movb	$1, -0x5a0(%ebp)
	.section	.text
	.align	32


	.globl sub_8059a67
	.type sub_8059a67, @function
sub_8059a67:
	subl	$0xc, %esp
	pushl	-0x598(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x470(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x46c(%ebp)
	movl	-0x46c(%ebp), %eax
	cmpl	%eax, -0x470(%ebp)
	cmovael	-0x470(%ebp), %eax
	movl	%eax, -0x468(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x468(%ebp), %eax
	ja	.label_1800
	movl	$0, %eax
	jmp	.label_1618
.label_1800:
	cmpl	$0, -0x590(%ebp)
	je	.label_1797
	cmpl	$0, -0x580(%ebp)
	jne	.label_1796
	movl	-0x470(%ebp), %eax
	cmpl	-0x46c(%ebp), %eax
	jae	.label_1796
	movl	-0x568(%ebp), %eax
	subl	-0x470(%ebp), %eax
	movl	%eax, -0x464(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	.label_1799
	subl	$4, %esp
	pushl	-0x464(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x464(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1796
.label_1799:
	subl	$4, %esp
	pushl	-0x464(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x464(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1796:
	cmpb	$0, -0x5a0(%ebp)
	je	.label_1801
	subl	$4, %esp
	pushl	-0x470(%ebp)
	pushl	-0x598(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy_lowcase
	addl	$0x10, %esp
	jmp	.label_1798
.label_1801:
	cmpb	$0, -0x59f(%ebp)
	je	.label_1802
	subl	$4, %esp
	pushl	-0x470(%ebp)
	pushl	-0x598(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy_uppcase
	addl	$0x10, %esp
	jmp	.label_1798
.label_1802:
	subl	$4, %esp
	pushl	-0x470(%ebp)
	pushl	-0x598(%ebp)
	pushl	-0x590(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1798:
	movl	-0x470(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1797:
	movl	-0x468(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	jmp	.label_1633
.label_2441:
	movl	$1, -0x564(%ebp)
	jmp	.label_1773
.label_1765:
	addl	$1, -0x564(%ebp)
.label_1773:
	movl	-0x58c(%ebp), %edx
	movl	-0x564(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x3a, %al
	je	.label_1765
	movl	-0x58c(%ebp), %edx
	movl	-0x564(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x7a, %al
	jne	.label_1609
	movl	-0x564(%ebp), %eax
	addl	%eax, -0x58c(%ebp)
	jmp	.label_1614
.label_2480:
	movl	$0, -0x564(%ebp)
.label_1614:
	movl	-0x5b4(%ebp), %eax
	movl	0x20(%eax), %eax
	testl	%eax, %eax
	js	.label_1622
	movl	-0x5b4(%ebp), %eax
	movl	0x24(%eax), %eax
	movl	%eax, -0x518(%ebp)
	cmpl	$0, -0x518(%ebp)
	js	.label_1626
	cmpl	$0, -0x518(%ebp)
	jne	.label_1631
	movl	-0x598(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2d, %al
	jne	.label_1631
.label_1626:
	movl	$1, %eax
	jmp	.label_1734
.label_1631:
	movl	$0, %eax
.label_1734:
	movb	%al, -0x5a2(%ebp)
	andb	$1, -0x5a2(%ebp)
	movl	-0x518(%ebp), %ecx
	movl	$0x91a2b3c5, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$0xb, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x514(%ebp)
	movl	-0x518(%ebp), %ecx
	movl	$0x88888889, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$0x88888889, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x510(%ebp)
	movl	-0x510(%ebp), %eax
	movl	%eax, %edx
	leal	0(, %edx, 4), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	shll	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -0x510(%ebp)
	movl	-0x518(%ebp), %ecx
	movl	$0x88888889, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	0(%edx, %ecx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$0x1f, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	leal	0(, %edx, 4), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	shll	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -0x50c(%ebp)
	movl	-0x564(%ebp), %eax
	cmpl	$1, %eax
	je	.label_1639
	cmpl	$1, %eax
	jb	.label_1676
	cmpl	$2, %eax
	je	.label_1678
	cmpl	$3, %eax
	je	.label_1680
	jmp	.label_1645
.label_1676:
	movl	$5, -0x580(%ebp)
	movl	$0, -0x574(%ebp)
	movl	-0x514(%ebp), %eax
	imull	$0x64, %eax, %edx
	movl	-0x510(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1665
.label_1709:
	nop	
.label_1639:
	movl	$6, -0x580(%ebp)
	movl	$4, -0x574(%ebp)
	movl	-0x514(%ebp), %eax
	imull	$0x64, %eax, %edx
	movl	-0x510(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1665
.label_1706:
	nop	
.label_1678:
	movl	$9, -0x580(%ebp)
	movl	$0x14, -0x574(%ebp)
	movl	-0x514(%ebp), %eax
	imull	$0x2710, %eax, %edx
	movl	-0x510(%ebp), %eax
	imull	$0x64, %eax, %eax
	addl	%eax, %edx
	movl	-0x50c(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1665
.label_1680:
	cmpl	$0, -0x50c(%ebp)
	jne	.label_1706
	cmpl	$0, -0x510(%ebp)
	jne	.label_1709
	movl	$3, -0x580(%ebp)
	movl	$0, -0x574(%ebp)
	movl	-0x514(%ebp), %eax
	movl	%eax, -0x578(%ebp)
	jmp	.label_1665
.label_2439:
	subl	$1, -0x58c(%ebp)
	jmp	.label_1645
.label_1769:
	nop	
	jmp	.label_1645
.label_1655:
	nop	
	jmp	.label_1645
.label_1663:
	nop	
	jmp	.label_1645
.label_1642:
	nop	
	jmp	.label_1645
.label_1705:
	nop	
	jmp	.label_1645
.label_1713:
	nop	
	jmp	.label_1645
.label_1717:
	nop	
	jmp	.label_1645
.label_1741:
	nop	
	jmp	.label_1645
.label_1721:
	nop	
	jmp	.label_1645
.label_1752:
	nop	
	jmp	.label_1645
.label_1756:
	nop	
	jmp	.label_1645
.label_1761:
	nop	
	jmp	.label_1645
.label_1767:
	nop	
	jmp	.label_1645
.label_1778:
	nop	
	jmp	.label_1645
.label_1617:
	nop	
	jmp	.label_1645
.label_1634:
	nop	
	jmp	.label_1645
.label_1742:
	nop	
	jmp	.label_1645
.label_1673:
	nop	
	jmp	.label_1645
.label_1693:
	nop	
	jmp	.label_1645
.label_1643:
	nop	
	jmp	.label_1645
.label_1669:
	nop	
	jmp	.label_1645
.label_1653:
	nop	
	jmp	.label_1645
.label_1609:
	nop	
.label_1645:
	movl	$1, -0x544(%ebp)
	jmp	.label_1726
.label_1730:
	addl	$1, -0x544(%ebp)
.label_1726:
	movl	$1, %eax
	subl	-0x544(%ebp), %eax
	movl	%eax, %edx
	movl	-0x58c(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x25, %al
	jne	.label_1730
	movl	-0x544(%ebp), %eax
	movl	%eax, -0x460(%ebp)
	movl	$0, %eax
	cmpl	$0, -0x568(%ebp)
	cmovnsl	-0x568(%ebp), %eax
	movl	%eax, -0x45c(%ebp)
	movl	-0x45c(%ebp), %eax
	cmpl	%eax, -0x460(%ebp)
	cmovael	-0x460(%ebp), %eax
	movl	%eax, -0x458(%ebp)
	movl	0xc(%ebp), %eax
	subl	-0x594(%ebp), %eax
	cmpl	-0x458(%ebp), %eax
	ja	.label_1732
	movl	$0, %eax
	jmp	.label_1618
.label_1732:
	cmpl	$0, -0x590(%ebp)
	je	.label_1748
	cmpl	$0, -0x580(%ebp)
	jne	.label_1749
	movl	-0x460(%ebp), %eax
	cmpl	-0x45c(%ebp), %eax
	jae	.label_1749
	movl	-0x568(%ebp), %eax
	subl	-0x460(%ebp), %eax
	movl	%eax, -0x454(%ebp)
	cmpl	$0x30, -0x588(%ebp)
	jne	.label_1753
	subl	$4, %esp
	pushl	-0x454(%ebp)
	pushl	$0x30
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x454(%ebp), %eax
	addl	%eax, -0x590(%ebp)
	jmp	.label_1749
.label_1753:
	subl	$4, %esp
	pushl	-0x454(%ebp)
	pushl	$0x20
	pushl	-0x590(%ebp)
	calll	memset
	addl	$0x10, %esp
	movl	-0x454(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1749:
	cmpb	$0, -0x5a0(%ebp)
	je	.label_1764
	movl	$1, %eax
	subl	-0x544(%ebp), %eax
	movl	%eax, %edx
	movl	-0x58c(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	-0x460(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy_lowcase
	addl	$0x10, %esp
	jmp	.label_1613
.label_1764:
	cmpb	$0, -0x59f(%ebp)
	je	.label_1774
	movl	$1, %eax
	subl	-0x544(%ebp), %eax
	movl	%eax, %edx
	movl	-0x58c(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	-0x460(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy_uppcase
	addl	$0x10, %esp
	jmp	.label_1613
.label_1774:
	movl	$1, %eax
	subl	-0x544(%ebp), %eax
	movl	%eax, %edx
	movl	-0x58c(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	-0x460(%ebp)
	pushl	%eax
	pushl	-0x590(%ebp)
	calll	memcpy
	addl	$0x10, %esp
.label_1613:
	movl	-0x460(%ebp), %eax
	addl	%eax, -0x590(%ebp)
.label_1748:
	movl	-0x458(%ebp), %eax
	addl	%eax, -0x594(%ebp)
	nop	
	jmp	.label_1633
.label_1671:
	nop	
	jmp	.label_1633
.label_1622:
	nop	
.label_1633:
	addl	$1, -0x58c(%ebp)
.label_1658:
	movl	-0x58c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1747
	cmpl	$0, -0x590(%ebp)
	je	.label_1640
	cmpl	$0, 0xc(%ebp)
	je	.label_1640
	movl	-0x590(%ebp), %eax
	movb	$0, 0(%eax)
.label_1640:
	movl	-0x594(%ebp), %eax
.label_1618:
	movl	-0xc(%ebp), %esi
	xorl	%gs:0x14, %esi
	je	.label_1771
	calll	__stack_chk_fail
.label_1771:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a0bc

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 8(%ebp)
	jne	.label_1804
	movl	stderr,  %eax
	pushl	%eax
	pushl	$0x37
	pushl	$1
	pushl	$label_1803
	calll	fwrite
	addl	$0x10, %esp
	calll	abort
.label_1804:
	subl	$8, %esp
	pushl	$0x2f
	pushl	8(%ebp)
	calll	strrchr
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	je	.label_1806
	movl	-0x10(%ebp), %eax
	addl	$1, %eax
	jmp	.label_1809
.label_1806:
	movl	8(%ebp), %eax
.label_1809:
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %edx
	movl	8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$6, %eax
	jle	.label_1805
	movl	-0xc(%ebp), %eax
	subl	$7, %eax
	subl	$4, %esp
	pushl	$7
	pushl	$label_1808
	pushl	%eax
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1805
	movl	-0xc(%ebp), %eax
	movl	%eax, 8(%ebp)
	subl	$4, %esp
	pushl	$3
	pushl	$label_1807
	pushl	-0xc(%ebp)
	calll	strncmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1805
	movl	-0xc(%ebp), %eax
	addl	$3, %eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, program_invocation_short_name
.label_1805:
	movl	8(%ebp), %eax
	movl	%eax, program_name
	movl	8(%ebp), %eax
	movl	%eax, program_invocation_name
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a17a

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	cmpl	$0, 8(%ebp)
	je	.label_1811
	movl	8(%ebp), %eax
	jmp	.label_1810
.label_1811:
	movl	$default_quoting_options,  %eax
.label_1810:
	subl	$8, %esp
	pushl	$0x30
	pushl	%eax
	calll	xmemdup
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a1bc

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	.label_1812
	movl	8(%ebp), %eax
	jmp	.label_1813
.label_1812:
	movl	$default_quoting_options,  %eax
.label_1813:
	movl	0(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a1d3

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	je	.label_1814
	movl	8(%ebp), %eax
	jmp	.label_1815
.label_1814:
	movl	$default_quoting_options,  %eax
.label_1815:
	movl	0xc(%ebp), %edx
	movl	%edx, 0(%eax)
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a1ee

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x14, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0x18(%ebp)
	movzbl	-0x18(%ebp), %eax
	movb	%al, -0x11(%ebp)
	cmpl	$0, 8(%ebp)
	je	.label_1817
	movl	8(%ebp), %eax
	jmp	.label_1816
.label_1817:
	movl	$default_quoting_options,  %eax
.label_1816:
	leal	8(%eax), %edx
	movzbl	-0x11(%ebp), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	shll	$2, %eax
	addl	%edx, %eax
	movl	%eax, -0x10(%ebp)
	movzbl	-0x11(%ebp), %eax
	andl	$0x1f, %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, -8(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %edx
	movl	0x10(%ebp), %eax
	andl	$1, %eax
	xorl	-8(%ebp), %eax
	movl	%eax, %ebx
	movl	-0xc(%ebp), %eax
	movl	%eax, %ecx
	shll	%cl, %ebx
	movl	%ebx, %eax
	xorl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-8(%ebp), %eax
	addl	$0x14, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a26e
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	cmpl	$0, 8(%ebp)
	jne	.label_1818
	movl	$default_quoting_options, 8(%ebp)
.label_1818:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-4(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a298

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 8(%ebp)
	jne	.label_1819
	movl	$default_quoting_options, 8(%ebp)
.label_1819:
	movl	8(%ebp), %eax
	movl	$0xa, 0(%eax)
	cmpl	$0, 0xc(%ebp)
	je	.label_1821
	cmpl	$0, 0x10(%ebp)
	jne	.label_1820
.label_1821:
	calll	abort
.label_1820:
	movl	8(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0x28(%eax)
	movl	8(%ebp), %eax
	movl	0x10(%ebp), %edx
	movl	%edx, 0x2c(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a2da

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$0x54, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x3c(%ebp), %edx
	movl	$0, %eax
	movl	$0xc, %ecx
	movl	%edx, %edi
	rep stosl	%eax, %es:(%edi)
	cmpl	$0xa, 0xc(%ebp)
	jne	.label_1822
	calll	abort
.label_1822:
	movl	0xc(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	-0x4c(%ebp), %eax
	movl	-0x3c(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x38(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-0x34(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-0x30(%ebp), %edx
	movl	%edx, 0xc(%eax)
	movl	-0x2c(%ebp), %edx
	movl	%edx, 0x10(%eax)
	movl	-0x28(%ebp), %edx
	movl	%edx, 0x14(%eax)
	movl	-0x24(%ebp), %edx
	movl	%edx, 0x18(%eax)
	movl	-0x20(%ebp), %edx
	movl	%edx, 0x1c(%eax)
	movl	-0x1c(%ebp), %edx
	movl	%edx, 0x20(%eax)
	movl	-0x18(%ebp), %edx
	movl	%edx, 0x24(%eax)
	movl	-0x14(%ebp), %edx
	movl	%edx, 0x28(%eax)
	movl	-0x10(%ebp), %edx
	movl	%edx, 0x2c(%eax)
	movl	-0x4c(%ebp), %eax
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_1823
	calll	__stack_chk_fail
.label_1823:
	addl	$0x54, %esp
	popl	%edi
	popl	%ebp
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805a37a

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	cmpl	8(%ebp), %eax
	je	.label_1830
	movl	-0x10(%ebp), %eax
	jmp	.label_1827
.label_1830:
	calll	locale_charset
	movl	%eax, -0xc(%ebp)
	subl	$8, %esp
	pushl	$label_1824
	pushl	-0xc(%ebp)
	calll	c_strcasecmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1836
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x60, %al
	jne	.label_1837
	movl	$label_1828,  %eax
	jmp	.label_1827
.label_1837:
	movl	$label_1832,  %eax
	jmp	.label_1827
.label_1836:
	subl	$8, %esp
	pushl	$label_1835
	pushl	-0xc(%ebp)
	calll	c_strcasecmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1838
	movl	8(%ebp), %eax
	movzbl	0(%eax), %eax
	cmpb	$0x60, %al
	jne	.label_1831
	movl	$label_1826,  %eax
	jmp	.label_1827
.label_1831:
	movl	$label_1833,  %eax
	jmp	.label_1827
.label_1838:
	cmpl	$9, 0xc(%ebp)
	jne	.label_1825
	movl	$label_1829,  %eax
	jmp	.label_1827
.label_1825:
	movl	$label_1834,  %eax
.label_1827:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805a418

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x64, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x50(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0x54(%ebp)
	movl	0x24(%ebp), %eax
	movl	%eax, -0x58(%ebp)
	movl	0x28(%ebp), %eax
	movl	%eax, -0x5c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x34(%ebp)
	movl	$0, -0x30(%ebp)
	movl	$0, -0x2c(%ebp)
	movl	$0, -0x28(%ebp)
	movb	$0, -0x48(%ebp)
	calll	__ctype_get_mb_cur_max
	cmpl	$1, %eax
	sete	%al
	movb	%al, -0x3d(%ebp)
	movl	0x1c(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -0x47(%ebp)
	movb	$0, -0x46(%ebp)
	movb	$0, -0x45(%ebp)
	movb	$1, -0x44(%ebp)
.label_1917:
	cmpl	$0xa, 0x18(%ebp)
	ja	.label_1879
	movl	0x18(%ebp), %eax
	shll	$2, %eax
	addl	$label_1883,  %eax
	movl	0(%eax), %eax
	jmpl	*%eax
.label_2533:
	movl	$5, 0x18(%ebp)
	movb	$1, -0x47(%ebp)
.label_2532:
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1889
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1893
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x22, 0(%eax)
.label_1893:
	addl	$1, -0x34(%ebp)
.label_1889:
	movb	$1, -0x48(%ebp)
	movl	$label_1829, -44(%ebp)
	movl	$1, -0x28(%ebp)
	jmp	.label_1900
.label_2534:
	movb	$1, -0x48(%ebp)
	movb	$0, -0x47(%ebp)
	jmp	.label_1900
.label_2535:
	cmpl	$0xa, 0x18(%ebp)
	je	.label_1907
	.section	.text
	.align	32

	.globl sub_805a500
	.type sub_805a500, @function
sub_805a500:

	subl	$8, %esp
	pushl	0x18(%ebp)
	pushl	$label_1967
	calll	gettext_quote
	addl	$0x10, %esp
	movl	%eax, -0x58(%ebp)
	subl	$8, %esp
	pushl	0x18(%ebp)
	pushl	$label_1834
	calll	gettext_quote
	addl	$0x10, %esp
	movl	%eax, -0x5c(%ebp)
.label_1907:
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1920
	movl	-0x58(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	jmp	.label_1921
.label_1932:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1925
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%eax, %edx
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, 0(%edx)
.label_1925:
	addl	$1, -0x34(%ebp)
	addl	$1, -0x2c(%ebp)
.label_1921:
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1932
.label_1920:
	movb	$1, -0x48(%ebp)
	movl	-0x5c(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
	jmp	.label_1900
.label_2530:
	movb	$1, -0x48(%ebp)
.label_2529:
	movb	$1, -0x47(%ebp)
.label_2531:
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1944
	movb	$1, -0x48(%ebp)
.label_1944:
	movl	$2, 0x18(%ebp)
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1948
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1847
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1847:
	addl	$1, -0x34(%ebp)
.label_1948:
	movl	$label_1834, -44(%ebp)
	movl	$1, -0x28(%ebp)
	jmp	.label_1900
.label_2528:
	movb	$0, -0x47(%ebp)
	jmp	.label_1900
.label_1879:
	calll	abort
.label_1900:
	movl	$0, -0x38(%ebp)
	jmp	.label_1945
.label_1888:
	movb	$0, -0x41(%ebp)
	movb	$0, -0x40(%ebp)
	movb	$0, -0x3f(%ebp)
	cmpb	$0, -0x48(%ebp)
	je	.label_1839
	cmpl	$2, 0x18(%ebp)
	je	.label_1839
	cmpl	$0, -0x28(%ebp)
	je	.label_1839
	movl	-0x38(%ebp), %edx
	movl	-0x28(%ebp), %eax
	leal	0(%edx, %eax), %ebx
	cmpl	$-1, 0x14(%ebp)
	jne	.label_1843
	cmpl	$1, -0x28(%ebp)
	jbe	.label_1843
	subl	$0xc, %esp
	pushl	-0x50(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, 0x14(%ebp)
	movl	0x14(%ebp), %eax
	jmp	.label_1910
.label_1843:
	movl	0x14(%ebp), %eax
.label_1910:
	cmpl	%eax, %ebx
	ja	.label_1839
	movl	-0x50(%ebp), %edx
	movl	-0x38(%ebp), %eax
	addl	%edx, %eax
	subl	$4, %esp
	pushl	-0x28(%ebp)
	pushl	-0x2c(%ebp)
	pushl	%eax
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1839
	cmpb	$0, -0x47(%ebp)
	jne	.label_1865
	movb	$1, -0x41(%ebp)
.label_1839:
	movl	-0x50(%ebp), %edx
	movl	-0x38(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x43(%ebp)
	movzbl	-0x43(%ebp), %eax
	cmpl	$0x7e, %eax
	ja	.label_1868
	movl	label_1873(, %eax, 4),  %eax
	jmpl	*%eax
.label_2536:
	cmpb	$0, -0x48(%ebp)
	je	.label_1877
	cmpb	$0, -0x47(%ebp)
	jne	.label_1881
	movb	$1, -0x40(%ebp)
	cmpl	$2, 0x18(%ebp)
	jne	.label_1884
	movzbl	-0x46(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1884
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1890
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1890:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1897
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x24, 0(%eax)
.label_1897:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1902
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1902:
	addl	$1, -0x34(%ebp)
	movb	$1, -0x46(%ebp)
.label_1884:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1909
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x5c, 0(%eax)
.label_1909:
	addl	$1, -0x34(%ebp)
	cmpl	$2, 0x18(%ebp)
	je	.label_1914
	movl	-0x38(%ebp), %eax
	addl	$1, %eax
	cmpl	0x14(%ebp), %eax
	.section	.text
	.align	32

	.globl sub_805a726
	.type sub_805a726, @function
sub_805a726:

	pushl	%edx
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x2f, %al
	jle	.label_1914
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x39, %al
	jg	.label_1914
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1968
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x30, 0(%eax)
.label_1968:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1969
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x30, 0(%eax)
.label_1969:
	addl	$1, -0x34(%ebp)
.label_1914:
	movb	$0x30, -0x43(%ebp)
	jmp	.label_1937
.label_1877:
	movl	0x1c(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.label_1937
	jmp	.label_1870
.label_2549:
	movl	0x18(%ebp), %eax
	cmpl	$2, %eax
	je	.label_1939
	cmpl	$5, %eax
	je	.label_1953
	jmp	.label_1950
.label_1939:
	cmpb	$0, -0x47(%ebp)
	je	.label_1951
	jmp	.label_1864
.label_1953:
	movl	0x1c(%ebp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.label_1956
	movl	-0x38(%ebp), %eax
	addl	$2, %eax
	cmpl	0x14(%ebp), %eax
	jae	.label_1956
	movl	-0x38(%ebp), %eax
	leal	1(%eax), %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x3f, %al
	jne	.label_1956
	movl	-0x38(%ebp), %eax
	leal	2(%eax), %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x21, %eax
	cmpl	$0x1d, %eax
	ja	.label_1962
	movl	label_1840(, %eax, 4),  %eax
	jmpl	*%eax
.label_2552:
	cmpb	$0, -0x47(%ebp)
	jne	.label_1844
	movl	-0x38(%ebp), %eax
	leal	2(%eax), %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x43(%ebp)
	addl	$2, -0x38(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1855
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x3f, 0(%eax)
.label_1855:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1942
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x22, 0(%eax)
.label_1942:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1908
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x22, 0(%eax)
.label_1908:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1861
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x3f, 0(%eax)
.label_1861:
	addl	$1, -0x34(%ebp)
	jmp	.label_1874
.label_1962:
	nop	
.label_1874:
	jmp	.label_1956
.label_1951:
	nop	
	jmp	.label_1878
.label_1956:
	nop	
.label_1950:
	jmp	.label_1878
.label_2537:
	movb	$0x61, -0x42(%ebp)
	jmp	.label_1871
.label_2538:
	movb	$0x62, -0x42(%ebp)
	jmp	.label_1871
.label_2542:
	movb	$0x66, -0x42(%ebp)
	jmp	.label_1871
.label_2540:
	movb	$0x6e, -0x42(%ebp)
	jmp	.label_1887
.label_2543:
	movb	$0x72, -0x42(%ebp)
	jmp	.label_1887
.label_2539:
	movb	$0x74, -0x42(%ebp)
	jmp	.label_1887
.label_2541:
	movb	$0x76, -0x42(%ebp)
	jmp	.label_1871
.label_2550:
	movzbl	-0x43(%ebp), %eax
	movb	%al, -0x42(%ebp)
	cmpl	$2, 0x18(%ebp)
	jne	.label_1895
	cmpb	$0, -0x47(%ebp)
	je	.label_1961
	jmp	.label_1864
.label_1895:
	cmpb	$0, -0x48(%ebp)
	je	.label_1887
	cmpb	$0, -0x47(%ebp)
	je	.label_1887
	cmpl	$0, -0x28(%ebp)
	jne	.label_1898
.label_1887:
	cmpl	$2, 0x18(%ebp)
	jne	.label_1871
	cmpb	$0, -0x47(%ebp)
	jne	.label_1963
.label_1871:
	cmpb	$0, -0x48(%ebp)
	je	.label_1851
	movzbl	-0x42(%ebp), %eax
	movb	%al, -0x43(%ebp)
	jmp	.label_1913
.label_2551:
	cmpl	$-1, 0x14(%ebp)
	jne	.label_1916
	movl	-0x50(%ebp), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	setne	%al
	jmp	.label_1918
.label_1916:
	cmpl	$1, 0x14(%ebp)
	setne	%al
.label_1918:
	testb	%al, %al
	jne	.label_1924
.label_2546:
	cmpl	$0, -0x38(%ebp)
	jne	.label_1943
.label_2544:
	movb	$1, -0x3f(%ebp)
.label_2545:
	cmpl	$2, 0x18(%ebp)
	jne	.label_1931
	cmpb	$0, -0x47(%ebp)
	je	.label_1931
	jmp	.label_1864
.label_2548:
	movb	$1, -0x45(%ebp)
	movb	$1, -0x3f(%ebp)
	cmpl	$2, 0x18(%ebp)
	jne	.label_1935
	cmpb	$0, -0x47(%ebp)
	jne	.label_1938
	cmpl	$0, 0xc(%ebp)
	je	.label_1940
	cmpl	$0, -0x30(%ebp)
	jne	.label_1940
	movl	0xc(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	$0, 0xc(%ebp)
.label_1940:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1955
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1955:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1850
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x5c, 0(%eax)
.label_1850:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1957
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1957:
	addl	$1, -0x34(%ebp)
	movb	$0, -0x46(%ebp)
	jmp	.label_1935
.label_2547:
	movb	$1, -0x3f(%ebp)
	jmp	.label_1878
.label_1868:
	cmpb	$0, -0x3d(%ebp)
	je	.label_1964
	movl	$1, -0x24(%ebp)
	calll	__ctype_b_loc
	movl	0(%eax), %eax
	movzbl	-0x43(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x4000, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, -0x3e(%ebp)
	jmp	.label_1841
.label_1964:
	subl	$4, %esp
	pushl	$8
	pushl	$0
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	memset
	addl	$0x10, %esp
	movl	$0, -0x24(%ebp)
	movb	$1, -0x3e(%ebp)
	cmpl	$-1, 0x14(%ebp)
	jne	.label_1856
	subl	$0xc, %esp
	pushl	-0x50(%ebp)
	calll	strlen
	addl	$0x10, %esp
	movl	%eax, 0x14(%ebp)
.label_1856:
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	0x14(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	-0x50(%ebp), %eax
	addl	%eax, %edx
	leal	-0x14(%ebp), %eax
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	calll	rpl_mbrtowc
	addl	$0x10, %esp
	movl	%eax, -0x1c(%ebp)
	cmpl	$0, -0x1c(%ebp)
	je	.label_1876
	cmpl	$-1, -0x1c(%ebp)
	jne	.label_1882
	movb	$0, -0x3e(%ebp)
	jmp	.label_1841
.label_1882:
	cmpl	$-2, -0x1c(%ebp)
	jne	.label_1886
	movb	$0, -0x3e(%ebp)
	jmp	.label_1846
.label_1891:
	addl	$1, -0x24(%ebp)
.label_1846:
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	cmpl	0x14(%ebp), %eax
	jae	.label_1892
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1891
	jmp	.label_1892
.label_1886:
	cmpb	$0, -0x47(%ebp)
	je	.label_1903
	cmpl	$2, 0x18(%ebp)
	jne	.label_1903
	movl	$1, -0x20(%ebp)
	jmp	.label_1905
.label_1901:
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	-0x20(%ebp), %eax
	addl	%eax, %edx
	movl	-0x50(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x5b, %eax
	cmpl	$0x21, %eax
	ja	.label_1863
	movl	label_1915(, %eax, 4),  %eax
	jmpl	*%eax
.label_1863:
	nop	
	addl	$1, -0x20(%ebp)
.label_1905:
	movl	-0x20(%ebp), %eax
	cmpl	-0x1c(%ebp), %eax
	jb	.label_1901
.label_1903:
	movl	-0x3c(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	iswprint
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_1923
	movb	$0, -0x3e(%ebp)
.label_1923:
	movl	-0x1c(%ebp), %eax
	addl	%eax, -0x24(%ebp)
	subl	$0xc, %esp
	leal	-0x14(%ebp), %eax
	pushl	%eax
	calll	mbsinit
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_1856
	jmp	.label_1841
.label_1876:
	nop	
	jmp	.label_1841
.label_1892:
	nop	
.label_1841:
	movzbl	-0x3e(%ebp), %eax
	movb	%al, -0x3f(%ebp)
	cmpl	$1, -0x24(%ebp)
	ja	.label_1934
	cmpb	$0, -0x48(%ebp)
	je	.label_1878
	movzbl	-0x3e(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1878
.label_1934:
	movl	-0x38(%ebp), %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x18(%ebp)
.label_1858:
	cmpb	$0, -0x48(%ebp)
	je	.label_1947
	movzbl	-0x3e(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1947
	cmpb	$0, -0x47(%ebp)
	jne	.label_1849
	movb	$1, -0x40(%ebp)
	cmpl	$2, 0x18(%ebp)
	jne	.label_1867
	movzbl	-0x46(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1867
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1857
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1857:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1960
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x24, 0(%eax)
.label_1960:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1965
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1965:
	addl	$1, -0x34(%ebp)
	movb	$1, -0x46(%ebp)
.label_1867:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1912
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x5c, 0(%eax)
.label_1912:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1852
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movzbl	-0x43(%ebp), %edx
	shrb	$6, %dl
	addl	$0x30, %edx
	movb	%dl, 0(%eax)
.label_1852:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1862
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movzbl	-0x43(%ebp), %edx
	shrb	$3, %dl
	andl	$7, %edx
	addl	$0x30, %edx
	movb	%dl, 0(%eax)
.label_1862:
	addl	$1, -0x34(%ebp)
	movzbl	-0x43(%ebp), %eax
	andl	$7, %eax
	addl	$0x30, %eax
	movb	%al, -0x43(%ebp)
	jmp	.label_1869
.label_1947:
	cmpb	$0, -0x41(%ebp)
	je	.label_1869
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1875
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x5c, 0(%eax)
.label_1875:
	addl	$1, -0x34(%ebp)
	movb	$0, -0x41(%ebp)
.label_1869:
	movl	-0x38(%ebp), %eax
	addl	$1, %eax
	cmpl	-0x18(%ebp), %eax
	jae	.label_1885
	cmpb	$0, -0x46(%ebp)
	je	.label_1872
	movzbl	-0x40(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1872
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1853
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1853:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1842
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1842:
	addl	$1, -0x34(%ebp)
	movb	$0, -0x46(%ebp)
.label_1872:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1906
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%eax, %edx
	movzbl	-0x43(%ebp), %eax
	movb	%al, 0(%edx)
.label_1906:
	addl	$1, -0x34(%ebp)
	addl	$1, -0x38(%ebp)
	movl	-0x50(%ebp), %edx
	movl	-0x38(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x43(%ebp)
	jmp	.label_1858
.label_1885:
	nop	
	jmp	.label_1845
.label_1937:
	nop	
	jmp	.label_1878
.label_1851:
	nop	
	jmp	.label_1878
.label_1924:
	nop	
	jmp	.label_1878
.label_1943:
	nop	
	jmp	.label_1878
.label_1931:
	nop	
	jmp	.label_1878
.label_1935:
	nop	
.label_1878:
	movzbl	-0x48(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1922
	cmpl	$2, 0x18(%ebp)
	jne	.label_1927
.label_1922:
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1929
.label_1927:
	cmpl	$0, -0x54(%ebp)
	je	.label_1929
	movzbl	-0x43(%ebp), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	leal	0(, %eax, 4), %edx
	movl	-0x54(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %edx
	movzbl	-0x43(%ebp), %eax
	andl	$0x1f, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.label_1913
.label_1929:
	movzbl	-0x41(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.label_1941
.label_1913:
	cmpb	$0, -0x47(%ebp)
	jne	.label_1946
	movb	$1, -0x40(%ebp)
	cmpl	$2, 0x18(%ebp)
	jne	.label_1952
	movzbl	-0x46(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1952
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1954
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1954:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1896
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x24, 0(%eax)
.label_1896:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1959
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1959:
	addl	$1, -0x34(%ebp)
	movb	$1, -0x46(%ebp)
.label_1952:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1966
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x5c, 0(%eax)
.label_1966:
	addl	$1, -0x34(%ebp)
	jmp	.label_1845
.label_1961:
	nop	
	jmp	.label_1845
.label_1898:
	nop	
	jmp	.label_1845
.label_1941:
	nop	
.label_1845:
	cmpb	$0, -0x46(%ebp)
	je	.label_1848
	movzbl	-0x40(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1848
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1854
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1854:
	addl	$1, -0x34(%ebp)
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1859
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0x27, 0(%eax)
.label_1859:
	addl	$1, -0x34(%ebp)
	movb	$0, -0x46(%ebp)
.label_1848:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1866
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%eax, %edx
	movzbl	-0x43(%ebp), %eax
	movb	%al, 0(%edx)
.label_1866:
	addl	$1, -0x34(%ebp)
	movzbl	-0x3f(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1870
	movb	$0, -0x44(%ebp)
.label_1870:
	addl	$1, -0x38(%ebp)
.label_1945:
	cmpl	$-1, 0x14(%ebp)
	jne	.label_1930
	movl	-0x50(%ebp), %edx
	movl	-0x38(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	setne	%al
	jmp	.label_1880
.label_1930:
	movl	-0x38(%ebp), %eax
	cmpl	0x14(%ebp), %eax
	setne	%al
.label_1880:
	testb	%al, %al
	jne	.label_1888
	cmpl	$0, -0x34(%ebp)
	jne	.label_1860
	cmpl	$2, 0x18(%ebp)
	jne	.label_1860
	cmpb	$0, -0x47(%ebp)
	jne	.label_1894
.label_1860:
	cmpl	$2, 0x18(%ebp)
	jne	.label_1899
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1899
	cmpb	$0, -0x45(%ebp)
	je	.label_1899
	cmpb	$0, -0x44(%ebp)
	je	.label_1904
	subl	$0xc, %esp
	pushl	-0x5c(%ebp)
	pushl	-0x58(%ebp)
	pushl	-0x54(%ebp)
	pushl	0x1c(%ebp)
	pushl	$5
	pushl	0x14(%ebp)
	pushl	-0x50(%ebp)
	pushl	-0x30(%ebp)
	pushl	-0x4c(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
	jmp	.label_1911
.label_1904:
	cmpl	$0, 0xc(%ebp)
	jne	.label_1899
	cmpl	$0, -0x30(%ebp)
	je	.label_1899
	movl	-0x30(%ebp), %eax
	movl	%eax, 0xc(%ebp)
	movl	$0, -0x34(%ebp)
	jmp	.label_1917
.label_1899:
	cmpl	$0, -0x2c(%ebp)
	je	.label_1919
	movzbl	-0x47(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_1919
	jmp	.label_1926
.label_1933:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1928
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%eax, %edx
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, 0(%edx)
.label_1928:
	addl	$1, -0x34(%ebp)
	addl	$1, -0x2c(%ebp)
.label_1926:
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_1933
.label_1919:
	movl	-0x34(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_1936
	movl	-0x4c(%ebp), %edx
	movl	-0x34(%ebp), %eax
	addl	%edx, %eax
	movb	$0, 0(%eax)
.label_1936:
	movl	-0x34(%ebp), %eax
	jmp	.label_1911
.label_1865:
	nop	
	jmp	.label_1864
.label_1881:
	nop	
	jmp	.label_1864
.label_1844:
	nop	
	jmp	.label_1864
.label_1963:
	nop	
	jmp	.label_1864
.label_1938:
	nop	
	jmp	.label_1864
.label_2553:
	nop	
	jmp	.label_1864
.label_1849:
	nop	
	jmp	.label_1864
.label_1946:
	nop	
	jmp	.label_1864
.label_1894:
	nop	
.label_1864:
	cmpl	$2, 0x18(%ebp)
	jne	.label_1949
	cmpb	$0, -0x48(%ebp)
	je	.label_1949
	movl	$4, 0x18(%ebp)
.label_1949:
	movl	0x1c(%ebp), %eax
	andl	$0xfffffffd, %eax
	subl	$0xc, %esp
	pushl	-0x5c(%ebp)
	pushl	-0x58(%ebp)
	pushl	$0
	pushl	%eax
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	-0x50(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x4c(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
.label_1911:
	movl	-0xc(%ebp), %ebx
	xorl	%gs:0x14, %ebx
	je	.label_1958
	calll	__stack_chk_fail
.label_1958:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805aff1

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	cmpl	$0, 0x18(%ebp)
	je	.label_1970
	movl	0x18(%ebp), %eax
	jmp	.label_1971
.label_1970:
	movl	$default_quoting_options,  %eax
.label_1971:
	movl	%eax, -0x14(%ebp)
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x14(%ebp), %eax
	movl	0x2c(%eax), %ebx
	movl	-0x14(%ebp), %eax
	movl	0x28(%eax), %ecx
	movl	-0x14(%ebp), %eax
	leal	8(%eax), %esi
	movl	-0x14(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edx
	pushl	%eax
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
	movl	%eax, -0xc(%ebp)
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	-0xc(%ebp), %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b068
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	$0
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_alloc_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b083

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x24, %esp
	cmpl	$0, 0x14(%ebp)
	je	.label_1973
	movl	0x14(%ebp), %eax
	jmp	.label_1972
.label_1973:
	movl	$default_quoting_options,  %eax
.label_1972:
	movl	%eax, -0x1c(%ebp)
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	4(%eax), %edx
	cmpl	$0, 0x10(%ebp)
	sete	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0x2c(%eax), %ecx
	movl	-0x1c(%ebp), %eax
	movl	0x28(%eax), %edx
	movl	-0x1c(%ebp), %eax
	leal	8(%eax), %ebx
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	-0x14(%ebp)
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	pushl	$0
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
	addl	$1, %eax
	movl	%eax, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	xcharalloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0x2c(%eax), %ecx
	movl	-0x1c(%ebp), %eax
	movl	0x28(%eax), %edx
	movl	-0x1c(%ebp), %eax
	leal	8(%eax), %ebx
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	-0x14(%ebp)
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	-0x10(%ebp)
	pushl	-0xc(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x18(%ebp), %eax
	movl	%eax, 0(%edx)
	cmpl	$0, 0x10(%ebp)
	je	.label_1974
	movl	-0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	0x10(%ebp), %eax
	movl	%edx, 0(%eax)
.label_1974:
	movl	-0xc(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b160
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	slotvec,  %eax
	movl	%eax, -0xc(%ebp)
	movl	$1, -0x10(%ebp)
	jmp	.label_1975
.label_1978:
	movl	-0x10(%ebp), %eax
	leal	0(, %eax, 8), %edx
	movl	-0xc(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	addl	$1, -0x10(%ebp)
.label_1975:
	movl	nslots,  %eax
	cmpl	%eax, -0x10(%ebp)
	jl	.label_1978
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	$slot0,  %eax
	je	.label_1976
	movl	-0xc(%ebp), %eax
	movl	4(%eax), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	free
	addl	$0x10, %esp
	movl	$0x100, slotvec0
	movl	$slot0, label_1979
.label_1976:
	cmpl	$slotvec0, -12(%ebp)
	je	.label_1977
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	$slotvec0, slotvec
.label_1977:
	movl	$1, nslots
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b204

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x24, %esp
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	slotvec,  %eax
	movl	%eax, -0x24(%ebp)
	cmpl	$0, 8(%ebp)
	jns	.label_1983
	calll	abort
.label_1983:
	movl	nslots,  %eax
	cmpl	8(%ebp), %eax
	jg	.label_1984
	cmpl	$slotvec0, -36(%ebp)
	sete	%al
	movb	%al, -0x25(%ebp)
	movl	$0xffffffe, -0x18(%ebp)
	movl	-0x18(%ebp), %eax
	cmpl	8(%ebp), %eax
	jge	.label_1986
	calll	xalloc_die
.label_1986:
	movl	8(%ebp), %eax
	addl	$1, %eax
	leal	0(, %eax, 8), %edx
	cmpb	$0, -0x25(%ebp)
	je	.label_1981
	movl	$0, %eax
	jmp	.label_1985
.label_1981:
	movl	-0x24(%ebp), %eax
.label_1985:
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	calll	xrealloc
	addl	$0x10, %esp
	movl	%eax, -0x24(%ebp)
	movl	-0x24(%ebp), %eax
	movl	%eax, slotvec
	cmpb	$0, -0x25(%ebp)
	je	.label_1987
	movl	-0x24(%ebp), %ecx
	movl	slotvec0,  %eax
	movl	label_1979,  %edx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
.label_1987:
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	nslots,  %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	0(, %eax, 8), %edx
	movl	nslots,  %eax
	leal	0(, %eax, 8), %ecx
	movl	-0x24(%ebp), %eax
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$0
	pushl	%eax
	calll	memset
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	addl	$1, %eax
	movl	%eax, nslots
.label_1984:
	movl	8(%ebp), %eax
	leal	0(, %eax, 8), %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
	movl	8(%ebp), %eax
	leal	0(, %eax, 8), %edx
	movl	-0x24(%ebp), %eax
	addl	%edx, %eax
	movl	4(%eax), %eax
	movl	%eax, -0x20(%ebp)
	movl	0x14(%ebp), %eax
	movl	4(%eax), %eax
	orl	$1, %eax
	movl	%eax, -0x10(%ebp)
	movl	0x14(%ebp), %eax
	movl	0x2c(%eax), %ecx
	movl	0x14(%ebp), %eax
	movl	0x28(%eax), %edx
	movl	0x14(%ebp), %eax
	leal	8(%eax), %ebx
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	-0x10(%ebp)
	pushl	%eax
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x14(%ebp)
	pushl	-0x20(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
	movl	%eax, -0xc(%ebp)
	movl	-0x14(%ebp), %eax
	cmpl	-0xc(%ebp), %eax
	ja	.label_1980
	movl	8(%ebp), %eax
	leal	0(, %eax, 8), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	-0xc(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	movl	%eax, 0(%edx)
	cmpl	$slot0, -32(%ebp)
	je	.label_1982
	subl	$0xc, %esp
	pushl	-0x20(%ebp)
	calll	free
	addl	$0x10, %esp
.label_1982:
	movl	8(%ebp), %eax
	leal	0(, %eax, 8), %edx
	movl	-0x24(%ebp), %eax
	leal	0(%edx, %eax), %ebx
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	xcharalloc
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	movl	-0x20(%ebp), %eax
	movl	%eax, 4(%ebx)
	movl	0x14(%ebp), %eax
	movl	0x2c(%eax), %ecx
	movl	0x14(%ebp), %eax
	movl	0x28(%eax), %edx
	movl	0x14(%ebp), %eax
	leal	8(%eax), %ebx
	movl	0x14(%ebp), %eax
	movl	0(%eax), %eax
	subl	$0xc, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	-0x10(%ebp)
	pushl	%eax
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	-0x14(%ebp)
	pushl	-0x20(%ebp)
	calll	quotearg_buffer_restyled
	addl	$0x30, %esp
.label_1980:
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x1c(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	-0x20(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b403

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	$default_quoting_options
	pushl	$-1
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b420

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	$default_quoting_options
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b43e
	.globl quotearg
	.type quotearg, @function
quotearg:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b456
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b471

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	0x10(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x3c(%ebp), %eax
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	calll	quoting_options_from_style
	addl	$0xc, %esp
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	pushl	$-1
	pushl	-0x4c(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1988
	calll	__stack_chk_fail
.label_1988:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b4c1

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	0x10(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x3c(%ebp), %eax
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	calll	quoting_options_from_style
	addl	$0xc, %esp
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	pushl	0x14(%ebp)
	pushl	-0x4c(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_1989
	calll	__stack_chk_fail
.label_1989:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b512

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n_style
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b52d
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n_style_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b548

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	0x10(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, -0x4c(%ebp)
	movb	%al, -0x50(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	default_quoting_options,  %eax
	movl	%eax, -0x3c(%ebp)
	movl	label_1990,  %eax
	movl	%eax, -0x38(%ebp)
	movl	label_1991,  %eax
	movl	%eax, -0x34(%ebp)
	movl	label_1992,  %eax
	movl	%eax, -0x30(%ebp)
	movl	label_1993,  %eax
	movl	%eax, -0x2c(%ebp)
	movl	label_1994,  %eax
	movl	%eax, -0x28(%ebp)
	movl	label_1995,  %eax
	movl	%eax, -0x24(%ebp)
	movl	label_1996,  %eax
	movl	%eax, -0x20(%ebp)
	movl	label_1997,  %eax
	movl	%eax, -0x1c(%ebp)
	movl	label_1998,  %eax
	movl	%eax, -0x18(%ebp)
	movl	label_1999,  %eax
	movl	%eax, -0x14(%ebp)
	movl	label_2000,  %eax
	movl	%eax, -0x10(%ebp)
	movsbl	-0x50(%ebp), %eax
	pushl	$1
	pushl	%eax
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	calll	set_char_quoting
	addl	$0xc, %esp
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	-0x4c(%ebp)
	pushl	$0
	calll	quotearg_n_options
	addl	$0x10, %esp
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2001
	calll	__stack_chk_fail
.label_2001:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b5ff

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0xc(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movsbl	-0xc(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	$-1
	pushl	8(%ebp)
	calll	quotearg_char_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b622

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$8, %esp
	pushl	$0x3a
	pushl	8(%ebp)
	calll	quotearg_char
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b63a
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$0x3a
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_char_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b655

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x88, %esp
	movl	0x10(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	-0x88(%ebp), %eax
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%eax
	calll	quoting_options_from_style
	addl	$0xc, %esp
	movl	-0x88(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	-0x84(%ebp), %eax
	movl	%eax, -0x38(%ebp)
	movl	-0x80(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	-0x7c(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	-0x78(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	-0x74(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	-0x70(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	-0x6c(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	-0x68(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	-0x64(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x60(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x5c(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	subl	$4, %esp
	pushl	$1
	pushl	$0x3a
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	calll	set_char_quoting
	addl	$0x10, %esp
	leal	-0x3c(%ebp), %eax
	pushl	%eax
	pushl	$-1
	pushl	-0x4c(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2002
	calll	__stack_chk_fail
.label_2002:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b70c

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$-1
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_custom_mem
	addl	$0x20, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b72d

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x98, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x6c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x70(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x74(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0x2c(%ebp)
	xorl	%eax, %eax
	movl	default_quoting_options,  %eax
	movl	%eax, -0x5c(%ebp)
	movl	label_1990,  %eax
	movl	%eax, -0x58(%ebp)
	movl	label_1991,  %eax
	movl	%eax, -0x54(%ebp)
	movl	label_1992,  %eax
	movl	%eax, -0x50(%ebp)
	movl	label_1993,  %eax
	movl	%eax, -0x4c(%ebp)
	movl	label_1994,  %eax
	movl	%eax, -0x48(%ebp)
	movl	label_1995,  %eax
	movl	%eax, -0x44(%ebp)
	movl	label_1996,  %eax
	movl	%eax, -0x40(%ebp)
	movl	label_1997,  %eax
	movl	%eax, -0x3c(%ebp)
	movl	label_1998,  %eax
	movl	%eax, -0x38(%ebp)
	movl	label_1999,  %eax
	movl	%eax, -0x34(%ebp)
	movl	label_2000,  %eax
	movl	%eax, -0x30(%ebp)
	subl	$4, %esp
	pushl	-0x70(%ebp)
	pushl	-0x6c(%ebp)
	leal	-0x5c(%ebp), %eax
	pushl	%eax
	calll	set_custom_quoting
	addl	$0x10, %esp
	leal	-0x5c(%ebp), %eax
	pushl	%eax
	pushl	0x18(%ebp)
	pushl	-0x74(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	movl	-0x2c(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2003
	calll	__stack_chk_fail
.label_2003:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b7ed
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n_custom
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b808
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quotearg_n_custom_mem
	addl	$0x20, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b829

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	$quote_quoting_options
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quotearg_n_options
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b847
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	$0
	calll	quote_n_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b862

	.globl quote_n
	.type quote_n, @function
quote_n:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$-1
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	quote_n_mem
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b87d

	.globl quote
	.type quote, @function
quote:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	$0
	calll	quote_n
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b895

	.globl same_name
	.type same_name, @function
same_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	$-0x64
	pushl	8(%ebp)
	pushl	$-0x64
	calll	same_nameat
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805b8af

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x100, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0xfc(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x100(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$0xc, %esp
	pushl	-0xfc(%ebp)
	calll	last_component
	addl	$0x10, %esp
	movl	%eax, -0xe8(%ebp)
	subl	$0xc, %esp
	pushl	-0x100(%ebp)
	calll	last_component
	addl	$0x10, %esp
	movl	%eax, -0xe4(%ebp)
	subl	$0xc, %esp
	pushl	-0xe8(%ebp)
	calll	base_len
	addl	$0x10, %esp
	movl	%eax, -0xe0(%ebp)
	subl	$0xc, %esp
	pushl	-0xe4(%ebp)
	calll	base_len
	addl	$0x10, %esp
	movl	%eax, -0xdc(%ebp)
	movl	-0xe0(%ebp), %eax
	cmpl	-0xdc(%ebp), %eax
	jne	.label_2008
	subl	$4, %esp
	pushl	-0xdc(%ebp)
	pushl	-0xe4(%ebp)
	pushl	-0xe8(%ebp)
	calll	memcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2008
	movl	$1, %eax
	jmp	.label_2010
.label_2008:
	movl	$0, %eax
.label_2010:
	movb	%al, -0xea(%ebp)
	andb	$1, -0xea(%ebp)
	movzbl	-0xea(%ebp), %eax
	movb	%al, -0xe9(%ebp)
	movb	$0, -0xeb(%ebp)
	cmpb	$0, -0xe9(%ebp)
	je	.label_2011
	subl	$0xc, %esp
	pushl	-0xfc(%ebp)
	calll	dir_name
	addl	$0x10, %esp
	movl	%eax, -0xd8(%ebp)
	movl	$0x100, -0xd4(%ebp)
	pushl	-0xd4(%ebp)
	leal	-0xcc(%ebp), %eax
	pushl	%eax
	pushl	-0xd8(%ebp)
	pushl	8(%ebp)
	calll	fstatat64
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2007
	calll	__errno_location
	movl	0(%eax), %eax
	pushl	-0xd8(%ebp)
	pushl	$label_2005
	pushl	%eax
	pushl	$1
	calll	error
	addl	$0x10, %esp
.label_2007:
	subl	$0xc, %esp
	pushl	-0xd8(%ebp)
	calll	free
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	-0x100(%ebp)
	calll	dir_name
	addl	$0x10, %esp
	movl	%eax, -0xd0(%ebp)
	pushl	-0xd4(%ebp)
	leal	-0x6c(%ebp), %eax
	pushl	%eax
	pushl	-0xd0(%ebp)
	pushl	0x10(%ebp)
	calll	fstatat64
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2012
	calll	__errno_location
	movl	0(%eax), %eax
	pushl	-0xd0(%ebp)
	pushl	$label_2005
	pushl	%eax
	pushl	$1
	calll	error
	addl	$0x10, %esp
.label_2012:
	movl	-0x74(%ebp), %ecx
	movl	-0x70(%ebp), %ebx
	movl	-0x14(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_2009
	movl	-0xcc(%ebp), %ecx
	movl	-0xc8(%ebp), %ebx
	movl	-0x6c(%ebp), %eax
	movl	-0x68(%ebp), %edx
	movl	%ebx, %esi
	xorl	%edx, %esi
	xorl	%ecx, %eax
	orl	%esi, %eax
	testl	%eax, %eax
	jne	.label_2009
	movl	$1, %eax
	jmp	.label_2006
.label_2009:
	movl	$0, %eax
.label_2006:
	movb	%al, -0xeb(%ebp)
	andb	$1, -0xeb(%ebp)
	subl	$0xc, %esp
	pushl	-0xd0(%ebp)
	calll	free
	addl	$0x10, %esp
.label_2011:
	movzbl	-0xeb(%ebp), %eax
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2004
	calll	__stack_chk_fail
.label_2004:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805badf
	.globl getcon
	.type getcon, @function
getcon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805baf7

	.globl freecon
	.type freecon, @function
freecon:
	pushl	%ebp
	movl	%esp, %ebp
	nop	
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bafd
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb15
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb2d
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb45

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb5d

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb75
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bb8d
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bba5
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bbbd
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bbd5
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bbed
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc05
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc1d
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0x10(%ebp), %eax
	movw	%ax, -0xc(%ebp)
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc3c
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc54
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	calll	__errno_location
	movl	$0x5f, 0(%eax)
	movl	$0xffffffff, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc6c
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x44(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc77
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x54(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc82
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	0x4c(%eax), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc8d
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	pushl	%ebp
	movl	%esp, %ebp
	movl	$0, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bc97

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	movl	0xc(%ebp), %eax
	movl	0x44(%eax), %edx
	movl	0x40(%eax), %eax
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	popl	%ebp
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805bcb2

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	movl	0xc(%ebp), %eax
	movl	0x54(%eax), %edx
	movl	0x50(%eax), %eax
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	popl	%ebp
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805bccd

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	movl	0xc(%ebp), %eax
	movl	0x4c(%eax), %edx
	movl	0x48(%eax), %eax
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	popl	%ebp
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805bce8
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0xffffffff, -8(%ebp)
	movl	$0xffffffff, -4(%ebp)
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	leave	
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805bd11
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bd19
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-4(%ebp), %edx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	8(%ebp), %eax
	leave	
	retl	$4
	.section	.text
	.align	32
	#Procedure 0x805bd40

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	0x10(%ebp), %eax
	cmpl	%eax, %edx
	jge	.label_2013
	movl	$0xffffffff, %eax
	jmp	.label_2017
.label_2013:
	movl	8(%ebp), %edx
	movl	0x10(%ebp), %eax
	cmpl	%eax, %edx
	jle	.label_2014
	movl	$1, %eax
	jmp	.label_2017
.label_2014:
	movl	0xc(%ebp), %eax
	cmpl	$-1, %eax
	jl	.label_2015
	movl	0xc(%ebp), %eax
	cmpl	$0x77359400, %eax
	jle	.label_2015
.label_2015:
	movl	0x14(%ebp), %eax
	cmpl	$-1, %eax
	jl	.label_2016
	movl	0x14(%ebp), %eax
	cmpl	$0x77359400, %eax
	jle	.label_2016
.label_2016:
	movl	0xc(%ebp), %edx
	movl	0x14(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.label_2017:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bd95
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	testl	%eax, %eax
	js	.label_2019
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jne	.label_2021
	movl	0xc(%ebp), %eax
	testl	%eax, %eax
	je	.label_2020
.label_2021:
	movl	$1, %eax
	jmp	.label_2018
.label_2020:
	movl	$0, %eax
	jmp	.label_2018
.label_2019:
	movl	$0xffffffff, %eax
.label_2018:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bdc2
	.globl timespectod
	.type timespectod, @function
timespectod:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	fildl	-4(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -4(%ebp)
	fildl	-4(%ebp)
	fldl	label_2022
	fdivrp	%st(1)
	faddp	%st(1)
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805bde6

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x2c, %esp
	cmpl	$0, 0xc(%ebp)
	je	.label_2026
	subl	$0xc, %esp
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	$label_2030
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	jmp	.label_2024
.label_2026:
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	$label_2025
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x10, %esp
.label_2024:
	subl	$0xc, %esp
	pushl	$label_2027
	calll	gettext
	addl	$0x10, %esp
	pushl	$0x7e2
	pushl	%eax
	pushl	$version_etc_copyright
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_2023
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	cmpl	$9, 0x1c(%ebp)
	ja	.label_2028
	movl	0x1c(%ebp), %eax
	shll	$2, %eax
	addl	$label_2031,  %eax
	movl	0(%eax), %eax
	jmpl	*%eax
.label_2668:
	calll	abort
.label_2669:
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805be91
	.type sub_805be91, @function
sub_805be91:

	subl	$0xc, %esp
	pushl	$label_2032
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	jmp	.label_2033
.label_2670:
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805bec3
	.type sub_805bec3, @function
sub_805bec3:

	subl	$0xc, %esp
	pushl	$label_2034
	calll	gettext
	addl	$0x10, %esp
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x10, %esp
	jmp	.label_2033
.label_2671:
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805befb
	.type sub_805befb, @function
sub_805befb:

	subl	$0xc, %esp
	pushl	$label_2035
	calll	gettext
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	jmp	.label_2033
.label_2672:
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805bf42
	.type sub_805bf42, @function
sub_805bf42:

	subl	$0xc, %esp
	pushl	$label_2036
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	jmp	.label_2033
.label_2673:
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805bf97
	.type sub_805bf97, @function
sub_805bf97:

	subl	$0xc, %esp
	pushl	$label_2037
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	jmp	.label_2033
.label_2674:
	movl	0x18(%ebp), %eax
	addl	$0x14, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %ecx
	movl	%ecx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805bffa
	.type sub_805bffa, @function
sub_805bffa:

	subl	$0xc, %esp
	pushl	$label_2038
	calll	gettext
	addl	$0x10, %esp
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x20, %esp
	jmp	.label_2033
.label_2675:
	movl	0x18(%ebp), %eax
	addl	$0x18, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	addl	$0x14, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %ecx
	movl	%ecx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %edi
	movl	%edi, -0x28(%ebp)
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805c068
	.type sub_805c068, @function
sub_805c068:

	subl	$0xc, %esp
	pushl	$label_2039
	calll	gettext
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	%esi
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x30, %esp
	jmp	.label_2033
.label_2676:
	movl	0x18(%ebp), %eax
	addl	$0x1c, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$0x18, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x14, %eax
	movl	0(%eax), %ecx
	movl	%ecx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %esi
	movl	%esi, -0x28(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %ebx
	movl	%ebx, -0x2c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805c0e7
	.type sub_805c0e7, @function
sub_805c0e7:

	subl	$0xc, %esp
	pushl	$label_2040
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%edi
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	-0x2c(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x30, %esp
	jmp	.label_2033
.label_2677:
	movl	0x18(%ebp), %eax
	addl	$0x20, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$0x1c, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x18, %eax
	movl	0(%eax), %ecx
	movl	%ecx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x14, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %esi
	movl	%esi, -0x28(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %ebx
	movl	%ebx, -0x2c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	.section	.text
	.align	32

	.globl sub_805c174
	.type sub_805c174, @function
sub_805c174:

	subl	$0xc, %esp
	pushl	$label_2041
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	%edi
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	-0x2c(%ebp)
	pushl	-0x30(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x30, %esp
	jmp	.label_2033
.label_2028:
	movl	0x18(%ebp), %eax
	addl	$0x20, %eax
	movl	0(%eax), %edi
	movl	0x18(%ebp), %eax
	addl	$0x1c, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x18, %eax
	movl	0(%eax), %ecx
	movl	%ecx, -0x20(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x14, %eax
	movl	0(%eax), %edx
	movl	%edx, -0x24(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0x10, %eax
	movl	0(%eax), %esi
	movl	%esi, -0x28(%ebp)
	movl	0x18(%ebp), %eax
	addl	$0xc, %eax
	movl	0(%eax), %ebx
	movl	%ebx, -0x2c(%ebp)
	movl	0x18(%ebp), %eax
	addl	$8, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x18(%ebp), %eax
	addl	$4, %eax
	movl	0(%eax), %esi
	movl	0x18(%ebp), %eax
	movl	0(%eax), %ebx
	subl	$0xc, %esp
	pushl	$label_2029
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	%edi
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x28(%ebp)
	pushl	-0x2c(%ebp)
	pushl	-0x30(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	calll	fprintf
	addl	$0x30, %esp
	nop	
.label_2033:
	nop	
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c242
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	jmp	.label_2042
.label_2043:
	addl	$1, -0xc(%ebp)
.label_2042:
	movl	-0xc(%ebp), %eax
	leal	0(, %eax, 4), %edx
	movl	0x18(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	jne	.label_2043
	subl	$8, %esp
	pushl	-0xc(%ebp)
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	version_etc_arn
	addl	$0x20, %esp
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c28a

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x48(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x38(%ebp)
	jmp	.label_2046
.label_2047:
	addl	$1, -0x38(%ebp)
.label_2046:
	cmpl	$9, -0x38(%ebp)
	ja	.label_2045
	movl	-0x4c(%ebp), %eax
	leal	4(%eax), %edx
	movl	%edx, -0x4c(%ebp)
	movl	0(%eax), %edx
	movl	-0x38(%ebp), %eax
	movl	%edx, -0x34(%ebp, %eax, 4)
	movl	-0x38(%ebp), %eax
	movl	-0x34(%ebp, %eax, 4), %eax
	testl	%eax, %eax
	jne	.label_2047
.label_2045:
	subl	$8, %esp
	pushl	-0x38(%ebp)
	leal	-0x34(%ebp), %eax
	pushl	%eax
	pushl	-0x48(%ebp)
	pushl	-0x44(%ebp)
	pushl	-0x40(%ebp)
	pushl	-0x3c(%ebp)
	calll	version_etc_arn
	addl	$0x20, %esp
	nop	
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_2044
	calll	__stack_chk_fail
.label_2044:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c31b

	.globl version_etc
	.type version_etc, @function
version_etc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x28(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	leal	0x18(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	pushl	-0x28(%ebp)
	pushl	-0x24(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x1c(%ebp)
	calll	version_etc_va
	addl	$0x20, %esp
	nop	
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_2048
	calll	__stack_chk_fail
.label_2048:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c379
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	subl	$0xc, %esp
	pushl	$label_2052
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	$label_2053
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	$label_2054
	calll	gettext
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	$label_2050
	pushl	$label_2051
	pushl	%eax
	calll	printf
	addl	$0x10, %esp
	movl	stdout,  %ebx
	subl	$0xc, %esp
	pushl	$label_2049
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	%ebx
	pushl	%eax
	calll	fputs_unlocked
	addl	$0x10, %esp
	nop	
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c3f0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, %ecx
	movl	8(%ebp), %eax
	mull	0xc(%ebp)
	jno	.label_2055
	movl	$1, %ecx
.label_2055:
	testl	%eax, %eax
	jns	.label_2056
	movl	$1, %ecx
.label_2056:
	movl	%eax, -0x10(%ebp)
	movl	%ecx, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_2057
	calll	xalloc_die
.label_2057:
	movl	8(%ebp), %eax
	imull	0xc(%ebp), %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	xmalloc
	addl	$0x10, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2058
	calll	__stack_chk_fail
.label_2058:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c453

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, %ecx
	movl	0xc(%ebp), %eax
	mull	0x10(%ebp)
	jno	.label_2059
	movl	$1, %ecx
.label_2059:
	testl	%eax, %eax
	jns	.label_2062
	movl	$1, %ecx
.label_2062:
	movl	%eax, -0x10(%ebp)
	movl	%ecx, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_2060
	calll	xalloc_die
.label_2060:
	movl	0xc(%ebp), %eax
	imull	0x10(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x1c(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2061
	calll	__stack_chk_fail
.label_2061:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c4bf

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	-0x20(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x1c(%ebp)
	jne	.label_2067
	cmpl	$0, -0x10(%ebp)
	jne	.label_2064
	movl	$0x40, %eax
	movl	$0, %edx
	divl	0x10(%ebp)
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, -0x10(%ebp)
.label_2064:
	movl	$0, %ecx
	movl	-0x10(%ebp), %eax
	mull	0x10(%ebp)
	jno	.label_2065
	movl	$1, %ecx
.label_2065:
	testl	%eax, %eax
	jns	.label_2069
	movl	$1, %ecx
.label_2069:
	movl	%eax, -0x14(%ebp)
	movl	%ecx, %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_2063
	calll	xalloc_die
.label_2067:
	movl	$0x55555554, %eax
	movl	$0, %edx
	divl	0x10(%ebp)
	cmpl	-0x10(%ebp), %eax
	ja	.label_2066
	calll	xalloc_die
.label_2066:
	movl	-0x10(%ebp), %eax
	shrl	$1, %eax
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -0x10(%ebp)
.label_2063:
	movl	-0x20(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	-0x10(%ebp), %eax
	imull	0x10(%ebp), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x1c(%ebp)
	calll	xrealloc
	addl	$0x10, %esp
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2068
	calll	__stack_chk_fail
.label_2068:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c593

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	xmalloc
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c5a9

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_2070
	cmpl	$0, 8(%ebp)
	je	.label_2070
	calll	xalloc_die
.label_2070:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c5d6

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 0xc(%ebp)
	jne	.label_2071
	cmpl	$0, 8(%ebp)
	je	.label_2071
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	$0, %eax
	jmp	.label_2073
.label_2071:
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	realloc
	addl	$0x10, %esp
	movl	%eax, 8(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.label_2072
	cmpl	$0, 0xc(%ebp)
	je	.label_2072
	calll	xalloc_die
.label_2072:
	movl	8(%ebp), %eax
.label_2073:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c627

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	$1
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	x2nrealloc
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c642
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	xmalloc
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	8(%ebp)
	pushl	$0
	pushl	%eax
	calll	memset
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c669
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, %ecx
	movl	8(%ebp), %eax
	mull	0xc(%ebp)
	jno	.label_2075
	movl	$1, %ecx
.label_2075:
	testl	%eax, %eax
	jns	.label_2076
	movl	$1, %ecx
.label_2076:
	movl	%eax, -0x14(%ebp)
	movl	%ecx, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.label_2074
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	calloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_2078
.label_2074:
	calll	xalloc_die
.label_2078:
	movl	-0x10(%ebp), %eax
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2077
	calll	__stack_chk_fail
.label_2077:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c6d6

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	xmalloc
	addl	$0x10, %esp
	subl	$4, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	calll	memcpy
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c6fe

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	xmemdup
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c726

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$label_2080
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	exit_failure,  %eax
	pushl	%edx
	pushl	$label_2079
	pushl	$0
	pushl	%eax
	calll	error
	addl	$0x10, %esp
	calll	abort
	.section	.text
	.align	32
	#Procedure 0x805c759

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$0x44, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x38(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	movl	0x1c(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	0x20(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x24(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	subl	$0xc, %esp
	pushl	-0x30(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	$0
	pushl	-0x2c(%ebp)
	calll	xstrtoumax
	addl	$0x20, %esp
	movl	%eax, -0x1c(%ebp)
	cmpl	$0, -0x1c(%ebp)
	jne	.label_2090
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	cmpl	-0x34(%ebp), %edx
	jb	.label_2083
	cmpl	-0x34(%ebp), %edx
	ja	.label_2081
	cmpl	-0x38(%ebp), %eax
	jb	.label_2083
.label_2081:
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	cmpl	%edx, -0x3c(%ebp)
	ja	.label_2082
	cmpl	%edx, -0x3c(%ebp)
	jb	.label_2083
	cmpl	%eax, -0x40(%ebp)
	jae	.label_2082
.label_2083:
	movl	$1, -0x1c(%ebp)
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	cmpl	$0, %edx
	jb	.label_2089
	cmpl	$0, %edx
	ja	.label_2092
	cmpl	$0x3fffffff, %eax
	jbe	.label_2089
.label_2092:
	calll	__errno_location
	movl	$0x4b, 0(%eax)
	jmp	.label_2082
.label_2089:
	calll	__errno_location
	movl	$0x22, 0(%eax)
	jmp	.label_2082
.label_2090:
	cmpl	$1, -0x1c(%ebp)
	jne	.label_2086
	calll	__errno_location
	movl	$0x4b, 0(%eax)
	jmp	.label_2082
.label_2086:
	cmpl	$3, -0x1c(%ebp)
	jne	.label_2082
	calll	__errno_location
	movl	$0, 0(%eax)
.label_2082:
	cmpl	$0, -0x1c(%ebp)
	je	.label_2094
	subl	$0xc, %esp
	pushl	-0x2c(%ebp)
	calll	quote
	addl	$0x10, %esp
	movl	%eax, %ebx
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x16, %eax
	je	.label_2085
	calll	__errno_location
	movl	0(%eax), %edx
	jmp	.label_2087
.label_2085:
	movl	$0, %edx
.label_2087:
	cmpl	$0, 0x28(%ebp)
	je	.label_2091
	movl	0x28(%ebp), %eax
	jmp	.label_2088
.label_2091:
	movl	$1, %eax
.label_2088:
	subl	$0xc, %esp
	pushl	%ebx
	pushl	-0x44(%ebp)
	pushl	$label_2093
	pushl	%edx
	pushl	%eax
	calll	error
	addl	$0x20, %esp
.label_2094:
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2084
	calll	__stack_chk_fail
.label_2084:
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c8b0
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x18(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	subl	$0xc, %esp
	pushl	0x24(%ebp)
	pushl	0x20(%ebp)
	pushl	0x1c(%ebp)
	pushl	-0x14(%ebp)
	pushl	-0x18(%ebp)
	pushl	-0xc(%ebp)
	pushl	-0x10(%ebp)
	pushl	$0xa
	pushl	8(%ebp)
	calll	xnumtoumax
	addl	$0x30, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c8f5

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$8, %esp
	pushl	$0
	pushl	$0
	calll	getcwd
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_2095
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0xc, %eax
	jne	.label_2095
	calll	xalloc_die
.label_2095:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805c929

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x18(%ebp)
	movl	$0x22, -0x1c(%ebp)
.label_2096:
	subl	$8, %esp
	leal	-0x1c(%ebp), %eax
	pushl	%eax
	pushl	-0x18(%ebp)
	calll	x2realloc
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	movl	-0x1c(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x14(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movb	$0, 0(%eax)
	calll	__errno_location
	movl	$0, 0(%eax)
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	-0x18(%ebp)
	calll	gethostname
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2097
	movl	-0x14(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-0x18(%ebp), %eax
	addl	%edx, %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_2096
	jmp	.label_2099
.label_2097:
	calll	__errno_location
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_2096
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x24, %eax
	je	.label_2096
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x16, %eax
	je	.label_2096
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0xc, %eax
	je	.label_2096
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	free
	addl	$0x10, %esp
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	$0, %eax
	jmp	.label_2100
.label_2099:
	movl	-0x18(%ebp), %eax
.label_2100:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2098
	calll	__stack_chk_fail
.label_2098:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ca20

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %ecx
	movl	$0xffffffff, %eax
	movl	$0, %edx
	divl	%ecx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	%eax, %edx
	jae	.label_2101
	movl	8(%ebp), %eax
	movl	$0xffffffff, 0(%eax)
	movl	$1, %eax
	jmp	.label_2102
.label_2101:
	movl	8(%ebp), %eax
	movl	0(%eax), %edx
	movl	0xc(%ebp), %eax
	imull	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	$0, %eax
.label_2102:
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ca64

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -4(%ebp)
	jmp	.label_2104
.label_2103:
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	bkm_scale
	addl	$8, %esp
	orl	%eax, -4(%ebp)
.label_2104:
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, 0x10(%ebp)
	testl	%eax, %eax
	jne	.label_2103
	movl	-4(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ca96

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x48(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x24(%ebp)
	cmpl	$0, 0x10(%ebp)
	js	.label_2109
	cmpl	$0x24, 0x10(%ebp)
	jle	.label_2118
.label_2109:
	pushl	$__PRETTY_FUNCTION__.3254
	pushl	$0x60
	pushl	$label_2119
	pushl	$label_2120
	calll	__assert_fail
.label_2118:
	cmpl	$0, -0x40(%ebp)
	jne	.label_2124
	leal	-0x2c(%ebp), %eax
	jmp	.label_2126
.label_2124:
	movl	-0x40(%ebp), %eax
.label_2126:
	movl	%eax, -0x10(%ebp)
	calll	__errno_location
	movl	$0, 0(%eax)
	movl	-0x3c(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	-0x20(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x2d(%ebp)
	jmp	.label_2127
.label_2112:
	addl	$1, -0x20(%ebp)
	movl	-0x20(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x2d(%ebp)
.label_2127:
	calll	__ctype_b_loc
	movl	0(%eax), %eax
	movzbl	-0x2d(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x2000, %eax
	testl	%eax, %eax
	jne	.label_2112
	cmpb	$0x2d, -0x2d(%ebp)
	jne	.label_2114
	movl	$4, %eax
	jmp	.label_2105
.label_2114:
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	-0x10(%ebp)
	pushl	-0x3c(%ebp)
	calll	strtoul
	addl	$0x10, %esp
	movl	%eax, -0x28(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x3c(%ebp), %eax
	jne	.label_2123
	cmpl	$0, -0x48(%ebp)
	je	.label_2110
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2110
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2110
	movl	$1, -0x28(%ebp)
	jmp	.label_2111
.label_2110:
	movl	$4, %eax
	jmp	.label_2105
.label_2123:
	calll	__errno_location
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_2111
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x22, %eax
	je	.label_2116
	movl	$4, %eax
	jmp	.label_2105
.label_2116:
	movl	$1, -0x24(%ebp)
.label_2111:
	cmpl	$0, -0x48(%ebp)
	jne	.label_2122
	movl	-0x28(%ebp), %edx
	movl	-0x44(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x24(%ebp), %eax
	jmp	.label_2105
.label_2122:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2108
	movl	$0x400, -0x1c(%ebp)
	movl	$1, -0x18(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2125
	movl	-0x28(%ebp), %edx
	movl	-0x44(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x24(%ebp), %eax
	orl	$2, %eax
	jmp	.label_2105
.label_2125:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x45, %eax
	cmpl	$0x2f, %eax
	ja	.label_2106
	movl	label_2121(, %eax, 4),  %eax
	jmpl	*%eax
	.section	.text
	.align	32


	.globl sub_805cc5d
	.type sub_805cc5d, @function
sub_805cc5d:
	subl	$8, %esp
	pushl	$0x30
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2106
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x44, %eax
	je	.label_2129
	cmpl	$0x69, %eax
	je	.label_2130
	cmpl	$0x42, %eax
	je	.label_2129
	jmp	.label_2106
.label_2130:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	addl	$2, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x42, %al
	jne	.label_2128
	addl	$2, -0x18(%ebp)
	jmp	.label_2128
.label_2129:
	movl	$0x3e8, -0x1c(%ebp)
	addl	$1, -0x18(%ebp)
	jmp	.label_2106
.label_2128:
	nop	
.label_2106:
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x42, %eax
	cmpl	$0x35, %eax
	ja	.label_2113
	movl	label_2117(, %eax, 4),  %eax
	jmpl	*%eax
	.section	.text
	.align	32


	.globl sub_805ccd3
	.type sub_805ccd3, @function
sub_805ccd3:
	subl	$8, %esp
	pushl	$0x200
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805ccef
	.type sub_805ccef, @function
sub_805ccef:
	subl	$8, %esp
	pushl	$0x400
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
.label_2720:
	movl	$0, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cd17
	.type sub_805cd17, @function
sub_805cd17:
	subl	$4, %esp
	pushl	$6
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cd33
	.type sub_805cd33, @function
sub_805cd33:
	subl	$4, %esp
	pushl	$3
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cd4f
	.type sub_805cd4f, @function
sub_805cd4f:
	subl	$4, %esp
	pushl	$1
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cd6b
	.type sub_805cd6b, @function
sub_805cd6b:
	subl	$4, %esp
	pushl	$2
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cd87
	.type sub_805cd87, @function
sub_805cd87:
	subl	$4, %esp
	pushl	$5
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cda0
	.type sub_805cda0, @function
sub_805cda0:
	subl	$4, %esp
	pushl	$4
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cdb9
	.type sub_805cdb9, @function
sub_805cdb9:
	subl	$8, %esp
	pushl	$2
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cdcf
	.type sub_805cdcf, @function
sub_805cdcf:
	subl	$4, %esp
	pushl	$8
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
	.section	.text
	.align	32


	.globl sub_805cde8
	.type sub_805cde8, @function
sub_805cde8:
	subl	$4, %esp
	pushl	$7
	pushl	-0x1c(%ebp)
	leal	-0x28(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power
	addl	$0x10, %esp
	movl	%eax, -0x14(%ebp)
	jmp	.label_2107
.label_2113:
	movl	-0x28(%ebp), %edx
	movl	-0x44(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x24(%ebp), %eax
	orl	$2, %eax
	jmp	.label_2105
.label_2107:
	movl	-0x14(%ebp), %eax
	orl	%eax, -0x24(%ebp)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x18(%ebp), %eax
	addl	%eax, %edx
	movl	-0x10(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2108
	orl	$2, -0x24(%ebp)
.label_2108:
	movl	-0x28(%ebp), %edx
	movl	-0x44(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x24(%ebp), %eax
.label_2105:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2115
	calll	__stack_chk_fail
.label_2115:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ce54

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x38, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0x2c(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x30(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x34(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$label_2140, -28(%ebp)
	movl	8(%ebp), %eax
	cmpl	$3, %eax
	ja	.label_2141
	cmpl	$2, %eax
	jae	.label_2135
	cmpl	$1, %eax
	je	.label_2132
	jmp	.label_2138
.label_2141:
	cmpl	$4, %eax
	je	.label_2139
.label_2138:
	calll	abort
.label_2139:
	movl	$label_2143, -24(%ebp)
	jmp	.label_2134
.label_2135:
	movl	$label_2133, -24(%ebp)
	jmp	.label_2134
.label_2132:
	movl	$label_2137, -24(%ebp)
	nop	
.label_2134:
	cmpl	$0, 0xc(%ebp)
	jns	.label_2142
	movl	0xc(%ebp), %eax
	negl	%eax
	addl	%eax, -0x1c(%ebp)
	movzbl	-0x2c(%ebp), %eax
	movb	%al, -0xe(%ebp)
	movb	$0, -0xd(%ebp)
	leal	-0xe(%ebp), %eax
	movl	%eax, -0x14(%ebp)
	jmp	.label_2136
.label_2142:
	movl	0xc(%ebp), %eax
	shll	$4, %eax
	movl	%eax, %edx
	movl	-0x30(%ebp), %eax
	addl	%edx, %eax
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
.label_2136:
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	gettext
	addl	$0x10, %esp
	subl	$8, %esp
	pushl	-0x34(%ebp)
	pushl	-0x14(%ebp)
	pushl	-0x1c(%ebp)
	pushl	%eax
	pushl	$0
	pushl	0x1c(%ebp)
	calll	error
	addl	$0x20, %esp
	nop	
	movl	-0xc(%ebp), %eax
	xorl	%gs:0x14, %eax
	je	.label_2131
	calll	__stack_chk_fail
.label_2131:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805cf25

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	0x10(%ebp), %eax
	movb	%al, -0xc(%ebp)
	movl	exit_failure,  %edx
	movsbl	-0xc(%ebp), %eax
	subl	$8, %esp
	pushl	%edx
	pushl	0x18(%ebp)
	pushl	0x14(%ebp)
	pushl	%eax
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	xstrtol_error
	addl	$0x20, %esp
	calll	abort
	.section	.text
	.align	32
	#Procedure 0x805cf59

	.globl bkm_scale2
	.type bkm_scale2, @function
bkm_scale2:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0xc, %esp
	movl	0xc(%ebp), %eax
	cltd	
	pushl	%edx
	pushl	%eax
	pushl	$-1
	pushl	$-1
	calll	__udivdi3
	addl	$0x10, %esp
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	0(%eax), %eax
	cmpl	%edx, %ebx
	ja	.label_2144
	cmpl	%edx, %ebx
	jb	.label_2145
	cmpl	%eax, %ecx
	jae	.label_2144
.label_2145:
	movl	8(%ebp), %eax
	movl	$0xffffffff, 0(%eax)
	movl	$0xffffffff, 4(%eax)
	movl	$1, %eax
	jmp	.label_2146
.label_2144:
	movl	8(%ebp), %eax
	movl	0(%eax), %ecx
	movl	4(%eax), %ebx
	movl	0xc(%ebp), %eax
	cltd	
	movl	%ebx, %edi
	imull	%eax, %edi
	movl	%edx, %esi
	imull	%ecx, %esi
	addl	%edi, %esi
	mull	%ecx
	leal	0(%esi, %edx), %ecx
	movl	%ecx, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	$0, %eax
.label_2146:
	leal	-0xc(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805cfd7

	.globl bkm_scale_by_power2
	.type bkm_scale_by_power2, @function
bkm_scale_by_power2:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0xc(%ebp)
	jmp	.label_2148
.label_2147:
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	bkm_scale2
	addl	$0x10, %esp
	orl	%eax, -0xc(%ebp)
.label_2148:
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, 0x10(%ebp)
	testl	%eax, %eax
	jne	.label_2147
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d00c

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x48, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x3c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x40(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x44(%ebp)
	movl	0x18(%ebp), %eax
	movl	%eax, -0x48(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	movl	$0, -0x30(%ebp)
	cmpl	$0, 0x10(%ebp)
	js	.label_2149
	cmpl	$0x24, 0x10(%ebp)
	jle	.label_2159
.label_2149:
	pushl	$__PRETTY_FUNCTION__.3254_2
	pushl	$0x60
	pushl	$label_2161
	pushl	$label_2162
	calll	__assert_fail
.label_2159:
	cmpl	$0, -0x40(%ebp)
	jne	.label_2168
	leal	-0x34(%ebp), %eax
	jmp	.label_2170
.label_2168:
	movl	-0x40(%ebp), %eax
.label_2170:
	movl	%eax, -0x1c(%ebp)
	calll	__errno_location
	movl	$0, 0(%eax)
	movl	-0x3c(%ebp), %eax
	movl	%eax, -0x2c(%ebp)
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x35(%ebp)
	jmp	.label_2171
.label_2154:
	addl	$1, -0x2c(%ebp)
	movl	-0x2c(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x35(%ebp)
.label_2171:
	calll	__ctype_b_loc
	movl	0(%eax), %eax
	movzbl	-0x35(%ebp), %edx
	addl	%edx, %edx
	addl	%edx, %eax
	movzwl	0(%eax), %eax
	movzwl	%ax, %eax
	andl	$0x2000, %eax
	testl	%eax, %eax
	jne	.label_2154
	cmpb	$0x2d, -0x35(%ebp)
	jne	.label_2157
	movl	$4, %eax
	jmp	.label_2150
.label_2157:
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x3c(%ebp)
	calll	strtoumax
	addl	$0x10, %esp
	movl	%eax, -0x18(%ebp)
	movl	%edx, -0x14(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x3c(%ebp), %eax
	jne	.label_2165
	cmpl	$0, -0x48(%ebp)
	je	.label_2151
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2151
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2151
	movl	$1, -0x18(%ebp)
	movl	$0, -0x14(%ebp)
	jmp	.label_2153
.label_2151:
	movl	$4, %eax
	jmp	.label_2150
.label_2165:
	calll	__errno_location
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_2153
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$0x22, %eax
	je	.label_2160
	movl	$4, %eax
	jmp	.label_2150
.label_2160:
	movl	$1, -0x30(%ebp)
.label_2153:
	cmpl	$0, -0x48(%ebp)
	jne	.label_2167
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	movl	-0x44(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	-0x30(%ebp), %eax
	jmp	.label_2150
.label_2167:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2155
	movl	$0x400, -0x28(%ebp)
	movl	$1, -0x24(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$8, %esp
	pushl	%eax
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2156
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	movl	-0x44(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	-0x30(%ebp), %eax
	orl	$2, %eax
	jmp	.label_2150
.label_2156:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x45, %eax
	cmpl	$0x2f, %eax
	ja	.label_2163
	movl	label_2169(, %eax, 4),  %eax
	jmpl	*%eax
	.section	.text
	.align	32


	.globl sub_805d1e9
	.type sub_805d1e9, @function
sub_805d1e9:
	subl	$8, %esp
	pushl	$0x30
	pushl	-0x48(%ebp)
	calll	strchr
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2163
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	addl	$1, %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	cmpl	$0x44, %eax
	je	.label_2173
	cmpl	$0x69, %eax
	je	.label_2172
	cmpl	$0x42, %eax
	je	.label_2173
	jmp	.label_2163
.label_2172:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	addl	$2, %eax
	movzbl	0(%eax), %eax
	cmpb	$0x42, %al
	jne	.label_2174
	addl	$2, -0x24(%ebp)
	jmp	.label_2174
.label_2173:
	movl	$0x3e8, -0x28(%ebp)
	addl	$1, -0x24(%ebp)
	jmp	.label_2163
.label_2174:
	nop	
.label_2163:
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	subl	$0x42, %eax
	cmpl	$0x35, %eax
	ja	.label_2158
	movl	label_2164(, %eax, 4),  %eax
	jmpl	*%eax
	.section	.text
	.align	32


	.globl sub_805d25f
	.type sub_805d25f, @function
sub_805d25f:
	subl	$8, %esp
	pushl	$0x200
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d27b
	.type sub_805d27b, @function
sub_805d27b:
	subl	$8, %esp
	pushl	$0x400
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
.label_2567:
	movl	$0, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d2a3
	.type sub_805d2a3, @function
sub_805d2a3:
	subl	$4, %esp
	pushl	$6
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d2bf
	.type sub_805d2bf, @function
sub_805d2bf:
	subl	$4, %esp
	pushl	$3
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d2db
	.type sub_805d2db, @function
sub_805d2db:
	subl	$4, %esp
	pushl	$1
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d2f7
	.type sub_805d2f7, @function
sub_805d2f7:
	subl	$4, %esp
	pushl	$2
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d313
	.type sub_805d313, @function
sub_805d313:
	subl	$4, %esp
	pushl	$5
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d32c
	.type sub_805d32c, @function
sub_805d32c:
	subl	$4, %esp
	pushl	$4
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d345
	.type sub_805d345, @function
sub_805d345:
	subl	$8, %esp
	pushl	$2
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d35b
	.type sub_805d35b, @function
sub_805d35b:
	subl	$4, %esp
	pushl	$8
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
	.section	.text
	.align	32


	.globl sub_805d374
	.type sub_805d374, @function
sub_805d374:
	subl	$4, %esp
	pushl	$7
	pushl	-0x28(%ebp)
	leal	-0x18(%ebp), %eax
	pushl	%eax
	calll	bkm_scale_by_power2
	addl	$0x10, %esp
	movl	%eax, -0x20(%ebp)
	jmp	.label_2152
.label_2158:
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	movl	-0x44(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	-0x30(%ebp), %eax
	orl	$2, %eax
	jmp	.label_2150
.label_2152:
	movl	-0x20(%ebp), %eax
	orl	%eax, -0x30(%ebp)
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0x24(%ebp), %eax
	addl	%eax, %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x1c(%ebp), %eax
	movl	0(%eax), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2155
	orl	$2, -0x30(%ebp)
.label_2155:
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	movl	-0x44(%ebp), %ecx
	movl	%eax, 0(%ecx)
	movl	%edx, 4(%ecx)
	movl	-0x30(%ebp), %eax
.label_2150:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2166
	calll	__stack_chk_fail
.label_2166:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d3ec

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0x14(%ebp), %eax
	movl	%eax, -0x24(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	cmpl	$0, -0x1c(%ebp)
	jne	.label_2176
	leal	-0x14(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
.label_2176:
	pushl	-0x24(%ebp)
	pushl	0x10(%ebp)
	pushl	-0x20(%ebp)
	pushl	-0x1c(%ebp)
	calll	mbrtowc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$-3, -0x10(%ebp)
	jbe	.label_2175
	cmpl	$0, 0x10(%ebp)
	je	.label_2175
	subl	$0xc, %esp
	pushl	$0
	calll	hard_locale
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_2175
	movl	-0x20(%ebp), %eax
	movzbl	0(%eax), %eax
	movb	%al, -0x15(%ebp)
	movzbl	-0x15(%ebp), %edx
	movl	-0x1c(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	$1, %eax
	jmp	.label_2178
.label_2175:
	movl	-0x10(%ebp), %eax
.label_2178:
	movl	-0xc(%ebp), %ecx
	xorl	%gs:0x14, %ecx
	je	.label_2177
	calll	__stack_chk_fail
.label_2177:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d481

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	subl	$0x27d8, %eax
	cmpl	$0xb, %eax
	ja	.label_2179
	addl	$0x1d842, 8(%ebp)
	jmp	.label_2180
.label_2179:
	nop	
.label_2180:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	nl_langinfo
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d4ae

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_2182
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
	movl	8(%ebp), %edx
	movl	0x24(%edx), %edx
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%edx
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_2181
.label_2182:
	movl	8(%ebp), %eax
	movl	0x1c(%eax), %eax
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
.label_2181:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d4ef

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.label_2184
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	movl	8(%ebp), %edx
	movl	0x24(%edx), %edx
	subl	$8, %esp
	pushl	0xc(%ebp)
	pushl	%edx
	calll	*%eax
	addl	$0x10, %esp
	jmp	.label_2183
.label_2184:
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	subl	$0xc, %esp
	pushl	0xc(%ebp)
	calll	*%eax
	addl	$0x10, %esp
.label_2183:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d531

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 0x10(%ebp)
	jne	.label_2185
	movl	$8, 0x10(%ebp)
.label_2185:
	cmpl	$0, 0xc(%ebp)
	jne	.label_2186
	movl	$0x20, -0x10(%ebp)
	movl	$0x1000, %eax
	subl	-0x10(%ebp), %eax
	movl	%eax, 0xc(%ebp)
.label_2186:
	movl	8(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0(%eax)
	movl	0x10(%ebp), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0x18(%eax)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	subl	$8, %esp
	pushl	%eax
	pushl	8(%ebp)
	calll	call_chunkfun
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_2187
	movl	obstack_alloc_failed_handler,  %eax
	calll	*%eax
.label_2187:
	movl	-0xc(%ebp), %eax
	addl	$8, %eax
	movl	%eax, %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	leal	-1(%eax), %edx
	movl	0x10(%ebp), %eax
	negl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	8(%ebp), %eax
	movl	0(%eax), %edx
	movl	-0xc(%ebp), %eax
	addl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0xc(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	-0xc(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	andl	$0xfffffffd, %edx
	movb	%dl, 0x28(%eax)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	andl	$0xfffffffb, %edx
	movb	%dl, 0x28(%eax)
	movl	$1, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d612

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	0x14(%ebp), %edx
	movl	%edx, 0x1c(%eax)
	movl	8(%ebp), %eax
	movl	0x18(%ebp), %edx
	movl	%edx, 0x20(%eax)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	andl	$0xfffffffe, %edx
	movb	%dl, 0x28(%eax)
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	_obstack_begin_worker
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d64d

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	0x14(%ebp), %edx
	movl	%edx, 0x1c(%eax)
	movl	8(%ebp), %eax
	movl	0x18(%ebp), %edx
	movl	%edx, 0x20(%eax)
	movl	8(%ebp), %eax
	movl	0x1c(%ebp), %edx
	movl	%edx, 0x24(%eax)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	orl	$1, %edx
	movb	%dl, 0x28(%eax)
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	_obstack_begin_worker
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d691

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x1c(%ebp)
	movl	$0, -0x24(%ebp)
	movl	8(%ebp), %eax
	movl	0xc(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -0x18(%ebp)
	movl	-0x18(%ebp), %edx
	movl	0xc(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x14(%ebp)
	movl	8(%ebp), %eax
	movl	0x18(%eax), %edx
	movl	-0x14(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x18(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	addl	$0x64, %eax
	movl	%eax, -0x20(%ebp)
	movl	-0x20(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	jae	.label_2191
	movl	-0x10(%ebp), %eax
	movl	%eax, -0x20(%ebp)
.label_2191:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	-0x20(%ebp), %eax
	jbe	.label_2192
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0x20(%ebp)
.label_2192:
	movl	-0x18(%ebp), %eax
	cmpl	-0x14(%ebp), %eax
	ja	.label_2188
	movl	-0x14(%ebp), %eax
	cmpl	-0x10(%ebp), %eax
	ja	.label_2188
	subl	$8, %esp
	pushl	-0x20(%ebp)
	pushl	8(%ebp)
	calll	call_chunkfun
	addl	$0x10, %esp
	movl	%eax, -0x24(%ebp)
.label_2188:
	cmpl	$0, -0x24(%ebp)
	jne	.label_2190
	movl	obstack_alloc_failed_handler,  %eax
	calll	*%eax
.label_2190:
	movl	8(%ebp), %eax
	movl	-0x24(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-0x24(%ebp), %eax
	movl	-0x1c(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-0x24(%ebp), %edx
	movl	-0x20(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	8(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	-0x24(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	-0x24(%ebp), %eax
	addl	$8, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	0x18(%eax), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	0x18(%eax), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	subl	$4, %esp
	pushl	-0x18(%ebp)
	pushl	%eax
	pushl	-0xc(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.label_2189
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-0x1c(%ebp), %eax
	addl	$8, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	0x18(%eax), %eax
	addl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	0x18(%eax), %eax
	notl	%eax
	andl	%ecx, %eax
	cmpl	%eax, %edx
	jne	.label_2189
	movl	-0x1c(%ebp), %eax
	movl	4(%eax), %edx
	movl	-0x24(%ebp), %eax
	movl	%edx, 4(%eax)
	subl	$8, %esp
	pushl	-0x1c(%ebp)
	pushl	8(%ebp)
	calll	call_freefun
	addl	$0x10, %esp
.label_2189:
	movl	8(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-0x18(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0xc(%eax)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	andl	$0xfffffffd, %edx
	movb	%dl, 0x28(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d812

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.label_2194
.label_2193:
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
.label_2194:
	cmpl	$0, -8(%ebp)
	je	.label_2195
	movl	-8(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_2193
	movl	-8(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	jb	.label_2193
.label_2195:
	cmpl	$0, -8(%ebp)
	setne	%al
	movzbl	%al, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d856

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0x10(%ebp)
	jmp	.label_2198
.label_2196:
	movl	-0x10(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$8, %esp
	pushl	-0x10(%ebp)
	pushl	8(%ebp)
	calll	call_freefun
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	8(%ebp), %eax
	movzbl	0x28(%eax), %edx
	orl	$2, %edx
	movb	%dl, 0x28(%eax)
.label_2198:
	cmpl	$0, -0x10(%ebp)
	je	.label_2197
	movl	-0x10(%ebp), %eax
	cmpl	0xc(%ebp), %eax
	jae	.label_2196
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %eax
	cmpl	0xc(%ebp), %eax
	jb	.label_2196
.label_2197:
	cmpl	$0, -0x10(%ebp)
	je	.label_2199
	movl	8(%ebp), %eax
	movl	0xc(%ebp), %edx
	movl	%edx, 0xc(%eax)
	movl	8(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-0x10(%ebp), %eax
	movl	0(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 0x10(%eax)
	movl	8(%ebp), %eax
	movl	-0x10(%ebp), %edx
	movl	%edx, 4(%eax)
	jmp	.label_2200
.label_2199:
	cmpl	$0, 0xc(%ebp)
	je	.label_2200
	calll	abort
.label_2200:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d8eb

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
	jmp	.label_2201
.label_2202:
	movl	-8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -4(%ebp)
	movl	-8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -8(%ebp)
.label_2201:
	cmpl	$0, -8(%ebp)
	jne	.label_2202
	movl	-4(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d928

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$label_2203
	calll	gettext
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	stderr,  %eax
	subl	$4, %esp
	pushl	%edx
	pushl	$label_2204
	pushl	%eax
	calll	fprintf
	addl	$0x10, %esp
	movl	exit_failure,  %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	exit
	.section	.text
	.align	32
	#Procedure 0x805d965

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	pushl	%ebp
	movl	%esp, %ebp
	cmpl	$0, 8(%ebp)
	sete	%dl
	cmpl	$0, 0xc(%ebp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.label_2205
	cmpl	$0, 8(%ebp)
	js	.label_2205
	cmpl	$0, 0xc(%ebp)
	js	.label_2205
	movl	$1, %eax
	jmp	.label_2206
.label_2205:
	movl	$0, %eax
.label_2206:
	andl	$1, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805d999

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	movl	8(%ebp), %eax
	movl	0(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	0(%eax), %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	4(%eax), %eax
	xorl	%edx, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	8(%eax), %eax
	xorl	%edx, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	0xc(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	0xc(%eax), %eax
	xorl	%edx, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	0x10(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	0x10(%eax), %eax
	xorl	%edx, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	0xc(%ebp), %eax
	movl	0x14(%eax), %eax
	xorl	%edx, %eax
	movl	%ecx, %ebx
	orl	%eax, %ebx
	movl	0xc(%ebp), %eax
	movl	0x20(%eax), %edx
	movl	8(%ebp), %eax
	movl	0x20(%eax), %eax
	pushl	%edx
	pushl	%eax
	calll	isdst_differ
	addl	$8, %esp
	movzbl	%al, %eax
	orl	%ebx, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	-4(%ebp), %ebx
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805da25

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$4, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	pushl	8(%ebp)
	calll	memcpy
	addl	$0x10, %esp
	movl	8(%ebp), %edx
	movl	0x10(%ebp), %eax
	addl	%edx, %eax
	movb	$0, 0(%eax)
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805da4d

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 8(%ebp)
	je	.label_2209
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	jmp	.label_2207
.label_2209:
	movl	$0, %eax
.label_2207:
	movl	%eax, -0x14(%ebp)
	cmpl	$0x3a, -0x14(%ebp)
	jbe	.label_2210
	movl	-0x14(%ebp), %eax
	addl	$1, %eax
	jmp	.label_2211
.label_2210:
	movl	$0x3b, %eax
.label_2211:
	movl	%eax, -0x10(%ebp)
	movl	-0x10(%ebp), %eax
	addl	$8, %eax
	andl	$0xfffffffc, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	malloc
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	je	.label_2208
	movl	-0xc(%ebp), %eax
	movl	$0, 0(%eax)
	cmpl	$0, 8(%ebp)
	setne	%al
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movb	%dl, 4(%eax)
	movl	-0xc(%ebp), %eax
	movb	$0, 5(%eax)
	cmpl	$0, 8(%ebp)
	je	.label_2208
	movl	-0xc(%ebp), %eax
	addl	$5, %eax
	subl	$4, %esp
	pushl	-0x14(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	calll	extend_abbrs
	addl	$0x10, %esp
.label_2208:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805daea

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x14(%ebp)
	movl	$label_2221, -24(%ebp)
	movl	0xc(%ebp), %eax
	movl	0x28(%eax), %eax
	movl	%eax, -0x14(%ebp)
	cmpl	$0, -0x14(%ebp)
	je	.label_2222
	movl	0xc(%ebp), %eax
	cmpl	-0x14(%ebp), %eax
	ja	.label_2215
	movl	0xc(%ebp), %eax
	addl	$0x2c, %eax
	cmpl	-0x14(%ebp), %eax
	jbe	.label_2215
.label_2222:
	movl	$1, %eax
	jmp	.label_2220
.label_2215:
	movl	-0x14(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	je	.label_2214
	movl	8(%ebp), %eax
	addl	$5, %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_2219
.label_2217:
	movl	-0x18(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_2213
	movl	8(%ebp), %eax
	addl	$5, %eax
	cmpl	-0x18(%ebp), %eax
	jne	.label_2216
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	jne	.label_2213
.label_2216:
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	movl	%eax, -0x10(%ebp)
	movl	-0x18(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$5, %edx
	subl	%edx, %eax
	movl	%eax, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	notl	%eax
	cmpl	-0x10(%ebp), %eax
	jae	.label_2223
	calll	__errno_location
	movl	$0xc, 0(%eax)
	movl	$0, %eax
	jmp	.label_2220
.label_2223:
	movl	-0xc(%ebp), %edx
	movl	-0x10(%ebp), %eax
	addl	%edx, %eax
	cmpl	$0x3a, %eax
	ja	.label_2218
	subl	$4, %esp
	pushl	-0x10(%ebp)
	pushl	-0x14(%ebp)
	pushl	-0x18(%ebp)
	calll	extend_abbrs
	addl	$0x10, %esp
	jmp	.label_2214
.label_2218:
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	tzalloc
	addl	$0x10, %esp
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, 8(%ebp)
	cmpl	$0, 8(%ebp)
	jne	.label_2212
	movl	$0, %eax
	jmp	.label_2220
.label_2212:
	movl	8(%ebp), %eax
	movb	$0, 4(%eax)
	movl	8(%ebp), %eax
	addl	$5, %eax
	movl	%eax, -0x18(%ebp)
	jmp	.label_2214
.label_2213:
	subl	$0xc, %esp
	pushl	-0x18(%ebp)
	calll	strlen
	addl	$0x10, %esp
	addl	$1, %eax
	addl	%eax, -0x18(%ebp)
	movl	-0x18(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_2219
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	testl	%eax, %eax
	je	.label_2219
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	addl	$5, %eax
	movl	%eax, -0x18(%ebp)
.label_2219:
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	-0x18(%ebp)
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2217
.label_2214:
	movl	0xc(%ebp), %eax
	movl	-0x18(%ebp), %edx
	movl	%edx, 0x28(%eax)
	movl	$1, %eax
.label_2220:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dc72

	.globl tzfree
	.type tzfree, @function
tzfree:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$1, %eax
	cmpl	%eax, 8(%ebp)
	je	.label_2225
	jmp	.label_2226
.label_2224:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	free
	addl	$0x10, %esp
	movl	-0xc(%ebp), %eax
	movl	%eax, 8(%ebp)
.label_2226:
	cmpl	$0, 8(%ebp)
	jne	.label_2224
.label_2225:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dca9

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	subl	$0xc, %esp
	pushl	$label_2227
	calll	getenv
	addl	$0x10, %esp
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dcc1

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 8(%ebp)
	je	.label_2228
	subl	$4, %esp
	pushl	$1
	pushl	8(%ebp)
	pushl	$label_2227
	calll	setenv
	addl	$0x10, %esp
	jmp	.label_2229
.label_2228:
	subl	$0xc, %esp
	pushl	$label_2227
	calll	unsetenv
	addl	$0x10, %esp
.label_2229:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dcf6

	.globl change_env
	.type change_env, @function
change_env:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.label_2230
	movl	8(%ebp), %eax
	addl	$5, %eax
	jmp	.label_2231
.label_2230:
	movl	$0, %eax
.label_2231:
	subl	$0xc, %esp
	pushl	%eax
	calll	setenv_TZ
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2233
	movl	$0, %eax
	jmp	.label_2232
.label_2233:
	calll	tzset
	movl	$1, %eax
.label_2232:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dd37

	.globl set_tz
	.type set_tz, @function
set_tz:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	calll	getenv_TZ
	movl	%eax, -0x14(%ebp)
	cmpl	$0, -0x14(%ebp)
	je	.label_2234
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	je	.label_2235
	movl	8(%ebp), %eax
	addl	$5, %eax
	subl	$8, %esp
	pushl	-0x14(%ebp)
	pushl	%eax
	calll	strcmp
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2235
	movl	$1, %eax
	jmp	.label_2239
.label_2235:
	movl	$0, %eax
.label_2239:
	andl	$1, %eax
	jmp	.label_2240
.label_2234:
	movl	8(%ebp), %eax
	movzbl	4(%eax), %eax
	testb	%al, %al
	sete	%al
.label_2240:
	testb	%al, %al
	je	.label_2236
	movl	$1, %eax
	jmp	.label_2237
.label_2236:
	subl	$0xc, %esp
	pushl	-0x14(%ebp)
	calll	tzalloc
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x10(%ebp)
	jne	.label_2238
	movl	-0x10(%ebp), %eax
	jmp	.label_2237
.label_2238:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	change_env
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_2241
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	-0x10(%ebp)
	calll	tzfree
	addl	$0x10, %esp
	calll	__errno_location
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	$0, %eax
	jmp	.label_2237
.label_2241:
	movl	-0x10(%ebp), %eax
.label_2237:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ddf8

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$1, %eax
	cmpl	%eax, 8(%ebp)
	jne	.label_2243
	movl	$1, %eax
	jmp	.label_2242
.label_2243:
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	change_env
	addl	$0x10, %esp
	movb	%al, -0xd(%ebp)
	movzbl	-0xd(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_2244
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0xc(%ebp)
.label_2244:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	tzfree
	addl	$0x10, %esp
	calll	__errno_location
	movl	%eax, %edx
	movl	-0xc(%ebp), %eax
	movl	%eax, 0(%edx)
	movzbl	-0xd(%ebp), %eax
.label_2242:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805de5f

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	cmpl	$0, 8(%ebp)
	jne	.label_2249
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	calll	gmtime_r
	addl	$0x10, %esp
	jmp	.label_2247
.label_2249:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	set_tz
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	je	.label_2246
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	0xc(%ebp)
	calll	localtime_r
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2245
	subl	$8, %esp
	pushl	0x10(%ebp)
	pushl	8(%ebp)
	calll	save_abbr
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_2245
	movl	$1, %eax
	jmp	.label_2248
.label_2245:
	movl	$0, %eax
.label_2248:
	movb	%al, -0xd(%ebp)
	andb	$1, -0xd(%ebp)
	subl	$0xc, %esp
	pushl	-0xc(%ebp)
	calll	revert_tz
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_2246
	cmpb	$0, -0xd(%ebp)
	je	.label_2246
	movl	0x10(%ebp), %eax
	jmp	.label_2247
.label_2246:
	movl	$0, %eax
.label_2247:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805def6

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x58, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x4c(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0x50(%ebp)
	movl	%gs:0x14, %eax
	movl	%eax, -0xc(%ebp)
	xorl	%eax, %eax
	cmpl	$0, -0x4c(%ebp)
	jne	.label_2254
	subl	$0xc, %esp
	pushl	-0x50(%ebp)
	calll	timegm
	addl	$0x10, %esp
	jmp	.label_2251
.label_2254:
	subl	$0xc, %esp
	pushl	-0x4c(%ebp)
	calll	set_tz
	addl	$0x10, %esp
	movl	%eax, -0x40(%ebp)
	cmpl	$0, -0x40(%ebp)
	je	.label_2255
	subl	$0xc, %esp
	pushl	-0x50(%ebp)
	calll	mktime
	addl	$0x10, %esp
	movl	%eax, -0x44(%ebp)
	movl	$0xffffffff, -0x3c(%ebp)
	movl	-0x44(%ebp), %eax
	cmpl	-0x3c(%ebp), %eax
	jne	.label_2253
	subl	$8, %esp
	leal	-0x38(%ebp), %eax
	pushl	%eax
	leal	-0x44(%ebp), %eax
	pushl	%eax
	calll	localtime_r
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2250
	subl	$8, %esp
	leal	-0x38(%ebp), %eax
	pushl	%eax
	pushl	-0x50(%ebp)
	calll	equal_tm
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2250
.label_2253:
	subl	$8, %esp
	pushl	-0x50(%ebp)
	pushl	-0x4c(%ebp)
	calll	save_abbr
	addl	$0x10, %esp
	xorl	$1, %eax
	testb	%al, %al
	je	.label_2250
	movl	-0x3c(%ebp), %eax
	movl	%eax, -0x44(%ebp)
.label_2250:
	subl	$0xc, %esp
	pushl	-0x40(%ebp)
	calll	revert_tz
	addl	$0x10, %esp
	testb	%al, %al
	je	.label_2255
	movl	-0x44(%ebp), %eax
	jmp	.label_2251
.label_2255:
	movl	$0xffffffff, %eax
.label_2251:
	movl	-0xc(%ebp), %edx
	xorl	%gs:0x14, %edx
	je	.label_2252
	calll	__stack_chk_fail
.label_2252:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805dfe1
	.globl rotl64
	.type rotl64, @function
rotl64:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %ebx
	movl	-0xc(%ebp), %esi
	movl	0x10(%ebp), %ecx
	movl	%ebx, %eax
	movl	%esi, %edx
	shldl	%cl, %eax, %edx
	shll	%cl, %eax
	testb	$0x20, %cl
	je	.label_2257
	movl	%eax, %edx
	xorl	%eax, %eax
.label_2257:
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	negl	%eax
	andl	$0x3f, %eax
	movl	%eax, %ecx
	shrdl	%cl, %esi, %ebx
	shrl	%cl, %esi
	testb	$0x20, %cl
	je	.label_2256
	movl	%esi, %ebx
	xorl	%esi, %esi
.label_2256:
	movl	%ebx, %eax
	movl	%esi, %edx
	movl	-0x20(%ebp), %ebx
	movl	-0x1c(%ebp), %esi
	movl	%ebx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -0x18(%ebp)
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	addl	$0x18, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e053
	.globl rotr64
	.type rotr64, @function
rotr64:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x18, %esp
	movl	8(%ebp), %eax
	movl	%eax, -0x10(%ebp)
	movl	0xc(%ebp), %eax
	movl	%eax, -0xc(%ebp)
	movl	-0x10(%ebp), %ebx
	movl	-0xc(%ebp), %esi
	movl	0x10(%ebp), %ecx
	movl	%ebx, %eax
	movl	%esi, %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$0x20, %cl
	je	.label_2259
	movl	%edx, %eax
	xorl	%edx, %edx
.label_2259:
	movl	%eax, -0x20(%ebp)
	movl	%edx, -0x1c(%ebp)
	movl	0x10(%ebp), %eax
	negl	%eax
	andl	$0x3f, %eax
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%esi, %edx
	shldl	%cl, %eax, %edx
	shll	%cl, %eax
	testb	$0x20, %cl
	je	.label_2258
	movl	%eax, %edx
	xorl	%eax, %eax
.label_2258:
	movl	-0x20(%ebp), %ebx
	movl	-0x1c(%ebp), %esi
	movl	%ebx, %ecx
	orl	%eax, %ecx
	movl	%ecx, -0x18(%ebp)
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, -0x14(%ebp)
	movl	-0x18(%ebp), %eax
	movl	-0x14(%ebp), %edx
	addl	$0x18, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e0c5
	.globl rotl32
	.type rotl32, @function
rotl32:

	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e0d6
	.globl rotr32
	.type rotr32, @function
rotr32:

	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e0e7
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e0f8

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	pushl	%ebp
	movl	%esp, %ebp
	movl	0xc(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e109
	.globl rotl16
	.type rotl16, @function
rotl16:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %eax
	movw	%ax, -8(%ebp)
	movzwl	-8(%ebp), %edx
	movl	0xc(%ebp), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movzwl	-8(%ebp), %edx
	movl	$0x10, %eax
	subl	0xc(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e140
	.globl rotr16
	.type rotr16, @function
rotr16:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %eax
	movw	%ax, -8(%ebp)
	movzwl	-8(%ebp), %edx
	movl	0xc(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movzwl	-8(%ebp), %edx
	movl	$0x10, %eax
	subl	0xc(%ebp), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e177
	.globl rotl8
	.type rotl8, @function
rotl8:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -8(%ebp)
	movzbl	-8(%ebp), %edx
	movl	0xc(%ebp), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movzbl	-8(%ebp), %edx
	movl	$8, %eax
	subl	0xc(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e1ad
	.globl rotr8
	.type rotr8, @function
rotr8:

	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -8(%ebp)
	movzbl	-8(%ebp), %edx
	movl	0xc(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movzbl	-8(%ebp), %edx
	movl	$8, %eax
	subl	0xc(%ebp), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	addl	$4, %esp
	popl	%ebx
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e1e3

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x10, %esp
	movl	8(%ebp), %esi
	movl	0xc(%ebp), %ebx
	cmpl	%ebx, %esi
	jne	.label_2262
	movl	$0, %eax
	jmp	.label_2263
.label_2262:
	movzbl	0(%esi), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_tolower
	addl	$0x10, %esp
	movb	%al, -0xa(%ebp)
	movzbl	0(%ebx), %eax
	movzbl	%al, %eax
	subl	$0xc, %esp
	pushl	%eax
	calll	c_tolower
	addl	$0x10, %esp
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	je	.label_2260
	addl	$1, %esi
	addl	$1, %ebx
	movzbl	-0xa(%ebp), %eax
	cmpb	-9(%ebp), %al
	je	.label_2262
	jmp	.label_2261
.label_2260:
	nop	
.label_2261:
	movzbl	-0xa(%ebp), %edx
	movzbl	-9(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.label_2263:
	leal	-8(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e251

	.globl close_stream
	.type close_stream, @function
close_stream:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	__fpending
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -0xb(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	ferror_unlocked
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -0xa(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	rpl_fclose
	addl	$0x10, %esp
	testl	%eax, %eax
	setne	%al
	movb	%al, -9(%ebp)
	cmpb	$0, -0xa(%ebp)
	jne	.label_2264
	cmpb	$0, -9(%ebp)
	je	.label_2266
	cmpb	$0, -0xb(%ebp)
	jne	.label_2264
	calll	__errno_location
	movl	0(%eax), %eax
	cmpl	$9, %eax
	je	.label_2266
.label_2264:
	movzbl	-9(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.label_2267
	calll	__errno_location
	movl	$0, 0(%eax)
.label_2267:
	movl	$0xffffffff, %eax
	jmp	.label_2265
.label_2266:
	movl	$0, %eax
.label_2265:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e2db

	.globl dir_name
	.type dir_name, @function
dir_name:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	mdir_name
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_2268
	calll	xalloc_die
.label_2268:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e302

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x10, %esp
	movl	$0, -4(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.label_2269
.label_2270:
	movl	-8(%ebp), %eax
	movzbl	0(%eax), %eax
	movsbl	%al, %eax
	movl	-4(%ebp), %edx
	roll	$9, %edx
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
.label_2269:
	movl	-8(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_2270
	movl	-4(%ebp), %eax
	movl	$0, %edx
	divl	0xc(%ebp)
	movl	%edx, %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e348

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	subl	$0xc, %esp
	pushl	$0xe
	calll	rpl_nl_langinfo
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jne	.label_2271
	movl	$label_2272, -12(%ebp)
.label_2271:
	movl	-0xc(%ebp), %eax
	movzbl	0(%eax), %eax
	testb	%al, %al
	jne	.label_2274
	movl	$label_2273, -12(%ebp)
.label_2274:
	movl	-0xc(%ebp), %eax
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e381

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x18, %esp
	movl	$0, -0x14(%ebp)
	movl	$0, -0x10(%ebp)
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fileno
	addl	$0x10, %esp
	movl	%eax, -0xc(%ebp)
	cmpl	$0, -0xc(%ebp)
	jns	.label_2275
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fclose
	addl	$0x10, %esp
	jmp	.label_2279
.label_2275:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	__freading
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2278
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fileno
	addl	$0x10, %esp
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	%eax
	calll	lseek64
	addl	$0x10, %esp
	movl	%edx, %ecx
	xorl	$0xffffffff, %ecx
	xorl	$0xffffffff, %eax
	orl	%ecx, %eax
	testl	%eax, %eax
	je	.label_2277
.label_2278:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	rpl_fflush
	addl	$0x10, %esp
	testl	%eax, %eax
	je	.label_2277
	calll	__errno_location
	movl	0(%eax), %eax
	movl	%eax, -0x14(%ebp)
.label_2277:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fclose
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	cmpl	$0, -0x14(%ebp)
	je	.label_2276
	calll	__errno_location
	movl	%eax, %edx
	movl	-0x14(%ebp), %eax
	movl	%eax, 0(%edx)
	movl	$0xffffffff, -0x10(%ebp)
.label_2276:
	movl	-0x10(%ebp), %eax
.label_2279:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e447

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	andl	$0x100, %eax
	testl	%eax, %eax
	je	.label_2280
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	8(%ebp)
	calll	rpl_fseeko
	addl	$0x10, %esp
.label_2280:
	nop	
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e46f

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	cmpl	$0, 8(%ebp)
	je	.label_2283
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	__freading
	addl	$0x10, %esp
	testl	%eax, %eax
	jne	.label_2281
.label_2283:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fflush
	addl	$0x10, %esp
	jmp	.label_2282
.label_2281:
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	clear_ungetc_buffer_preserving_position
	addl	$0x10, %esp
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fflush
	addl	$0x10, %esp
.label_2282:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e4bb

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$0x28, %esp
	movl	0xc(%ebp), %eax
	movl	%eax, -0x20(%ebp)
	movl	0x10(%ebp), %eax
	movl	%eax, -0x1c(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jne	.label_2284
	movl	8(%ebp), %eax
	movl	0x14(%eax), %edx
	movl	8(%ebp), %eax
	movl	0x10(%eax), %eax
	cmpl	%eax, %edx
	jne	.label_2284
	movl	8(%ebp), %eax
	movl	0x24(%eax), %eax
	testl	%eax, %eax
	jne	.label_2284
	subl	$0xc, %esp
	pushl	8(%ebp)
	calll	fileno
	addl	$0x10, %esp
	pushl	0x14(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	%eax
	calll	lseek64
	addl	$0x10, %esp
	movl	%eax, -0x10(%ebp)
	movl	%edx, -0xc(%ebp)
	movl	-0xc(%ebp), %eax
	xorl	$0xffffffff, %eax
	movl	%eax, %edx
	movl	-0x10(%ebp), %eax
	xorl	$0xffffffff, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	jne	.label_2285
	movl	$0xffffffff, %eax
	jmp	.label_2286
.label_2285:
	movl	8(%ebp), %eax
	movl	0(%eax), %eax
	andl	$0xffffffef, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 0(%eax)
	movl	8(%ebp), %ecx
	movl	-0x10(%ebp), %eax
	movl	-0xc(%ebp), %edx
	movl	%eax, 0x4c(%ecx)
	movl	%edx, 0x50(%ecx)
	movl	$0, %eax
	jmp	.label_2286
.label_2284:
	pushl	0x14(%ebp)
	pushl	-0x1c(%ebp)
	pushl	-0x20(%ebp)
	pushl	8(%ebp)
	calll	fseeko64
	addl	$0x10, %esp
.label_2286:
	leave	
	retl	
	.section	.text
	.align	32
	#Procedure 0x805e580

	.globl __divdi3
	.type __divdi3, @function
__divdi3:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x1c, %esp
	movl	0x34(%esp), %ebx
	movl	0x3c(%esp), %esi
	movl	0x38(%esp), %ebp
	movl	0x30(%esp), %eax
	movl	$0, 8(%esp)
	testl	%ebx, %ebx
	movl	%esi, %edi
	movl	%ebx, %edx
	js	.label_2287
.label_2298:
	testl	%edi, %edi
	movl	%ebp, 0(%esp)
	movl	%esi, 4(%esp)
	js	.label_2297
.label_2291:
	movl	4(%esp), %ebx
	movl	0(%esp), %ecx
	movl	%edx, %esi
	movl	%eax, 0xc(%esp)
	movl	%eax, %ebp
	testl	%ebx, %ebx
	movl	%ecx, %edi
	movl	0(%esp), %ecx
	jne	.label_2299
	cmpl	%edx, %edi
	jbe	.label_2292
	divl	%edi
	xorl	%ebp, %ebp
	movl	%eax, %ecx
	jmp	.label_2290
.label_2299:
	cmpl	%edx, %ebx
	jbe	.label_2293
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
.label_2290:
	movl	%ecx, %eax
	movl	8(%esp), %ecx
	movl	%ebp, %edx
	testl	%ecx, %ecx
	je	.label_2296
	negl	%eax
	adcl	$0, %edx
	negl	%edx
.label_2296:
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2293:
	bsrl	%ebx, %ebp
	xorl	$0x1f, %ebp
	jne	.label_2289
	cmpl	%edx, %ebx
	jb	.label_2294
	xorl	%ecx, %ecx
	cmpl	0xc(%esp), %edi
	ja	.label_2290
.label_2294:
	movl	$1, %ecx
	jmp	.label_2290
.label_2292:
	testl	%ecx, %ecx
	jne	.label_2295
	movl	$1, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
.label_2295:
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%ecx
	movl	%eax, %ebx
	movl	%ebp, %eax
	movl	%ebx, %ebp
	divl	%ecx
	movl	%eax, %ecx
	jmp	.label_2290
.label_2297:
	negl	0(%esp)
	notl	8(%esp)
	adcl	$0, 4(%esp)
	negl	4(%esp)
	jmp	.label_2291
.label_2287:
	negl	%eax
	movl	$0xffffffff, 8(%esp)
	adcl	$0, %edx
	negl	%edx
	jmp	.label_2298
.label_2289:
	movl	$0x20, %eax
	movl	%ebp, %ecx
	movl	%edi, %edx
	subl	%ebp, %eax
	shll	%cl, %ebx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%ebp, %ecx
	orl	%ebx, %edx
	shll	%cl, %edi
	movl	%esi, %ebx
	movl	%eax, %ecx
	movl	%edx, 0(%esp)
	movl	0xc(%esp), %edx
	shrl	%cl, %ebx
	movl	%ebp, %ecx
	shll	%cl, %esi
	movl	%eax, %ecx
	shrl	%cl, %edx
	orl	%edx, %esi
	movl	%ebx, %edx
	movl	%esi, %eax
	divl	0(%esp)
	movl	%edx, %ebx
	movl	%eax, %esi
	mull	%edi
	cmpl	%edx, %ebx
	jb	.label_2288
	movl	0xc(%esp), %edi
	movl	%ebp, %ecx
	shll	%cl, %edi
	cmpl	%eax, %edi
	jae	.label_2300
	cmpl	%edx, %ebx
	je	.label_2288
.label_2300:
	movl	%esi, %ecx
	xorl	%ebp, %ebp
	jmp	.label_2290
.label_2288:
	leal	-1(%esi), %ecx
	xorl	%ebp, %ebp
	jmp	.label_2290
	.section	.text
	.align	32
	#Procedure 0x805e6f0

	.globl __moddi3
	.type __moddi3, @function
__moddi3:
	pushl	%ebp
	pushl	%edi
	xorl	%ebp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$0x2c, %esp
	movl	0x44(%esp), %ebx
	movl	0x4c(%esp), %eax
	movl	0x40(%esp), %edi
	movl	0x48(%esp), %esi
	testl	%ebx, %ebx
	movl	%eax, %edx
	movl	%ebx, 0xc(%esp)
	movl	%edi, 8(%esp)
	js	.label_2315
.label_2306:
	testl	%edx, %edx
	movl	%esi, %ecx
	movl	%eax, %ebx
	js	.label_2308
.label_2301:
	movl	8(%esp), %esi
	movl	0xc(%esp), %edi
	movl	%ecx, 0x10(%esp)
	movl	%esi, %eax
	movl	%edi, %esi
	movl	%ebx, %edi
	testl	%edi, %edi
	movl	8(%esp), %ebx
	movl	%esi, 0x14(%esp)
	jne	.label_2313
	cmpl	%esi, %ecx
	jbe	.label_2304
	movl	%esi, %edx
	divl	%ecx
	movl	%edx, %esi
.label_2314:
	movl	%esi, %eax
	xorl	%edx, %edx
	jmp	.label_2305
.label_2313:
	cmpl	%esi, %edi
	jbe	.label_2307
	movl	8(%esp), %eax
	movl	%esi, %edx
.label_2305:
	testl	%ebp, %ebp
	je	.label_2312
	negl	%eax
	adcl	$0, %edx
	negl	%edx
.label_2312:
	addl	$0x2c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2307:
	bsrl	%edi, %edx
	xorl	$0x1f, %edx
	movl	%edx, 8(%esp)
	jne	.label_2316
	cmpl	%esi, %edi
	jb	.label_2303
	cmpl	%ebx, %ecx
	jbe	.label_2303
.label_2302:
	movl	%ebx, %eax
	movl	0x14(%esp), %edx
	jmp	.label_2305
.label_2304:
	testl	%ecx, %ecx
	jne	.label_2310
	movl	$1, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
.label_2310:
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%ebx, %eax
	divl	%ecx
	movl	%edx, %esi
	jmp	.label_2314
.label_2308:
	negl	%ecx
	adcl	$0, %ebx
	negl	%ebx
	jmp	.label_2301
.label_2315:
	negl	8(%esp)
	movl	$0xffffffff, %ebp
	adcl	$0, 0xc(%esp)
	negl	0xc(%esp)
	jmp	.label_2306
.label_2316:
	movl	8(%esp), %ecx
	movl	$0x20, %edx
	subl	%ecx, %edx
	shll	%cl, %edi
	movl	%edx, %ebx
	movl	%edx, 0x18(%esp)
	movl	0x10(%esp), %edx
	movl	%ebx, %ecx
	shrl	%cl, %edx
	movzbl	8(%esp), %ecx
	orl	%edx, %edi
	movl	0x10(%esp), %edx
	movl	%edi, 0x14(%esp)
	movl	%esi, %edi
	shll	%cl, %edx
	movl	%ebx, %ecx
	shrl	%cl, %edi
	movzbl	8(%esp), %ecx
	movl	%edx, 0x10(%esp)
	movl	%ebx, %edx
	movl	%edi, %ebx
	movl	%eax, %edi
	shll	%cl, %esi
	movl	%edx, %ecx
	movl	%ebx, %edx
	shrl	%cl, %edi
	movzbl	8(%esp), %ecx
	orl	%edi, %esi
	shll	%cl, %eax
	movl	%eax, %edi
	movl	%eax, 0x1c(%esp)
	movl	%esi, %eax
	divl	0x14(%esp)
	movl	%edx, %ebx
	mull	0x10(%esp)
	cmpl	%edx, %ebx
	movl	%eax, %esi
	movl	%edx, %ecx
	jb	.label_2311
	jne	.label_2309
	cmpl	%eax, %edi
	jae	.label_2309
.label_2311:
	subl	0x10(%esp), %eax
	sbbl	0x14(%esp), %edx
	movl	%edx, %ecx
	movl	%eax, %esi
.label_2309:
	movl	0x1c(%esp), %eax
	movl	8(%esp), %edi
	subl	%esi, %eax
	sbbl	%ecx, %ebx
	movzbl	0x18(%esp), %ecx
	movl	%ebx, %esi
	shll	%cl, %esi
	movl	%edi, %ecx
	shrl	%cl, %eax
	movl	%edi, %ecx
	orl	%eax, %esi
	shrl	%cl, %ebx
	movl	%esi, %eax
	movl	%ebx, %edx
	jmp	.label_2305
.label_2303:
	subl	%ecx, %ebx
	sbbl	%edi, %esi
	movl	%esi, 0x14(%esp)
	jmp	.label_2302
	.section	.text
	.align	32
	#Procedure 0x805e8b0

	.globl __udivdi3
	.type __udivdi3, @function
__udivdi3:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x1c, %esp
	movl	0x3c(%esp), %esi
	movl	0x30(%esp), %ebx
	movl	0x34(%esp), %ecx
	movl	0x38(%esp), %edi
	testl	%esi, %esi
	movl	%ebx, 8(%esp)
	movl	%ecx, %edx
	movl	%edi, %eax
	jne	.label_2320
	cmpl	%ecx, %edi
	ja	.label_2322
	testl	%edi, %edi
	movl	%edi, %ebp
	jne	.label_2325
	movl	$1, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebp
.label_2325:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, %edi
	divl	%ebp
	movl	%eax, %ebx
.label_2321:
	movl	%ebx, %eax
	movl	%edi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2320:
	cmpl	%ecx, %esi
	ja	.label_2317
	bsrl	%esi, %edi
	xorl	$0x1f, %edi
	je	.label_2323
	movl	$0x20, %ebx
	movl	%edi, %ecx
	movl	%eax, %ebp
	subl	%edi, %ebx
	shll	%cl, %esi
	movl	%ebx, %ecx
	shrl	%cl, %ebp
	movl	%edi, %ecx
	shll	%cl, %eax
	orl	%ebp, %esi
	movl	%ebx, %ecx
	movl	%eax, 0xc(%esp)
	movl	%edx, %ebp
	movl	8(%esp), %eax
	shrl	%cl, %ebp
	movl	%edi, %ecx
	shll	%cl, %edx
	movl	%ebx, %ecx
	shrl	%cl, %eax
	orl	%eax, %edx
	movl	%edx, %eax
	movl	%ebp, %edx
	divl	%esi
	movl	%edx, %ebp
	movl	%eax, %ebx
	mull	0xc(%esp)
	cmpl	%edx, %ebp
	jb	.label_2319
	movl	8(%esp), %esi
	movl	%edi, %ecx
	shll	%cl, %esi
	cmpl	%eax, %esi
	jae	.label_2318
	cmpl	%edx, %ebp
	jne	.label_2318
.label_2319:
	subl	$1, %ebx
.label_2318:
	xorl	%edi, %edi
	movl	%ebx, %eax
	movl	%edi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2317:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	%edi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2322:
	movl	%ebx, %eax
	divl	%edi
	xorl	%edi, %edi
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%edi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2323:
	cmpl	%ecx, %esi
	jb	.label_2324
	xorl	%ebx, %ebx
	cmpl	8(%esp), %eax
	ja	.label_2321
.label_2324:
	movl	$1, %ebx
	jmp	.label_2321
	.section	.text
	.align	32
	#Procedure 0x805e9e0

	.globl __umoddi3
	.type __umoddi3, @function
__umoddi3:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$0x1c, %esp
	movl	0x3c(%esp), %edx
	movl	0x30(%esp), %ecx
	movl	0x34(%esp), %esi
	movl	0x38(%esp), %edi
	testl	%edx, %edx
	movl	%ecx, 0xc(%esp)
	movl	%ecx, 8(%esp)
	movl	%esi, %ebx
	movl	%edi, 0(%esp)
	movl	%esi, 4(%esp)
	jne	.label_2326
	cmpl	%esi, %edi
	jbe	.label_2329
	movl	%ecx, %eax
	movl	%esi, %edx
	divl	%edi
	movl	%edx, %eax
.label_2331:
	xorl	%edx, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2326:
	cmpl	%esi, %edx
	movl	%edx, %eax
	ja	.label_2327
	bsrl	%edx, %ebp
	xorl	$0x1f, %ebp
	jne	.label_2330
	cmpl	4(%esp), %edx
	jb	.label_2332
	cmpl	%ecx, 0(%esp)
	jbe	.label_2332
.label_2335:
	movl	8(%esp), %eax
	movl	4(%esp), %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2329:
	testl	%edi, %edi
	movl	%edi, %ebp
	jne	.label_2333
	movl	$1, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ebp
.label_2333:
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%ecx, %eax
	divl	%ebp
	movl	%edx, %eax
	jmp	.label_2331
.label_2327:
	movl	%ecx, %eax
	movl	%esi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2330:
	movl	0(%esp), %esi
	movl	$0x20, %edi
	movl	%ebp, %ecx
	subl	%ebp, %edi
	shll	%cl, %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	shrl	%cl, %edx
	movl	%ebp, %ecx
	orl	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, 0(%esp)
	movl	%esi, %edx
	shll	%cl, %edx
	movl	%edi, %ecx
	movl	%edx, 4(%esp)
	movl	0xc(%esp), %edx
	shrl	%cl, %eax
	movl	%ebp, %ecx
	movl	%eax, %esi
	shll	%cl, %ebx
	movl	%edi, %ecx
	movl	%edx, %eax
	shrl	%cl, %eax
	movl	%ebp, %ecx
	orl	%ebx, %eax
	movl	%edx, %ebx
	movl	%esi, %edx
	divl	0(%esp)
	movl	%edx, %esi
	shll	%cl, %ebx
	mull	4(%esp)
	cmpl	%edx, %esi
	movl	%ebx, 8(%esp)
	movl	%edx, %ecx
	movl	%eax, %ebx
	jb	.label_2334
	jne	.label_2328
	cmpl	%eax, 8(%esp)
	jae	.label_2328
.label_2334:
	subl	4(%esp), %eax
	sbbl	0(%esp), %edx
	movl	%edx, %ecx
	movl	%eax, %ebx
.label_2328:
	movl	8(%esp), %edx
	subl	%ebx, %edx
	sbbl	%ecx, %esi
	movl	%edi, %ecx
	movl	%esi, %eax
	shll	%cl, %eax
	movl	%ebp, %ecx
	shrl	%cl, %edx
	movl	%ebp, %ecx
	shrl	%cl, %esi
	orl	%edx, %eax
	movl	%esi, %edx
	addl	$0x1c, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	retl	
.label_2332:
	subl	%edi, %ecx
	sbbl	%edx, %esi
	movl	%esi, 4(%esp)
	movl	%ecx, 8(%esp)
	jmp	.label_2335
	.section	.text
	.align	32
	#Procedure 0x805ebf0

	.globl stat64
	.type stat64, @function
stat64:
	pushl	%ebx
	calll	__x86.get_pc_thunk.bx
	addl	$0xb40a, %ebx
	subl	$0xc, %esp
	pushl	0x18(%esp)
	pushl	0x18(%esp)
	pushl	$3
	calll	__xstat64
	addl	$0x18, %esp
	popl	%ebx
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ec20

	.globl fstat64
	.type fstat64, @function
fstat64:
	pushl	%ebx
	calll	__x86.get_pc_thunk.bx
	addl	$0xb3da, %ebx
	subl	$0xc, %esp
	pushl	0x18(%esp)
	pushl	0x18(%esp)
	pushl	$3
	calll	__fxstat64
	addl	$0x18, %esp
	popl	%ebx
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ec50

	.globl lstat64
	.type lstat64, @function
lstat64:
	pushl	%ebx
	calll	__x86.get_pc_thunk.bx
	addl	$0xb3aa, %ebx
	subl	$0xc, %esp
	pushl	0x18(%esp)
	pushl	0x18(%esp)
	pushl	$3
	calll	__lxstat64
	addl	$0x18, %esp
	popl	%ebx
	retl	
	.section	.text
	.align	32
	#Procedure 0x805ec80

	.globl fstatat64
	.type fstatat64, @function
fstatat64:
	pushl	%ebx
	calll	__x86.get_pc_thunk.bx
	addl	$0xb37a, %ebx
	subl	$0x14, %esp
	pushl	0x28(%esp)
	pushl	0x28(%esp)
	pushl	0x28(%esp)
	pushl	0x28(%esp)
	pushl	$3
	calll	__fxstatat64
	addl	$0x28, %esp
	popl	%ebx
	retl	
	.section .plt.got
	.align 16
	# data @ 0x8049bd8
	.label_2727:
	.section .text
	.align 32
	# data @ 0x805ecab
	.label_2728:
	.section .rodata
	.align 32
	# data @ 0x805ecc0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x805ecc7
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x805ece0
label_13:
	.asciz "\nMandatory arguments to long options are mandatory for short options too.\n"
	# data @ 0x805ed2b
	.byte 0
	# data @ 0x805ed2c
label_14:
	.asciz "\nThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\nUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\n"
	# data @ 0x805edc5
label_31:
	.asciz "["
	# data @ 0x805edc7
label_32:
	.asciz "test invocation"
	# data @ 0x805edd7
label_33:
	.asciz "coreutils"
	# data @ 0x805ede1
label_34:
	.asciz "Multi-call invocation"
	# data @ 0x805edf7
label_35:
	.asciz "sha224sum"
	# data @ 0x805ee01
label_36:
	.asciz "sha2 utilities"
	# data @ 0x805ee10
label_37:
	.asciz "sha256sum"
	# data @ 0x805ee1a
label_38:
	.asciz "sha384sum"
	# data @ 0x805ee24
label_39:
	.asciz "sha512sum"
	# data @ 0x805ee2e
label_21:
	.asciz "\n%s online help: <%s>\n"
	# data @ 0x805ee45
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x805ee48
label_17:
	.asciz "https://www.gnu.org/software/coreutils/"
	# data @ 0x805ee70
label_18:
	.asciz "GNU coreutils"
	# data @ 0x805ee7e
label_30:
	.asciz "en_"
	# data @ 0x805ee82
	.byte 0
	.byte 0
	# data @ 0x805ee84
label_20:
	.asciz "Report %s translation bugs to <https://translationproject.org/team/>\n"
	# data @ 0x805eeca
	.byte 0
	.byte 0
	# data @ 0x805eecc
label_29:
	.asciz "Full documentation at: <%s%s>\n"
	# data @ 0x805eeeb
label_22:
	.asciz " invocation"
	# data @ 0x805eef7
label_26:
	.byte 0
	# data @ 0x805eef8
label_28:
	.asciz "or available locally via: info '(coreutils) %s%s'\n"
	# data @ 0x805ef2b
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x805ef40
	.globl G_line
	.type G_line, @object
G_line:
	.asciz "# Configuration file for dircolors, a utility to help you set the"
	# data @ 0x805ef82
	.asciz "# LS_COLORS environment variable used by GNU ls with the --color option."
	# data @ 0x805efcb
	.asciz "# Copyright (C) 1996-2018 Free Software Foundation, Inc."
	# data @ 0x805f004
	.asciz "# Copying and distribution of this file, with or without modification,"
	# data @ 0x805f04b
	.asciz "# are permitted provided the copyright notice and this notice are preserved."
	# data @ 0x805f098
	.asciz "# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the"
	# data @ 0x805f0d4
	.asciz "# slackware version of dircolors) are recognized but ignored."
	# data @ 0x805f112
	.asciz "# Below are TERM entries, which can be a glob patterns, to match"
	# data @ 0x805f153
	.asciz "# against the TERM environment variable to determine if it is colorizable."
	# data @ 0x805f19e
	.asciz "TERM Eterm"
	# data @ 0x805f1a9
	.asciz "TERM ansi"
	# data @ 0x805f1b3
	.asciz "TERM *color*"
	# data @ 0x805f1c0
	.asciz "TERM con[0-9]*x[0-9]*"
	# data @ 0x805f1d6
	.asciz "TERM cons25"
	# data @ 0x805f1e2
	.asciz "TERM console"
	# data @ 0x805f1ef
	.asciz "TERM cygwin"
	# data @ 0x805f1fb
	.asciz "TERM dtterm"
	# data @ 0x805f207
	.asciz "TERM gnome"
	# data @ 0x805f212
	.asciz "TERM hurd"
	# data @ 0x805f21c
	.asciz "TERM jfbterm"
	# data @ 0x805f229
	.asciz "TERM konsole"
	# data @ 0x805f236
	.asciz "TERM kterm"
	# data @ 0x805f241
	.asciz "TERM linux"
	# data @ 0x805f24c
	.asciz "TERM linux-c"
	# data @ 0x805f259
	.asciz "TERM mlterm"
	# data @ 0x805f265
	.asciz "TERM putty"
	# data @ 0x805f270
	.asciz "TERM rxvt*"
	# data @ 0x805f27b
	.asciz "TERM screen*"
	# data @ 0x805f288
	.asciz "TERM st"
	# data @ 0x805f290
	.asciz "TERM terminator"
	# data @ 0x805f2a0
	.asciz "TERM tmux*"
	# data @ 0x805f2ab
	.asciz "TERM vt100"
	# data @ 0x805f2b6
	.asciz "TERM xterm*"
	# data @ 0x805f2c2
	.asciz "# Below are the color init strings for the basic file types. A color init"
	# data @ 0x805f30c
	.asciz "# string consists of one or more of the following numeric codes:"
	# data @ 0x805f34d
	.asciz "# Attribute codes:"
	# data @ 0x805f360
	.asciz "# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed"
	# data @ 0x805f3a1
	.asciz "# Text color codes:"
	# data @ 0x805f3b5
	.asciz "# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white"
	# data @ 0x805f3fe
	.asciz "# Background color codes:"
	# data @ 0x805f418
	.asciz "# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white"
	# data @ 0x805f461
	.asciz "#NORMAL 00 # no color code at all"
	# data @ 0x805f483
	.asciz "#FILE 00 # regular file: use no color at all"
	# data @ 0x805f4b0
	.asciz "RESET 0 # reset to \"normal\" color"
	# data @ 0x805f4d2
	.asciz "DIR 01;34 # directory"
	# data @ 0x805f4e8
	.asciz "LINK 01;36 # symbolic link. (If you set this to 'target' instead of a"
	# data @ 0x805f52e
	.asciz " # numerical value, the color is as for the file pointed to.)"
	# data @ 0x805f56c
	.asciz "MULTIHARDLINK 00 # regular file with more than one link"
	# data @ 0x805f5a4
	.asciz "FIFO 40;33 # pipe"
	# data @ 0x805f5b6
	.asciz "SOCK 01;35 # socket"
	# data @ 0x805f5ca
	.asciz "DOOR 01;35 # door"
	# data @ 0x805f5dc
	.asciz "BLK 40;33;01 # block device driver"
	# data @ 0x805f5ff
	.asciz "CHR 40;33;01 # character device driver"
	# data @ 0x805f626
	.asciz "ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ..."
	# data @ 0x805f66f
	.asciz "MISSING 00 # ... and the files they point to"
	# data @ 0x805f69c
	.asciz "SETUID 37;41 # file that is setuid (u+s)"
	# data @ 0x805f6c5
	.asciz "SETGID 30;43 # file that is setgid (g+s)"
	# data @ 0x805f6ee
	.asciz "CAPABILITY 30;41 # file with capability"
	# data @ 0x805f716
	.asciz "STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)"
	# data @ 0x805f763
	.asciz "OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky"
	# data @ 0x805f7aa
	.asciz "STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable"
	# data @ 0x805f7f1
	.asciz "# This is for files with execute permission:"
	# data @ 0x805f81e
	.asciz "EXEC 01;32"
	# data @ 0x805f829
	.asciz "# List any file extensions like '.gz' or '.tar' that you would like ls"
	# data @ 0x805f870
	.asciz "# to colorize below. Put the extension, a space, and the color init string."
	# data @ 0x805f8bc
	.asciz "# (and any comments you want to add after a '#')"
	# data @ 0x805f8ed
	.asciz "# If you use DOS-style suffixes, you may want to uncomment the following:"
	# data @ 0x805f937
	.asciz "#.cmd 01;32 # executables (bright green)"
	# data @ 0x805f960
	.asciz "#.exe 01;32"
	# data @ 0x805f96c
	.asciz "#.com 01;32"
	# data @ 0x805f978
	.asciz "#.btm 01;32"
	# data @ 0x805f984
	.asciz "#.bat 01;32"
	# data @ 0x805f990
	.asciz "# Or if you want to colorize scripts even if they do not have the"
	# data @ 0x805f9d2
	.asciz "# executable bit actually set."
	# data @ 0x805f9f1
	.asciz "#.sh 01;32"
	# data @ 0x805f9fc
	.asciz "#.csh 01;32"
	# data @ 0x805fa08
	.asciz " # archives or compressed (bright red)"
	# data @ 0x805fa2f
	.asciz ".tar 01;31"
	# data @ 0x805fa3a
	.asciz ".tgz 01;31"
	# data @ 0x805fa45
	.asciz ".arc 01;31"
	# data @ 0x805fa50
	.asciz ".arj 01;31"
	# data @ 0x805fa5b
	.asciz ".taz 01;31"
	# data @ 0x805fa66
	.asciz ".lha 01;31"
	# data @ 0x805fa71
	.asciz ".lz4 01;31"
	# data @ 0x805fa7c
	.asciz ".lzh 01;31"
	# data @ 0x805fa87
	.asciz ".lzma 01;31"
	# data @ 0x805fa93
	.asciz ".tlz 01;31"
	# data @ 0x805fa9e
	.asciz ".txz 01;31"
	# data @ 0x805faa9
	.asciz ".tzo 01;31"
	# data @ 0x805fab4
	.asciz ".t7z 01;31"
	# data @ 0x805fabf
	.asciz ".zip 01;31"
	# data @ 0x805faca
	.asciz ".z 01;31"
	# data @ 0x805fad3
	.asciz ".dz 01;31"
	# data @ 0x805fadd
	.asciz ".gz 01;31"
	# data @ 0x805fae7
	.asciz ".lrz 01;31"
	# data @ 0x805faf2
	.asciz ".lz 01;31"
	# data @ 0x805fafc
	.asciz ".lzo 01;31"
	# data @ 0x805fb07
	.asciz ".xz 01;31"
	# data @ 0x805fb11
	.asciz ".zst 01;31"
	# data @ 0x805fb1c
	.asciz ".tzst 01;31"
	# data @ 0x805fb28
	.asciz ".bz2 01;31"
	# data @ 0x805fb33
	.asciz ".bz 01;31"
	# data @ 0x805fb3d
	.asciz ".tbz 01;31"
	# data @ 0x805fb48
	.asciz ".tbz2 01;31"
	# data @ 0x805fb54
	.asciz ".tz 01;31"
	# data @ 0x805fb5e
	.asciz ".deb 01;31"
	# data @ 0x805fb69
	.asciz ".rpm 01;31"
	# data @ 0x805fb74
	.asciz ".jar 01;31"
	# data @ 0x805fb7f
	.asciz ".war 01;31"
	# data @ 0x805fb8a
	.asciz ".ear 01;31"
	# data @ 0x805fb95
	.asciz ".sar 01;31"
	# data @ 0x805fba0
	.asciz ".rar 01;31"
	# data @ 0x805fbab
	.asciz ".alz 01;31"
	# data @ 0x805fbb6
	.asciz ".ace 01;31"
	# data @ 0x805fbc1
	.asciz ".zoo 01;31"
	# data @ 0x805fbcc
	.asciz ".cpio 01;31"
	# data @ 0x805fbd8
	.asciz ".7z 01;31"
	# data @ 0x805fbe2
	.asciz ".rz 01;31"
	# data @ 0x805fbec
	.asciz ".cab 01;31"
	# data @ 0x805fbf7
	.asciz ".wim 01;31"
	# data @ 0x805fc02
	.asciz ".swm 01;31"
	# data @ 0x805fc0d
	.asciz ".dwm 01;31"
	# data @ 0x805fc18
	.asciz ".esd 01;31"
	# data @ 0x805fc23
	.asciz "# image formats"
	# data @ 0x805fc33
	.asciz ".jpg 01;35"
	# data @ 0x805fc3e
	.asciz ".jpeg 01;35"
	# data @ 0x805fc4a
	.asciz ".mjpg 01;35"
	# data @ 0x805fc56
	.asciz ".mjpeg 01;35"
	# data @ 0x805fc63
	.asciz ".gif 01;35"
	# data @ 0x805fc6e
	.asciz ".bmp 01;35"
	# data @ 0x805fc79
	.asciz ".pbm 01;35"
	# data @ 0x805fc84
	.asciz ".pgm 01;35"
	# data @ 0x805fc8f
	.asciz ".ppm 01;35"
	# data @ 0x805fc9a
	.asciz ".tga 01;35"
	# data @ 0x805fca5
	.asciz ".xbm 01;35"
	# data @ 0x805fcb0
	.asciz ".xpm 01;35"
	# data @ 0x805fcbb
	.asciz ".tif 01;35"
	# data @ 0x805fcc6
	.asciz ".tiff 01;35"
	# data @ 0x805fcd2
	.asciz ".png 01;35"
	# data @ 0x805fcdd
	.asciz ".svg 01;35"
	# data @ 0x805fce8
	.asciz ".svgz 01;35"
	# data @ 0x805fcf4
	.asciz ".mng 01;35"
	# data @ 0x805fcff
	.asciz ".pcx 01;35"
	# data @ 0x805fd0a
	.asciz ".mov 01;35"
	# data @ 0x805fd15
	.asciz ".mpg 01;35"
	# data @ 0x805fd20
	.asciz ".mpeg 01;35"
	# data @ 0x805fd2c
	.asciz ".m2v 01;35"
	# data @ 0x805fd37
	.asciz ".mkv 01;35"
	# data @ 0x805fd42
	.asciz ".webm 01;35"
	# data @ 0x805fd4e
	.asciz ".ogm 01;35"
	# data @ 0x805fd59
	.asciz ".mp4 01;35"
	# data @ 0x805fd64
	.asciz ".m4v 01;35"
	# data @ 0x805fd6f
	.asciz ".mp4v 01;35"
	# data @ 0x805fd7b
	.asciz ".vob 01;35"
	# data @ 0x805fd86
	.asciz ".qt 01;35"
	# data @ 0x805fd90
	.asciz ".nuv 01;35"
	# data @ 0x805fd9b
	.asciz ".wmv 01;35"
	# data @ 0x805fda6
	.asciz ".asf 01;35"
	# data @ 0x805fdb1
	.asciz ".rm 01;35"
	# data @ 0x805fdbb
	.asciz ".rmvb 01;35"
	# data @ 0x805fdc7
	.asciz ".flc 01;35"
	# data @ 0x805fdd2
	.asciz ".avi 01;35"
	# data @ 0x805fddd
	.asciz ".fli 01;35"
	# data @ 0x805fde8
	.asciz ".flv 01;35"
	# data @ 0x805fdf3
	.asciz ".gl 01;35"
	# data @ 0x805fdfd
	.asciz ".dl 01;35"
	# data @ 0x805fe07
	.asciz ".xcf 01;35"
	# data @ 0x805fe12
	.asciz ".xwd 01;35"
	# data @ 0x805fe1d
	.asciz ".yuv 01;35"
	# data @ 0x805fe28
	.asciz ".cgm 01;35"
	# data @ 0x805fe33
	.asciz ".emf 01;35"
	# data @ 0x805fe3e
	.asciz "# https://wiki.xiph.org/MIME_Types_and_File_Extensions"
	# data @ 0x805fe75
	.asciz ".ogv 01;35"
	# data @ 0x805fe80
	.asciz ".ogx 01;35"
	# data @ 0x805fe8b
	.asciz "# audio formats"
	# data @ 0x805fe9b
	.asciz ".aac 00;36"
	# data @ 0x805fea6
	.asciz ".au 00;36"
	# data @ 0x805feb0
	.asciz ".flac 00;36"
	# data @ 0x805febc
	.asciz ".m4a 00;36"
	# data @ 0x805fec7
	.asciz ".mid 00;36"
	# data @ 0x805fed2
	.asciz ".midi 00;36"
	# data @ 0x805fede
	.asciz ".mka 00;36"
	# data @ 0x805fee9
	.asciz ".mp3 00;36"
	# data @ 0x805fef4
	.asciz ".mpc 00;36"
	# data @ 0x805feff
	.asciz ".ogg 00;36"
	# data @ 0x805ff0a
	.asciz ".ra 00;36"
	# data @ 0x805ff14
	.asciz ".wav 00;36"
	# data @ 0x805ff1f
	.asciz "# https://wiki.xiph.org/MIME_Types_and_File_Extensions"
	# data @ 0x805ff56
	.asciz ".oga 00;36"
	# data @ 0x805ff61
	.asciz ".opus 00;36"
	# data @ 0x805ff6d
	.asciz ".spx 00;36"
	# data @ 0x805ff78
	.asciz ".xspf 00;36"
	# data @ 0x805ff84
	.globl filetype_letter
	.type filetype_letter, @object
filetype_letter:
	.asciz "?pcdb-lswd"
	# data @ 0x805ff8f
label_276:
	.asciz "full-iso"
	# data @ 0x805ff98
label_2717:
	.asciz "long-iso"
	# data @ 0x805ffa1
label_2718:
	.asciz "iso"
	# data @ 0x805ffa5
label_221:
	.asciz "locale"
	# data @ 0x805ffac
	.globl time_style_args
	.type time_style_args, @object
time_style_args:
	.long label_276
	.long label_2717
	.long label_2718
	.long label_221
	# data @ 0x805ffbc
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x805ffc0
	.globl time_style_types
	.type time_style_types, @object
time_style_types:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
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
	# data @ 0x805ffd0
label_2492:
	.asciz "none"
	# data @ 0x805ffd5
label_2724:
	.asciz "slash"
	# data @ 0x805ffdb
label_2725:
	.asciz "file-type"
	# data @ 0x805ffe5
label_2726:
	.asciz "classify"
	# data @ 0x805ffee
	.byte 0
	.byte 0
	# data @ 0x805fff0
	.globl indicator_style_args
	.type indicator_style_args, @object
indicator_style_args:
	.long label_2492
	.long label_2724
	.long label_2725
	.long label_2726
	# data @ 0x8060000
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060004
	.globl indicator_style_types
	.type indicator_style_types, @object
indicator_style_types:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
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
	# data @ 0x8060014
label_2624:
	.asciz "lc"
	# data @ 0x8060017
label_2625:
	.asciz "rc"
	# data @ 0x806001a
label_2626:
	.asciz "ec"
	# data @ 0x806001d
label_2627:
	.asciz "rs"
	# data @ 0x8060020
label_2519:
	.asciz "no"
	# data @ 0x8060023
label_2628:
	.asciz "fi"
	# data @ 0x8060026
label_2629:
	.asciz "di"
	# data @ 0x8060029
label_2630:
	.asciz "ln"
	# data @ 0x806002c
label_2631:
	.asciz "pi"
	# data @ 0x806002f
label_2632:
	.asciz "so"
	# data @ 0x8060032
label_2633:
	.asciz "bd"
	# data @ 0x8060035
label_2634:
	.asciz "cd"
	# data @ 0x8060038
label_2635:
	.asciz "mi"
	# data @ 0x806003b
label_2636:
	.asciz "or"
	# data @ 0x806003e
label_2637:
	.asciz "ex"
	# data @ 0x8060041
label_2638:
	.asciz "do"
	# data @ 0x8060044
label_2639:
	.asciz "su"
	# data @ 0x8060047
label_2640:
	.asciz "sg"
	# data @ 0x806004a
label_2641:
	.asciz "st"
	# data @ 0x806004d
label_2642:
	.asciz "ow"
	# data @ 0x8060050
label_2643:
	.asciz "tw"
	# data @ 0x8060053
label_2644:
	.asciz "ca"
	# data @ 0x8060056
label_2645:
	.asciz "mh"
	# data @ 0x8060059
label_2646:
	.ascii "cl"
	# data @ 0x806005b
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060060
	.globl indicator_name
	.type indicator_name, @object
indicator_name:
	.long label_2624
	.long label_2625
	.long label_2626
	.long label_2627
	.long label_2519
	.long label_2628
	.long label_2629
	.long label_2630
	.long label_2631
	.long label_2632
	.long label_2633
	.long label_2634
	.long label_2635
	.long label_2636
	.long label_2637
	.long label_2638
	.long label_2639
	.long label_2640
	.long label_2641
	.long label_2642
	.long label_2643
	.long label_2644
	.long label_2645
	.long label_2646
	# data @ 0x80600c0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80600c4
label_135:
	.byte 27
	.byte 91
	.byte 0
	# data @ 0x80600c7
label_2665:
	.byte 109
	.byte 0
	# data @ 0x80600c9
label_93:
	.byte 0x30
	# data @ 0x80600ca
	.byte 0
	# data @ 0x80600cb
label_2523:
	.asciz "01;34"
	# data @ 0x80600d1
label_2365:
	.asciz "01;36"
	# data @ 0x80600d7
label_2659:
	.asciz "33"
	# data @ 0x80600da
label_2368:
	.asciz "01;35"
	# data @ 0x80600e0
label_2344:
	.asciz "01;33"
	# data @ 0x80600e6
label_2680:
	.asciz "01;32"
	# data @ 0x80600ec
label_2704:
	.asciz "37;41"
	# data @ 0x80600f2
label_2347:
	.asciz "30;43"
	# data @ 0x80600f8
label_2713:
	.asciz "37;44"
	# data @ 0x80600fe
label_2716:
	.asciz "34;42"
	# data @ 0x8060104
label_2722:
	.asciz "30;42"
	# data @ 0x806010a
label_2340:
	.asciz "30;41"
	# data @ 0x8060110
label_2341:
	.byte 27
	.byte 91
	.byte 75
	.byte 0
	# data @ 0x8060114
label_2378:
	.asciz "%b %e  %Y"
	# data @ 0x806011e
label_2343:
	.asciz "%b %e %H:%M"
	# data @ 0x806012a
label_2563:
	.asciz "all"
	# data @ 0x806012e
	.asciz "escape"
	# data @ 0x8060135
	.asciz "directory"
	# data @ 0x806013f
	.asciz "dired"
	# data @ 0x8060145
	.asciz "full-time"
	# data @ 0x806014f
label_2387:
	.asciz "group-directories-first"
	# data @ 0x8060167
label_2416:
	.asciz "human-readable"
	# data @ 0x8060176
	.asciz "inode"
	# data @ 0x806017c
	.asciz "kibibytes"
	# data @ 0x8060186
	.asciz "numeric-uid-gid"
	# data @ 0x8060196
	.asciz "no-group"
	# data @ 0x806019f
	.asciz "hide-control-chars"
	# data @ 0x80601b2
	.asciz "reverse"
	# data @ 0x80601ba
label_2494:
	.asciz "size"
	# data @ 0x80601bf
	.asciz "width"
	# data @ 0x80601c5
	.asciz "almost-all"
	# data @ 0x80601d0
	.asciz "ignore-backups"
	# data @ 0x80601df
label_2504:
	.asciz "si"
	# data @ 0x80601e2
label_2715:
	.asciz "dereference-command-line"
	# data @ 0x80601fb
	.byte 0
	.byte 100
	.byte 101
	.byte 114
	.byte 101
	.byte 102
	.byte 101
	.byte 114
	.byte 101
	.byte 110
	.byte 99
	.byte 101
	.byte 45
	.byte 99
	.byte 111
	.byte 109
	.byte 109
	.byte 97
	.byte 110
	.byte 100
	.byte 45
	.byte 108
	.byte 105
	.byte 110
	.byte 101
	.byte 45
	.byte 115
	.byte 121
	.byte 109
	.byte 108
	.byte 105
	.byte 110
	.byte 107
	.byte 45
	.byte 116
	.byte 111
	.byte 45
	.byte 100
	.byte 105
	.byte 114
	.byte 0
	# data @ 0x8060224
label_2566:
	.asciz "hide"
	# data @ 0x8060229
label_2650:
	.asciz "ignore"
	# data @ 0x8060230
	.asciz "indicator-style"
	# data @ 0x8060240
label_2555:
	.asciz "dereference"
	# data @ 0x806024c
	.asciz "literal"
	# data @ 0x8060254
	.asciz "quote-name"
	# data @ 0x806025f
	.asciz "quoting-style"
	# data @ 0x806026d
label_2655:
	.asciz "recursive"
	# data @ 0x8060277
	.asciz "format"
	# data @ 0x806027e
label_2660:
	.asciz "show-control-chars"
	# data @ 0x8060291
label_2434:
	.asciz "sort"
	# data @ 0x8060296
label_2435:
	.asciz "tabsize"
	# data @ 0x806029e
label_2493:
	.asciz "time"
	# data @ 0x80602a3
label_2648:
	.asciz "time-style"
	# data @ 0x80602ae
label_2661:
	.asciz "color"
	# data @ 0x80602b4
label_2714:
	.asciz "hyperlink"
	# data @ 0x80602be
label_2436:
	.asciz "block-size"
	# data @ 0x80602c9
label_2437:
	.asciz "context"
	# data @ 0x80602d1
	.asciz "author"
	# data @ 0x80602d8
label_2345:
	.asciz "help"
	# data @ 0x80602dd
label_2349:
	.ascii "version"
	# data @ 0x80602e4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060300
	.globl long_options
	.type long_options, @object
long_options:
	.long label_2563
	# data @ 0x8060304
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806030c
	.byte 97
	.byte 0
	.byte 0
	.byte 0
	.byte 46
	# data @ 0x8060311
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060314
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806031c
	.byte 98
	.byte 0
	.byte 0
	.byte 0
	.byte 53
	# data @ 0x8060321
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060324
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806032c
	.byte 100
	.byte 0
	.byte 0
	.byte 0
	.byte 63
	# data @ 0x8060331
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060334
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806033c
	.byte 68
	.byte 0
	.byte 0
	.byte 0
	.byte 69
	# data @ 0x8060341
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060344
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806034c
	.byte 134
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060350
	.long label_2387
	# data @ 0x8060354
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806035c
	.byte 135
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060360
	.long label_2416
	# data @ 0x8060364
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806036c
	.byte 104
	.byte 0
	.byte 0
	.byte 0
	.byte 118
	# data @ 0x8060371
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060374
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806037c
	.byte 105
	.byte 0
	.byte 0
	.byte 0
	.byte 124
	# data @ 0x8060381
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060384
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806038c
	.byte 107
	.byte 0
	.byte 0
	.byte 0
	.byte 134
	# data @ 0x8060391
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060394
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806039c
	.byte 110
	.byte 0
	.byte 0
	.byte 0
	.byte 150
	# data @ 0x80603a1
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x80603a4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603ac
	.byte 71
	.byte 0
	.byte 0
	.byte 0
	.byte 159
	# data @ 0x80603b1
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x80603b4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603bc
	.byte 113
	.byte 0
	.byte 0
	.byte 0
	.byte 178
	# data @ 0x80603c1
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x80603c4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603cc
	.byte 114
	.byte 0
	.byte 0
	.byte 0
	.byte 186
	# data @ 0x80603d1
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x80603d4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603dc
	.byte 115
	.byte 0
	.byte 0
	.byte 0
	.byte 191
	.byte 1
	# data @ 0x80603e2
	.byte 6
	.byte 8
	.byte 1
	# data @ 0x80603e5
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603ec
	.byte 119
	.byte 0
	.byte 0
	.byte 0
	.byte 197
	# data @ 0x80603f1
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x80603f4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80603fc
	.byte 65
	.byte 0
	.byte 0
	.byte 0
	.byte 208
	# data @ 0x8060401
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060404
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806040c
	.byte 66
	.byte 0
	.byte 0
	.byte 0
	.byte 229
	# data @ 0x8060411
	.byte 255
	.byte 5
	.byte 8
	# data @ 0x8060414
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806041c
	.byte 70
	.byte 0
	.byte 0
	.byte 0
	.byte 219
	# data @ 0x8060421
	.byte 255
	.byte 5
	.byte 8
	# data @ 0x8060424
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806042c
	.byte 132
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060430
	.long label_2504
	# data @ 0x8060434
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806043c
	.byte 141
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060440
	.long label_2715
	# data @ 0x8060444
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806044c
	.byte 72
	.byte 0
	.byte 0
	.byte 0
	.byte 252
	# data @ 0x8060451
	.byte 1
	.byte 6
	.byte 8
	# data @ 0x8060454
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806045c
	.byte 131
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060460
	.long label_2566
	# data @ 0x8060464
	.byte 1
	# data @ 0x8060465
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806046c
	.byte 136
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060470
	.long label_2650
	# data @ 0x8060474
	.byte 1
	# data @ 0x8060475
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806047c
	.byte 73
	.byte 0
	.byte 0
	.byte 0
	.byte 48
	.byte 2
	# data @ 0x8060482
	.byte 6
	.byte 8
	.byte 1
	# data @ 0x8060485
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806048c
	.byte 138
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060490
	.long label_2555
	# data @ 0x8060494
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806049c
	.byte 76
	.byte 0
	.byte 0
	.byte 0
	.byte 76
	# data @ 0x80604a1
	.byte 2
	.byte 6
	.byte 8
	# data @ 0x80604a4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604ac
	.byte 78
	.byte 0
	.byte 0
	.byte 0
	.byte 84
	# data @ 0x80604b1
	.byte 2
	.byte 6
	.byte 8
	# data @ 0x80604b4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604bc
	.byte 81
	.byte 0
	.byte 0
	.byte 0
	.byte 95
	.byte 2
	# data @ 0x80604c2
	.byte 6
	.byte 8
	.byte 1
	# data @ 0x80604c5
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604cc
	.byte 139
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604d0
	.long label_2655
	# data @ 0x80604d4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604dc
	.byte 82
	.byte 0
	.byte 0
	.byte 0
	.byte 119
	.byte 2
	# data @ 0x80604e2
	.byte 6
	.byte 8
	.byte 1
	# data @ 0x80604e5
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604ec
	.byte 133
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604f0
	.long label_2660
	# data @ 0x80604f4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80604fc
	.byte 140
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060500
	.long label_2434
	# data @ 0x8060504
	.byte 1
	# data @ 0x8060505
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806050c
	.byte 142
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060510
	.long label_2435
	# data @ 0x8060514
	.byte 1
	# data @ 0x8060515
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806051c
	.byte 84
	.byte 0
	.byte 0
	.byte 0
	.byte 158
	.byte 2
	# data @ 0x8060522
	.byte 6
	.byte 8
	.byte 1
	# data @ 0x8060525
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806052c
	.byte 143
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060530
	.long label_2648
	# data @ 0x8060534
	.byte 1
	# data @ 0x8060535
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806053c
	.byte 144
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060540
	.long label_2661
	# data @ 0x8060544
	.byte 2
	# data @ 0x8060545
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806054c
	.byte 130
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060550
	.long label_2714
	# data @ 0x8060554
	.byte 2
	# data @ 0x8060555
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806055c
	.byte 137
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060560
	.long label_2436
	# data @ 0x8060564
	.byte 1
	# data @ 0x8060565
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806056c
	.byte 129
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060570
	.long label_2437
	# data @ 0x8060574
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806057c
	.byte 90
	.byte 0
	.byte 0
	.byte 0
	.byte 209
	# data @ 0x8060581
	.byte 2
	.byte 6
	.byte 8
	# data @ 0x8060584
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806058c
	.byte 128
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060590
	.long label_2345
	# data @ 0x8060594
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806059c
	.byte 126
	.byte 255
	.byte 255
	.byte 255
	# data @ 0x80605a0
	.long label_2349
	# data @ 0x80605a4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80605ac
	.byte 125
	.byte 255
	.byte 255
	.byte 255
	# data @ 0x80605b0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80605c0
label_2408:
	.asciz "verbose"
	# data @ 0x80605c8
label_2409:
	.asciz "long"
	# data @ 0x80605cd
label_2410:
	.asciz "commas"
	# data @ 0x80605d4
label_2411:
	.asciz "horizontal"
	# data @ 0x80605df
label_2412:
	.asciz "across"
	# data @ 0x80605e6
label_2413:
	.asciz "vertical"
	# data @ 0x80605ef
label_2414:
	.asciz "single-column"
	# data @ 0x80605fd
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060600
	.globl format_args
	.type format_args, @object
format_args:
	.long label_2408
	.long label_2409
	.long label_2410
	.long label_2411
	.long label_2412
	.long label_2413
	.long label_2414
	# data @ 0x806061c
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060620
	.globl format_types
	.type format_types, @object
format_types:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060628
	.byte 4
	.byte 0
	.byte 0
	.byte 0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806063c
label_2495:
	.asciz "extension"
	# data @ 0x8060646
	.byte 0
	.byte 0
	# data @ 0x8060648
	.globl sort_args
	.type sort_args, @object
sort_args:
	.long label_2492
	.long label_2493
	.long label_2494
	.long label_2495
	.long label_2349
	# data @ 0x806065c
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060660
	.globl sort_types
	.type sort_types, @object
sort_types:
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 4
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060674
label_2508:
	.asciz "atime"
	# data @ 0x806067a
label_2509:
	.asciz "access"
	# data @ 0x8060681
label_2510:
	.asciz "use"
	# data @ 0x8060685
label_2511:
	.asciz "ctime"
	# data @ 0x806068b
label_2512:
	.asciz "status"
	# data @ 0x8060692
	.byte 0
	.byte 0
	# data @ 0x8060694
	.globl time_args
	.type time_args, @object
time_args:
	.long label_2508
	.long label_2509
	.long label_2510
	.long label_2511
	.long label_2512
	# data @ 0x80606a8
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80606ac
	.globl time_types
	.type time_types, @object
time_types:
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80606c0
label_2515:
	.asciz "always"
	# data @ 0x80606c7
label_2516:
	.asciz "yes"
	# data @ 0x80606cb
label_2517:
	.asciz "force"
	# data @ 0x80606d1
label_2518:
	.asciz "never"
	# data @ 0x80606d7
label_2520:
	.asciz "auto"
	# data @ 0x80606dc
label_2521:
	.asciz "tty"
	# data @ 0x80606e0
label_2522:
	.ascii "if-tty"
	# data @ 0x80606e6
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060700
	.globl when_args
	.type when_args, @object
when_args:
	.long label_2515
	.long label_2516
	.long label_2517
	.long label_2518
	.long label_2519
	.long label_2492
	.long label_2520
	.long label_2521
	.long label_2522
	# data @ 0x8060724
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060740
	.globl when_types
	.type when_types, @object
when_types:
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	# data @ 0x8060749
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060758
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060764
label_43:
	.asciz "src/ls.c"
	# data @ 0x806076d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060770
label_44:
	.asciz "dev_ino_size <= obstack_object_size (&dev_ino_obstack)"
	# data @ 0x80607a7
label_46:
	.asciz " %lu"
	# data @ 0x80607ac
label_79:
	.asciz "%s"
	# data @ 0x80607af
label_84:
	.asciz "%.*s%s%s"
	# data @ 0x80607b8
label_92:
	.asciz "00"
	# data @ 0x80607bb
label_143:
	.asciz "/usr/local/share/locale"
	# data @ 0x80607d3
label_159:
	.asciz "TZ"
	# data @ 0x80607d6
label_137:
	.asciz "."
	# data @ 0x80607d8
label_152:
	.asciz "found"
	# data @ 0x80607de
label_153:
	.asciz "//DIRED//"
	# data @ 0x80607e8
label_161:
	.asciz "//SUBDIRED//"
	# data @ 0x80607f5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80607f8
label_163:
	.asciz "//DIRED-OPTIONS// --quoting-style=%s\n"
	# data @ 0x806081e
	.byte 0
	.byte 0
	# data @ 0x8060820
label_142:
	.asciz "hash_get_n_entries (active_dir_set) == 0"
	# data @ 0x8060849
label_238:
	.asciz "COLUMNS"
	# data @ 0x8060851
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8060854
label_226:
	.asciz "ignoring invalid width in environment variable COLUMNS: %s"
	# data @ 0x806088f
label_243:
	.asciz "TABSIZE"
	# data @ 0x8060897
	.byte 0
	# data @ 0x8060898
label_188:
	.asciz "ignoring invalid tab size in environment variable TABSIZE: %s"
	# data @ 0x80608d6
	.byte 0
	.byte 0
	# data @ 0x80608d8
label_195:
	.asciz "abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
	# data @ 0x8060904
label_267:
	.asciz "invalid line width"
	# data @ 0x8060917
label_269:
	.asciz "%s: %s"
	# data @ 0x806091e
label_271:
	.asciz "*~"
	# data @ 0x8060921
label_270:
	.asciz ".*~"
	# data @ 0x8060925
label_272:
	.asciz "invalid tab size"
	# data @ 0x8060936
label_273:
	.asciz "--sort"
	# data @ 0x806093d
label_274:
	.asciz "--time"
	# data @ 0x8060944
label_275:
	.asciz "--format"
	# data @ 0x806094d
label_277:
	.asciz "--color"
	# data @ 0x8060955
label_280:
	.asciz "--hyperlink"
	# data @ 0x8060961
label_281:
	.asciz "--indicator-style"
	# data @ 0x8060973
label_282:
	.asciz "--quoting-style"
	# data @ 0x8060983
label_175:
	.asciz "dir"
	# data @ 0x8060987
label_179:
	.asciz "vdir"
	# data @ 0x806098c
label_194:
	.asciz "ls"
	# data @ 0x806098f
label_284:
	.asciz "David MacKenzie"
	# data @ 0x806099f
label_285:
	.asciz "Richard M. Stallman"
	# data @ 0x80609b3
label_187:
	.asciz "LS_BLOCK_SIZE"
	# data @ 0x80609c1
label_209:
	.asciz "BLOCK_SIZE"
	# data @ 0x80609cc
label_253:
	.asciz "*=>@|"
	# data @ 0x80609d2
label_210:
	.asciz "TIME_STYLE"
	# data @ 0x80609dd
label_241:
	.asciz "invalid time style format %s"
	# data @ 0x80609fa
label_255:
	.asciz "time style"
	# data @ 0x8060a05
label_259:
	.asciz "Valid arguments are:\n"
	# data @ 0x8060a1b
label_177:
	.asciz "  - [posix-]%s\n"
	# data @ 0x8060a2b
	.byte 0
	# data @ 0x8060a2c
label_186:
	.asciz "  - +FORMAT (e.g., +%H:%M) for a 'date'-style format\n"
	# data @ 0x8060a62
label_231:
	.asciz "%Y-%m-%d %H:%M:%S.%N %z"
	# data @ 0x8060a7a
label_211:
	.asciz "%Y-%m-%d %H:%M"
	# data @ 0x8060a89
label_219:
	.asciz "%Y-%m-%d "
	# data @ 0x8060a93
label_220:
	.asciz "%m-%d %H:%M"
	# data @ 0x8060a9f
	.byte 0
	# data @ 0x8060aa0
label_222:
	.long .label_2568
	.long sub_804bbdc
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_2569
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_2570
	.long sub_804b6ff
	.long .label_2571
	.long .label_2572
	.long .label_217
	.long .label_2573
	.long .label_2574
	.long .label_2575
	.long .label_2576
	.long .label_217
	.long .label_217
	.long .label_2577
	.long .label_217
	.long sub_804b79d
	.long .label_217
	.long .label_217
	.long sub_804b7b1
	.long .label_2578
	.long .label_2579
	.long sub_804b7e4
	.long .label_2580
	.long .label_217
	.long .label_217
	.long .label_2581
	.long .label_217
	.long .label_2582
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_2583
	.long sub_804b4d1
	.long .label_2584
	.long .label_2585
	.long .label_217
	.long .label_2586
	.long .label_2587
	.long .label_2588
	.long .label_2589
	.long .label_217
	.long .label_2590
	.long .label_2591
	.long .label_2592
	.long .label_2593
	.long .label_2594
	.long .label_2595
	.long .label_2596
	.long .label_2597
	.long .label_2598
	.long .label_2599
	.long .label_2600
	.long .label_2601
	.long .label_2602
	.long .label_2603
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_217
	.long .label_2604
	.long .label_2605
	.long .label_2606
	.long .label_2607
	.long .label_2608
	.long .label_2609
	.long .label_2610
	.long .label_2611
	.long sub_804b871
	.long .label_2612
	.long .label_2613
	.long .label_2614
	.long .label_2615
	.long .label_2616
	.long .label_2617
	.long .label_2618
	.long .label_2619
	# data @ 0x8060ef0
label_304:
	.long .label_2681
	.long .label_2682
	.long .label_2683
	.long .label_2684
	.long .label_2685
label_286:
	.long .label_2686
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_2687
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2688
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2689
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2690
	.long .label_306
	.long .label_2691
	.long .label_2692
	.long .label_306
	.long .label_306
	.long .label_2693
	.long .label_2694
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2695
	.long .label_306
	.long .label_306
	.long .label_306
	.long .label_2696
	.long .label_306
	.long .label_2697
	.long .label_306
	.long .label_2698
	.long .label_306
	.long .label_2689
label_288:
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_2699
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_2700
	.long .label_2700
	.long .label_2700
	.long .label_2700
	.long .label_2700
	.long .label_2700
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_308
	.long .label_2701
	.long .label_2701
	.long .label_2701
	.long .label_2701
	.long .label_2701
	.long .label_2701
	# data @ 0x80611c4
label_317:
	.asciz "TERM"
	# data @ 0x80611c9
label_313:
	.asciz "TERM "
	# data @ 0x80611cf
label_343:
	.asciz "LS_COLORS"
	# data @ 0x80611d9
label_344:
	.asciz "COLORTERM"
	# data @ 0x80611e3
label_338:
	.asciz "unrecognized prefix: %s"
	# data @ 0x80611fb
	.byte 0
	# data @ 0x80611fc
label_354:
	.asciz "unparsable value for LS_COLORS environment variable"
	# data @ 0x8061230
label_322:
	.asciz "target"
	# data @ 0x8061237
	.byte 0
	# data @ 0x8061238
label_345:
	.long .label_336
	.long .label_2360
	.long .label_2361
	.long .label_2362
	.long .label_2363
	.long .label_336
	.long .label_2364
	# data @ 0x8061254
label_356:
	.asciz "QUOTING_STYLE"
	# data @ 0x8061262
	.byte 0
	.byte 0
	# data @ 0x8061264
label_358:
	.asciz "ignoring invalid value of environment variable QUOTING_STYLE: %s"
	# data @ 0x80612a5
label_395:
	.asciz "cannot open directory %s"
	# data @ 0x80612be
	.byte 0
	.byte 0
	# data @ 0x80612c0
label_398:
	.asciz "cannot determine device and inode of %s"
	# data @ 0x80612e8
label_378:
	.asciz "%s: not listing already-listed directory"
	# data @ 0x8061311
label_373:
	.asciz "  "
	# data @ 0x8061314
label_383:
	.asciz "error canonicalizing %s"
	# data @ 0x806132c
label_384:
	.asciz ":\n"
	# data @ 0x806132f
label_381:
	.asciz "reading directory %s"
	# data @ 0x8061344
label_389:
	.asciz "closing directory %s"
	# data @ 0x8061359
label_401:
	.asciz "total"
	# data @ 0x806135f
	.byte 0
	# data @ 0x8061360
label_385:
	.long .label_380
	.long .label_2496
	.long .label_2497
	.long .label_380
	.long .label_2498
	.long .label_380
	.long .label_2499
	.long .label_380
	.long .label_2500
	.long .label_380
	.long .label_2501
	.long .label_380
	.long .label_2502
	.long .label_380
	.long .label_2503
	# data @ 0x806139c
label_498:
	.asciz "! command_line_arg || inode == NOT_AN_INODE_NUMBER"
	# data @ 0x80613cf
label_450:
	.asciz "cannot access %s"
	# data @ 0x80613e0
label_493:
	.asciz "_"
	# data @ 0x80613e2
label_497:
	.asciz "unlabeled"
	# data @ 0x80613ec
label_506:
	.asciz "cannot read symbolic link %s"
	# data @ 0x8061409
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806140c
label_523:
	.asciz "cannot compare file names %s and %s"
	# data @ 0x8061430
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8061440
	.globl sort_functions
	.type sort_functions, @object
sort_functions:
	.long xstrcoll_name
	.long xstrcoll_df_name
	.long rev_xstrcoll_name
	.long rev_xstrcoll_df_name
	.long strcmp_name
	.long strcmp_df_name
	.long rev_strcmp_name
	.long rev_strcmp_df_name
	.long xstrcoll_extension
	.long xstrcoll_df_extension
	.long rev_xstrcoll_extension
	.long rev_xstrcoll_df_extension
	.long strcmp_extension
	.long strcmp_df_extension
	.long rev_strcmp_extension
	.long rev_strcmp_df_extension
	.long xstrcoll_size
	.long xstrcoll_df_size
	.long rev_xstrcoll_size
	.long rev_xstrcoll_df_size
	.long strcmp_size
	.long strcmp_df_size
	.long rev_strcmp_size
	.long rev_strcmp_df_size
	.long xstrcoll_version
	.long xstrcoll_df_version
	.long rev_xstrcoll_version
	.long rev_xstrcoll_df_version
	# data @ 0x80614b0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80614c0
	.long xstrcoll_mtime
	.long xstrcoll_df_mtime
	.long rev_xstrcoll_mtime
	.long rev_xstrcoll_df_mtime
	.long strcmp_mtime
	.long strcmp_df_mtime
	.long rev_strcmp_mtime
	.long rev_strcmp_df_mtime
	.long xstrcoll_ctime
	.long xstrcoll_df_ctime
	.long rev_xstrcoll_ctime
	.long rev_xstrcoll_df_ctime
	.long strcmp_ctime
	.long strcmp_df_ctime
	.long rev_strcmp_ctime
	.long rev_strcmp_df_ctime
	.long xstrcoll_atime
	.long xstrcoll_df_atime
	.long rev_xstrcoll_atime
	.long rev_xstrcoll_df_atime
	.long strcmp_atime
	.long strcmp_df_atime
	.long rev_strcmp_atime
	.long rev_strcmp_df_atime
	# data @ 0x8061520
label_631:
	.asciz "sort_type != sort_version"
	# data @ 0x806153a
	.byte 0
	.byte 0
	# data @ 0x806153c
label_640:
	.long .label_2709
	.long .label_2710
	.long .label_2711
	.long .label_2712
	.long sub_804f985
	# data @ 0x8061550
label_649:
	.asciz "%*lu "
	# data @ 0x8061556
label_652:
	.asciz "?"
	# data @ 0x8061558
label_659:
	.asciz "%lu"
	# data @ 0x806155c
label_667:
	.asciz "INT_BUFSIZE_BOUND (uintmax_t) <= buflen"
	# data @ 0x8061584
label_672:
	.asciz "%*s "
	# data @ 0x8061589
label_714:
	.asciz "%s %*s "
	# data @ 0x8061591
label_680:
	.asciz "%*s, %*s "
	# data @ 0x806159b
label_711:
	.asciz " -> "
	# data @ 0x80615a0
label_768:
	.asciz "%%%02x"
	# data @ 0x80615a7
label_769:
	.asciz "/"
	# data @ 0x80615a9
label_771:
	.byte 27
	.byte 93
	.byte 56
	.byte 59
	.byte 59
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 58
	.byte 47
	.byte 47
	.byte 37
	.byte 115
	.byte 37
	.byte 115
	.byte 37
	.byte 115
	.byte 7
	.byte 0
	# data @ 0x80615bd
label_783:
	.byte 27
	.byte 93
	.byte 56
	.byte 59
	.byte 59
	.byte 7
	.byte 0
	# data @ 0x80615c4
label_934:
	.asciz "Try '%s --help' for more information.\n"
	# data @ 0x80615eb
	.byte 0
	# data @ 0x80615ec
label_946:
	.asciz "Usage: %s [OPTION]... [FILE]...\n"
	# data @ 0x806160d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8061610
label_956:
	.asciz "List information about the FILEs (the current directory by default).\nSort entries alphabetically if none of -cftuvSUX nor --sort is specified.\n"
	# data @ 0x80616a0
label_933:
	.asciz "  -a, --all                  do not ignore entries starting with .\n  -A, --almost-all           do not list implied . and ..\n      --author               with -l, print the author of each file\n  -b, --escape               print C-style escapes for nongraphic characters\n"
	# data @ 0x80617af
	.byte 0
	# data @ 0x80617b0
label_955:
	.asciz "      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;\n                               e.g., '--block-size=M'; see SIZE format below\n"
	# data @ 0x806184c
label_950:
	.asciz "  -B, --ignore-backups       do not list implied entries ending with ~\n  -c                         with -lt: sort by, and show, ctime (time of last\n                               modification of file status information);\n                               with -l: show ctime and sort by name;\n                               otherwise: sort by ctime, newest first\n"
	# data @ 0x80619b6
	.byte 0
	.byte 0
	# data @ 0x80619b8
label_960:
	.asciz "  -C                         list entries by columns\n      --color[=WHEN]         colorize the output; WHEN can be 'always' (default\n                               if omitted), 'auto', or 'never'; more info below\n  -d, --directory            list directories themselves, not their contents\n  -D, --dired                generate output designed for Emacs' dired mode\n"
	# data @ 0x8061b27
	.byte 0
	# data @ 0x8061b28
label_935:
	.asciz "  -f                         do not sort, enable -aU, disable -ls --color\n  -F, --classify             append indicator (one of */=>@|) to entries\n      --file-type            likewise, except do not append '*'\n      --format=WORD          across -x, commas -m, horizontal -x, long -l,\n                               single-column -1, verbose -l, vertical -C\n      --full-time            like -l --time-style=full-iso\n"
	# data @ 0x8061ccb
	.byte 0
	# data @ 0x8061ccc
label_943:
	.asciz "  -g                         like -l, but do not list owner\n"
	# data @ 0x8061d09
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8061d0c
label_954:
	.asciz "      --group-directories-first\n                             group directories before files;\n                               can be augmented with a --sort option, but any\n                               use of --sort=none (-U) disables grouping\n"
	# data @ 0x8061e01
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8061e04
label_964:
	.asciz "  -G, --no-group             in a long listing, don't print group names\n"
	# data @ 0x8061e4d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8061e50
label_938:
	.asciz "  -h, --human-readable       with -l and -s, print sizes like 1K 234M 2G etc.\n      --si                   likewise, but use powers of 1000 not 1024\n"
	# data @ 0x8061ee6
	.byte 0
	.byte 0
	# data @ 0x8061ee8
label_947:
	.asciz "  -H, --dereference-command-line\n                             follow symbolic links listed on the command line\n      --dereference-command-line-symlink-to-dir\n                             follow each command line symbolic link\n                               that points to a directory\n      --hide=PATTERN         do not list implied entries matching shell PATTERN\n                               (overridden by -a or -A)\n"
	# data @ 0x806208e
	.byte 0
	.byte 0
	# data @ 0x8062090
label_957:
	.asciz "      --hyperlink[=WHEN]     hyperlink file names; WHEN can be 'always'\n                               (default if omitted), 'auto', or 'never'\n"
	# data @ 0x8062121
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8062124
label_931:
	.asciz "      --indicator-style=WORD  append indicator with style WORD to entry names:\n                               none (default), slash (-p),\n                               file-type (--file-type), classify (-F)\n  -i, --inode                print the index number of each file\n  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN\n"
	# data @ 0x8062286
	.byte 0
	.byte 0
	# data @ 0x8062288
label_942:
	.asciz "  -k, --kibibytes            default to 1024-byte blocks for disk usage;\n                               used only with -s and per directory totals\n"
	# data @ 0x806231c
label_951:
	.asciz "  -l                         use a long listing format\n  -L, --dereference          when showing file information for a symbolic\n                               link, show information for the file the link\n                               references rather than for the link itself\n  -m                         fill width with a comma separated list of entries\n"
	# data @ 0x8062483
	.byte 0
	# data @ 0x8062484
label_961:
	.asciz "  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs\n  -N, --literal              print entry names without quoting\n  -o                         like -l, but do not list group information\n  -p, --indicator-style=slash\n                             append / indicator to directories\n"
	# data @ 0x80625b3
	.byte 0
	# data @ 0x80625b4
label_936:
	.asciz "  -q, --hide-control-chars   print ? instead of nongraphic characters\n      --show-control-chars   show nongraphic characters as-is (the default,\n                               unless program is 'ls' and output is a terminal)\n  -Q, --quote-name           enclose entry names in double quotes\n      --quoting-style=WORD   use quoting style WORD for entry names:\n                               literal, locale, shell, shell-always,\n                               shell-escape, shell-escape-always, c, escape\n                               (overrides QUOTING_STYLE environment variable)\n"
	# data @ 0x80627fd
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8062800
label_944:
	.asciz "  -r, --reverse              reverse order while sorting\n  -R, --recursive            list subdirectories recursively\n  -s, --size                 print the allocated size of each file, in blocks\n"
	# data @ 0x80628c5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80628c8
label_963:
	.asciz "  -S                         sort by file size, largest first\n      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),\n                               time (-t), version (-v), extension (-X)\n      --time=WORD            with -l, show time as WORD instead of default\n                               modification time: atime or access or use (-u);\n                               ctime or status (-c); also use specified time\n                               as sort key if --sort=time (newest first)\n"
	# data @ 0x8062acf
	.byte 0
	# data @ 0x8062ad0
label_965:
	.asciz "      --time-style=TIME_STYLE  time/date format with -l; see TIME_STYLE below\n"
	# data @ 0x8062b1f
	.byte 0
	# data @ 0x8062b20
label_939:
	.asciz "  -t                         sort by modification time, newest first\n  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8\n"
	# data @ 0x8062bae
	.byte 0
	.byte 0
	# data @ 0x8062bb0
label_948:
	.asciz "  -u                         with -lt: sort by, and show, access time;\n                               with -l: show access time and sort by name;\n                               otherwise: sort by access time, newest first\n  -U                         do not sort; list entries in directory order\n  -v                         natural sort of (version) numbers within text\n"
	# data @ 0x8062d24
label_958:
	.asciz "  -w, --width=COLS           set output width to COLS.  0 means no limit\n  -x                         list entries by lines instead of by columns\n  -X                         sort alphabetically by entry extension\n  -Z, --context              print any security context of each file\n  -1                         list one file per line.  Avoid '\\n' with -q or -b\n"
	# data @ 0x8062e8f
	.byte 0
	# data @ 0x8062e90
label_932:
	.asciz "      --help     display this help and exit\n"
	# data @ 0x8062ebd
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8062ec0
label_940:
	.asciz "      --version  output version information and exit\n"
	# data @ 0x8062ef6
	.byte 0
	.byte 0
	# data @ 0x8062ef8
label_953:
	.asciz "\nThe TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.\nFORMAT is interpreted like in date(1).  If FORMAT is FORMAT1<newline>FORMAT2,\nthen FORMAT1 applies to non-recent files and FORMAT2 to recent files.\nTIME_STYLE prefixed with 'posix-' takes effect only outside the POSIX locale.\nAlso the TIME_STYLE environment variable sets the default style to use.\n"
	# data @ 0x8063070
label_962:
	.asciz "\nUsing color to distinguish file types is disabled both by default and\nwith --color=never.  With --color=auto, ls emits color codes only when\nstandard output is connected to a terminal.  The LS_COLORS environment\nvariable can change the settings.  Use the dircolors command to set it.\n"
	# data @ 0x806318e
	.byte 0
	.byte 0
	# data @ 0x8063190
label_937:
	.asciz "\nExit status:\n 0  if OK,\n 1  if minor problems (e.g., cannot access subdirectory),\n 2  if serious trouble (e.g., cannot access command-line argument).\n"
	# data @ 0x8063228
	.globl __PRETTY_FUNCTION__.8064
	.type __PRETTY_FUNCTION__.8064, @object
__PRETTY_FUNCTION__.8064:
	.asciz "dev_ino_pop"
	# data @ 0x8063234
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063240
	.globl sig.8191
	.type sig.8191, @object
sig.8191:
	.byte 20
	.byte 0
	.byte 0
	.byte 0
	.byte 14
	.byte 0
	.byte 0
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	.byte 13
	.byte 0
	.byte 0
	.byte 0
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	.byte 15
	.byte 0
	.byte 0
	.byte 0
	.byte 29
	.byte 0
	.byte 0
	.byte 0
	.byte 27
	.byte 0
	.byte 0
	.byte 0
	.byte 26
	.byte 0
	.byte 0
	.byte 0
	.byte 24
	.byte 0
	.byte 0
	.byte 0
	.byte 25
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063270
	.globl __PRETTY_FUNCTION__.8218
	.type __PRETTY_FUNCTION__.8218, @object
__PRETTY_FUNCTION__.8218:
	.asciz "main"
	# data @ 0x8063275
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063278
	.globl posix_prefix.8331
	.type posix_prefix.8331, @object
posix_prefix.8331:
	.asciz "posix-"
	# data @ 0x806327f
	.byte 0
	# data @ 0x8063280
	.globl __PRETTY_FUNCTION__.8596
	.type __PRETTY_FUNCTION__.8596, @object
__PRETTY_FUNCTION__.8596:
	.asciz "gobble_file"
	# data @ 0x806328c
	.globl __PRETTY_FUNCTION__.8996
	.type __PRETTY_FUNCTION__.8996, @object
__PRETTY_FUNCTION__.8996:
	.asciz "sort_files"
	# data @ 0x8063297
	.byte 0
	# data @ 0x8063298
	.globl __PRETTY_FUNCTION__.9067
	.type __PRETTY_FUNCTION__.9067, @object
__PRETTY_FUNCTION__.9067:
	.asciz "format_inode"
	# data @ 0x80632a5
label_2342:
	.asciz "8.30"
	# data @ 0x80632aa
label_986:
	.asciz "invalid argument %s for %s"
	# data @ 0x80632c5
label_987:
	.asciz "ambiguous argument %s for %s"
	# data @ 0x80632e2
label_992:
	.asciz "Valid arguments are:"
	# data @ 0x80632f7
label_996:
	.asciz "\n  - %s"
	# data @ 0x80632ff
label_989:
	.asciz ", %s"
	# data @ 0x8063304
label_1035:
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_1037
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	.long .label_2651
	# data @ 0x80633e0
label_1077:
	.asciz "/"
	# data @ 0x80633e2
label_1103:
	.asciz "write error"
	# data @ 0x80633ee
label_1107:
	.asciz "%s: %s"
	# data @ 0x80633f5
label_1104:
	.asciz "%s"
	# data @ 0x80633f8
label_1211:
	.asciz "."
	# data @ 0x80633fa
label_1207:
	.asciz ".."
	# data @ 0x80633fd
label_1230:
	.asciz "C"
	# data @ 0x80633ff
label_1227:
	.asciz "POSIX"
	# data @ 0x8063405
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063408
	.globl default_tuning
	.type default_tuning, @object
default_tuning:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806340e
	.byte 128
	.byte 63
	.byte 205
	.byte 204
	.byte 76
	.byte 63
	.byte 244
	.byte 253
	.byte 180
	.byte 63
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806341c
label_1247:
	.asciz "# entries:         %lu\n"
	# data @ 0x8063434
label_1244:
	.asciz "# buckets:         %lu\n"
	# data @ 0x806344c
label_1246:
	.asciz "# buckets used:    %lu (%.2f%%)\n"
	# data @ 0x806346d
label_1243:
	.asciz "max bucket length: %lu\n"
	# data @ 0x8063485
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063488
label_1245:
	.quad 0x4059000000000000
	# data @ 0x8063490
label_1288:
	.long 0x3f4ccccd
	# data @ 0x8063494
label_1289:
	.long 0x3fb4fdf4
	# data @ 0x8063498
label_1293:
	.long 0x3dcccccd
	# data @ 0x806349c
label_1300:
	.long 0x4f800000
	# data @ 0x80634a0
	.globl power_letter
	.type power_letter, @object
power_letter:
	.byte 0
	.byte 75
	.byte 77
	.byte 71
	.byte 84
	.byte 80
	.byte 69
	.byte 90
	.byte 89
	# data @ 0x80634a9
label_1447:
	.asciz "."
	# data @ 0x80634ab
label_1448:
	.byte 0
	# data @ 0x80634ac
label_1419:
	.asciz "%.0Lf"
	# data @ 0x80634b2
label_1469:
	.asciz "%.1Lf"
	# data @ 0x80634b8
label_2653:
	.asciz "human-readable"
	# data @ 0x80634c7
label_2654:
	.asciz "si"
	# data @ 0x80634ca
	.byte 0
	.byte 0
	# data @ 0x80634cc
	.globl block_size_args
	.type block_size_args, @object
block_size_args:
	.long label_2653
	.long label_2654
	# data @ 0x80634d4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80634d8
	.globl block_size_opts
	.type block_size_opts, @object
block_size_opts:
	.byte 176
	.byte 0
	.byte 0
	.byte 0
	.byte 144
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80634e0
label_1472:
	.asciz "POSIXLY_CORRECT"
	# data @ 0x80634f0
label_1481:
	.asciz "BLOCK_SIZE"
	# data @ 0x80634fb
label_1488:
	.asciz "BLOCKSIZE"
	# data @ 0x8063505
label_1487:
	.asciz "eEgGkKmMpPtTyYzZ0"
	# data @ 0x8063517
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063520
label_1399:
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	.byte 62
	.byte 64
	# data @ 0x806352a
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063530
label_1394:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 128
	.byte 62
	.byte 64
	# data @ 0x806353a
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063540
label_1396:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 128
	.byte 63
	.byte 64
	# data @ 0x806354a
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063550
label_1441:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 160
	.byte 2
	.byte 64
	# data @ 0x806355a
	.byte 0
	.byte 0
	# data @ 0x806355c
label_1494:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063560
label_1646:
	.byte 0
	# data @ 0x8063561
label_1708:
	.asciz "%m/%d/%y"
	# data @ 0x806356a
label_1649:
	.asciz "%Y-%m-%d"
	# data @ 0x8063573
label_1716:
	.asciz "%H:%M"
	# data @ 0x8063579
label_1775:
	.asciz "%H:%M:%S"
	# data @ 0x8063582
	.byte 0
	.byte 0
	# data @ 0x8063584
label_1763:
	.long .label_2439
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_2440
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_2441
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_2442
	.long .label_2443
	.long .label_2444
	.long .label_2445
	.long .label_1645
	.long .label_2446
	.long .label_2447
	.long .label_2448
	.long .label_2449
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_2450
	.long .label_2451
	.long .label_1645
	.long .label_2452
	.long .label_1645
	.long .label_2453
	.long .label_2454
	.long .label_2455
	.long .label_2456
	.long .label_2447
	.long .label_2457
	.long .label_2458
	.long .label_2459
	.long .label_2460
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_1645
	.long .label_2461
	.long .label_2462
	.long .label_2463
	.long .label_2464
	.long .label_2465
	.long .label_1645
	.long .label_2447
	.long .label_2462
	.long .label_1645
	.long .label_2466
	.long .label_2467
	.long .label_2468
	.long .label_2469
	.long .label_2470
	.long .label_1645
	.long .label_2471
	.long .label_2472
	.long .label_2473
	.long .label_2474
	.long .label_2475
	.long .label_2476
	.long .label_1645
	.long .label_2477
	.long .label_2478
	.long .label_2479
	.long .label_2480
	# data @ 0x8063770
label_1803:
	.asciz "A NULL argv[0] was passed through an exec system call.\n"
	# data @ 0x80637a8
label_1808:
	.asciz "/.libs/"
	# data @ 0x80637b0
label_1807:
	.asciz "lt-"
	# data @ 0x80637b4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80637c0
label_2481:
	.asciz "literal"
	# data @ 0x80637c8
label_2482:
	.asciz "shell"
	# data @ 0x80637ce
label_2483:
	.asciz "shell-always"
	# data @ 0x80637db
label_2484:
	.asciz "shell-escape"
	# data @ 0x80637e8
label_2485:
	.asciz "shell-escape-always"
	# data @ 0x80637fc
label_2486:
	.asciz "c"
	# data @ 0x80637fe
label_2487:
	.asciz "c-maybe"
	# data @ 0x8063806
label_2488:
	.asciz "escape"
	# data @ 0x806380d
label_2489:
	.asciz "locale"
	# data @ 0x8063814
label_2490:
	.asciz "clocale"
	# data @ 0x806381c
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063820
	.globl quoting_style_args
	.type quoting_style_args, @object
quoting_style_args:
	.long label_2481
	.long label_2482
	.long label_2483
	.long label_2484
	.long label_2485
	.long label_2486
	.long label_2487
	.long label_2488
	.long label_2489
	.long label_2490
	# data @ 0x8063848
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063860
	.globl quoting_style_vals
	.type quoting_style_vals, @object
quoting_style_vals:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
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
	# data @ 0x8063888
label_1824:
	.asciz "UTF-8"
	# data @ 0x806388e
label_1828:
	.byte 226
	.byte 128
	.byte 152
	.byte 0
	# data @ 0x8063892
label_1832:
	.byte 226
	.byte 128
	.byte 153
	.byte 0
	# data @ 0x8063896
label_1835:
	.asciz "GB18030"
	# data @ 0x806389e
label_1826:
	.byte 161
	.byte 7
	.byte 101
	.byte 0
	# data @ 0x80638a2
label_1833:
	.byte 161
	.byte 175
	.byte 0
	# data @ 0x80638a5
label_1829:
	.byte 34
	.byte 0
	# data @ 0x80638a7
label_1834:
	.byte 39
	.byte 0
	# data @ 0x80638a9
label_1967:
	.asciz "`"
	# data @ 0x80638ab
	.byte 0
	# data @ 0x80638ac
label_1883:
	.long .label_2528
	.long .label_2529
	.long .label_1944
	.long .label_2530
	.long .label_2531
	.long .label_2532
	.long .label_2533
	.long .label_2534
	.long .label_2535
	.long .label_2535
	.long .label_2535
label_1873:
	.long .label_2536
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_2537
	.long .label_2538
	.long .label_2539
	.long .label_2540
	.long .label_2541
	.long .label_2542
	.long .label_2543
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_1868
	.long .label_2544
	.long .label_2545
	.long .label_2545
	.long .label_2546
	.long .label_2545
	.long .label_2547
	.long .label_2545
	.long .label_2548
	.long .label_2545
	.long .label_2545
	.long .label_2545
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2545
	.long .label_2545
	.long .label_2545
	.long .label_2545
	.long .label_2549
	.long .label_1868
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2545
	.long .label_2550
	.long .label_2547
	.long .label_2545
	.long .label_2547
	.long .label_2545
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2547
	.long .label_2551
	.long .label_2545
	.long .label_2551
	.long .label_2546
label_1840:
	.long .label_2552
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_2552
	.long .label_2552
	.long .label_2552
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_2552
	.long .label_1962
	.long .label_2552
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_1962
	.long .label_2552
	.long .label_2552
	.long .label_2552
label_1915:
	.long .label_2553
	.long .label_2553
	.long .label_1863
	.long .label_2553
	.long .label_1863
	.long .label_2553
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_1863
	.long .label_2553
	# data @ 0x8063bd4
label_2005:
	.asciz "%s"
	# data @ 0x8063bd7
	.byte 0
	# data @ 0x8063bd8
label_2022:
	.quad 0x41cdcd6500000000
	# data @ 0x8063be0
label_2030:
	.asciz "%s (%s) %s\n"
	# data @ 0x8063bec
label_2025:
	.asciz "%s %s\n"
	# data @ 0x8063bf3
label_2027:
	.asciz "(C)"
	# data @ 0x8063bf7
	.byte 0
	# data @ 0x8063bf8
label_2023:
	.asciz "\nLicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\nThis is free software: you are free to change and redistribute it.\nThere is NO WARRANTY, to the extent permitted by law.\n\n"
	# data @ 0x8063cc4
label_2032:
	.asciz "Written by %s.\n"
	# data @ 0x8063cd4
label_2034:
	.asciz "Written by %s and %s.\n"
	# data @ 0x8063ceb
label_2035:
	.asciz "Written by %s, %s, and %s.\n"
	# data @ 0x8063d07
	.byte 0
	# data @ 0x8063d08
label_2036:
	.asciz "Written by %s, %s, %s,\nand %s.\n"
	# data @ 0x8063d28
label_2037:
	.asciz "Written by %s, %s, %s,\n%s, and %s.\n"
	# data @ 0x8063d4c
label_2038:
	.asciz "Written by %s, %s, %s,\n%s, %s, and %s.\n"
	# data @ 0x8063d74
label_2039:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, and %s.\n"
	# data @ 0x8063da0
label_2040:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\nand %s.\n"
	# data @ 0x8063dd0
label_2041:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, and %s.\n"
	# data @ 0x8063e04
label_2029:
	.asciz "Written by %s, %s, %s,\n%s, %s, %s, %s,\n%s, %s, and others.\n"
	# data @ 0x8063e40
label_2031:
	.long .label_2668
	.long .label_2669
	.long .label_2670
	.long .label_2671
	.long .label_2672
	.long .label_2673
	.long .label_2674
	.long .label_2675
	.long .label_2676
	.long .label_2677
	# data @ 0x8063e68
label_2052:
	.asciz "\nReport bugs to: %s\n"
	# data @ 0x8063e7d
label_2053:
	.asciz "bug-coreutils@gnu.org"
	# data @ 0x8063e93
label_2054:
	.asciz "%s home page: <%s>\n"
	# data @ 0x8063ea7
	.byte 0
	# data @ 0x8063ea8
label_2050:
	.asciz "https://www.gnu.org/software/coreutils/"
	# data @ 0x8063ed0
label_2051:
	.asciz "GNU coreutils"
	# data @ 0x8063ede
	.byte 0
	.byte 0
	# data @ 0x8063ee0
label_2049:
	.asciz "General help using GNU software: <https://www.gnu.org/gethelp/>\n"
	# data @ 0x8063f21
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8063f40
	.globl version_etc_copyright
	.type version_etc_copyright, @object
version_etc_copyright:
	.asciz "Copyright %s %d Free Software Foundation, Inc."
	# data @ 0x8063f6f
label_2080:
	.asciz "memory exhausted"
	# data @ 0x8063f80
label_2079:
	.asciz "%s"
	# data @ 0x8063f83
label_2093:
	.asciz "%s: %s"
	# data @ 0x8063f8a
	.byte 0
	.byte 0
	# data @ 0x8063f8c
label_2119:
	.asciz "lib/xstrtol.c"
	# data @ 0x8063f9a
	.byte 0
	.byte 0
	# data @ 0x8063f9c
label_2120:
	.asciz "0 <= strtol_base && strtol_base <= 36"
	# data @ 0x8063fc2
	.byte 0
	.byte 0
	# data @ 0x8063fc4
label_2121:
	.long sub_805cc5d
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long sub_805cc5d
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long .label_2106
	.long sub_805cc5d
label_2117:
	.long sub_805ccef
	.long .label_2113
	.long .label_2113
	.long sub_805cd17
	.long .label_2113
	.long sub_805cd33
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cd4f
	.long .label_2113
	.long sub_805cd6b
	.long .label_2113
	.long .label_2113
	.long sub_805cd87
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cda0
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cdcf
	.long sub_805cde8
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805ccd3
	.long .label_2720
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cd33
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cd4f
	.long .label_2113
	.long sub_805cd6b
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long .label_2113
	.long sub_805cda0
	.long .label_2113
	.long .label_2113
	.long sub_805cdb9
	# data @ 0x806415c
	.globl __PRETTY_FUNCTION__.3254
	.type __PRETTY_FUNCTION__.3254, @object
__PRETTY_FUNCTION__.3254:
	.asciz "xstrtoul"
	# data @ 0x8064165
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x8064168
label_2140:
	.asciz "--"
	# data @ 0x806416b
label_2143:
	.asciz "invalid %s%s argument '%s'"
	# data @ 0x8064186
	.byte 0
	.byte 0
	# data @ 0x8064188
label_2133:
	.asciz "invalid suffix in %s%s argument '%s'"
	# data @ 0x80641ad
label_2137:
	.asciz "%s%s argument '%s' too large"
	# data @ 0x80641ca
	.byte 0
	.byte 0
	# data @ 0x80641cc
label_2161:
	.asciz "lib/xstrtol.c"
	# data @ 0x80641da
	.byte 0
	.byte 0
	# data @ 0x80641dc
label_2162:
	.asciz "0 <= strtol_base && strtol_base <= 36"
	# data @ 0x8064202
	.byte 0
	.byte 0
	# data @ 0x8064204
label_2169:
	.long sub_805d1e9
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long sub_805d1e9
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long .label_2163
	.long sub_805d1e9
label_2164:
	.long sub_805d27b
	.long .label_2158
	.long .label_2158
	.long sub_805d2a3
	.long .label_2158
	.long sub_805d2bf
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d2db
	.long .label_2158
	.long sub_805d2f7
	.long .label_2158
	.long .label_2158
	.long sub_805d313
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d32c
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d35b
	.long sub_805d374
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d25f
	.long .label_2567
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d2bf
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d2db
	.long .label_2158
	.long sub_805d2f7
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long .label_2158
	.long sub_805d32c
	.long .label_2158
	.long .label_2158
	.long sub_805d345
	# data @ 0x806439c
	.globl __PRETTY_FUNCTION__.3254_2
	.type __PRETTY_FUNCTION__.3254_2, @object
__PRETTY_FUNCTION__.3254_2:
	.asciz "xstrtoumax"
	# data @ 0x80643a7
label_2203:
	.asciz "memory exhausted"
	# data @ 0x80643b8
label_2204:
	.asciz "%s\n"
	# data @ 0x80643bc
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x80643c0
label_2221:
	.byte 0
	# data @ 0x80643c1
label_2227:
	.asciz "TZ"
	# data @ 0x80643c4
label_2272:
	.byte 0
	# data @ 0x80643c5
label_2273:
	.asciz "ASCII"
	# data @ 0x80643cb
	.label_2729:
	.section .data
	.align 32
	# data @ 0x806a1c0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a1e0
	.globl UNKNOWN_SECURITY_CONTEXT
	.type UNKNOWN_SECURITY_CONTEXT, @object
UNKNOWN_SECURITY_CONTEXT:
	.asciz "?"
	# data @ 0x806a1e2
	.globl print_owner
	.type print_owner, @object
print_owner:
	.byte 0x1
	# data @ 0x806a1e3
	.globl print_group
	.type print_group, @object
print_group:
	.byte 0x1
	# data @ 0x806a1e4
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a1e8
	.globl file_output_block_size
	.type file_output_block_size, @object
file_output_block_size:
	.byte 1
	# data @ 0x806a1e9
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a1ec
label_216:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a200
	.globl color_indicator
	.type color_indicator, @object
color_indicator:
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a204
label_96:
	.long label_135
	# data @ 0x806a208
label_97:
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a20c
label_144:
	.long label_2665
	# data @ 0x806a210
label_796:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a214
label_797:
	.long 0x0
	# data @ 0x806a218
label_795:
	.byte 1
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a21c
	.long label_93
	# data @ 0x806a220
label_98:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a230
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a234
	.long label_2523
	# data @ 0x806a238
label_323:
	.long 0x5
	# data @ 0x806a23c
label_321:
	.long label_2365
	# data @ 0x806a240
	.byte 2
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a244
	.long label_2659
	# data @ 0x806a248
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a24c
	.long label_2368
	# data @ 0x806a250
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a254
	.long label_2344
	# data @ 0x806a258
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a25c
	.long label_2344
	# data @ 0x806a260
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a270
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a274
	.long label_2680
	# data @ 0x806a278
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a27c
	.long label_2368
	# data @ 0x806a280
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a284
	.long label_2704
	# data @ 0x806a288
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a28c
	.long label_2347
	# data @ 0x806a290
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a294
	.long label_2713
	# data @ 0x806a298
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a29c
	.long label_2716
	# data @ 0x806a2a0
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2a4
	.long label_2722
	# data @ 0x806a2a8
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2ac
	.long label_2340
	# data @ 0x806a2b0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2b8
label_787:
	.byte 3
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2bc
	.long label_2341
	# data @ 0x806a2c0
	.globl long_time_format
	.type long_time_format, @object
long_time_format:
	.long label_2378
	# data @ 0x806a2c4
label_212:
	.long label_2343
	# data @ 0x806a2c8
	.globl first.8510
	.type first.8510, @object
first.8510:
	.byte 0x1
	# data @ 0x806a2c9
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2cc
	.globl width.9025
	.type width.9025, @object
width.9025:
	.byte 255
	.byte 255
	.byte 255
	.byte 255
	# data @ 0x806a2d0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2e0
	.globl filetype_indicator.9329
	.type filetype_indicator.9329, @object
filetype_indicator.9329:
	.byte 13
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a2e4
	.byte 8
	.byte 0
	.byte 0
	.byte 0
	.byte 11
	.byte 0
	.byte 0
	.byte 0
	.byte 6
	.byte 0
	.byte 0
	.byte 0
	.byte 10
	.byte 0
	.byte 0
	.byte 0
	.byte 5
	.byte 0
	.byte 0
	.byte 0
	.byte 7
	.byte 0
	.byte 0
	.byte 0
	.byte 9
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
	# data @ 0x806a308
	.globl ls_mode
	.type ls_mode, @object
ls_mode:
	.long 0x1
	# data @ 0x806a30c
	.globl Version
	.type Version, @object
Version:
	.long label_2342
	# data @ 0x806a310
	.globl argmatch_die
	.type argmatch_die, @object
argmatch_die:
	.long __argmatch_die
	# data @ 0x806a314
	.globl exit_failure
	.type exit_failure, @object
exit_failure:
	.byte 1
	# data @ 0x806a315
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a320
	.globl nslots
	.type nslots, @object
nslots:
	.long 0x1
	# data @ 0x806a324
	.globl slotvec0
	.type slotvec0, @object
slotvec0:
	.byte 0
	.byte 1
	.byte 0
	.byte 0
	# data @ 0x806a328
label_1979:
	.long slot0
	# data @ 0x806a32c
	.globl slotvec
	.type slotvec, @object
slotvec:
	.long slotvec0
	# data @ 0x806a330
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a340
	.globl quote_quoting_options
	.type quote_quoting_options, @object
quote_quoting_options:
	.byte 8
	# data @ 0x806a341
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a370
	.globl obstack_alloc_failed_handler
	.type obstack_alloc_failed_handler, @object
obstack_alloc_failed_handler:
	.long print_and_abort
	.section .bss
	.align 32
	# data @ 0x806a3a4
	.globl completed.7209
	.type completed.7209, @object
completed.7209:
	.byte 0x0
	# data @ 0x806a3a5
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3c0
	.globl active_dir_set
	.type active_dir_set, @object
active_dir_set:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3c4
	.globl cwd_file
	.type cwd_file, @object
cwd_file:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3c8
	.globl cwd_n_alloc
	.type cwd_n_alloc, @object
cwd_n_alloc:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3cc
	.globl cwd_n_used
	.type cwd_n_used, @object
cwd_n_used:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3d0
	.globl cwd_some_quoted
	.type cwd_some_quoted, @object
cwd_some_quoted:
	.byte 0
	# data @ 0x806a3d1
	.globl align_variable_outer_quotes
	.type align_variable_outer_quotes, @object
align_variable_outer_quotes:
	.byte 0x0
	# data @ 0x806a3d2
	.byte 0
	.byte 0
	# data @ 0x806a3d4
	.globl sorted_file
	.type sorted_file, @object
sorted_file:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3d8
	.globl sorted_file_alloc
	.type sorted_file_alloc, @object
sorted_file_alloc:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3dc
	.globl color_symlink_as_referent
	.type color_symlink_as_referent, @object
color_symlink_as_referent:
	.byte 0x0
	# data @ 0x806a3dd
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3e0
	.globl hostname
	.type hostname, @object
hostname:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3e4
	.globl pending_dirs
	.type pending_dirs, @object
pending_dirs:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3e8
	.globl current_time
	.type current_time, @object
current_time:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3ec
label_165:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3f0
	.globl print_scontext
	.type print_scontext, @object
print_scontext:
	.byte 0x0
	# data @ 0x806a3f1
	.globl any_has_acl
	.type any_has_acl, @object
any_has_acl:
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3f4
	.globl inode_number_width
	.type inode_number_width, @object
inode_number_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3f8
	.globl block_size_width
	.type block_size_width, @object
block_size_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a3fc
	.globl nlink_width
	.type nlink_width, @object
nlink_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a400
	.globl scontext_width
	.type scontext_width, @object
scontext_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a404
	.globl owner_width
	.type owner_width, @object
owner_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a408
	.globl group_width
	.type group_width, @object
group_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a40c
	.globl author_width
	.type author_width, @object
author_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a410
	.globl major_device_number_width
	.type major_device_number_width, @object
major_device_number_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a414
	.globl minor_device_number_width
	.type minor_device_number_width, @object
minor_device_number_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a418
	.globl file_size_width
	.type file_size_width, @object
file_size_width:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a41c
	.globl format
	.type format, @object
format:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a420
	.globl time_type
	.type time_type, @object
time_type:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a424
	.globl sort_type
	.type sort_type, @object
sort_type:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a428
	.globl sort_reverse
	.type sort_reverse, @object
sort_reverse:
	.byte 0
	# data @ 0x806a429
	.globl print_author
	.type print_author, @object
print_author:
	.byte 0x0
	# data @ 0x806a42a
	.globl numeric_ids
	.type numeric_ids, @object
numeric_ids:
	.byte 0x0
	# data @ 0x806a42b
	.globl print_block_size
	.type print_block_size, @object
print_block_size:
	.byte 0x0
	# data @ 0x806a42c
	.globl human_output_opts
	.type human_output_opts, @object
human_output_opts:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a430
	.globl output_block_size
	.type output_block_size, @object
output_block_size:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a434
label_215:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a438
	.globl file_human_output_opts
	.type file_human_output_opts, @object
file_human_output_opts:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a43c
	.globl dired
	.type dired, @object
dired:
	.byte 0x0
	# data @ 0x806a43d
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a440
	.globl indicator_style
	.type indicator_style, @object
indicator_style:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a444
	.globl print_with_color
	.type print_with_color, @object
print_with_color:
	.byte 0x0
	# data @ 0x806a445
	.globl print_hyperlink
	.type print_hyperlink, @object
print_hyperlink:
	.byte 0x0
	# data @ 0x806a446
	.globl used_color
	.type used_color, @object
used_color:
	.byte 0x0
	# data @ 0x806a447
	.byte 0
	# data @ 0x806a448
	.globl color_ext_list
	.type color_ext_list, @object
color_ext_list:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a44c
	.globl color_buf
	.type color_buf, @object
color_buf:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a450
	.globl check_symlink_color
	.type check_symlink_color, @object
check_symlink_color:
	.byte 0x0
	# data @ 0x806a451
	.globl print_inode
	.type print_inode, @object
print_inode:
	.byte 0x0
	# data @ 0x806a452
	.byte 0
	.byte 0
	# data @ 0x806a454
	.globl dereference
	.type dereference, @object
dereference:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a458
	.globl recursive
	.type recursive, @object
recursive:
	.byte 0
	# data @ 0x806a459
	.globl immediate_dirs
	.type immediate_dirs, @object
immediate_dirs:
	.byte 0
	# data @ 0x806a45a
	.globl directories_first
	.type directories_first, @object
directories_first:
	.byte 0x0
	# data @ 0x806a45b
	.byte 0
	# data @ 0x806a45c
	.globl ignore_mode
	.type ignore_mode, @object
ignore_mode:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a460
	.globl ignore_patterns
	.type ignore_patterns, @object
ignore_patterns:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a464
	.globl hide_patterns
	.type hide_patterns, @object
hide_patterns:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a468
	.globl qmark_funny_chars
	.type qmark_funny_chars, @object
qmark_funny_chars:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a46c
	.globl filename_quoting_options
	.type filename_quoting_options, @object
filename_quoting_options:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a470
	.globl dirname_quoting_options
	.type dirname_quoting_options, @object
dirname_quoting_options:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a474
	.globl tabsize
	.type tabsize, @object
tabsize:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a478
	.globl print_dir_name
	.type print_dir_name, @object
print_dir_name:
	.byte 0x0
	# data @ 0x806a479
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a47c
	.globl line_length
	.type line_length, @object
line_length:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a480
	.globl localtz
	.type localtz, @object
localtz:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a484
	.globl format_needs_stat
	.type format_needs_stat, @object
format_needs_stat:
	.byte 0x0
	# data @ 0x806a485
	.globl format_needs_type
	.type format_needs_type, @object
format_needs_type:
	.byte 0x0
	# data @ 0x806a486
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a4a0
	.globl caught_signals
	.type caught_signals, @object
caught_signals:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a520
	.globl interrupt_signal
	.type interrupt_signal, @object
interrupt_signal:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a524
	.globl stop_signal_count
	.type stop_signal_count, @object
stop_signal_count:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a528
	.globl exit_status
	.type exit_status, @object
exit_status:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a52c
	.globl column_info
	.type column_info, @object
column_info:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a530
	.globl max_idx
	.type max_idx, @object
max_idx:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a534
	.globl dired_pos
	.type dired_pos, @object
dired_pos:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a540
	.globl dired_obstack
	.type dired_obstack, @object
dired_obstack:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a580
	.globl subdired_obstack
	.type subdired_obstack, @object
subdired_obstack:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a5c0
	.globl dev_ino_obstack
	.type dev_ino_obstack, @object
dev_ino_obstack:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a5cc
label_42:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl RFC3986
	.type RFC3986, @object
RFC3986:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a6cc
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a700
	.globl abformat
	.type abformat, @object
abformat:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a800
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806a900
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806aa00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806ab00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806ac00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806ad00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806ae00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806af00
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b000
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b100
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b200
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b300
	.globl use_abformat
	.type use_abformat, @object
use_abformat:
	.byte 0x0
	# data @ 0x806b301
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b320
	.globl failed_strcoll
	.type failed_strcoll, @object
failed_strcoll:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3c0
	.globl unsupported_device.8568
	.type unsupported_device.8568, @object
unsupported_device.8568:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3c4
label_423:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3c8
	.globl unsupported_device.8574
	.type unsupported_device.8574, @object
unsupported_device.8574:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3cc
label_426:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3d0
	.globl unsupported_device.8580
	.type unsupported_device.8580, @object
unsupported_device.8580:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3d4
label_431:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3d8
	.globl column_info_alloc.9410
	.type column_info_alloc.9410, @object
column_info_alloc.9410:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3dc
	.globl file_name
	.type file_name, @object
file_name:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3e0
	.globl ignore_EPIPE
	.type ignore_EPIPE, @object
ignore_EPIPE:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3e4
	.globl user_alist
	.type user_alist, @object
user_alist:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3e8
	.globl nouser_alist
	.type nouser_alist, @object
nouser_alist:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3ec
	.globl group_alist
	.type group_alist, @object
group_alist:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3f0
	.globl nogroup_alist
	.type nogroup_alist, @object
nogroup_alist:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b3f4
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
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b400
	.globl default_quoting_options
	.type default_quoting_options, @object
default_quoting_options:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b404
label_1990:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b408
label_1991:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b40c
label_1992:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b410
label_1993:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b414
label_1994:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b418
label_1995:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b41c
label_1996:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b420
label_1997:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b424
label_1998:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b428
label_1999:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b42c
label_2000:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	# data @ 0x806b440
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
	# data @ 0x806b540
		.globl _end
	.type _end, @notype
_end:
