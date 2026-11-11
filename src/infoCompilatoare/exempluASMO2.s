	.intel_syntax noprefix
	.file	"exemplu.cpp"
	.text
	.globl	_Z3addii                        # -- Begin function _Z3addii
	.p2align	4
	.type	_Z3addii,@function
_Z3addii:                               # @_Z3addii
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	lea	eax, [rdi + rsi]
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
	mov	eax, edi
	imul	eax, esi
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
	xor	eax, eax
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 22.1.8 (Fedora 22.1.8-4.fc44)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
