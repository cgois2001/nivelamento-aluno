#Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
#e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
#Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
#a função retorna o array inteiro.

numeros = [20, 394, 392, 11, 29, 392, 994, 23, 22, 1101]
print numeros
puts 
puts numeros.size

puts 'Qual posição do array você deseja apagar?'
posicao = gets.to_i


def remove_da_posicao(array, posicao)
    novo_array = []
    x = array.size
    if posicao >= x || posicao <= 0
        return array
    else 

        #primeira versão
        #for n in (0..posicao)
            #if n == posicao
                #until posicao == x-1
                #    novo_array[posicao] = array[posicao + 1]
                #    posicao = posicao + 1
                #end
                #novo_array[posicao] = array[posicao + 1]
            #else
            #    novo_array[n] = array[n]
            #end
        #end
        
        #segunda versão
            for n in (0..x-2)
                if n == posicao
                    novo_array[posicao] = array[posicao + 1]
                    posicao = posicao + 1
                else
                    novo_array[n] = array[n]
                end
            end                                            
    end
    return novo_array
end

numeros = remove_da_posicao(numeros, posicao)
print numeros
puts
print numeros.size