# fizz_buzz.rb

def display_fizz_buzz(n1, n2)
  loop do
    break if n1 >= (n2 + 1)
    case
    when (n1 % 3 == 0) && (n1 % 5 == 0)
      print "FizzBuzz", ", "
    when (n1 % 3 == 0)
      print "Fizz", ", "
    when ((n1 % 5 == 0))
      print "Buzz", ", "
    else
      print n1, ", "
    end
    n1 += 1
  end
end

number1 = 1
number2 = 15

display_fizz_buzz(number1, number2)
