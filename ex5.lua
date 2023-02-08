function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end
  
function lines_from(file)
    if not file_exists(file) then return {} end
    local lines = {}
    for line in io.lines(file) do 
      lines[#lines + 1] = line
    end
    return lines
end
  
local file = '5.txt'
local lines = lines_from(file)
  
for k,v in pairs(lines) do
    if (#v %2 == 0) then
        print(v)
    end
end