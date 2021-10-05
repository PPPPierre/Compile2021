@pt_ff	DS	1
	PUSH	@pt_ff
	PUSH	112
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
;/ Function: PGCD, number of variables: 0
	PUSH	@lab_fin_8
	GOTO	
PGCD	EQU	*
main:PGCD:i	DS	1
	PUSH	main:PGCD:i
	SWAP	
	STORE	
main:PGCD:j	DS	1
	PUSH	main:PGCD:j
	SWAP	
	STORE	
main:PGCD:a	DS	1
main:PGCD:b	DS	1
main:PGCD:c	DS	1
	PUSH	main:PGCD:i
	LOAD
	PUSH	main:PGCD:j
	LOAD
	SUB
	BGZ	@lab_grtr_0
	PUSH	0
	PUSH	@lab_grtr_1
	GOTO
@lab_grtr_0	EQU	*
	PUSH	1
@lab_grtr_1	EQU	*
	BEZ	@lab_fin_con_3
	PUSH	main:PGCD:a
	PUSH	main:PGCD:i
	LOAD
	STORE	
	PUSH	main:PGCD:b
	PUSH	main:PGCD:j
	LOAD
	STORE	
	PUSH	@lab_fin_if_state_2
	GOTO	
@lab_fin_con_3	EQU	*
	PUSH	main:PGCD:a
	PUSH	main:PGCD:j
	LOAD
	STORE	
	PUSH	main:PGCD:b
	PUSH	main:PGCD:i
	LOAD
	STORE	
	PUSH	@lab_fin_if_state_2
	GOTO	
@lab_fin_if_state_2	EQU	*
	PUSH	main:PGCD:c
	PUSH	main:PGCD:a
	LOAD
	PUSH	main:PGCD:b
	LOAD
	DIV
	PUSH	main:PGCD:b
	LOAD
	MUL
	PUSH	main:PGCD:a
	LOAD
	SWAP
	SUB
	STORE	
@lab_cond_6	EQU	*
	PUSH	main:PGCD:c
	LOAD
	PUSH	0
	SUB
	BEZ	@lab_diff_4
	PUSH	1
	PUSH	@lab_diff_5
	GOTO
@lab_diff_4	EQU	*
	PUSH	0
@lab_diff_5	EQU	*
	BEZ	@lab_fin_7
	PUSH	main:PGCD:a
	PUSH	main:PGCD:b
	LOAD
	STORE	
	PUSH	main:PGCD:b
	PUSH	main:PGCD:c
	LOAD
	STORE	
	PUSH	main:PGCD:c
	PUSH	main:PGCD:a
	LOAD
	PUSH	main:PGCD:b
	LOAD
	DIV
	PUSH	main:PGCD:b
	LOAD
	MUL
	PUSH	main:PGCD:a
	LOAD
	SWAP
	SUB
	STORE	
	PUSH	@lab_cond_6
	GOTO
@lab_fin_7	EQU	*
	PUSH	main:PGCD:b
	LOAD
	SWAP	
	GOTO	
@lab_fin_8	EQU	*
;/ Function: fac, number of variables: 0
	PUSH	@lab_fin_14
	GOTO	
fac	EQU	*
main:fac:i	DS	1
	PUSH	main:fac:i
	SWAP	
	STORE	
	PUSH	main:fac:i
	LOAD
	PUSH	1
	SUB
	BGZ	@lab_egrtr_9
	PUSH	main:fac:i
	LOAD
	PUSH	1
	SUB
	BEZ	@lab_egrtr_9
	PUSH	0
	PUSH	@lab_egrtr_10
	GOTO
@lab_egrtr_9	EQU	*
	PUSH	1
@lab_egrtr_10	EQU	*
	BEZ	@lab_fin_con_13
	PUSH	main:fac:i
	LOAD
;/ Call function: fac, number of variables: 1
	PUSH	@lab_back_fac_11
	PUSH	main:fac:i
	LOAD
	PUSH	1
	SUB
	PUSH	fac
	GOTO	
@lab_back_fac_11	EQU	*
	MUL
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_12
	GOTO	
@lab_fin_con_13	EQU	*
	PUSH	1
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_12
	GOTO	
@lab_fin_if_state_12	EQU	*
@lab_fin_14	EQU	*
;/ Function: cribleErato, number of variables: 0
	PUSH	@lab_fin_40
	GOTO	
cribleErato	EQU	*
main:cribleErato:map	DS	1
@var_array_15	DS	100
	PUSH	main:cribleErato:map
	PUSH	@var_array_15
	STORE	
main:cribleErato:i	DS	1
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
main:cribleErato:j	DS	1
	PUSH	main:cribleErato:j
	PUSH	0
	STORE	
@lab_cond_18	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_16
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_16
	PUSH	1
	PUSH	@lab_minr_17
	GOTO
@lab_minr_16	EQU	*
	PUSH	0
@lab_minr_17	EQU	*
	BEZ	@lab_fin_19
	PUSH	main:cribleErato:map
	LOAD	
	PUSH	main:cribleErato:i
	LOAD
	ADD
	PUSH	1
	STORE
	PUSH	main:cribleErato:i
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_cond_18
	GOTO
@lab_fin_19	EQU	*
	PUSH	main:cribleErato:map
	LOAD	
	PUSH	0
	ADD
	PUSH	0
	STORE
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
@lab_cond_30	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	10
	SUB
	BGZ	@lab_minr_20
	PUSH	main:cribleErato:i
	LOAD
	PUSH	10
	SUB
	BEZ	@lab_minr_20
	PUSH	1
	PUSH	@lab_minr_21
	GOTO
@lab_minr_20	EQU	*
	PUSH	0
@lab_minr_21	EQU	*
	BEZ	@lab_fin_31
	PUSH	main:cribleErato:j
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	MUL
	PUSH	1
	SUB
	STORE	
	PUSH	main:cribleErato:map
	LOAD	
	PUSH	main:cribleErato:i
	LOAD
	ADD	
	LOAD	
	PUSH	1
	SUB
	BEZ	@lab_equal_22
	PUSH	0
	PUSH	@lab_equal_23
	GOTO
@lab_equal_22	EQU	*
	PUSH	1
@lab_equal_23	EQU	*
	BEZ	@lab_fin_con_29
@lab_cond_26	EQU	*
	PUSH	main:cribleErato:j
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_24
	PUSH	main:cribleErato:j
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_24
	PUSH	1
	PUSH	@lab_minr_25
	GOTO
@lab_minr_24	EQU	*
	PUSH	0
@lab_minr_25	EQU	*
	BEZ	@lab_fin_27
	PUSH	main:cribleErato:map
	LOAD	
	PUSH	main:cribleErato:j
	LOAD
	ADD
	PUSH	0
	STORE
	PUSH	main:cribleErato:j
	PUSH	main:cribleErato:j
	LOAD
	PUSH	main:cribleErato:i
	LOAD
	ADD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_cond_26
	GOTO
@lab_fin_27	EQU	*
	PUSH	@lab_fin_if_state_28
	GOTO	
@lab_fin_con_29	EQU	*
@lab_fin_if_state_28	EQU	*
	PUSH	main:cribleErato:i
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_cond_30
	GOTO
@lab_fin_31	EQU	*
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
@lab_cond_38	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_32
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_32
	PUSH	1
	PUSH	@lab_minr_33
	GOTO
@lab_minr_32	EQU	*
	PUSH	0
@lab_minr_33	EQU	*
	BEZ	@lab_fin_39
	PUSH	main:cribleErato:map
	LOAD	
	PUSH	main:cribleErato:i
	LOAD
	ADD	
	LOAD	
	PUSH	1
	SUB
	BEZ	@lab_equal_34
	PUSH	0
	PUSH	@lab_equal_35
	GOTO
@lab_equal_34	EQU	*
	PUSH	1
@lab_equal_35	EQU	*
	BEZ	@lab_fin_con_37
;/ print...
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	OUT
	PUSH	@lab_fin_if_state_36
	GOTO	
@lab_fin_con_37	EQU	*
@lab_fin_if_state_36	EQU	*
	PUSH	main:cribleErato:i
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_cond_38
	GOTO
@lab_fin_39	EQU	*
	GOTO	
@lab_fin_40	EQU	*
;/ Function: ifElifElseTest, number of variables: 0
	PUSH	@lab_fin_48
	GOTO	
ifElifElseTest	EQU	*
main:ifElifElseTest:i	DS	1
	PUSH	main:ifElifElseTest:i
	SWAP	
	STORE	
	PUSH	main:ifElifElseTest:i
	LOAD
	PUSH	0
	SUB
	BGZ	@lab_minr_41
	PUSH	main:ifElifElseTest:i
	LOAD
	PUSH	0
	SUB
	BEZ	@lab_minr_41
	PUSH	1
	PUSH	@lab_minr_42
	GOTO
@lab_minr_41	EQU	*
	PUSH	0
@lab_minr_42	EQU	*
	BEZ	@lab_fin_con_44
	PUSH	0
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_43
	GOTO	
@lab_fin_con_44	EQU	*
	PUSH	main:ifElifElseTest:i
	LOAD
	PUSH	5
	SUB
	BGZ	@lab_grtr_45
	PUSH	0
	PUSH	@lab_grtr_46
	GOTO
@lab_grtr_45	EQU	*
	PUSH	1
@lab_grtr_46	EQU	*
	BEZ	@lab_fin_con_47
	PUSH	1
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_43
	GOTO	
@lab_fin_con_47	EQU	*
	PUSH	2
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_43
	GOTO	
@lab_fin_if_state_43	EQU	*
@lab_fin_48	EQU	*
;/ Function: switchTest, number of variables: 0
	PUSH	@lab_fin_57
	GOTO	
switchTest	EQU	*
main:switchTest:i	DS	1
	PUSH	main:switchTest:i
	SWAP	
	STORE	
@var_switch_var_50	DS	1
	PUSH	@var_switch_var_50
	PUSH	main:switchTest:i
	LOAD
	STORE	
	PUSH	@var_switch_var_50
	LOAD	
	PUSH	1
	SUB	
	BEZ	@lab_case_execute_51
	PUSH	@lab_case_fin_52
	GOTO	
@lab_case_execute_51	EQU	*
	PUSH	 0
	PUSH	1
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_49
	GOTO	
@lab_case_fin_52	EQU	*
	PUSH	@var_switch_var_50
	LOAD	
	PUSH	2
	SUB	
	BEZ	@lab_case_execute_53
	PUSH	@lab_case_fin_54
	GOTO	
@lab_case_execute_53	EQU	*
	PUSH	 0
	PUSH	2
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_49
	GOTO	
@lab_case_fin_54	EQU	*
	PUSH	@var_switch_var_50
	LOAD	
	PUSH	3
	SUB	
	BEZ	@lab_case_execute_55
	PUSH	@lab_case_fin_56
	GOTO	
@lab_case_execute_55	EQU	*
	PUSH	 0
	PUSH	3
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_49
	GOTO	
@lab_case_fin_56	EQU	*
@lab_fin_switch_state_49	EQU	*
	PUSH	0
	SWAP	
	GOTO	
@lab_fin_57	EQU	*
;/ print...
;/ Call function: PGCD, number of variables: 2
	PUSH	@lab_back_PGCD_58
	PUSH	192
	PUSH	120
	PUSH	PGCD
	GOTO	
@lab_back_PGCD_58	EQU	*
	OUT
;/ print...
;/ Call function: fac, number of variables: 1
	PUSH	@lab_back_fac_59
	PUSH	6
	PUSH	fac
	GOTO	
@lab_back_fac_59	EQU	*
	OUT
;/ Call function: cribleErato, number of variables: 0
	PUSH	@lab_back_cribleErato_60
	PUSH	cribleErato
	GOTO	
@lab_back_cribleErato_60	EQU	*
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_61
	PUSH	 0
	PUSH	2
	SUB
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_61	EQU	*
	OUT
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_62
	PUSH	3
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_62	EQU	*
	OUT
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_63
	PUSH	20
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_63	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_64
	PUSH	1
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_64	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_65
	PUSH	2
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_65	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_66
	PUSH	3
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_66	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_67
	PUSH	5
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_67	EQU	*
	OUT
	PUSH	0
	STOP
	STOP

