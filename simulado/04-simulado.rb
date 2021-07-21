#Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro como parâmetro 
#e deve imprimir na tela uma tabela de números seguindo a seguinte regra:
#1
#2 4
#3 6 9

def imprimir_tabela(linhas)
    numero = 0
    if linhas < 0
        puts'ARGUMENTO INVÁLIDO'
        return false
    else
        for n in (1..linhas)
            for n1 in (1..n)
                numero = n * n1
                print numero.to_s + ' '
            end
            puts
        end
    end
end

imprimir_tabela(5)
imprimir_tabela(25)
