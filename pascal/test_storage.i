@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	9
	STORE	
	PUSH	@lab_ff_end
	GOTO	
@lab_ff_add	EQU	*
	PUSH	@pt_ff
	LOAD	
	ADD	
	PUSH	@pt_ff
	SWAP	
	STORE	
	GOTO	
@lab_ff_end	EQU	*
	PUSH	@lab_dma_end
	GOTO	
@lab_dma	EQU	*
	PUSH	@pt_ff
	LOAD	
	STORE	
	GOTO	
@lab_dma_end	EQU	*
main:a	DS	1
;/ print...
	PUSH	main:a
	OUT
;/ print...
	PUSH	main:a
	LOAD
	OUT
	PUSH	main:a
	PUSH	1
	STORE	
main:b	DS	1
@var_array_0	DS	5
	PUSH	main:b
	PUSH	@var_array_0
	STORE	
main:c	DS	1
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

