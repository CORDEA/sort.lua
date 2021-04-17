local insertion = {
    list = {}
}

function insertion:new(object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

function insertion:sort()
    local list = self.list
    for i = 2, #list, 1 do
        local v = list[i]
        local j = i
        while j > 1 and v < list[j - 1] do
            list[j] = list[j - 1]
            j = j - 1
        end
        list[j] = v
    end
end

return insertion
