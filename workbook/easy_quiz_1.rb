# exercise 1
numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers # will print unmodified array, [1, 2, 2, 3]

# exercise 2
=begin
In Ruby, a ! placed will modify any boolean expression that
evaluates to true or false by turning it into the opposite.
i.e. !true = false and !false = true
When placed at the end of a method, the ! is actually part of
the method name, and NOT ruby syntax. Often these methods
will mutate the objected upon which they're called, but
that is not necessarily true.
!! can also be prepended to any object to return its boolean
equivalent. e.g. !!'string' => true

A ? can be used to evaluate a preceding expression as true or
false, and execute one of two expression afterward.
Like !, ? also appears at the end of some methods, but this
is not ruby syntax. Methods ending in ? often check to see if
the objected called upon satisfies a certain condition, and
the method will return a bool based on if the condition is/
is not met.
=end

# exercise 3
advice = 'Few things in life are as important as house
          training your pet dinosaur.'
advice = advice.split(' ')
advice[6] = 'urgent'
advice.join(' ')
# or advice.gsub!('important', 'urgent')

# exercise 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # returns and deletes 2
numbers.delete(1) # returns 1
# both of these methods mutate the caller

# exercise 5
(10..100).include?(42)

# exercise 6
famous_words = 'and seven years ago...'
other_portion = 'Four score '
other_portion << famous_words
other_portion + famous_words
famous_words.prepend(other_portion)

# exercise 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
# => "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# note: this mutates the caller, edits how_deep.
eval(how_deep)
# 42; eval reads the string how_deep as a function call to
# the series of nested add_eight methods. Number, in this
# case, equates to the value stored in var number, or 2.

# exercise 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flinstones.flatten! # makes the array 1D; removes nesting

# exercises 9
flintstones = {'Fred' => 0, 'Wilma' => 1, 'Barney' => 2,
               'Betty' => 3, 'BamBam' => 4, 'Pebbles' => 5}
flintstones = (flintstones.to_a)[2]
# or flintstones.assoc('Barney')

# exercise 10
flintstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'Pebbles', 'BamBam']
flintstones_hash = {}
flintstones.index
flintstones.each { |name| flintstones_hash[name] = flintstones.index(name)}
flintstones_hash
# or
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end
