# exercise_2_p5.rb

# Write a method that takes a string, and returns a boolean indicating whether the string has a balanced set of parentheses.

def balancer(string)
  return false unless string.count("(") == string.count(")")

  counter = 0
  string.each_char do |char|
    counter -= 1 if char == ")"
    counter += 1 if char == "("
    return false if counter < 0
  end
  true
end

p balancer("hi")      # => true
p balancer("(hi")     # => false
p balancer("(hi)")    # => true
p balancer(")hi(")    # -> false
p balancer("(())))")  # => false
