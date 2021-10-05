_ff	DS	1
	PUSH	_ff
	PUSH	1
	STORE	
	PUSH	_ff_end
	GOTO	
_ff_add	EQU	*
	PUSH	_ff
	LOAD	
	ADD	
	PUSH	_ff
	SWAP	
	STORE	
	GOTO	
_ff_end	EQU	*
main:a	DS	1
	PUSH	@lab_ff_0
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_0	EQU	*
;/ print...
	PUSH	main:a
	OUT
main:a	DS	1
	PUSH	@lab_ff_1
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_1	EQU	*
;/ print...
	PUSH	main:a
	OUT
main:a	DS	1
	PUSH	@lab_ff_2
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_2	EQU	*
;/ print...
	PUSH	main:a
	OUT
	PUSH	main:a
	PUSH	1
	STORE	
main:b	DS	5
	PUSH	@lab_ff_3
	PUSH	5
	PUSH	_ff_add
	GOTO	
@lab_ff_3	EQU	*
main:c	DS	1
	PUSH	@lab_ff_4
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_4	EQU	*
;/ print...
	PUSH	main:a
	OUT
;/ print...
	PUSH	main:b
	OUT
;/ print...
	PUSH	main:c
	OUT
	STOP

