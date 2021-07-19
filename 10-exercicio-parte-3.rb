print 'digite o valor da base da pirâmide'
base = gets.to_i

if base / 2 == 0
    for x in (1..base)
        print "*"
    end
else 
    for y in (1..base)
        print '*'
    end
end