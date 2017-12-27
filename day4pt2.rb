file='day4input.rb'

  sum = 0
  File.readlines(file).each do |line|
    passphrase = line.split(" ")
  
  # print passphrase
  # puts 
  length = passphrase.length

  i = 0
  dup = false
  while i < length
    # puts passphrase[i]
    j = 0
    while j < length
      if(passphrase[i].chars.sort.join == passphrase[j].chars.sort.join && i != j)
        dup = true
      end
      j = j + 1
    end
    i = i + 1
  end

  if dup == false
    sum = sum + 1
  end

end
puts "num of valid phrases = #{sum}"

