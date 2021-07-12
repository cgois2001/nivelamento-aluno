# retornar a quantidade de horas que tem em uma quantidade de anos, 
# que será um valor informado para a função

def calcula_horas_de_ano(anos)
        horas_no_ano = (365*24)
        horas = (horas_no_ano * anos)
        return horas
    end

puts calcula_horas_de_ano(1).to_s + ' horas'
puts calcula_horas_de_ano(2).to_s + ' horas'
puts calcula_horas_de_ano(10).to_s + ' horas'

# retornar a quantidade de minutos que tem em uma quantidade de décadas,
# que será um valor informado para a função

def calcula_minutos_por_decada (decadas)
    minutos_no_ano = (calcula_horas_de_ano(1) * 60)
    minutos = (minutos_no_ano * decadas * 10)
    return minutos
end

puts calcula_minutos_por_decada(1).to_s + ' minutos'
puts calcula_minutos_por_decada(2).to_s + ' minutos'
puts calcula_minutos_por_decada(10).to_s + ' minutos'

# retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função

def calcula_segundos_por_idade(idade)
    minutos_no_ano = (calcula_minutos_por_decada(1) / 10)
    segundos_no_ano = (minutos_no_ano * 60)
    idade_em_seg = (segundos_no_ano * idade)
    return idade_em_seg
end

puts calcula_segundos_por_idade(1).to_s + ' segundos de vida'
puts calcula_segundos_por_idade(10).to_s + ' segundos de vida'
puts calcula_segundos_por_idade(20).to_s + ' segundos de vida'

# retornar a quantidade de anos que tem em uma quantidade de segundos,
# que será um valor informado para a função

def converte_seg_em_anos(segundos)
    anos = (segundos/60.0/60/24/365)
    return anos
end

puts converte_seg_em_anos(31536000).to_s + ' anos'
puts converte_seg_em_anos(63072000).to_s + ' anos'
puts converte_seg_em_anos(315360000).to_s + ' anos'
puts converte_seg_em_anos(1232000000).to_s + ' anos'

