#Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar #um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam a #mesma posição em cada array.

def multiplica_arrays(array, array_2)
    multiplicacao = []
    soma = 0
    if array.size != array_2.size
        return nil
    else
        for n in (0..array.size-1)
            multiplicacao[n] = array[n] * array_2[n]
        end
        for i in (1..array.size-1)
            multiplicacao[0] = multiplicacao[0] + multiplicacao[i]
        end
        soma = multiplicacao[0]
    return soma
    end
end

numeros = [3, 20, 1]
numeros_2 = [100, 1, 200]

print multiplica_arrays(numeros, numeros_2)
