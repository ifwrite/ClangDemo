	.section	__TEXT,__text,regular,pure_instructions
	.build_version iossimulator, 14, 5	sdk_version 14, 5
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	add	x0, sp, #24                     ; =24
	mov	x8, #0
	str	xzr, [sp, #24]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	_objc_autoreleasePoolPush
	adrp	x8, _OBJC_CLASSLIST_REFERENCES_$_@PAGE
	ldr	x8, [x8, _OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_opt_class
	bl	_NSStringFromClass
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	ldr	x8, [sp, #24]
	str	x0, [sp, #24]
	mov	x0, x8
	bl	_objc_release
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	_objc_autoreleasePoolPop
	ldur	w0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x3, [sp, #24]
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	_UIApplicationMain
	stur	w0, [x29, #-4]
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	_objc_storeStrong
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_test                           ; -- Begin function test
	.p2align	2
_test:                                  ; @test
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	str	w8, [sp, #4]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3                               ; @"OBJC_CLASSLIST_REFERENCES_$_"
_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_AppDelegate

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	96

.subsections_via_symbols
