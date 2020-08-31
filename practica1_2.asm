processor 16f877a
include <p16f877a.inc>

J	equ		H'20'
K	equ		H'21'
R1	equ		H'30'
C1	equ		H'31'

	org		0
	goto	inicio
	org		5

inicio:
	;movlw	H'05'
	;addwf	K,W
	;movwf	L
	movf	J,W ;W = J
	addwf	K,W ;W = W + K
	btfss	STATUS, 0 ; TIENE ACARREO ? CON_ACARREO : SIN_ACARREO
	goto	sin_acarreo
	goto	con_acarreo

sin_acarreo:
	clrf	C1 ;C1 = H'00'
	movwf	R1 ;R1 = W
	goto	inicio

con_acarreo:
	movwf	R1 ;R1 = W
	movlw	H'01' ;W = H'01'
	movwf	C1 ;C1 = W
	goto	inicio
end