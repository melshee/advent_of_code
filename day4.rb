# process every line in a text file with ruby
file='day4input.rb'

  sum = 0
  # for each line, calculate difference between max and min
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
      if(passphrase[i] == passphrase[j] && i != j)
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

