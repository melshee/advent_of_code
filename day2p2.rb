# process every line in a text file with ruby
file='day2input.rb'

  sum = 0
  # for each line, calculate difference between max and min
  File.readlines(file).each do |line|
    lineArr = line.split(" ")
    int_arr = Array.new
    lineArr.each do |li|
     int_arr << li.to_i #convert current index element to an int and put in int_arr
    end
    # puts "NEW LINEEE"
    # print int_arr
    # puts

    pair = false
    i = 0
    while pair == false and i < int_arr.length
      num1 = int_arr[i]
      # puts "num1 = #{num1}"
      k = 0
      while k < int_arr.length 
        num2 = int_arr[k]
        
        # puts "num2 = #{num2}"
        if num1 % num2 == 0 and i != k
          pair = true
          sum = sum + num1/num2
          puts "yes, #{num1} and #{num2} are divisible"
        elsif num2 % num1 == 0 and i != k
          pair = true
          sum = sum + num2/num1
          puts "yes, #{num1} and #{num2} are divisible"
        end
        k = k + 1
      end
      i = i + 1
    end
  end

  puts "sum = #{sum}"