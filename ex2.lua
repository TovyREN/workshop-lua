function Countword (sentence, target)
    local str = {}
    local count = 0
    for word in sentence:gmatch("%w+") do
        table.insert(str, word)
    end
    for j = 0, #str do
        if (str[j] == target) then
            count = count + 1
        end
    end
    print(count)
end

Countword("ton tonton tond ton thon", "ton")