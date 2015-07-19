# exercise 1
arr = [1, 3, 5, 7, 9]
number = 3
puts arr.include?(number)

# exercise 2
# problem one
arr = ['b', 'a']
arr = arr.product(Array(1..3))
# => [['b', 1], ['b', 2], ['b', 3], ['a', 1], ['a', 2], ['a', 3]]
arr.first.delete(arr.first.last)
# => 1
# arr = [['b'], ['b', 2], ['b', 3], ['a', 1], ['a', 2], ['a', 3]]
#problem two
arr = ['b', 'a']
arr = arr.product([Array(1..3)])
# => [['b', [1, 2, 3]], ['a', [1, 2, 3]]]
arr.first.delete(arr.first.last)
# => [['b'], ['a', [1, 2, 3]]]

# exercise 3
array = [['test', 'hello', 'world'], ['example', 'mem']]
print array[1][0] #or!
print array.last.first

#exercise 4
arr = [15, 7, 18, 5, 12, 8, 5, 1]
arr.index(5) # => 3
arr.index[5] # => error
arr[5] # => 8

# exercise 5
string = "Welcome to Tealeaf Academy!"
a = string[6] # => 'e'
b = string[11] # => 'T'
c = string [19] # => 'A'

#exercise 6
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
=begin
User is trying to access a specific value by providing value, but
are using syntax for accessing via index. Instead, try: names[3] = 'jody'
=end

#exercise 7
first_array = [1, 2, 3, 4, 5]
second_array = first_array.map { |e| e+2 }
puts first_array
puts second_array
