# exercise_2_p5.rb

# Write a method that takes a string, and returns a boolean indicating whether the string has a balanced set of parentheses.

def balancer(string)

  left_p = string.index("(").to_i
  right_p = string.index(")").to_i
  return false if ( left_p > right_p )

  parenth_cntr = string.count "()"
  if parenth_cntr % 2 == 0
    return true
  end
  false
end

p balancer("hi")      # => true
p balancer("(hi")     # => false
p balancer("(hi)")    # => true
p balancer(")hi(")    # -> false
