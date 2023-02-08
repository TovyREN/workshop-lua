function calculator (...)
    local list = {...}
    local i = 0
    for j, val in ipairs(list) do
        if (tonumber(list[j]) == nil) then
            print(string.format("Invalid Parameter: %s", list[j]))
            return
        end
        i = i + tonumber(list[j])
    end
    print(i)
end

calculator("1", "2", "9", "a")