def begins_with_r (array)
  array.each do |element|
    if element[0] != "r"
      return false
    end
  end
  true
end

def contain_a (array)
  a = []
  array.each do |element|
    if element.include?("a")
      a << element
    end
  end
  a
end

def first_wa (array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?(String)
  end
end

def count_elements(array)
  values = []
  array.each do |element|
    element.each do |key, value|
      values << element.values
    end
  end
  values = values.flatten

  count = []
  unique = array.uniq
  unique.each do |element|
    element.each do |key, value|
      count << {
        name: value,
        count: values.count(value)
      }
    end
  end
  count
end

def merge_data (data1, data2)
  data1
  data1.each do |person|
    data2.each do |person2|
      person2.each do |name, stats|
        if name == person[:first_name]
          person = person.merge!(stats)
        end
      end
    end
  end
end

def find_cool (arg)
  arg.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools (arg)
  organize = {}
  arg.each do |school, lochash|
    lochash.each do |key, loc|
      if organize.has_key?(loc)
        organize[loc] << school
      else
        organize[loc] = [school]
      end
    end
  end
  organize
end
