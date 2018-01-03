;R1 - Sensor de Entrada
;R2 - Total de carros
;R3 - sensor fila 1
;R4 - sensor fila 2
;R5 - sensor fila 3
;R6 - sensor fila 4
;R7 - Sensor de Saida
;C1 - Cancela Entrada
;C2 - Cancela Saida
;0  - Desligado ou Fechado
;1  - Ligado ou Aberto 

INICIO:        MOV   R1, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R2, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R3, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R4, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               MOV   R5, 0                      ;Começar com os valores a zero(Não existem carros no parque) 
               MOV   R6, 0                      ;Começar com os valores a zero(Não existem carros no parque)
               JMP   SENSOR_CARRO               
			   
SENSOR_CARRO:  SUB   C1, 0
               ADD   R1, 1                       ;Sensor deteta um carro a entrar
               ADD   C1, 1
               JMP   CARRO_ENTRA
CARRO_ENTRA:   ADD   [R2], R1                      ;Soma o carro que entrou
               ADD   R3, [R2]
               ADD   C1, 0  
               JMP   SENSOR_CARRO 
CARRO_SAI      ADD   R7, 1
               SUB   R2, 1
			   ADD   C2, 1
			   
CARRO_FILA_1:  ADD   R3, 1