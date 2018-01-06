;Duarte Campos e Francisco Costa
;UC - Arquitetura de Computadores
;2017-2018 ISMT

;R1-Sensor de entrada
;R2-Sensor de saida
;R3-Sensor fila 1
;R4-Sensor fila 2
;R5-Sensor fila 3
;R6-Sensor fila 4
;R7-Total de carros
;R8-Leitor de Cartões
;R9-Cancela de entrada
;R10-Cancela de saida
;0-Desligado ou fechado
;1-Ligado ou aberto
INICIO:			
		MOV   R1, 0                 
		MOV   R2, 0              
		MOV   R3, 0                      
		MOV   R4, 0                      
		MOV   R5, 0                      
		MOV   R6, 0 
		MOV   R7, 0
		MOV   R8, 0
		MOV   R9, 0    
        MOV   R10,0		
		JMP   CARROENTRA


CARROENTRA:   	   
			MOV R1, 1       ;O sensor de entrada deteta movimento
			MOV R8, 1		;Alguém passou o cartão pelo leitor e ativou-o
			ADD R7, 1       ;Adiciona 1 carro ao total
			SUB R7, 8       ;Verifica se o parque está cheio
			JZ PARQUECHEIO
			MOV R9, 1       ;A cancela abre
			SUB R1, 1       ;Desliga o sensor de movimento
			SUB R8, 1       ;Desliga o leitor de cartão
			MOV R9, 0       ;A cancela fecha
			JMP CARROENTRA
			JMP FILA1


PARQUECHEIO:      
            MOV R9, 0       ;A cancela continua fechada
			JMP CARROSAI    ;Um carro sai
FILA1:            
            ADD R3, 1
			SUB R3, 2
			JZ  FILA2
			JMP CARROENTRA					
FILA2:      
            ADD R4, 1
			SUB R4, 2
			JZ  FILA3
			JMP CARROENTRA
FILA3:
            ADD R5, 1
			SUB R5, 2
			JZ  FILA4
			JMP CARROENTRA			
FILA4:       
            ADD R6, 1
			SUB R6, 2
			JZ  CARROSAI
			JMP CARROENTRA			
CARROSAI:     
            MOV R2, 1		;O sensor de saida detetou movimento
			MOV R8, 1		;Alguém passou o cartão pelo leitor e ativou-o
			MOV R10, 1		;Cancela de Saida abre
			SUB R7, 1       ;Tira 1 carro do total
			JMP CARROENTRA ;Volta para o sensor inicial
FIM:
   	        JMP Inicio		;Volta a repetir o processo		