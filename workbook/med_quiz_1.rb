# exercise 1
10.times { |num| puts ' '*num + 'The Flintstones Rock!'}

# exercise 2
statement = 'The Flintstones Rock'
frequency_hash = {}
statement.each_char do |letter|
  unless frequency_hash.has_key?(letter)
    frequency_hash[letter] = 1
  else
    frequency_hash[letter] += 1
  end
end
=begin
 or
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
=end

# exercise 3
puts 'the value of 40 + 2 is ' + (40+2)
# this will throw a TypeError because ruby can't implicitly
# convert the integer 42 to the string '42'. To solve this, use
# either string interpolation "...is #{42}", or (40 + 2).to_s

# exercise 4
# part one
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# this code would print 1 and 3 to the screen,
# and return the array [3, 4]. 1 and 3 would be printed
# b/c the code would iterate over numbers[0] first, printing out
# 1, then removing the first entry of the array. Then, the code
# iterates over numbers[1], which is now 3, b/c array is [2, 3, 4]!
# We do not iterate again, because there is no longer a 3rd element.
# note that the return value is still [3, 4]; integers 1 and 2
# are still the ones that are shifted off with our 2 iterations.
# part two
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# this code prints 1 and 2, and returns the array [1, 2].
# Each time we iterate over an element in numbers, the .pop(1) method removes the last
# object from the array. This means after calling .pop twice on
# numbers, we will be left with no new values to iterate over, thus
# ending the 'loop'.

# exercise 5
def factors(number)
  current = number
  divisors = []
  while current > 0
    divisors << number/current if number % current == 0
    current -= 1
  end
  unless divisors.empty?
    divisors
  end
end
print factors(2)
print factors(10)
print factors(99)
print factors(0)
print factors(-2)
# bonus 1
# The purpose of number % current == 0 is to determine if the
# current iteration is a factor or not (factors are perfectly divisible).
# bonus 2
# The variable 'divisors' is returned at the end of the method
# to ensure that the array of divisors is returned at the end.

# exercise 6
# buffer << new_element implementation is more efficient than
# using an array.concat or similar.
# CORRECT answer: << also mutates the caller (affects variable
# outside the method's scope), while buffer.concat does not.

# exercise 7
def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
result = fib(0, 1)
puts "result is #{result}"
# limit variable needed to be declared within the method's scope

# exercise 8
def titleize(string)
  string.split.map {|word| word.capitalize!}.join(' ')
end

# exercise 9
munsters = {'Herman' => {'age' => 22, 'gender' => 'male'},
            'Lily' => {'age' => 30, 'gender' => 'female'},
            'Grandpa' => {'age' => 402, 'gender' => 'male'},
            'Eddie' => {'age' => 10, 'gender' => 'male'},
            'Marilyn' => {'age' => 23, 'gender' => 'female'}}
def age_group(yrs)
  case yrs
  when 0..17
    return 'kid'
  when 18..64
    return 'adult'
  else
    return 'senior'
  end
end
munsters.each do |key, value|
  value['age group'] = age_group(value['age'])
end
