# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute = gets.chomp

mensagem_erro = 'O jogo só aceita números de 0 a 100'
chute_i = chute.to_i

if chute != "0" && chute_i == 0
    puts mensagem_erro
elsif chute_i <0 || chute_i > 100
    puts mensagem_erro
elsif numero == chute_i
    puts "Acertou!"
else
    puts "Errou!"
end
