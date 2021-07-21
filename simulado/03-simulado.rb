#Escreva uma função chamada "calcula_media" que deve 
#receber um array de números como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.

def calcula_media(array)
    soma = 0
    for n in (0..array.size-1)
        soma = soma + array[n]
    end
    media = soma/array.size.to_f
    return media.to_f
end

numeros = [1, 2, -1, 3, 0, 7]
print calcula_media(numeros)
puts

numeros = [1, 10, 3, 4, 2, 2, 3, 2]
print calcula_media(numeros)

