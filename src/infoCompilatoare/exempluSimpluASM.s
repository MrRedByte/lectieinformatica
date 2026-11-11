	.intel_syntax noprefix
	.file	"exemplu.cpp"
	.text
	.globl	_Z3addii                        # -- Begin function _Z3addii
	.p2align	4
	.type	_Z3addii,@function
_Z3addii:                               # @_Z3addii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	_Z3addii, .Lfunc_end0-_Z3addii
	.cfi_endproc
                                        # -- End function
	.globl	_Z8multiplyii                   # -- Begin function _Z8multiplyii
	.p2align	4
	.type	_Z8multiplyii,@function
_Z8multiplyii:                          # @_Z8multiplyii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	eax, dword ptr [rbp - 4]
	imul	eax, dword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end1:
	.size	_Z8multiplyii, .Lfunc_end1-_Z8multiplyii
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	edi, 10
	mov	esi, 20
	call	_Z3addii
	mov	dword ptr [rbp - 12], eax       # 4-byte Spill
	mov	edi, 3
	mov	esi, 4
	call	_Z8multiplyii
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 12]       # 4-byte Reload
	add	eax, ecx
	mov	dword ptr [rbp - 8], eax
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 22.1.8 (Fedora 22.1.8-4.fc44)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3addii
	.addrsig_sym _Z8multiplyii
