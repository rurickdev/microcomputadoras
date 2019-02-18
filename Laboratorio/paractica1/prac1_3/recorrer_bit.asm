processor 16f877a
include <p16f877a.inc>

K	equ		H'21'

	org		0
	goto	r
	org		5

inicio:
	rlf		K,W ;MUEVE BIT DE K Y GUARDA EN W
	movwf	K ;K = W
	btfss	K,7 ;	
	goto	inicio
	goto	r
r:
	movlw	H'01' ; W = 1
	movwf	K ;K = W = 1
	goto 	inicio
	
end