# module MyMath
#     PI = 3.14
#     E = 2.718

#     def self.sumar(x, y)
#         x + y
#     end

#     def self.restar(x, y)
#         x - y
#     end

#     def self.multiplicar(x, y)
#         x * y
#     end
# end

# puts MyMath.sumar(MyMath::PI, MyMath::E)

class Persona
    def initialize
        @edad = 0
    end
    def envejecer
        self.edad += 1
    end
    def envejecer_rapido
        10.times {self.envejecer}
    end
end

puts Persona.new.envejecer_rapido