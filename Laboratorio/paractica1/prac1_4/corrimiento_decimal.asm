processor 16f877a
include <p16f877a.inc>

K	equ		H'21'

	org		0
	goto	r
	org		5

inicio:	
	addwf	K,K ; K = W + K = sumar 1
	btfss	K,7 ;
;ToDo: diferenciar 10H
;saltar los siguientes 5 despues de llegar a 09H y 19H 
	goto	inicio
	goto	r
r:
	movlw	H'01' ; W = 1
	clrf	K ;K = 0
	;movwf	K ;K = W = 1
	goto 	inicio
	
end