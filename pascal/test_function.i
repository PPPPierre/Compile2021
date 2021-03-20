	PUSH	@lab_fin_0
	GOTO	
abc	EQU	*
abc:i	DS	1
	PUSH	abc:i
	SWAP	
	STORE	
	PUSH	abc:i
	LOAD
	PUSH	1
	ADD
	SWAP	
	GOTO	
@lab_fin_0	EQU	*
;/ print...
	PUSH	@lab_back_abc_1
	PUSH	2
	PUSH	abc
	GOTO	
@lab_back_abc_1	EQU	*
	OUT
	STOP

