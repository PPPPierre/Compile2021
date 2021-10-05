@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	1
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
;/ print...
	PUSH	1
	PUSH	2
	ADD
	OUT
;/ print...
	PUSH	4
	PUSH	2
	DIV
	OUT
;/ print...
	PUSH	8
	PUSH	3
	DIV
	PUSH	3
	MUL
	PUSH	8
	SWAP
	SUB
	OUT
;/ print...
	PUSH	 0
	PUSH	2
	SUB
	OUT
	STOP

