itl = ARGV[0].to_i
itsl = ARGV[1].to_i

puts "<ul>"
itl.times do |j|
    puts "\t<li>\n"
    puts "\t\t<ul>"
    itsl.times do |i| 
        puts "\t\t\t <li> #{j+1}.#{i+1} <li>"
    end
    puts "\t\t</ul>"
    puts "\t</li>"
end
puts "</ul>"