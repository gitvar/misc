  # Hard way:
  def convert_binary_string_to_decimal(str)
    str.split(//).map(&:to_i).reverse.each_with_index.map { |n, i| 2**i if n > 0 }.compact.reduce(:+)
  end

  # Easier way:
  def convert_binary_string_to_decimal(str)
    str.to_i(2)
  end
