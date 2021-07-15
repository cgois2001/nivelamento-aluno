#Pergunte ao usuário qual o número que ele quer o cálculo da taboada e imprima na tela os resultados.

print 'digite qual número você deseja visualizar a tabuada: '
numero = gets.to_i
n = 1

while n <= 10
    puts n.to_s + " X " + numero.to_s + ' = ' + (n * numero).to_s
    n = n + 1
end