class Tiros
    attr_reader :r1, :r2
    attr_accessor :total

    def initialize
        @r2=0
        self.tiro_1
        self.tiro_2 if @r1 != 10
        self.total_tiros
    end

    def tiro_1
        @r1 = rand(0..10)
    end

    def tiro_2
        @r2 = rand(0..(10-@r1))
    end
    
    def total_tiros 
        @total = @r1 + @r2
    end

    def spare(b1)
        @total += b1
    end

    def strike(b1,b2)
        @total += b1 + b2
    end

    def suma_puntos(sum)
        @total += sum
    end
end
