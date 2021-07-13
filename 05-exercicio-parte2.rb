#Escreva um programa que pergunte o nome e a idade do usuário.

print 'Qual seu nome? '
nome = gets

print 'Olá ' + nome.chomp + ', agora me informe sua idade '
idade = gets.to_i

# Escreva também uma função que calcula a quantidade de batimentos cardíacos
# (uma estimativa) baseado na quantidade de dias que o usuário viveu.

def converte_anos_em_dias(idade)
    return (idade * 365)
end

def calcula_batimentos_na_vida(idade)
    return converte_anos_em_dias(idade) * 60 * 80
end

print 'Você já viveu ' + converte_anos_em_dias(idade).to_s + ' dias '
print 'e seu coração bateu ' + calcula_batimentos_na_vida(idade).to_s + ' vezes até agora'