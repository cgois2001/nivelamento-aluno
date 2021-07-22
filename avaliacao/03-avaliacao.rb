#3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da #escada e deve retornar um array de strings para representar graficamente a escada.
#Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. Caso contrário, a #função deve retornar um array vazio.

def altura_escada(numero)
    escada = []
    x = '#'
    y = '_'
    nn = 1
    if numero < 1
        return escada
    end
    for n in (0..numero-1)
        escada[n] = y * (numero-1) + x * nn
        numero = numero - 1
        nn = nn + 1
    end
    return escada
end

puts altura_escada(5)