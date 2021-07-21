#Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, contendo apenas 2 elementos: 
#o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.

def menor_maior(array)
    menor_maior = []
    maior = 0
    menor = 0
    x = 0
    y = 1
    #Não consegui entender o porque dos whiles a seguir não funcionarem corretamente (eles não pecorrem todo o array)
    while x <= array.size-1 && y <= array.size-1
        if array[x] > array[y]
            maior = array[x]
            y = y + 1
        elsif y == array.size-1
            x = x + 1
            y = 0
        else
            y = y + 1
        end
    end
    x = 0
    y = 1
    while x <= array.size-1 && y <= array.size-1
        if array[x] < array[y]
            menor = array[x]
            y = y + 1
        elsif y == array.size-1
            x = x + 1
            y = 0
        else
            y = y + 1
        end
    end
    menor_maior = [menor, maior]
    return menor_maior
end    

numeros = [10, 0, -1, -500, 20, 100]
print menor_maior(numeros)

numeros = [283882, -1992, 12, 2002, 2000000, 1119, -123, 2889, 0, 9982, -19029, 234]
print menor_maior(numeros)
