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
;/ Function: PGCD, number of variables: 0
	PUSH	@lab_fin_11
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
	PUSH	@lab_ff_0
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_0	EQU	*
main:PGCD:b	DS	1
	PUSH	@lab_ff_1
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_1	EQU	*
main:PGCD:c	DS	1
	PUSH	@lab_ff_2
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_2	EQU	*
	PUSH	main:PGCD:i
	LOAD
	PUSH	main:PGCD:j
	LOAD
	SUB
	BGZ	@lab_grtr_3
	PUSH	0
	PUSH	@lab_grtr_4
	GOTO
@lab_grtr_3	EQU	*
	PUSH	1
@lab_grtr_4	EQU	*
	BEZ	@lab_fin_con_6
	PUSH	main:PGCD:a
	PUSH	main:PGCD:i
	LOAD
	STORE	
	PUSH	main:PGCD:b
	PUSH	main:PGCD:j
	LOAD
	STORE	
	PUSH	@lab_fin_if_state_5
	GOTO	
@lab_fin_con_6	EQU	*
	PUSH	main:PGCD:a
	PUSH	main:PGCD:j
	LOAD
	STORE	
	PUSH	main:PGCD:b
	PUSH	main:PGCD:i
	LOAD
	STORE	
	PUSH	@lab_fin_if_state_5
	GOTO	
@lab_fin_if_state_5	EQU	*
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
@lab_fin_9	EQU	*
	PUSH	main:PGCD:c
	LOAD
	PUSH	0
	SUB
	BEZ	@lab_diff_7
	PUSH	1
	PUSH	@lab_diff_8
	GOTO
@lab_diff_7	EQU	*
	PUSH	0
@lab_diff_8	EQU	*
	BEZ	@lab_fin_10
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
	PUSH	@lab_fin_9
	GOTO
@lab_fin_10	EQU	*
	PUSH	main:PGCD:b
	LOAD
	SWAP	
	GOTO	
@lab_fin_11	EQU	*
;/ Function: fac, number of variables: 0
	PUSH	@lab_fin_17
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
	BGZ	@lab_egrtr_12
	PUSH	main:fac:i
	LOAD
	PUSH	1
	SUB
	BEZ	@lab_egrtr_12
	PUSH	0
	PUSH	@lab_egrtr_13
	GOTO
@lab_egrtr_12	EQU	*
	PUSH	1
@lab_egrtr_13	EQU	*
	BEZ	@lab_fin_con_16
	PUSH	main:fac:i
	LOAD
;/ Call function: fac, number of variables: 1
	PUSH	@lab_back_fac_14
	PUSH	main:fac:i
	LOAD
	PUSH	1
	SUB
	PUSH	fac
	GOTO	
@lab_back_fac_14	EQU	*
	MUL
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_15
	GOTO	
@lab_fin_con_16	EQU	*
	PUSH	1
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_15
	GOTO	
@lab_fin_if_state_15	EQU	*
@lab_fin_17	EQU	*
;/ Function: cribleErato, number of variables: 0
	PUSH	@lab_fin_45
	GOTO	
cribleErato	EQU	*
main:cribleErato:map	DS	100
	PUSH	@lab_ff_18
	PUSH	100
	PUSH	_ff_add
	GOTO	
@lab_ff_18	EQU	*
main:cribleErato:i	DS	1
	PUSH	@lab_ff_19
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_19	EQU	*
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
main:cribleErato:j	DS	1
	PUSH	@lab_ff_20
	PUSH	1
	PUSH	_ff_add
	GOTO	
@lab_ff_20	EQU	*
	PUSH	main:cribleErato:j
	PUSH	0
	STORE	
@lab_fin_23	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_21
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_21
	PUSH	1
	PUSH	@lab_minr_22
	GOTO
@lab_minr_21	EQU	*
	PUSH	0
@lab_minr_22	EQU	*
	BEZ	@lab_fin_24
	PUSH	main:cribleErato:map
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
	PUSH	@lab_fin_23
	GOTO
@lab_fin_24	EQU	*
	PUSH	main:cribleErato:map
	PUSH	0
	ADD
	PUSH	0
	STORE
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
@lab_fin_35	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	10
	SUB
	BGZ	@lab_minr_25
	PUSH	main:cribleErato:i
	LOAD
	PUSH	10
	SUB
	BEZ	@lab_minr_25
	PUSH	1
	PUSH	@lab_minr_26
	GOTO
@lab_minr_25	EQU	*
	PUSH	0
@lab_minr_26	EQU	*
	BEZ	@lab_fin_36
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
	PUSH	main:cribleErato:i
	LOAD
	ADD	
	LOAD	
	PUSH	1
	SUB
	BEZ	@lab_equal_27
	PUSH	0
	PUSH	@lab_equal_28
	GOTO
@lab_equal_27	EQU	*
	PUSH	1
@lab_equal_28	EQU	*
	BEZ	@lab_fin_con_34
@lab_fin_31	EQU	*
	PUSH	main:cribleErato:j
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_29
	PUSH	main:cribleErato:j
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_29
	PUSH	1
	PUSH	@lab_minr_30
	GOTO
@lab_minr_29	EQU	*
	PUSH	0
@lab_minr_30	EQU	*
	BEZ	@lab_fin_32
	PUSH	main:cribleErato:map
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
	PUSH	@lab_fin_31
	GOTO
@lab_fin_32	EQU	*
	PUSH	@lab_fin_if_state_33
	GOTO	
@lab_fin_con_34	EQU	*
@lab_fin_if_state_33	EQU	*
	PUSH	main:cribleErato:i
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_fin_35
	GOTO
@lab_fin_36	EQU	*
	PUSH	main:cribleErato:i
	PUSH	0
	STORE	
@lab_fin_43	EQU	*
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_37
	PUSH	main:cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_37
	PUSH	1
	PUSH	@lab_minr_38
	GOTO
@lab_minr_37	EQU	*
	PUSH	0
@lab_minr_38	EQU	*
	BEZ	@lab_fin_44
	PUSH	main:cribleErato:map
	PUSH	main:cribleErato:i
	LOAD
	ADD	
	LOAD	
	PUSH	1
	SUB
	BEZ	@lab_equal_39
	PUSH	0
	PUSH	@lab_equal_40
	GOTO
@lab_equal_39	EQU	*
	PUSH	1
@lab_equal_40	EQU	*
	BEZ	@lab_fin_con_42
;/ print...
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	OUT
	PUSH	@lab_fin_if_state_41
	GOTO	
@lab_fin_con_42	EQU	*
@lab_fin_if_state_41	EQU	*
	PUSH	main:cribleErato:i
	PUSH	main:cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE	
	PUSH	@lab_fin_43
	GOTO
@lab_fin_44	EQU	*
	GOTO	
@lab_fin_45	EQU	*
;/ Function: ifElifElseTest, number of variables: 0
	PUSH	@lab_fin_53
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
	BGZ	@lab_minr_46
	PUSH	main:ifElifElseTest:i
	LOAD
	PUSH	0
	SUB
	BEZ	@lab_minr_46
	PUSH	1
	PUSH	@lab_minr_47
	GOTO
@lab_minr_46	EQU	*
	PUSH	0
@lab_minr_47	EQU	*
	BEZ	@lab_fin_con_49
	PUSH	0
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_48
	GOTO	
@lab_fin_con_49	EQU	*
	PUSH	main:ifElifElseTest:i
	LOAD
	PUSH	5
	SUB
	BGZ	@lab_grtr_50
	PUSH	0
	PUSH	@lab_grtr_51
	GOTO
@lab_grtr_50	EQU	*
	PUSH	1
@lab_grtr_51	EQU	*
	BEZ	@lab_fin_con_52
	PUSH	1
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_48
	GOTO	
@lab_fin_con_52	EQU	*
	PUSH	2
	SWAP	
	GOTO	
	PUSH	@lab_fin_if_state_48
	GOTO	
@lab_fin_if_state_48	EQU	*
@lab_fin_53	EQU	*
;/ Function: switchTest, number of variables: 0
	PUSH	@lab_fin_62
	GOTO	
switchTest	EQU	*
main:switchTest:i	DS	1
	PUSH	main:switchTest:i
	SWAP	
	STORE	
@var_switch_var_55	DS	1
	PUSH	@var_switch_var_55
	PUSH	main:switchTest:i
	LOAD
	STORE	
	PUSH	@var_switch_var_55
	LOAD	
	PUSH	1
	SUB	
	BEZ	@lab_case_execute_56
	PUSH	@lab_case_fin_57
	GOTO	
@lab_case_execute_56	EQU	*
	PUSH	 0
	PUSH	1
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_54
	GOTO	
@lab_case_fin_57	EQU	*
	PUSH	@var_switch_var_55
	LOAD	
	PUSH	2
	SUB	
	BEZ	@lab_case_execute_58
	PUSH	@lab_case_fin_59
	GOTO	
@lab_case_execute_58	EQU	*
	PUSH	 0
	PUSH	2
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_54
	GOTO	
@lab_case_fin_59	EQU	*
	PUSH	@var_switch_var_55
	LOAD	
	PUSH	3
	SUB	
	BEZ	@lab_case_execute_60
	PUSH	@lab_case_fin_61
	GOTO	
@lab_case_execute_60	EQU	*
	PUSH	 0
	PUSH	3
	SUB
	SWAP	
	GOTO	
	PUSH	@lab_fin_switch_state_54
	GOTO	
@lab_case_fin_61	EQU	*
@lab_fin_switch_state_54	EQU	*
	PUSH	0
	SWAP	
	GOTO	
@lab_fin_62	EQU	*
;/ print...
;/ Call function: PGCD, number of variables: 2
	PUSH	@lab_back_PGCD_63
	PUSH	192
	PUSH	120
	PUSH	PGCD
	GOTO	
@lab_back_PGCD_63	EQU	*
	OUT
;/ print...
;/ Call function: fac, number of variables: 1
	PUSH	@lab_back_fac_64
	PUSH	6
	PUSH	fac
	GOTO	
@lab_back_fac_64	EQU	*
	OUT
;/ Call function: cribleErato, number of variables: 0
	PUSH	@lab_back_cribleErato_65
	PUSH	cribleErato
	GOTO	
@lab_back_cribleErato_65	EQU	*
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_66
	PUSH	 0
	PUSH	2
	SUB
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_66	EQU	*
	OUT
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_67
	PUSH	3
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_67	EQU	*
	OUT
;/ print...
;/ Call function: ifElifElseTest, number of variables: 1
	PUSH	@lab_back_ifElifElseTest_68
	PUSH	20
	PUSH	ifElifElseTest
	GOTO	
@lab_back_ifElifElseTest_68	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_69
	PUSH	1
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_69	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_70
	PUSH	2
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_70	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_71
	PUSH	3
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_71	EQU	*
	OUT
;/ print...
;/ Call function: switchTest, number of variables: 1
	PUSH	@lab_back_switchTest_72
	PUSH	5
	PUSH	switchTest
	GOTO	
@lab_back_switchTest_72	EQU	*
	OUT
	PUSH	0
	STOP
	STOP

