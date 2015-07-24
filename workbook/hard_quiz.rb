# exercise 1
if false
  greeting = “hello world”
end

greeting
# => nil. Originally thought this would throw an exception, but even variables
# initialized inside an inert if statement are considered initialized. However,
# greeting has NOT been assigned value until the if code runs, so it returns nil.

# exercise 2
greetings = {a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'
puts informal_greeting # => 'hi there'
puts greetings
# => {a: 'hi there'} because the method << called on informal greeting mutates
# the caller. So, because informal_greeting directly references the same data as
# greetings[:a], we've destructively edited the original data point 'hi'.
# Some less destructive alternatives:
# REPLACE LINE 2 w/ informal_greeting = greetings[:a].clone
# This will create a copy of the data that we point to w/ greetings[:a], w a new ID
# REPLACE LINE 3 w/ informal_greeting = informal_greeting + ' there'
# While our original reference is still to a subset of greetings, we are now
# making a new string when we concat informal_greeting.

# exercise 3
# code snippet A
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# The variables will not be affected by changes made within the method here.
# None of the operations performed within the method mutate the caller.
# code snippet B
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# Once again, the variables outside the method are unaffected by operations
# inside the method that do not mutate the caller.
# code snippet C
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# here, the original variables are updated, because gsub! acts directly on the caller.

# exercise 4
def uuid
  valid_range = ('a'..'f').to_a + (0..9).to_a
  desired_lengths = [8, 4, 4, 4, 12]
  uuid = ''
  desired_lengths.each do |length|
    length.times { uuid << valid_range.sample.to_s }
    uuid << '-' unless length == 12
  end
  uuid
end

# exercise 5
# catch false conditions (example: if there are more/less than 4 dot-separated parts, or if one part is a non-integer)
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.count == 4
  while dot_separated_words.count > 0 do
    word = dot_separated_words.pop
    return false if word =~ /\D/
  end
  true
end
puts dot_separated_ip_address?(gets.chomp)
