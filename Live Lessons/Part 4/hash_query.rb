# hash_query.rb

PRODUCT = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Macbook Leopard", price: 300 },
  { name: "Macbook Air", price: 700 },
  { name: "Macbook Pro", price: 600 },
  { name: "Macbook ", price: 1449 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

query = {
  pricemin: 240,
  pricemax: 280,
  q: "thinkpad"
}

query2 = {
  pricemin: 300,
  pricemax: 450,
  q: "dell"
}

def search(query)
  PRODUCT.select do |product|
    # (range_start .. ranged_end).include?(query[price:]) && match names with correct case.
    (query[:pricemin]..query[:pricemax]).include?(product[:price]) && product[:name].downcase.include?(query[:q].downcase)
     # Downcase the product name string and then check with include? Mind your brackets with include?() !!!!!!
  end
end

puts search(query)
# [ { name: "Thinkpad x220", price: 250 } ]
puts
puts search(query2)
# [ { name: "Dell Inspiron", price: 300 } ],
# [ { name: "Dell Inspiron", price: 450 } ]
puts

query3 = {
  pricemin: 500,
  pricemax: 1000,
  q: "Macbook"
}

p search(query3)
