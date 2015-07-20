# exercise 1
family = { uncles: ['bob', 'joe', 'steve'],
           sisters: ['jane', 'jill', 'beth'],
           brothers: ['frank', 'rob', 'david'],
           aunts: ['mary', 'sally', 'susan']
         }
direct_family = family.select {|k| k == :sisters || k == :brothers}
direct_family.values.flatten

# exercise 2
=begin the merge method will return a new, combined hash but does not modify
the provided hashes. Merge! destructively edits the hash on which it was called.
=end
stable_hash = {a: 1, b: 2, c: 3}
stable_hash.merge(d: 4)
puts stable_hash
fluid_hash = {e: 5, f: 6, g: 7}
fluid_hash.merge!(h: 8)
puts fluid_hash

# exercise 3
a_hash = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8}
a_hash.keys.each {|key| print key}
a_hash.values.each {|value| print value}
a_hash.each {|key, value| puts "#{key}. #{value}"}

# exercise 4
person = {name: 'bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# exercise 5
person = {name: 'bob', occupation: 'web developer', hobbies: 'painting'}
person.has_value?('bob')

# exercise 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
# takes each word from array, splits letters of each word into an array,
# and sorts them alphabetically
sorted_letters = words.map {|word| word.split(//).sort }
# creates a new hash key for each unique set of sorted letters
anagram_bases = {}
# add an entry into anagram_bases array for each, unique array of sorted_letters
sorted_letters.uniq.each { |base| anagram_bases.merge!(base => base) }
# pair each word with its anagram base by equating sorted_letters of each word
# against each of the anagram_bases
anagrams = {}
words.each do |word|
  if (word.split(//).sort == anagram_bases[word.split(//).sort]) && !anagrams.has_key?(word.split(//).sort.join.to_sym)
    anagrams.merge!(word.split(//).sort.join.to_sym => Array(word))
   elsif (word.split(//).sort == anagram_bases[word.split(//).sort])
    anagrams[word.split(//).sort.join.to_sym] << word
  end
end
anagrams.each {|key, value| print value; puts}

#exercise 7
x = 'hi there'
my_hash = {x: 'some value'}
my_hash2 = {x => 'some value'}
# the difference between these is that in the first example,
# we convert x into a symbol. It is left as a string in the second example.

# exercise 8
# NoMethodError: undefined method `keys' for Array
# Error appears because there is no keys method for the Array class.
