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

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.map! { |number| number > 4 }
p numbers
# => [false, false, false, false, true, true, true, true, true, true]

num_hash = { one: '1', two: '2', three: '3', four: '4' }
p num_hash.map { |_key, value| value > '2' }
# [false, false, true, true]
p num_hash
# {:one=>"1", :two=>"2", :three=>"3", :four=>"4"}
