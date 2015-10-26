random = Random.new

while true
    rand = random.rand(10)
    a = gets.chomp
    if a.to_i < rand
        puts "small"
    else
        puts "big"
    end
end
