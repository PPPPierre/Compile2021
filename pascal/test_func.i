	PUSH	@lab_fin_8
	GOTO	
PGCD	EQU	*
PGCD:i	DS	1
	PUSH	PGCD:i
	SWAP	
	STORE	
PGCD:j	DS	1
	PUSH	PGCD:j
	SWAP	
	STORE	
PGCD:a	DS	1
PGCD:b	DS	1
PGCD:c	DS	1
	PUSH	PGCD:i
	LOAD
	PUSH	PGCD:j
	LOAD
	SUB
	BGZ	@lab_grtr_0
	PUSH	0
	PUSH	@lab_grtr_1
	GOTO
@lab_grtr_0	EQU	*
	PUSH	1
@lab_grtr_1	EQU	*
	BEZ	@lab_else_2
	PUSH	PGCD:a
	PUSH	PGCD:i
	LOAD
	STORE
	PUSH	PGCD:b
	PUSH	PGCD:j
	LOAD
	STORE
	PUSH	@lab_fin_3
	GOTO
@lab_else_2	EQU	*
	PUSH	PGCD:a
	PUSH	PGCD:j
	LOAD
	STORE
	PUSH	PGCD:b
	PUSH	PGCD:i
	LOAD
	STORE
@lab_fin_3	EQU	*
	PUSH	PGCD:c
	PUSH	PGCD:a
	LOAD
	PUSH	PGCD:b
	LOAD
	DIV
	PUSH	PGCD:b
	LOAD
	MUL
	PUSH	PGCD:a
	LOAD
	SWAP
	SUB
	STORE
@lab_fin_6	EQU	*
	PUSH	PGCD:c
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
	PUSH	PGCD:a
	PUSH	PGCD:b
	LOAD
	STORE
	PUSH	PGCD:b
	PUSH	PGCD:c
	LOAD
	STORE
	PUSH	PGCD:c
	PUSH	PGCD:a
	LOAD
	PUSH	PGCD:b
	LOAD
	DIV
	PUSH	PGCD:b
	LOAD
	MUL
	PUSH	PGCD:a
	LOAD
	SWAP
	SUB
	STORE
	PUSH	@lab_fin_6
	GOTO
@lab_fin_7	EQU	*
	PUSH	PGCD:b
	LOAD
	SWAP	
	GOTO	
@lab_fin_8	EQU	*
	PUSH	@lab_fin_14
	GOTO	
fac	EQU	*
fac:i	DS	1
	PUSH	fac:i
	SWAP	
	STORE	
	PUSH	fac:i
	LOAD
	PUSH	1
	SUB
	BGZ	@lab_egrtr_9
	PUSH	fac:i
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
	BEZ	@lab_else_12
	PUSH	fac:i
	LOAD
	PUSH	@lab_back_fac_11
	PUSH	fac:i
	LOAD
	PUSH	1
	SUB
	PUSH	fac
	GOTO	
@lab_back_fac_11	EQU	*
	MUL
	SWAP	
	GOTO	
	PUSH	@lab_fin_13
	GOTO
@lab_else_12	EQU	*
	PUSH	1
	SWAP	
	GOTO	
@lab_fin_13	EQU	*
@lab_fin_14	EQU	*
	PUSH	@lab_fin_39
	GOTO	
cribleErato	EQU	*
cribleErato:map	DS	100
cribleErato:i	DS	1
	PUSH	cribleErato:i
	PUSH	0
	STORE	
cribleErato:j	DS	1
	PUSH	cribleErato:j
	PUSH	0
	STORE	
@lab_fin_17	EQU	*
	PUSH	cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_15
	PUSH	cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_15
	PUSH	1
	PUSH	@lab_minr_16
	GOTO
@lab_minr_15	EQU	*
	PUSH	0
@lab_minr_16	EQU	*
	BEZ	@lab_fin_18
	PUSH	cribleErato:map
	PUSH	cribleErato:i
	LOAD
	ADD
	PUSH	1
	STORE
	PUSH	cribleErato:i
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE
	PUSH	@lab_fin_17
	GOTO
@lab_fin_18	EQU	*
	PUSH	cribleErato:map
	PUSH	0
	ADD
	PUSH	0
	STORE
	PUSH	cribleErato:i
	PUSH	0
	STORE
@lab_fin_29	EQU	*
	PUSH	cribleErato:i
	LOAD
	PUSH	10
	SUB
	BGZ	@lab_minr_19
	PUSH	cribleErato:i
	LOAD
	PUSH	10
	SUB
	BEZ	@lab_minr_19
	PUSH	1
	PUSH	@lab_minr_20
	GOTO
@lab_minr_19	EQU	*
	PUSH	0
@lab_minr_20	EQU	*
	BEZ	@lab_fin_30
	PUSH	cribleErato:j
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	MUL
	PUSH	1
	SUB
	STORE
	PUSH	cribleErato:map
	PUSH	cribleErato:i
	LOAD
	ADD
	LOAD
	PUSH	1
	SUB
	BEZ	@lab_equal_21
	PUSH	0
	PUSH	@lab_equal_22
	GOTO
@lab_equal_21	EQU	*
	PUSH	1
@lab_equal_22	EQU	*
	BEZ	@lab_else_27
@lab_fin_25	EQU	*
	PUSH	cribleErato:j
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_23
	PUSH	cribleErato:j
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_23
	PUSH	1
	PUSH	@lab_minr_24
	GOTO
@lab_minr_23	EQU	*
	PUSH	0
@lab_minr_24	EQU	*
	BEZ	@lab_fin_26
	PUSH	cribleErato:map
	PUSH	cribleErato:j
	LOAD
	ADD
	PUSH	0
	STORE
	PUSH	cribleErato:j
	PUSH	cribleErato:j
	LOAD
	PUSH	cribleErato:i
	LOAD
	ADD
	PUSH	1
	ADD
	STORE
	PUSH	@lab_fin_25
	GOTO
@lab_fin_26	EQU	*
	PUSH	@lab_fin_28
	GOTO
@lab_else_27	EQU	*
@lab_fin_28	EQU	*
	PUSH	cribleErato:i
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE
	PUSH	@lab_fin_29
	GOTO
@lab_fin_30	EQU	*
	PUSH	cribleErato:i
	PUSH	0
	STORE
@lab_fin_37	EQU	*
	PUSH	cribleErato:i
	LOAD
	PUSH	100
	SUB
	BGZ	@lab_minr_31
	PUSH	cribleErato:i
	LOAD
	PUSH	100
	SUB
	BEZ	@lab_minr_31
	PUSH	1
	PUSH	@lab_minr_32
	GOTO
@lab_minr_31	EQU	*
	PUSH	0
@lab_minr_32	EQU	*
	BEZ	@lab_fin_38
	PUSH	cribleErato:map
	PUSH	cribleErato:i
	LOAD
	ADD
	LOAD
	PUSH	1
	SUB
	BEZ	@lab_equal_33
	PUSH	0
	PUSH	@lab_equal_34
	GOTO
@lab_equal_33	EQU	*
	PUSH	1
@lab_equal_34	EQU	*
	BEZ	@lab_else_35
;/ print...
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	OUT
	PUSH	@lab_fin_36
	GOTO
@lab_else_35	EQU	*
@lab_fin_36	EQU	*
	PUSH	cribleErato:i
	PUSH	cribleErato:i
	LOAD
	PUSH	1
	ADD
	STORE
	PUSH	@lab_fin_37
	GOTO
@lab_fin_38	EQU	*
	GOTO	
@lab_fin_39	EQU	*
;/ print...
	PUSH	@lab_back_PGCD_40
	PUSH	120
	PUSH	192
	PUSH	PGCD
	GOTO	
@lab_back_PGCD_40	EQU	*
	OUT
;/ print...
	PUSH	@lab_back_fac_41
	PUSH	6
	PUSH	fac
	GOTO	
@lab_back_fac_41	EQU	*
	OUT
	PUSH	@lab_back_cribleErato_42
	PUSH	cribleErato
	GOTO	
@lab_back_cribleErato_42	EQU	*
	STOP

