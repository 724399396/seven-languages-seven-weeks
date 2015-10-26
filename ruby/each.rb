a = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]

i = 0

a.each do |e|
    print e
    i += 1
    if (i % 4 == 0)
        puts
    else
        print ','
    end
end

a.each_slice(4) {|e| p e}
