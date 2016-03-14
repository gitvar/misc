# exercise_1_p5.rb

# Write a method that takes an array of strings and then return the same array of strings, but each string has its vowels removed.

array_of_strings = ['green', 'yellow', 'black', 'white']


def remove_vowels(str_arr)
  str_arr.each do |string|
    string.delete! "aeiou"
  end
  str_arr
end

p my_new_array = remove_vowels(array_of_strings)

# $ ruby exercise_1_p5.rb 
# ["grn", "yllw", "blck", "wht"]
