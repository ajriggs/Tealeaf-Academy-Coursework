# exercise 1
words = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']
words.each { |word| puts word if word.downcase =~ /lab/ }

# exercise 2
def execute(&block)
  block
end
execute { puts "Hello from inside the execute method!" }
# program will not do anything, because block is not called
# method returns a proc object.

# exercise 3
# exception handling is a way to prevent one's code from
# terminating after an error (inrease stability). It provides
# the programmer with the option to, instead for example, provide
# information back to a user about the error.

# exercise 4
def execute(&block)
  block.call
end
execute { puts "Hello from inside the execute method!" }

# exercise 5
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# this code does not work because the author has not specified
# that the argument 'block' in method 'execute' is a block, by
# prepending the block argument with an '&' char
