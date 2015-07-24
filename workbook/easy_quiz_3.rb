# exercise 1
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# exercise 2
flintstones << 'Dino'

# exercise 3
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
# or flintstones.push('Dino').push('Hoppy')

# exercise 4
advice = 'Few things in life are as important as house training your pet dinosaur.'
advice.slice!(0..38)
# if .slice is used instead, it will simply return the sliced portion,
# but leave the original string advice intact (does not mutate caller).
# same thing as advice[0..38]

# exercise 5
statement = 'The Flintstones Rock!'
statement.count 't' # or statement.scan('t').count

# exercise 6
title = 'Flintstones Family Members'
title.center(40)
