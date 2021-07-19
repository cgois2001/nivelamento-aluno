#Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros 
#e que deve retornar a posição da primeira ocorrência do valor no array. 
#Se o valor não existir no array, retornar -1.

array = [10,12,29,29]
def posicao_no_array(array, elemento)
    for n in (0..array.size-1)
        if array[n] == elemento
            return n
        end
    end
    return -1
end

puts 'Qual elemento você quer encontrar?'
elemento = gets.to_i

if posicao_no_array(array, elemento) == -1
    print posicao_no_array(array, elemento)
else
    print 'O elemento aparece pela primeira vez no array na ' + (posicao_no_array(array, elemento)+1).to_s + 'º posição'
end

