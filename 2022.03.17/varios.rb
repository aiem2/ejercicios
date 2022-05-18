# a = '1, 10, 2, 19, 9, 21, 32'
# b = a.split(',')
# print b

# a = [1,2,3]
# print a.inject(0) {|suma, x| suma += x;1}

# a = "hola"
# a[0] = "H"
# puts a 

# a = [1, 2, 3, 4]
# b = a.dup
# a[0] = 100
# print a #[100, 2, 3, 4] 
# print b #[1, 2, 3, 4]

# array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# n = array.count
# n.times do |i|
#     n.times do |j|
#         print "\t#{array[i][j]}"
#     end
# puts
# end

# array = [[1, 2, 3], [4, 5, 6, 91], [7, 8, 9, 10]]
# n_exterior = array.count
# n_exterior.times do |i|
#     n_interior = array[i].count
#     n_interior.times do |j|
#         print "\t#{array[i][j]}"
#     end
#     puts
# end

# puts "\n"

# array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# n = array.count
# n.times do |i|
#     n.times do |j|
#         print "\t#{array[j][i]}"
#     end
#     puts
# end

# m = [[3, 2],[1, 4]]
# m.each do |row|
#     row.each do |ele|
#         print "\t#{ele}"
#     end
#     print "\n"
# end

a = [1,2,3,4,5]
b = ["hola",1,2,5]

print a | b
