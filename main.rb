puts 'Welcome to the  Bowling game'

def primer_tiro
    puts 'presione 1 para su primer tiro'
    primero = gets.chomp.to_i
    r1 = rand(0..10)
    if primero == 1
        puts "Su resultado es: #{r1}"
        return r1
    else
        primer_tiro 
    end
end

def segundo_tiro(r1)
    puts 'presione 2 para su segundo tiro'
    segundo = gets.chomp.to_i
    r2 = rand(0..(10-r1))
    if segundo == 2
        puts "Su resultado es: #{r2}"
        return r2
    else
        segundo_tiro(r1)
    end
end

i =1

while i<=10 do
    
    print'éste es su intento numero: ', i
    puts
    r1 = primer_tiro
    r2 = segundo_tiro(r1) 
    rt = r1 +r2
    i=i+1
    
    puts "el total de puntos es #{rt}"
          
end

# for i in 1..10 do
#     puts "Su puntaje total de la casilla #{i}"
#     r1 = primer_tiro
#     r2 = segundo_tiro(r1) 
#     rt = r1 +r2
    
#     puts "el total de puntos es #{rt}" 
# end
# /puts 'Presiones 2 para su segundo tiro'
# segundo = gets.chomp.to_in/