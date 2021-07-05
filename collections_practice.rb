require "pry"
def begins_with_r(array)
  array.each do |word|
    letters = word.split("")
    if letters[0] != "r"
      return false
      break
    else
    end
  end
  true
end

def contain_a(array)
  a_words = []
  array.each do |word|
    letters = word.split("")
    letters.each do |letter|
      if letter == "a"
        a_words << word
        break
      end
    end
  end
  a_words
end

def first_wa(array)
  array.each do |word|
    string = word.to_s
    letters = string.split("")
    if letters[0] == "w" && letters[1] == "a"
      return word
      break
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |thing|
    if thing == thing.to_s
      new_array << thing
    end
  end
  new_array
end

def count_elements(array)
  new_array = []
  array.each do |hash|
    new_hash = hash
    count = 1
    new_hash[:count] = count
    if new_array.include?(new_hash)
      i = new_array.index(new_hash)
      new_array[i][:count] += 1
    else
      new_array << new_hash
    end
  end
  new_array
end

def merge_data(data1, data2)
  merged_data = data1
  merged_data.each do |person|
    data2.each do |hash|
      hash.each do |name, another_hash|
        if name == person[:first_name]
          another_hash.each do |key, value|
            person[key] = value
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  cool_hashes
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |school, hash|
    if schools_by_location[hash[:location]] != nil
      schools_by_location[hash[:location]] << school
    else
      schools_by_location[hash[:location]] = [school]
    end
  end
  schools_by_location
end
