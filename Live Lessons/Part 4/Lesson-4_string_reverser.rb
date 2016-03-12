# Lesson_4_string_reverser.Ruby

def reverse(string)
  string.split("").reverse.join
end

my_string = "Hello World!"

puts "The string #{my_string} in reverse order looks like this: #{reverse(my_string)}"
puts my_string
