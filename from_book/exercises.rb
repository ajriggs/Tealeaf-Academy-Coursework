# exercise 1
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each { |number| puts number}

# exercise 2
numbers.each { |number| puts number if number > 5}

# exercise 3
odd_numbers = numbers.select { |odd| odd.odd? }
puts odd_numbers

# exercise 4
numbers.unshift(0).push(11)
puts numbers

# exercise 5
numbers.pop
numbers.push(3)
print numbers

# exercise 6
numbers.uniq!

# exercise 7
=begin
The major difference between an array and a hash is that
an array is always integer-indexed (starting from 0), a hash
is indexed by author-provided keys (any object, but is
usually a symbol)
=end

# exercise 8
#hash syntax A (old school):
hash_1 = { :a => 'a' }
#hash syntax B:
hash_2 = { a: 'a' }

# exercise 9
h = {a:1, b:2, c:3, d:4}
# part 1
h[:b]
# part 2
h.merge!(e:5) # or h[:e] = 5
# part 3
h.delete_if { |key, value| value < 3.5 }

# exercise 10
=begin
An array can be assigned to a hash value.
consider this example:
{a: [1, 2,3 ,4], b: [1, 2, 3 , 4]}
Because both arrays and hashes are objects that can store
other objects, hashes can also be stored inside arrays:
[{dog: pup}, {goat: kyd}, {cat: kitten}]
=end

# exercise 11
=begin
I like the original ruby-doc.orb API for exploring
options within the basic ruby language. For rails, at a
glance, I like the loop of api.rubyonrails.org. It seems
to be well organized, and intent on providing a lot of
quality information. I have some misgivings about the format
though.
=end

# exercise 12
contact_data = [['joe@email.com', '123 Main st.',
                 '555-123-4567'], ['sally@email.com',
                 '404 Not Found Dr.', '123-234-3454']]
contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }
contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]
contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]
puts contacts

# exercise 13
joe_email = contacts['Joe Smith'][:email]
sally_phone = contacts['Sally Johnson'][:phone]
puts "Joe's email is address is #{joe_email} and Sally's
      phone number is #{sally_phone}."

# exercise 14
contacts = { 'Joe Smith' => {}, 'Sally Johnson' => {} }
contact_data = [['joe@email.com', '123 Main st.',
                 '555-123-4567'], ['sally@email.com',
                 '404 Not Found Dr.', '123-234-3454']]
entries = [:email, :address, :phone]
x = 0
contacts.each do |name, hash|
  entries.each do |key|
    hash[key] = contact_data[x].shift
  end
  x += 1
end
puts contacts

# exercise 15
# part one
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?('s')}
# part two
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?('s', 'w')}

# exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
new_array = a.map {|string| string.split(' ') }
new_array = new_array.flatten
print new_array

# exercise 17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
# will output 'These hashes are the same!'
