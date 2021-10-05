@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	4
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
main:b	DS	1
;/ print...
	PUSH	main:b
	OUT
	PUSH	main:b
	IN
	STORE
main:c	DS	1
	PUSH	main:c
	PUSH	@lab_dma_0
	SWAP	
	PUSH	@lab_dma
	GOTO	
@lab_dma_0	EQU	*
	PUSH	main:b
	LOAD
	PUSH	@lab_ff_1
	SWAP	
	PUSH	@lab_ff_add
	GOTO	
@lab_ff_1	EQU	*
;/ print...
	PUSH	main:c
	OUT
main:i	DS	1
	PUSH	main:i
	PUSH	0
	STORE	
;/ print...
	PUSH	main:i
	OUT
@lab_fin_4	EQU	*
	PUSH	main:i
	LOAD
	PUSH	6
	SUB
	BGZ	@lab_minr_2
	PUSH	main:i
	LOAD
	PUSH	6
	SUB
	BEZ	@lab_minr_2
	PUSH	1
	PUSH	@lab_minr_3
	GOTO
@lab_minr_2	EQU	*
	PUSH	0
@lab_minr_3	EQU	*
	BEZ	@lab_fin_5
	PUSH	main:c
	LOAD	
	PUSH	main:i
	LOAD
	ADD
	PUSH	main:i
	LOAD
	STORE
	PUSH	main:i
	PUSH	main:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_fin_4
	GOTO
@lab_fin_5	EQU	*
	PUSH	main:i
	PUSH	0
	STORE	
@lab_fin_8	EQU	*
	PUSH	main:i
	LOAD
	PUSH	6
	SUB
	BGZ	@lab_minr_6
	PUSH	main:i
	LOAD
	PUSH	6
	SUB
	BEZ	@lab_minr_6
	PUSH	1
	PUSH	@lab_minr_7
	GOTO
@lab_minr_6	EQU	*
	PUSH	0
@lab_minr_7	EQU	*
	BEZ	@lab_fin_9
;/ print...
	PUSH	main:c
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
	PUSH	@lab_fin_8
	GOTO
@lab_fin_9	EQU	*
	STOP

