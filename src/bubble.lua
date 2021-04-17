local bubble = {
    list = {}
}

function bubble:new(object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

function bubble:sort()
    local list = self.list
    for i = #list - 1, 1, -1 do
        for j = 1, i, 1 do
            if list[j] > list[j + 1] then
                local v = list[j]
                list[j] = list[j + 1]
                list[j + 1] = v
            end
        end
    end
end

return bubble
