	.file	"exemplu.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	"_Z3addii"
	.type	"_Z3addii", @function
"_Z3addii":
.LFB0:
	.cfi_startproc
	lea	eax, [rdi+rsi]
	ret
	.cfi_endproc
.LFE0:
	.size	"_Z3addii", .-"_Z3addii"
	.p2align 4
	.globl	"_Z8multiplyii"
	.type	"_Z8multiplyii", @function
"_Z8multiplyii":
.LFB1:
	.cfi_startproc
	mov	eax, edi
	imul	eax, esi
	ret
	.cfi_endproc
.LFE1:
	.size	"_Z8multiplyii", .-"_Z8multiplyii"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	"main"
	.type	"main", @function
"main":
.LFB2:
	.cfi_startproc
	xor	eax, eax
	ret
	.cfi_endproc
.LFE2:
	.size	"main", .-"main"
	.ident	"GCC: (GNU) 16.2.1 20261029 (Red Hat 16.2.1-3)"
	.section	.note.GNU-stack,"",@progbits
