# build_uuid.rb

# My attempt after seeing Launch School's answer:

# Format of the 32 character UUID hex string: 8-4-4-4-12

def generate_UUID
  # build hex string to randomly pick from:
  uuid = ""
  hex_array = []
  (0..9).each { |num| hex_array << num.to_s }
  ('a'..'f').each { |char| hex_array << char }

  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do | section, index|
    section.times { uuid << hex_array.sample }
    uuid << '-' unless index >= sections.size-1
  end
  uuid
end

p generate_UUID
