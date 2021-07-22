def insere_no_array(array, valor, posicao)
    n = array.size
    until n == posicao
        if posicao >= n
            return false
        else 
        array[n] = array[n-1]
        n = n - 1
        end
    end
    array[posicao] = valor
    return true
end

lista = [10, 290, 291, 22, 3, 29, 2]
print lista
puts
puts insere_no_array(lista, 105, 3)
print lista
puts
puts insere_no_array(lista, 1402, 2)
print lista
puts
puts insere_no_array(lista, 555555, 5)
print lista
puts
puts insere_no_array(lista, 5000, 100)
print lista
puts
puts insere_no_array(lista, 1, 11)
print lista
puts