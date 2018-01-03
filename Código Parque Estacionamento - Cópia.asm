INICIO:			MOV   R1, 0                      
               		MOV   R2, 0                      
               		MOV   R3, 0                      
               		MOV   R4, 0                      
               		MOV   R5, 0                      
               		MOV   R6, 0 
			MOV   R7, 0
			MOV   R8, 0
			MOV   R9, 0                     
               		JMP   SENSORCARRO
               
SENSORCARRO: 		ADD   R1, 1                       
               		ADD   R8, 1
               		JMP   CARROENTRA

CARROENTRA:   		ADD   R2, R1                      
               		ADD   R3, R2
               		MOV   R8, 0
			JMP   CARROSAI
  
CARROSAI:      		SUB   R2, 1
               		JMP   SENSORCARRO