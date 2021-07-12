# O diâmetro de um círculo é 2x o seu raio.

def calcula_diametro(raio)
    return raio*2.0
end

puts calcula_diametro(10)
puts calcula_diametro(20)

# O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)

def calcula_comprimento(raio)
    return calcula_diametro(raio) * Math::PI
end

puts calcula_comprimento(1)
puts calcula_comprimento(0.5)
puts calcula_comprimento(5)

# A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)

def calcula_area(raio)
    return raio ** 2 * Math::PI
end

puts calcula_area(1)
puts calcula_area(10)

