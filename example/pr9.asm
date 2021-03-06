;Natural Numbers
;Take a sequence a1 a2 a3 a4 a5 ... as an input
;and output 
;a1
;2a1 + a2
;3a1 + 2a2 + a3
;4a1 + 3a2 + 2a3 + a4
;5a1 + 4a2 + 3a3 + 2a4 + a5

	MOV r0, 0		;This is the current total
	MOV r1, 0		;This is the sum of a1, a2, a3, ...
main:
	NXT i, stdin	;Get the input
	TSTZ i0, @END, @NEXT
	ADD r1, r1, i1		;This is the sum of a1, a2, a3, ...
	ADD r0, r0, r1		;Add the sum to the current total
	MOV o1, r0		;Output the new total
	NXT stdout, o
	JMP main		;Loop

