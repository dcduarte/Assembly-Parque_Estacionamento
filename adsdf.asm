INICIO:        MOV   R1, 0                      
               MOV   R2, 0                      
               MOV   R3, 0                      
               MOV   R4, 0                      
               MOV   R5, 0                      
               MOV   R6, 0                      
               JMP   SENSOR_CARRO               
SENSOR_CARRO:  ADD   R1, 1                       
               JMP   CARRO_ENTRA
CARRO_ENTRA:   ADD   R2, R1                      
               JMP   SENSOR_CARRO 