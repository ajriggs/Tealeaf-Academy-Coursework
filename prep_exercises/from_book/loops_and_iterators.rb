# exercise 1
# [1, 2, 3, 4, 5]
# exercise 2
while true
  input = gets.chomp
  puts input
  if input == 'STOP'
    break
  end
end
# exercise 3
array = ['a', 'b', 'c', 'd', 'e']
array.each_with_index do |v, i|
  print "#{i} => #{v}"
  puts
end
#exercise 4
def countdown_to_zero(number)
  puts number
  if number > 0
    countdown_to_zero(number -1)
  end
end
countdown_to_zero(10)
