# exercise 1
ages = { 'Herman' => 32, "Lily" => 30, 'Grandpa' => 402,
         'Eddie' => 10 }
ages.has_key?('Spot')
ages.member?('Spot')
ages.include?('Spot')

# exercise 2
ages = {'Herman' => 32, "Lily" => 30, 'Grandpa' => 5843,
        'Eddie' => 10, 'Marilyn' => 22, 'Spot' => 237}
total_age = 0
ages.each {|name, age| total_age += age}
total_age
# or
ages.values.inject(:+)
=begin
ages.values returns an array of all the values in hash ages.
.inject(:+) does some fancy, which I will read about in
the ruby docs/API shortly.
=end

# exercise 3
ages = {'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402,
        'Eddie' => 10 }
ages.delete_if { |name, age| age > 100 }
ages
# or ages.keep_if { |name, age| age < 100 }

# exercise 4
munsters_description = 'The Munsters are creepy in a good way.'
# one
munsters.capitalize! # or munsters_description[4] = 'm'
# **Note**: capitalize works here because the method is executed
# on the first word that is not ALREADY capitalized.
# two
munsters_description.swapcase!
# three
munsters_description.downcase!
# Four
munsters_description.upcase!

# exercise 5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = {'Marilyn' => 22, 'Spot' => 237}
ages.merge!(additional_ages)

# exercise 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
ages.values.sort.first # or ages.values.min

# exercise 7
advice = 'Few things in life are as important as house training your
          pet dinosaur.'
advice.include?('Dino') # or advice.match('Dino') coverts to regex for comparison

# exercise 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each_with_index { |name, index| puts index if name =~ /\ABe/ }

# exercise 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|name| name = name[0..2]}

# exercise 10 is the same thing, but asking for a shorter version.
# I've already made it as compact as I can, except in one way...
flintstones.map! {|name| name[0..2]}
