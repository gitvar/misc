# mutate_the_caller_or_not.rb

def prefix(str)
  "Mr " + str                    # + does not mutate the caller.
end
def suffix(str)
  str << "son"                   # << mutates the caller.
end
name = "John"
prefix(name)
puts name                        # John
suffix(name)
puts name                        # Johnson


answer = 42
def mess_with_it(some_number)
  some_number += 8                 # + and = do not mutate the caller.
end
new_answer = mess_with_it(answer)
p answer - 10                      # 32

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"      # = and + do not mutate the caller.
  an_array_param += ["rutabaga"]    # = and + do not mutate the caller,
end
def my_tricky_method(a_string_param, an_array_param)
  index = 1
  a_string_param[index] += "*-*"    # This is []= : Mutates the caller!
  an_array_param[index] += "-*-"    # This is []= : Mutates the caller!
end
my_string = "apples"
my_array = ["apples", "bananas"]
tricky_method(my_string, my_array)
puts "My string looks like this now: #{my_string}"    # "apples"
puts "My array looks like this now: #{my_array}"      # ["apples", "bananas"]
my_string = "apples"
my_array = ["apples", "bananas"]
my_tricky_method(my_string, my_array)
puts "My string looks like this now: #{my_string}"    # "ap*-*ples"
puts "My array looks like this now: #{my_array}"      # ["apples", "bananas-*-"]


def tricky_method2(a_string_param, an_array_param)
  a_string_param += "rutabaga"                        # = and + do NOT mutate the caller.
  an_array_param << "rutabaga"                        # << mutates the caller.
end
puts my_string = "pumpkins"
puts my_array = ["pumpkins"]
tricky_method2(my_string, my_array)
puts "My string looks like this now: #{my_string}"    # "pumpkins"
puts "My array looks like this now: #{my_array}"      # ["pumkins", "rutabaga"]


def tricky_method3(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end
my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method3(my_string, my_array)
puts "My string looks like this now: #{my_string}"    # .gsub! mutates caller. "rutabaga"
puts "My array looks like this now: #{my_array}"      # Array = does NOT mutate. ["pumpkins"]



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Only way to really make this method NOT mutate the caller - with serialisation.

def mess_with_demographics!(m_hash)
  m_hash.values.each do |family_member|
    family_member["age"] += 42                # Almost always, Hash []= mutates the caller!
    family_member["gender"] = "other"         # Almost always, Hash []= mutates the caller!
  end
end

def mess_with_demographics(m_hash)
  serialized_data = Marshal.dump(m_hash)      # Only when you do this will caller NOT be mutated,
  demo_hash = Marshal.load(serialized_data)   # Serialisation.

  demo_hash.values.each do |family_member|
    family_member["age"] += 42                # With Hashes []= mutates the caller!
    family_member["gender"] = "other"         # With Hashes []= mutates the caller.
  end
return demo_hash
end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:
puts "Initial Value: #{munsters}"
puts "Return of non-bang method: #{mess_with_demographics(munsters)}"
puts "After non-bang method: #{munsters}"
mess_with_demographics!(munsters)
puts "After call to bang method: #{munsters}"
