	.file	"exemplu.cpp"
	.intel_syntax noprefix
	.text
	.globl	"_Z3addii"
	.type	"_Z3addii", @function
"_Z3addii":
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	edx, DWORD PTR [rbp-4]
	mov	eax, DWORD PTR [rbp-8]
	add	eax, edx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	"_Z3addii", .-"_Z3addii"
	.globl	"_Z8multiplyii"
	.type	"_Z8multiplyii", @function
"_Z8multiplyii":
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-4], edi
	mov	DWORD PTR [rbp-8], esi
	mov	eax, DWORD PTR [rbp-4]
	imul	eax, DWORD PTR [rbp-8]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	"_Z8multiplyii", .-"_Z8multiplyii"
	.globl	"main"
	.type	"main", @function
"main":
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 16
	.cfi_offset 3, -24
	mov	esi, 20
	mov	edi, 10
	call	"_Z3addii"
	mov	ebx, eax
	mov	esi, 4
	mov	edi, 3
	call	"_Z8multiplyii"
	add	eax, ebx
	mov	DWORD PTR [rbp-12], eax
	mov	eax, 0
	mov	rbx, QWORD PTR [rbp-8]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	"main", .-"main"
	.ident	"GCC: (GNU) 16.2.1 20261029 (Red Hat 16.2.1-3)"
	.section	.note.GNU-stack,"",@progbits
