#Para auxiliar o secretário de Saúde, faça uma função chamada "calcula_media_movel", que deve receber #como parâmetros um array com a série de registros de mortes diária por covid e o número de dias de #intervalo para calcular as médias. Essa função deve retornar um novo array sendo que o valor de cada #elemento é a média de mortes com base no número de dias de intervalo informado no segundo parâmetro.
#OBS.: O último elemento do novo array deve ser a média dos últimos números da série de registros que #sobrarem.

def calcula_media_movel(array, dias)
    novo_array = []
    aux = 0
    aux1 = dias-1
    media = 0
    soma = 0.0
    for i in (0..array.size-1)
        soma = soma + array[i]
        puts soma
        if i == aux1
            novo_array[aux] = soma/dias
            aux = aux + 1
            aux1 = aux1 + aux1 + 1
            soma = 0
            puts soma
        end 
    end
    return novo_array
end

mortes_diaria = [
    263, 240, 266, 259, 253, 257, 261, 
    239, 274, 264, 260, 262, 261, 273, 
    270, 278, 266, 277, 290, 294, 289, 
    294, 277, 293, 297, 247, 278, 297, 
    298, 262, 266, 304, 246, 279, 281
]

print calcula_media_movel(mortes_diaria, 7)
