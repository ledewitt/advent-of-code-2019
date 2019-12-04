string = File.read("instruction.dat").split(",")
code = string.map! { |s| s.to_i }

e_code = [1,9,10,3,2,3,11,0,99,30,40,50]


def intcode (arr)
    x = 0
    while arr[x] != 99
        if arr[x] == 1
            addition(x, arr)
        elsif arr[x] == 2
            multiply(x, arr)
        else
            p "Blow Up"
        end
        x += 4
    end
    p "Command 99 reached end of program Dave"
end

def addition (x, arr)
  num1 = arr[x+1]
  num2 = arr[x+2]
  num = arr[num1] + arr[num2]
  position = arr[x+3]
  arr[position] = num
end

def multiply (x, arr)
  num1 = arr[x+1]
  num2 = arr[x+2]
  num = arr[num1] * arr[num2]
  position = arr[x+3]
  arr[position] = num
end

#intcode(e_code)
#p e_code

p code
code[1] = 12
code[2] = 2
intcode(code)
p code[0]