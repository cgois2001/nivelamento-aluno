#1) Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o #produto resultante entre eles (a multiplicação de todos os elementos entre si).

def multiplica_elemento_array(array)
    for n in (1..array.size-1)
        array[0] = array[0] * array[n]
    end
    produto = array[0]
    return produto
end

numeros = [1, 4, 7, 10, 2, 1]
puts multiplica_elemento_array(numeros)
