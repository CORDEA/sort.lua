local selection = {
    list = {}
}

function selection:new(object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

function selection:sort()
    local list = self.list
    for i = 1, #list - 1, 1 do
        local min = i
        for j = i, #list, 1 do
            if list[min] > list[j] then
                min = j
            end
        end
        local v = list[min]
        list[min] = list[i]
        list[i] = v
    end
end

return selection
