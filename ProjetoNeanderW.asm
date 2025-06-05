;---------------------------------------------------
; Programa:Soma + Dobra do valor < 15
; Autor:Victor Camarotti
; Data:05/06/2025
;---------------------------------------------------
INICIO:       LDA NUM1           ; Carrega NUM1
              ADD NUM2           ; Soma NUM2
              STA RESULTADO      ; Guarda resultado

              ADD RESULTADO      ; Soma novamente (dobrar)
              STA RESULTADO2     ; Guarda resultado dobrado

              LDA RESULTADO2     ; Carrega o resultado dobrado
              SUB CONST_15       ; Subtrai 15
              JN MENOR_QUE_15    ; Se negativo, vai para MENOR_QUE_15
              LDA UM             ; Se não for negativo, carregar 1
              STA FLAG           ; FLAG = 1
              JMP FIM            ; Salta para o final

MENOR_QUE_15: LDA ZERO           ; FLAG = 0
              STA FLAG

FIM:          HLT

; Dados
NUM1:         DB 5
NUM2:         DB 3
RESULTADO:    DB 0
RESULTADO2:   DB 0
FLAG:         DB 0
CONST_15:     DB 15
ZERO:         DB 0
UM:           DB 1
