@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	6
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
;/ Function: swap, number of variables: 1
	PUSH	@lab_fin_0
	GOTO	
swap	EQU	*
main:swap:a	DS	1
	PUSH	main:swap:a
	SWAP	
	STORE	
main:swap:temp	DS	1
	PUSH	main:swap:temp
	PUSH	main:swap:a
	LOAD	
	PUSH	0
	ADD	
	LOAD	
	STORE	
	PUSH	main:swap:a
	LOAD	
	PUSH	0
	ADD
	PUSH	main:swap:a
	LOAD	
	PUSH	1
	ADD	
	LOAD	
	STORE
	PUSH	main:swap:a
	LOAD	
	PUSH	1
	ADD
	PUSH	main:swap:temp
	LOAD
	STORE
	GOTO	
@lab_fin_0	EQU	*
main:a	DS	1
@var_array_1	DS	2
	PUSH	main:a
	PUSH	@var_array_1
	STORE	
	PUSH	main:a
	LOAD	
	PUSH	0
	ADD
	PUSH	1
	STORE
	PUSH	main:a
	LOAD	
	PUSH	1
	ADD
	PUSH	2
	STORE
;/ print...
	PUSH	main:a
	LOAD	
	PUSH	0
	ADD	
	LOAD	
	OUT
;/ print...
	PUSH	main:a
	LOAD	
	PUSH	1
	ADD	
	LOAD	
	OUT
;/ Call function: swap, number of variables: 1
	PUSH	@lab_back_swap_2
	PUSH	main:a
	LOAD
	PUSH	swap
	GOTO	
@lab_back_swap_2	EQU	*
;/ print...
	PUSH	main:a
	LOAD	
	PUSH	0
	ADD	
	LOAD	
	OUT
;/ print...
	PUSH	main:a
	LOAD	
	PUSH	1
	ADD	
	LOAD	
	OUT
	STOP

