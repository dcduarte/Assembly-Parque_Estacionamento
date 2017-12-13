

INICIO:        MOV   R1, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R2, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R3, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R4, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R5, 0                      ;Começar com os valores a zero(Não existem carros no parque) 
               MOV   R6, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               JMP   SENSOR_CARRO               
			   
SENSOR_CARRO:  ADD   R1, 1                       ;Sensor deteta um carro a entrar
               JMP   CARRO_ENTRA
CARRO_ENTRA:   ADD   R2, R1                      ;Soma o carro que entrou
               JMP   SENSOR_CARRO 