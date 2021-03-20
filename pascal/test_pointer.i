	PUSH	@lab_fin_1
	GOTO	
swap	EQU	*
swap:x	DS	1
	PUSH	swap:x
	SWAP	
	STORE	
swap:y	DS	1
	PUSH	swap:y
	SWAP	
	STORE	
;/ print...
	PUSH	swap:x
	LOAD
	OUT
;/ print...
	PUSH	swap:x
	LOAD	
	LOAD	
	OUT
;/ print...
	PUSH	swap:y
	LOAD
	OUT
;/ print...
	PUSH	swap:y
	LOAD	
	LOAD	
	OUT
swap:temp	DS	1
@var_pointer_0	DS	1
	PUSH	swap:temp
	PUSH	@var_pointer_0
	STORE	
	PUSH	swap:temp
	LOAD	
	PUSH	swap:x
	LOAD	
	LOAD	
	STORE	
	PUSH	swap:x
	LOAD	
	PUSH	swap:y
	LOAD	
	LOAD	
	STORE	
	PUSH	swap:y
	LOAD	
	PUSH	swap:temp
	LOAD	
	LOAD	
	STORE	
	GOTO	
@lab_fin_1	EQU	*
main:x	DS	1
@var_pointer_2	DS	1
	PUSH	main:x
	PUSH	@var_pointer_2
	STORE	
main:y	DS	1
@var_pointer_3	DS	1
	PUSH	main:y
	PUSH	@var_pointer_3
	STORE	
	PUSH	main:x
	LOAD	
	PUSH	2
	STORE	
	PUSH	main:y
	LOAD	
	PUSH	3
	STORE	
;/ print...
	PUSH	main:x
	LOAD
	OUT
;/ print...
	PUSH	main:x
	LOAD	
	LOAD	
	OUT
;/ print...
	PUSH	main:y
	LOAD
	OUT
;/ print...
	PUSH	main:y
	LOAD	
	LOAD	
	OUT
	PUSH	@lab_back_swap_4
	PUSH	main:y
	LOAD
	PUSH	main:x
	LOAD
	PUSH	swap
	GOTO	
@lab_back_swap_4	EQU	*
;/ print...
	PUSH	main:x
	LOAD
	OUT
;/ print...
	PUSH	main:x
	LOAD	
	LOAD	
	OUT
;/ print...
	PUSH	main:y
	LOAD
	OUT
;/ print...
	PUSH	main:y
	LOAD	
	LOAD	
	OUT
	STOP

