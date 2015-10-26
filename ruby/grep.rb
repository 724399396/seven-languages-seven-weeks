def grep(filename, phrase)
    File.open(filename) do |f|
        f.each { |line| puts "#{f.lineno}: #{line}" if line[phrase] }
    end
end

grep('grep.rb', 'each')
