# exercise 1
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
male_total = 0
munsters.each do |key, value|
  male_total += value['age'] if value['gender'] == 'male'
end
print male_total
puts

# exercise 2
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |name, info|
  puts "#{name} is a #{info['age']} year-old #{info['gender']}."
end

# exercise 3
def tricky_method(a_string_param, an_array_param)
a_string_param += 'rutabega'
an_array_param << ['rutabega']
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# The authors are trying to instill a particular sense of
# standard practice here. It is not important whether or not
# this code does what I expect right now. It is important
# that it looks consistent, and understandable, to a non ruby-er.
# So, the << operator should be replaced with an array concat:
# i.e. a_string_param += 'pumpkins'
#      an_array_param += ['rutabega']

# exercise 4
sentence = 'Humpty Dumpty sat on a wall.'
print sentence.split(/\W/).reverse!.join(' ') + '.'
puts

# exercise 5
answer = 42
def mess_with_it(some_number)
some_number += 8
end

new_answer = mess_with_it(answer)
p answer - 8
# => 34. The variable answer is not modified outside of the method's
# copy (used only within the method's scope). So, 42 - 8 = 34

# exercise 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
mess_with_demographics(munsters)
=begin
Contrary to my prediction, the munsters global demographic data
IS affected in the method above. This happens because when passing
in a collection of objects as a single parameter (like a hash),
ruby takes in a collection of object IDs and their aliases, that can be used
to modify data. If we don't reassign to new IDs before using our alises, we'll
modify original data. Here's an example that is not destructive:

def mess_with_demographics(demo_hash)
  hash = demo_hash.map do |name, info|
    info = {'age' => 'lawlz', 'gender' => 'lawlz'}
  end
  hash
end
=end

# exercise 7
def rps(fist1, fist2)
  if fist1 == 'rock'
    (fist2 == 'paper') ? 'paper' : 'rock'
  elsif fist1 == 'paper'
    (fist2 == 'scissors') ? 'scissors' : 'paper'
  else
    (fist2 == 'rock') ? 'rock' : 'scissors'
  end
end
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# => 'paper'. scissors loses to rock in round 1, and then paper
# conquers all rocks throughout the other rounds to win the title!

# exercise 8
def foo(param = 'no')
  'yes'
end

def bar(param == 'no')
  param == 'no' ? 'yes' : 'no'
end
bar(foo)
# => 'no'. foo always returns 'yes', and when 'yes' passed into bar, it overrides
# the initial 'no' value being passed into bar. Since 'yes' == 'no' equates false,
# bar returns 'no'.
