@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	12
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
main:b	DS	1
@var_array_3	DS	4
	PUSH	main:b
	PUSH	@var_array_3
	STORE	
	PUSH	4
	PUSH	3
	PUSH	2
	PUSH	1
	PUSH	@var_array_3
	PUSH	0
	ADD	
	SWAP	
	STORE	
	PUSH	@var_array_3
	PUSH	1
	ADD	
	SWAP	
	STORE	
	PUSH	@var_array_3
	PUSH	2
	ADD	
	SWAP	
	STORE	
	PUSH	@var_array_3
	PUSH	3
	ADD	
	SWAP	
	STORE	
main:i	DS	1
	PUSH	main:i
	PUSH	0
	STORE	
@lab_cond_6	EQU	*
	PUSH	main:i
	LOAD
	PUSH	4
	SUB
	BGZ	@lab_minr_4
	PUSH	main:i
	LOAD
	PUSH	4
	SUB
	BEZ	@lab_minr_4
	PUSH	1
	PUSH	@lab_minr_5
	GOTO
@lab_minr_4	EQU	*
	PUSH	0
@lab_minr_5	EQU	*
	BEZ	@lab_fin_7
;/ print...
	PUSH	main:b
	LOAD	
	PUSH	main:i
	LOAD
	ADD	
	LOAD	
	OUT
	PUSH	main:i
	PUSH	main:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_cond_6
	GOTO
@lab_fin_7	EQU	*
	STOP

