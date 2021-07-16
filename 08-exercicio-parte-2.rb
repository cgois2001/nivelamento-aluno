#Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.

print 'digite o primeiro número para calculo do MMC '
x = gets.to_i
print 'digite o segundo número para prosseguir com calculo '
y = gets.to_i

def calcula_mmc(x, y)
n = 1
    while n != 0
    conta = n % x
    conta1 = n % y
    validacao = conta == 0 && conta1 == 0
        if validacao == true 
            return n
        else 
        n = n + 1
        end
    end
end

puts 'O MMC de ' + x.to_s + ' e ' + y.to_s + ' = ' + calcula_mmc(x, y).to_s