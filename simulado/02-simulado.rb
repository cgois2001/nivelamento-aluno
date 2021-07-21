#2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve retornar outro array com os seguintes 3 números:
#1. Na primeira posição, o percentual de números do array que são positivos
#2. Na segunda posição, o percentual de números do array que são zero
#3. Na última posição, o percentual de números do array que são negativos

def negativos_positivos(array)
    array_final = []
    positivo = 0
    zero = 0
    negativo = 0
    
    for n in (0..array.size-1)
        if array[n] > 0
            positivo = positivo + 1
        elsif array[n] == 0
            zero = zero + 1
        else 
            negativo = negativo + 1
        end
    end
    percentagem_positivo = positivo/array.size.to_f
    percentagem_zero = zero/array.size.to_f
    percentagem_negativo = negativo/array.size.to_f
    array_final = [percentagem_positivo, percentagem_zero, percentagem_negativo]
    return array_final
end

numeros = [1, 2, 0 , -1]
print negativos_positivos(numeros)
puts

numeros = [1, 2, 0 , -1, 0, 10, -93, 98, 0, 203,]
print negativos_positivos(numeros)
