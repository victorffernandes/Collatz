

addi $20,$20, 196
;$20 a posição inicial do valor a ser lida da mp
lw $1, 0($20)
addi $20,$20, 1 

;o registrador $23 guarda 1
;o registrador $22 guarda o valor 0
;o registrador $21 guarda 2 para checar se é par ou não
; o resitrador $2 vai ser o contador da divisão
; o registrador $3 vai checar se a divisão terminou
; o registrador $4 checa o tamanho do vetor
sub $22, $22, $22
addi $21,$21, 2 

START:

addi $20,$20, 1
sw $1, 0($20)
beq $1, $23, FIM
addi $4, $4, 1
;o registrador $0 vai guardar o valor o ou 1
; checa se é par ou ímpar e manda pro label certo
and $0, $1, $21
beq $0, $22, DIV

MULT:
; faz a soma 3x + 1
add $1,$1,$1
add $1,$1,$1
add $1,$1,$1
addi $1,$1, 1

j START



DIV:
;subtrai e soma o contador
sub $1, $1, $21
addi $2, $2, 1
; checa se $23 é maior ou igual a $1
slt $3, $22, $1
beq $3, $23, DIV

sub $1, $1, $1
add $1, $1, $2
sub $3, $3, $3

j START




FIM:
addi $5, $5, 197
sw $4, 0($5)
FIMM:

j FIMM





