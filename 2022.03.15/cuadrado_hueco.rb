n = ARGV[0].to_i

n.times do |i|
    print '+'
end

print "\n"

(n - 2).times do
    print "+"
    (n - 2).times do
        print " "
    end
    puts "+"
    
end

n.times do |i|
    print '+'
end