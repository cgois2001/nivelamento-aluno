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
tentativas = 0

while chute_i != numero
    
    if chute != "0" && chute_i == 0
        puts mensagem_erro
        puts 'tente novamente'
        chute = gets.chomp
        chute_i = chute.to_i
        puts chute_i
        next

    elsif chute_i <0 || chute_i > 100
        puts mensagem_erro
        puts 'tente novamente'
        chute = gets.chomp
        chute_i = chute.to_i
        next
        
    elsif chute_i < numero
        puts "Errou! O número digitado é menor do que o pensado"
        tentativas = tentativas + 1
        puts 'tente novamente'
        chute = gets.chomp
        chute_i = chute.to_i
        next

    elsif chute_i > numero
        puts "Errou! O número digitado é maior do que o pensado"
        tentativas = tentativas + 1
        puts 'tente novamente'
        chute = gets.chomp
        chute_i = chute.to_i
    end
end

puts 'Você acertou! Você teve: ' + tentativas.to_s + ' tentativas!'