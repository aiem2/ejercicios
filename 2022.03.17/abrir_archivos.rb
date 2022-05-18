# data = open('data').read.chomp.split(',')
# data_int = []
# puts data
# puts data_int

# data.each do |i|
#     data_int.push i.to_i
# end

# data_int.each do |j|
#     puts data_int[j].class 
# end

data2 = open("data2").readlines
data2_int = []

data2.count.times do |i|
    data2[i] = 20 if data2[i].to_i > 20
    data2_int.push data2[i].to_i
end

print data2_int

File.write("Data 2 limpia", data2.join(" "))



