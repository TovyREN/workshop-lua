local metatable = {
    __add = function(t1, t2)
    	local sum = {}
    	for key, value in pairs(t1) do
    		sum[key] = value
    	end

    	for key, value in pairs(t2) do
    		if sum[key] then
    			sum[key] = sum[key] + value
   		else
   			sum[key] = value
   		end
   	end
   	return sum
   end
}

local t1 = setmetatable({x = 5, y = 10}, metatable)
local t2 = setmetatable({x = 15, y = 15}, metatable)

local t3 = t1 + t2

for k, v in pairs(t1 + t2) do
   print(k, v)
end
