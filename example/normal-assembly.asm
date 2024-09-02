
normal-exe:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100003ed4 <_my_function>:
100003ed4: d10083ff    	sub	sp, sp, #32
100003ed8: a9017bfd    	stp	x29, x30, [sp, #16]
100003edc: 910043fd    	add	x29, sp, #16
100003ee0: b81fc3a0    	stur	w0, [x29, #-4]
100003ee4: b9000be1    	str	w1, [sp, #8]
100003ee8: b85fc3a8    	ldur	w8, [x29, #-4]
100003eec: b9400be9    	ldr	w9, [sp, #8]
100003ef0: 0b09010a    	add	w10, w8, w9
100003ef4: 910003e9    	mov	x9, sp
100003ef8: aa0a03e8    	mov	x8, x10
100003efc: f9000128    	str	x8, [x9]
100003f00: 90000000    	adrp	x0, 0x100003000 <_my_function+0x2c>
100003f04: 913e1000    	add	x0, x0, #3972
100003f08: 9400001c    	bl	0x100003f78 <_printf+0x100003f78>
100003f0c: a9417bfd    	ldp	x29, x30, [sp, #16]
100003f10: 910083ff    	add	sp, sp, #32
100003f14: d65f03c0    	ret

0000000100003f18 <_main>:
100003f18: d100c3ff    	sub	sp, sp, #48
100003f1c: a9027bfd    	stp	x29, x30, [sp, #32]
100003f20: 910083fd    	add	x29, sp, #32
100003f24: 52800008    	mov	w8, #0
100003f28: b90013e8    	str	w8, [sp, #16]
100003f2c: b81fc3bf    	stur	wzr, [x29, #-4]
100003f30: 52803208    	mov	w8, #400
100003f34: b81f43a8    	stur	w8, [x29, #-12]
100003f38: 52800288    	mov	w8, #20
100003f3c: b81f83a8    	stur	w8, [x29, #-8]
100003f40: b0000028    	adrp	x8, 0x100008000 <_main+0x3c>
100003f44: b9400108    	ldr	w8, [x8]
100003f48: 910003e9    	mov	x9, sp
100003f4c: f9000128    	str	x8, [x9]
100003f50: 90000000    	adrp	x0, 0x100003000 <_main+0x38>
100003f54: 913e3400    	add	x0, x0, #3981
100003f58: 94000008    	bl	0x100003f78 <_printf+0x100003f78>
100003f5c: b85f43a0    	ldur	w0, [x29, #-12]
100003f60: b85f83a1    	ldur	w1, [x29, #-8]
100003f64: 97ffffdc    	bl	0x100003ed4 <_my_function>
100003f68: b94013e0    	ldr	w0, [sp, #16]
100003f6c: a9427bfd    	ldp	x29, x30, [sp, #32]
100003f70: 9100c3ff    	add	sp, sp, #48
100003f74: d65f03c0    	ret

Disassembly of section __TEXT,__stubs:

0000000100003f78 <__stubs>:
100003f78: b0000010    	adrp	x16, 0x100004000 <__stubs+0x4>
100003f7c: f9400210    	ldr	x16, [x16]
100003f80: d61f0200    	br	x16
