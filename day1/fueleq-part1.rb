file_data = File.read("modules.dat").split

#p file_data

data = file_data.map! { |s| s.to_i } 

def fuel_calc x
  (x/3).floor - 2
end

#p fuel_calc(12 # 2
#p fuel_calc(14) # 2
#p fuel_calc(1969) # 654
#p fuel_calc(100756) # 33583

def fuel_counter (arr)
  fuel = 0
  arr.each { |num| fuel = fuel_calc(num) + fuel}
  fuel
end

p fuel_counter(data)