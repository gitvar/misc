# Interesting code snippet found on StackOverflow:
lookup_table = Hash.new
(0..9).each {|x|
    lookup_table[x] = x.to_s(2)
    lookup_table[x.to_s] = x.to_s(2)
}
