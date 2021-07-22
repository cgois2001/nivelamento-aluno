#Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
#Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série (usar a função #sort()) e retornar:
#- se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
#- e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das #posições (n/2)-1 e (n/2)

def mediana(array)
    array = array.sort()
    mediana = 0
    n = array.size
    if n % 2 == 0.0
        mediana = (array[(n/2)-1] + array[n/2]) / 2 .to_f
        return mediana
    else
        mediana = array[(n/2).round(0)]
        return mediana
    end
end
numeros =  [10, 0, -1, -500, 20, 100]
puts mediana(numeros)

numeros = [10, 0, -1, -500, 20]
puts mediana(numeros)

numeros = [2.5, 3.4, 10, 8.3, 8.1, 7.6, 6.7, 8.6, 6.7, 7.5, 8.9, 5.8, 5.7, 7.9, 8.3, 9.1, 6.9, 4.9, 9.2, 1.9]
puts mediana(numeros)

numeros = [19, 18, 12, 20, 17, 21, 15]
puts mediana(numeros)