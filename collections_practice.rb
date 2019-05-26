def begins_with_r(array)
  array.all? do |find|
     find.downcase.chars.first == "r"
   end
 end

def contain_a(array)
  all_a = []
  array.each do |find|
    if find.include?("a")
      all_a << find
    end
  end
  return all_a
end

def first_wa(array)
  array.find do |find|
     find.to_s.downcase.start_with?("wa")
   end
end

def remove_non_strings(array)
  # Found on: https://stackoverflow.com/questions/44789956/ruby-delete-all-non-string-elements-from-an-array
  array.grep(String)
end

def count_elements(array)
 counts = Hash.new(0)
 array.collect {|element| counts[element]+=1 }
   counts.collect do |selected, num|
     selected[:count] = num
   end
 counts.keys
end

def merge_data(keys, data)
  keys.each do |nest1|
    data.each do |nest2|
      nest1.merge!(nest2[nest1[:first_name]])
    end
  end
end

def find_cool(array)

  array.each do |find|
    if find[:temperature]=="cool"
      return [find]
    end
  end
end

# def organize_schools(array)
#   array.each do |place, loc|
#     loc.each do |key, value|
#     end
#   end
#
# end
def organize_schools(array)
  school_hash = {}
  array.each do |key, value|
    value.each do |key2, place|
      if !school_hash.include?(place)
        school_hash[place] = [key]
      else 
        school_hash[place] << key
      end
    end
  end
  return school_hash
end
# def organize_schools(schools)
#   output = {}
#   schools.each do |key, location_hash|
#     location_hash.each do |k, location|
#       if output.include?(location)
#         output[location] = key
#       elsif output.has_key?(location)
#         output[location] << key
#       end
#     end
#   end
#   output
# end
