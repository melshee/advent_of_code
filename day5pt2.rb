file='day5input.rb'

  list = Array.new
  ilist = Array.new
  
  File.readlines(file).each do |num|
    list << num  
end
list.each do |s|
  ilist << s.to_i
end
# puts ilist
length = ilist.length 
# puts "length = #{length}"

i = 0
steps = 0
while i < length
  # puts "NEW ITER"
  t = ilist[i]
  if t >= 3
    ilist[i] = ilist[i] - 1
  else
    ilist[i] = ilist[i] + 1
  end
  i = i + t
  steps = steps + 1
  # puts ilist
end
puts "number of steps = #{steps}"

