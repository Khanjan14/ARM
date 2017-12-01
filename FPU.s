    PRESERVE8
    AREA     Floating_point, CODE, READONLY
    EXPORT __main
	ENTRY	
__main  FUNCTION
		mov r0,#0x3f800000
		mov r1,#0x3f800000
		mov r5,#0x3fc00000     ; Assigning value of x = 1.5
		mov r6,#0	  ; Count
		vmov.f32 s0,r0
		vmov.f32 s1,r1
		vmov.f32 s2,s1
		vmov.f32 s5,r5
		vmov.f32 s6,r6
		
loop	vmov.f32 s8,r0
		vadd.f32 s6,s6,s8
		adds r6,r6,#1
		vmul.f32 s1,s1,s5
		vdiv.f32 s1,s1,s6
		vadd.f32 s0,s0,s1
		cmp r6,#8
		bne loop

stop B stop
	ENDFUNC
	END
