def aumento(v,a)
    vf = []
    v.each do |precio|
        vf.push (precio + (precio*a)/100)
    end
    vf
end

print aumento([10,20,30], 15)
