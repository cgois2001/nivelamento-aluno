# quantas horas tem o ano?
ano = 1
dias_no_ano = ano * 365
horas_no_ano = dias_no_ano * 24
puts '1 ano * 365 dias * 24 horas = ' + horas_no_ano.to_s + ' horas no ano' 
puts

# quantos minutos tem uma decada?
minutos_no_ano = horas_no_ano * 60
decada = (ano*10)
puts '8760 horas * 60 minutos * 10 anos = ' + (minutos_no_ano*decada).to_s + ' minutos em uma decada'
puts

# qual minha idade em segundos
idade = 20
segundos_no_ano = minutos_no_ano * 60
puts minutos_no_ano.to_s + ' minutos * 60 segundos * 20 anos = ' + (idade*segundos_no_ano).to_s + ' segundos de vida'
puts

# quantos chocolates pretendo comer?
choco_por_mes = 5
mes_por_ano = 12
puts '5 chocolates * 12 meses * 80 anos = ' + (choco_por_mes*mes_por_ano*(80*ano)).to_s + ' chocolates em toda vida'
puts

# quantos anos em 1232 milhões de segundos
segundos_de_vida = 1232000000
segundos_no_ano.to_f
puts segundos_no_ano.to_s + ' + ' + segundos_de_vida.to_s + ' = ' + (segundos_de_vida/segundos_no_ano).to_s + ' anos de vida'