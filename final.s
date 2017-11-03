    PRESERVE8
    THUMB
    AREA     circular_queue, CODE, READONLY
    EXPORT __main
	ENTRY	
__main  FUNCTION
	MOV r3, #0x20000000
	MOV r4, r3
	ADD r5,r4, #32
	MOV r6, r3
	MOV r10, #54
	BL enque
	MOV r10, #10
	BL enque
	MOV r10, #46
	BL enque
	MOV r10, #25
	BL enque
	MOV r10, #73
	BL enque
	MOV r10, #10
	BL enque
	MOV r10, #60
	BL enque
	MOV r10, #3
	BL enque
	MOV r10, #73
	BL enque
	BL deque
	BL deque
	MOV r10, #0x35
	BL enque
	
stop B stop ; stop program
	
	
enque
	push {lr}
	STR r10,[r3]
	CMP r3,r5
	BNE l3
	MOV r3,r6
l3	
	BEQ l4
	ADDS r3,r3,#4
l4	
	pop  {pc}

deque
	push {lr}
	LDR r11,[r4]
	CMP r4,r5
	BNE l2
	MOV r4,r6
l2	
	BEQ l1
	ADDS r4,r4,#4
l1	
	pop  {pc}

ENDFUNC
END