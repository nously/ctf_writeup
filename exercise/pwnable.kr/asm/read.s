	.file	"read.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"this_is_pwnable.kr_flag_file_please_read_this_file.sorry_the_file_name_is_very_loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo0000000000000000000000000ooooooooooooooooooooooo000000000000o0o0o0o0o0o0ong"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1008, %rsp
	movl	$0, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -4(%rbp)
	leaq	-1008(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$100, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	movl	$0, %eax
	call	read@PLT
	movl	%eax, -8(%rbp)
	leaq	-1008(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	write@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Debian 8.2.0-6) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
