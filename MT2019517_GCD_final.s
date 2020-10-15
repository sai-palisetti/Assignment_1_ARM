     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
        MOV r2,#06 ; load a in r2
        MOV r3,#012 ; load b in r3
loop   CMP r2,r3
       BEQ end
	   ITE GT
	   SUBGT r2,r2,r3  ; if (a>b) a=a-b
	   SUBLE r3,r3,r2  ; else b=b-a
	   B loop    
end    MOV r7,r2;   Final GCD output in r7
stop   B stop ; stop program
		 
     ENDFUNC
     END
