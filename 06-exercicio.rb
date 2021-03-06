# Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros
# (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos)
# e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.

print 'defina qual valor da taxa de vacinação '
taxa_vacinacao = gets.to_f

print 'defina o valor do fator de transmissão '
fator_transmissao = gets.to_f

print 'defina agora o valor da taxa de ocupação de leitos '
taxa_ocupacao = gets.to_f

def fase_pandemica(taxa_vacinacao, fator_transmissao, taxa_ocupacao)
    
# Obs.: validar os parâmetros, considerando as seguintes regras:
# taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# fator de transmissão dever ser um número maior ou igual a zero
# taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)

    erro = 'algum dos valores inseridos são inválidos, a taxa de vacinação e de ocupação tem que ser um 
valor entre 0 e 1, e o fator de transmissão deve ser um valor positivo.'

    if taxa_vacinacao < 0.0 || taxa_vacinacao > 1.0
        return erro

    elsif fator_transmissao < 0.0
        return erro

    elsif taxa_ocupacao < 0.0 || taxa_ocupacao > 1.0
        return erro

    end

#FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
#FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%,
 #porém com fator de transmissão menor que 1.
#FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, 
 #porém com fator de transmissão menor que 1.
#FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, 
 #porém com fator de transmissão menor que 1.
#FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% 
 #ou quando o fator de transmissão for maior ou igual a 1.
#FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.

    if taxa_vacinacao > 0.8 
     return 'AZUL'

    elsif taxa_ocupacao <= 0.5 && fator_transmissao < 1
     return 'VERDE'

    elsif taxa_ocupacao > 0.5 && taxa_ocupacao < 0.65 && fator_transmissao < 1
        return 'AMARELA'

    elsif taxa_ocupacao > 0.65 && taxa_ocupacao < 0.8 && fator_transmissao < 1
        return 'LARANJA'

    elsif taxa_ocupacao > 0.9 
        return 'ROXA'

    elsif taxa_ocupacao > 0.8 && taxa_ocupacao < 0.9 || fator_transmissao >= 1
     return 'VERMELHA'

    end
end

puts fase_pandemica(taxa_vacinacao, fator_transmissao, taxa_ocupacao)

