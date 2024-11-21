	.file	"3.1-declaring-program-constants.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "Enter the diameter of a circle in millimeters: \0"
LC2:
	.ascii "%f\0"
LC4:
	.ascii "\12\11Circumference is %.2f mm\0"
LC5:
	.ascii "\12\11Area is %.2f sq.mm\0"
LC6:
	.ascii "\12\11Radius is %.2f mm\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	flds	LC0
	fstps	44(%esp)
	movl	$LC1, (%esp)
	call	_printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_scanf
	flds	28(%esp)
	flds	44(%esp)
	fmulp	%st, %st(1)
	fstps	40(%esp)
	flds	28(%esp)
	flds	LC3
	fdivrp	%st, %st(1)
	fstps	36(%esp)
	flds	36(%esp)
	fmuls	36(%esp)
	fmuls	44(%esp)
	fstps	32(%esp)
	flds	40(%esp)
	fstpl	4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	flds	32(%esp)
	fstpl	4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	flds	36(%esp)
	fstpl	4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1078530432
	.align 4
LC3:
	.long	1073741824
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
