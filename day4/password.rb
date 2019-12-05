def valid_passwod?(code)
  # Two adjecet digits are the same

  # From left to right digits never decrease

end

def two_adj_d (code)
  arr = code.to_s.split('')
  arr.each do |k,idx|

    if k == arr[idx+1]
      p "true"
    end   
end

password = 111111
two_adj_d(password)