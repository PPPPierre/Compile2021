	PUSH	@lab_fin_8
	GOTO	
switchTest	EQU	*
switchTest:i	DS	1
	PUSH	switchTest:i
	SWAP	
	STORE	
@var_switch_var_1	DS	1
	PUSH	@var_switch_var_1
	PUSH	switchTest:i
	LOAD
	STORE	
	PUSH	@var_switch_var_1
	LOAD	
	PUSH	1	SUB	
	BEZ	@lab_case_execute_2
	PUSH	@lab_case_fin_3
	GOTO	
@lab_case_execute_2	EQU	*
	PUSH	 0
	PUSH	1
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_0
	GOTO	
@lab_case_fin_3	EQU	*
	PUSH	@var_switch_var_1
	LOAD	
	PUSH	2	SUB	
	BEZ	@lab_case_execute_4
	PUSH	@lab_case_fin_5
	GOTO	
@lab_case_execute_4	EQU	*
	PUSH	 0
	PUSH	2
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_0
	GOTO	
@lab_case_fin_5	EQU	*
	PUSH	@var_switch_var_1
	LOAD	
	PUSH	3	SUB	
	BEZ	@lab_case_execute_6
	PUSH	@lab_case_fin_7
	GOTO	
@lab_case_execute_6	EQU	*
	PUSH	 0
	PUSH	3
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_0
	GOTO	
@lab_case_fin_7	EQU	*
@lab_fin_switch_state_0	EQU	*
	PUSH	0
	SWAP	
	GOTO	
@lab_fin_8	EQU	*
;/ print...
	PUSH	@lab_back_switchTest_9
	PUSH	1
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_9	EQU	*
	OUT
;/ print...
	PUSH	@lab_back_switchTest_10
	PUSH	2
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_10	EQU	*
	OUT
;/ print...
	PUSH	@lab_back_switchTest_11
	PUSH	3
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_11	EQU	*
	OUT
;/ print...
	PUSH	@lab_back_switchTest_12
	PUSH	5
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_12	EQU	*
	OUT
	STOP

