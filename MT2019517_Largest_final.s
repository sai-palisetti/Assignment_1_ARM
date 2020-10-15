 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
        MOV R1,#0x600 ; 
        MOV R2,#0x200 ; 
        MOV R3,#0x800 ; 
	CMP R1,R2 ; compare R1 and R2
	ITE GT    ;  Largest of R1 and R2 is stored in R4
	MOVGT R4,R1 ; R4 = R1 (if R1 > R2)
	MOVLE R4,R2 ; R4 = R2 (if R1 < R2)
	CMP R4,R3   ; Now compare R4 and R3
	ITE GT      ; Largest of R4 and R3 is stored in R5
	MOVGT R5,R4  ; R5 = R4 (if R4 > R3)
	MOVLE R5,R3  ;  else R5 = R3 which is final result i.e largest among three is stored in R5
stop    B stop ; stop program
		 
     ENDFUNC
     END
