require 'pry'
# your code goes here
def begins_with_r(array)
  narray = []
  yes = []
  array.each do |element|
    narray = element.split("")
    if narray[0] == "r"
      yes << "t"
    end
  end
if yes.length == array.length
  return true
else
  return false
end
end

def contain_a(array)
  narray = []
  array.each do |element|
    if element.include?("a")
      narray<<element
    end
  end
  return narray
end

def first_wa(array)
  narray = []
  yes = []
  array.find do |element|
    narray = element.to_s.split("")
    narray[0] == "w" && narray[1]
  end
end

def remove_non_strings(array)
  array.reject do |element|
    element.is_a?(String) == false
  end
end

def count_elements(array)
  count = Hash.new(0)
  narray = []
  array.each do |element|
    count[element] += 1
  end
  count.each do |key, value|
    key.each do |label, name|
    narray<<{:count => value, :name => name}
  end
end
  return narray
end

def merge_data(keys, data)

  blake = {}
  ashley = {}
  blake[keys[0].keys[0]] = keys[0].values[0]
  data.each do |element|
    blake[element.values[0].keys[0]] = element.values[0].values[0]
    blake[element.values[0].keys[1]] = element.values[0].values[1]
    blake[element.values[0].keys[2]] = element.values[0].values[2]
    end
  blake[keys[0].keys[1]] = keys[0].values[1]
  ashley[keys[1].keys[0]] = keys[1].values[0]
    data.each do |element|
      ashley[element.values[1].keys[0]] = element.values[1].values[0]
      ashley[element.values[1].keys[1]] = element.values[1].values[1]
      ashley[element.values[1].keys[2]] = element.values[1].values[2]
    end
    ashley[keys[1].keys[1]] = keys[1].values[1]

    merged = []
    merged << blake
    merged << ashley
    return merged
end

def find_cool(array)
  narray = []
  array.each do |element|
    if element[:temperature] == "cool"
     narray << element
    end
  end
  narray
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, location|
    location.each do |label, where|
      check = new_hash[where]
      if check == nil
        new_hash[where] = [school]
      elsif check != nil
        array = []
        array << check
        array << school
        new_hash[where] = array.flatten
      end
    end
  end
 new_hash
end
