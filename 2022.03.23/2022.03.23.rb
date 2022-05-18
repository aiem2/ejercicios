# paises = {
#  Mexico: 70,
#  Chile: 50,
#  Argentina: 55
# }
# paises.each do |k,v|
#     puts k
# end
# print "\n"
# paises.each do |k,v|
#     puts v
# end
# print "\n"
# paises.each do |k,v|
#     puts v if v > 55
# end

# ventas = {
#     Octubre: 65000,
#     Noviembre: 68000,
#     Diciembre: 72000
#     }

# nuevo_ventas = {}
# ventas.each do |k,v|
#     nuevo_ventas[k] = v * 0.8
# end
# print nuevo_ventas

# ventas = {
#     Octubre: 65000,
#     Noviembre: 68000,
#     Diciembre: 72000
# }

# def ventas_filtradas(ventas)
#     ventas_filtradas = {}
#     ventas.each do |k,v|
#         ventas_filtradas[k] = v if v >70000
#     end
#     puts ventas_filtradas
# end

# ventas_filtradas(ventas)

# a = {k1: 5, k2: 7}
# puts a
# a.delete(:k1)
# puts a

# a = {k1: 5, k2: 10}
# b = {k3: 15, k4: 20}
# puts a
# puts b
# c = a.merge(b)
# puts c

# colors = {
#     'red' => '#cc0000', 
#     'green' => '#00cc000', 
#     'blue' => '#0000cc'
# }

# puts colors.keys
# puts colors.values

# a = [1,2,3].zip([4,5,6])

# print a

# nombres = ['Alumno1', 'Alumno2', 'Alumno3']
# notas = [10, 3, 8]

# hash = {}
#     nombres.count.times do |i|
#         element = nombres[i]
#         nota = notas[i]
#     hash[element] = nota
# end
# print hash

# puts [1, 2, 3, 4, 5, 6, 7, 8] .group_by{ |x| x.even? }
# puts ["hola", "a", "todos"].group_by { |x| x.length }
# puts [1, 2, 3, 4, 1, 2, 1, 5, 8].group_by { |x| x }
# puts ['a', 'ab', 'abc', 'b', 'bc', 'bcd'].group_by { |x| x[0] }
# puts ['a', 1, 'b', 2, 'c'].group_by { |x| x.class }

# array = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7]
# hash = {}
# array.each do |i|
#     if hash[i]
#         hash[i] += 1
#     else
#         hash[i] = 1
#     end
# end

# puts hash

array = [1, 2, 6, 7, 2, 5, 8, 9, 1, 3, 6, 7]
agrupado = array.group_by {|x| x}


agrupado.each do |k,v|
    agrupado[k] = v.count
end

puts agrupado   