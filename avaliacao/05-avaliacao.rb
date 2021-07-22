#Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de #Leibniz para obter o valor de PI. O resultado do cálculo deve ser retornado pela função.
#Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função #retorna nil.
#OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!

def calcula_pi(numero)
    if numero < 1
        return nil
    elsif numero.class != Integer
        return nil
    end

    valor_1 = 4.0
    valor_2 = 1.0
    pi = 0

    for i in (1..numero)
        if i % 2 != 0.0
          pi = pi + (valor_1/valor_2)
          valor_2 = valor_2 + 2
        else
            pi = pi - (valor_1/valor_2)
          valor_2 = valor_2 + 2
        end
    end
    return pi
end

puts calcula_pi(4)
puts calcula_pi(6)
puts calcula_pi(0) == nil
puts calcula_pi(-1) == nil
puts calcula_pi(5)
puts calcula_pi(5.2) == nil

