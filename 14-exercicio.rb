def sortear_numeros (qtd, limite_inicio, limite_fim)
    array = []
    for n in (0..qtd-1)
        array[n] = rand(limite_inicio..limite_fim)
    end
    x = 0
    y = 1
        while x <= array.size-2 && y <= array.size-1
            if array[x] == array[y]
                array[y] = rand(limite_inicio..limite_fim)
                x = 0
                y = 1
            elsif y == array.size-1
                x = x + 1
                y = x + 1
            else 
                y = y + 1
            end
        end
    return array
end

def obter_apostas(qtd, limite_inicio, limite_fim)
    array = []
    array_validado = []
    mensagem_erro = 'valor inválido, você só pode digitar números entre ' + limite_inicio.to_s + ' e ' + limite_fim.to_s
    

    for n in (0..qtd-1)
        puts 'Digite o ' + (n+1).to_s + 'º número da aposta'
        array[n] = gets.chomp
        array_validado[n] = array[n].to_i
        while array[n] != "0" && array_validado[n] == 0 || array_validado[n] < limite_inicio || array_validado[n] > limite_fim
            puts 'o ' + (n+1).to_s + 'º numero da aposta é um ' + mensagem_erro
            puts 'Digite novamente o valor: '
            array[n] = gets
            array_validado[n] = array[n].to_i
        end
    end
    print array_validado
    x = 0
    y = 1
        while x <= array_validado.size-2 && y <= array_validado.size-1
            if array_validado[x] == array_validado[y]
                puts 'Os números não podem repetir'
                puts  'Digite novamente o ' + (y+1).to_s + 'º número da aposta'
                array[y] = gets
                array_validado[y] = array[y].to_i
                while array[y] != "0" && array_validado[y] == 0 || array_validado[y] < limite_inicio || array_validado[y] > limite_fim
                    puts 'o ' + (y+1).to_s + 'º numero da aposta é um ' + mensagem_erro
                    puts 'Digite novamente o valor: '
                    array[y] = gets
                    array_validado[y] = array[y].to_i
                end
                x = 0
                y = 1
            elsif y == array_validado.size-1
                x = x + 1
                y = x + 1
            else 
                y = y + 1
            end
        end   
    return array_validado
end

def verificar_acertos(sorteados, apostados)
    acertados = []
    x = 0
    for i in (0..sorteados.size-1)
        for n in (0..apostados.size-1)
            if sorteados[i] == apostados[n]
                acertados[x] = apostados[n]
                x = x + 1
            end
        end
    end
    return acertados
end

def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: " + sorteados.to_s
    puts "Numeros apostados: " + apostados.to_s
    puts "Acertos: " + acertados.to_s
end

mega_sena()

