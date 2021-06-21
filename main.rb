require_relative 'src/tiros'
puts 'Welcome to the  Bowling game'

tiros ={}

(0..9).each { |i|
    tiros[i] = Tiros.new()

    if i == 9
        if tiros[9].r1 == 10
            tiros[i+1] = Tiros.new()
            if tiros[i+1].r1 == 10
                tiros[i+2] = Tiros.new()
            end
        elsif tiros[9].total == 10
            tiros[i+1] = Tiros.new()
        end
    end 
}

tiros.each {|key, object|
    if key <= 9
        if tiros[key].r1 == 10
            if tiros[key+1].r1 == 10
                tiros[key].strike(tiros[key+1].r1, tiros[key+2].r1) 
            else
                tiros[key].strike(tiros[key+1].r1, tiros[key+1].r2)
            end
        elsif tiros[key].total == 10
        tiros[key].spare(tiros[key+1].r1)
        end
    end
}

tiros.each {|key, object|
    if key > 0
        tiros[key].suma_puntos(tiros[key-1].total)
    end
    if key == 9
        break
    end
}

tiros.each {|key, object|
    puts "----------------Ronda #{key+1}--------------------------"
    puts "tiro uno: #{tiros[key].r1} tiro dos:#{tiros[key].r2} total: #{tiros[key].total}"
    if key == 9
        if tiros[key].r1 == 10
            if tiros[key+1].r1 == 10
                puts "----------------extras--------------------------"
                puts "tiro uno: #{tiros[key+1].r1} tiro dos: #{tiros[key+2].r1}"
                break
            elsif tiros[key+1].r1 != 10
                puts "----------------extras--------------------------"
                puts "tiro uno: #{tiros[key+1].r1} tiro dos: #{tiros[key+1].r2}"
                break
            end
        elsif tiros[key].total == 10
            puts "----------------extras--------------------------"
            puts "tiro uno: #{tiros[key+1].r1}"
            break
        end
    end
}
