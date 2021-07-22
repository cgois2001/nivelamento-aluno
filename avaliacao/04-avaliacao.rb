#Defina a função “altura_arvore_utopica”, que recebe a altura inicial da árvore utópica plantada no #final do outono e a quantidade de ciclos de crescimento, e que retorne a altura resultante após a #quantidade de ciclos de crescimento informada.
#Valide a altura inicial (que não pode ser zero ou menor) e a quantidade de ciclos (que não pode ser #negativo). Caso a validação falhar, a função deve retornar nil.

def altura_arvore_utopica(altura, ciclos)
    altura_final = 0

    if altura <= 0
        return nil
    elsif ciclos < 0
        return nil
    elsif ciclos == 0
        altura_final = altura
        return altura_final
    end

    for n in (1..ciclos)
        if n % 2 == 0 
            altura = altura + 1
        else 
            altura = altura + altura
        end
    end
    altura_final = altura
    return altura_final
end

puts altura_arvore_utopica(2, 5)
puts altura_arvore_utopica(0, 5)
puts altura_arvore_utopica(10, -1)
puts altura_arvore_utopica(10, 10)



