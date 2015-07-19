# exercise 1
(32 *  4) >= 129 #false
false != !true #false
true == 4 #false
false == (847 == '874') #true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #true
# exercise 2
def caps_above_ten string
  string.length > 10 ? string.upcase : string
end
# exercise 3
def return_range number
  if 0 <= number && number < 50
    'number is less than fifty, but not negative'
  elsif 50 <= number && number <= 100
    'number is between fifty and one-hundred'
  else
    'number is greater than one-hundreed'
  end
end
# exercise 4
# answer to question one is FALSE
# answer to question two is 'Did you get it right?'
# answer to question three is 'Alright now!'
# exercise 5
def evaluate number
  puts 'please enter a number between 0 and 100'
  number = gets.chomp.to_i
  case
  when number < 0
    'please enter a number zero or greater'
  when number <= 50
    "#{number} is between 0 and 50"
  when number <= 100
    "#{number} is between 51 and 100"
  else
    "#{number} is greater than 100"
  end
end
# exercise 6
# programmer needs to add an another 'end' statement to terminate the method
