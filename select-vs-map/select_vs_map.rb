# select_vs_map.rb

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.select { |number| number > 4 }
# => [5, 6, 7, 8, 9, 10]
p numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select! { |number| number > 4 }
p numbers
# => [5, 6, 7, 8, 9, 10]

puts

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.map { |number| number > 4 }
# => [false, false, false, false, true, true, true, true, true, true]
p numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.map! { |number| number > 4 }
p numbers
# => [false, false, false, false, true, true, true, true, true, true]

puts

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers.map { |number| number**2 }
# => [false, false, false, false, true, true, true, true, true, true]
p numbers
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.map! { | number | number**2 }
p numbers

puts

num_hash = { one: 1, two: 2, three: 3, four: 4 }
p num_hash.map { | _, value | value * 3 }
# [3, 6, 9, 12]
p num_hash
# {:one=>1, :two=>2, :three=>3, :four=>4}

puts
num_hash = { one: 1, two: 2, three: 3, four: 4 }
p num_hash.map! { | _, value | value * 3 }
# select_vs_map.rb:53:in `<main>': undefined method `map!' for {:one=>1, :two=>2, :three=>3, :four=>4}:Hash (NoMethodError)
p num_hash
# .map! not defined for Enumerable module!

puts
num_hash = { one: '1', two: '2', three: '3', four: '4' }
p num_hash.map { | _, value | value > '2' }
# [false, false, true, true]
p num_hash
# {:one=>"1", :two=>"2", :three=>"3", :four=>"4"}
