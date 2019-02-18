processor 16f877a
include <p16f877a.inc>

K		equ H'26'
L		equ H'27'

org		0
goto	inicio
org		5

inicio:
	movlw	H'05'
	addwf	K,W
	movwf	L
	goto	inicio	
end