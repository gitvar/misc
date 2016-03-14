# exercise_3_p5.rb

# Write a method that takes two numbers and return the prime numbers between them (without using Ruby's built in prime class).

require 'Prime'

# Test my answer against the Ruby Prime Class:
def ruby_prime(n1, n2)
  prime_numbers = []
  (n1..n2).each do |num|
    if Prime.prime?(num)
      prime_numbers << num
    end
  end
  prime_numbers
end

# My version:
def prime(n1, n2)
  n1 = 2 if n1 < 2

  prime = true
  prime_numbers = []
  (n1..n2).each do |num|
    (n1...num).each do |divisor|            # Do not include num (3 dots!)
      prime = false if num % divisor == 0
    end
    prime_numbers << num if prime
    prime = true
  end

  return prime_numbers
end

n1 = 0
n2 = 200

p prime(n1, n2)
puts
p ruby_prime(n1, n2)
