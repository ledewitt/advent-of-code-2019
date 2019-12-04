file_data = File.read("modules.dat").split

data = file_data.map! { |s| s.to_i } 

def fuel_calc x
  (x/3).floor - 2
end

def fuel_counter (arr)
  total_fuel = 0
  arr.each do |num|
    while fuel_calc(num) > 0
      total_fuel += fuel_calc(num)
      num = fuel_calc(num)
      p num
    end
  end
  total_fuel
end

p fuel_counter(data)