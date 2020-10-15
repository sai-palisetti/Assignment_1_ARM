     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
        MOV r1,#0x8 ; initialise n=8 i.e 8th fibnocci number
        MOV r2,#1 ; load f1=1 into r2
        MOV r3,#-1 ; load f2=-1 into r3
loop   CMP r1,#0 ; while n!=0
	   BEQ end
	   ADD r2,r2,r3 ; f1=f1+f2
	   SUB r3,r2,r3 ; f2=f1-f2
	   ADD r1,r1,#-1 ; n=n-1
	   B loop    
end    MOV r7,r2;  output of final nth fibnocci number  in r7
stop    B stop ; stop program
		 
     ENDFUNC
     END
