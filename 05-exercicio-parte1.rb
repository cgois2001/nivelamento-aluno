# o diâmetro de um círculo é 2x o seu raio

print 'informe o raio da circuferência '
raio = gets.to_f
puts

def calcula_diametro(raio)
    return raio*2.0
end

puts 'o diamentro da circuferência é: ' + calcula_diametro(raio).to_s
puts 'o diamentro da circuferência é: ' + calcula_diametro(10).to_s
puts

# o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)

def calcula_comprimento(raio)
    return calcula_diametro(raio) * Math::PI
end

puts 'o comprimento da circuferência é: ' + calcula_comprimento(raio).truncate(3).to_s
puts 'o comprimento da circuferência é: ' +  calcula_comprimento(0.5).truncate(3).to_s
puts

# A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)

def calcula_area(raio)
    return raio ** 2 * Math::PI
end

puts 'a area da circuferência é: ' + calcula_area(raio).truncate(3).to_s
puts 'a area da circuferência é: ' + calcula_area(10).truncate(3).to_s


