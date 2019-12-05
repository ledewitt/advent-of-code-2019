def right(p,d)
    for 1..d
        const_y = p.last[1]
        
    end
end

def left

end

def up

end

def down

end

def coordpath directions
  path = [[0,0]]
  directions.each do |direction|
    x = direction.split('')
    compass = x[0]
    distance = x[1]
    p compass
    p distance
    case compass
    when "R"
       right(path,distance)
    when "L"
        p "Left"
    when "U"
        p "Up"
    when "D"
        p "Down"
    end
  end
end

wire1 = ["R8","U5","L5","D3"]
wire2 = ["U7","R6","D4","L4"]

p wire1

wire1_path = coordpath(wire1)