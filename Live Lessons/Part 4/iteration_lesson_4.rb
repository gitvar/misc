

 # Do NOT modify an array while iterating over it!

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  p numbers.shift(1)
end
