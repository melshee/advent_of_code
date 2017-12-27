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

    max = int_arr.max
    # puts "max = #{max}"
    min = int_arr.min
    # puts "min = #{min}"
    diff = max - min
    # puts diff
    sum = sum + diff
  end

  puts sum 