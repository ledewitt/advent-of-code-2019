def valid_passwod?(code)
  # Two adjecet digits are the same

  # From left to right digits never decrease

end

def two_adj_d (code)
  arr = code.to_s.split('').map(&:to_i)
  doubles = false
  increasing_or_same = false

  list = arr.map.with_index{|k,idx| [k,arr[idx+1]]}
  list.pop

  increasing_or_same = list.all? do |pair|
    pair[0] <= pair[1]
  end

  doubles = list.any? do |pair|
    pair[0] == pair[1]
  end

  if doubles == true && increasing_or_same == true
    return true
  else
    return false
  end
end

password = 111111
p two_adj_d(password)

password = 223450
p two_adj_d(password)

value = (278384..824795).to_a.select do |test|
  two_adj_d(test)
end

p value.size