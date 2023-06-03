io.write("Enter the number you want to convert : ")
local toConvert = io.read("*n")
io.flush()

io.write("Enter the base you want to convert to : ")
local base = io.read("*n")
io.flush()


print("Converting ".. tostring(toConvert) .. " to base " .. tostring(base))
local binaryString =""
repeat
    local remainder = toConvert % base
    binaryString = tostring(remainder) .. binaryString
    toConvert = math.floor(toConvert / base)
until (toConvert <= 0)

print(binaryString)