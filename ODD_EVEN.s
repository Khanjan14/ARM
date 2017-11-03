	PRESERVE8
    THUMB
    AREA     ODD_EVEN, CODE, READONLY
    EXPORT __main
	ENTRY	
__main  FUNCTION
		MOV R6, #36
		AND R7,R6,#0x00000001	;and with 1
		CMP R7,#1		; cmp with 1
		MOVEQ R2,#1		;odd
		MOVNE R2,#2		;even

STOP B STOP 
	ENDFUNC
	END
