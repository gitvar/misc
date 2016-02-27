# exercise_3_program.rb

# # Write a pseudo code method that takes an array of integers, and returns a new array with every other element
#
#
# # CASUAL PSEUDO CODE:
# #
# Given an array of integers.
#
# Define a new array.
# Iterate through the array one integer at a time.
#   - for each iteration determine if the index is odd or even
#     - if the iterator value is odd, push the value of the given array at this iterator onto the new array.
#     - if the iterator is even, do nothing
#
# After iterating through the array of integers, return the new array.
#
#
#
# # FORMAL PSEUDO CODE:
# #
# START
#
# # Given an array of integers: arr_ints[].
#
# SET arr_every_other[] = 0
# SET iterator = 0
#
# WHILE iterator < arr_ints.length
#   IF iterator % 2 != 0
#     arr_every_other << arr_ints[iterator]
#
#   iterator = iterator + 1
#
# PRINT arr_every_other[]
#
# END


# ACTUAL CODE:
#
arr_of_ints = [1 , 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

def return_every_other(arr_ints)
  arr_every_other = []
  iterator = 0

  while iterator < arr_ints.length
    if iterator % 2 != 0
      arr_every_other << arr_ints[iterator]
    end
    iterator = iterator + 1
  end

  p arr_every_other
end

return_every_other(arr_of_ints)
