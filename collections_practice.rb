def begins_with_r(array)
  testarray = []
  array.each do |value|
    if value.first == "r"
      else
    testarray << " "
  end
  if testarray.length > 0 
    return TRUE
  else
    return FALSE
  end
end

def contain_a(array)
  array.each do |value|
    value.each do |letter|
      if letter == "a"
        return value
      else
    end
  end
end