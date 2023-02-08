function calculator (...)
    local list = {...}
    local i = 0
    for j, val in ipairs(list) do
        i = i + tonumber(list[j])
    end
    print(i)
end

calculator("1", "2", "9")