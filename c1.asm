.386
STACK	SEGMENT USE16 STACK
        DB 200 DUP(0)
STACK 	ENDS

DATA	SEGMENT USE16
		SUM  DW  ?
DATA	ENDS

CODE	SEGMENT USE16
		ASSUME  CS:CODE, SS:STACK, DS:DATA, ES:DATA
START:	MOV  AX, DATA
		MOV  DS, AX
		MOV  CX, 50
		MOV  AX, 0
		MOV  BX, 1	
NEXT:	ADD  AX, BX
		INC  BX
		INC  BX
		DEC  CX		
		JNE  NEXT
		MOV  SUM, AX
		MOV  AH, 4CH
		INT  21H	
CODE	ENDS
		END  START
