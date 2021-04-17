local shell = {
    list = {}
}

function shell:new(object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

function shell:sort(gap)
    local list = self.list
    while gap > 0 do
        for i = gap + 1, #list, 1 do
            local v = list[i]
            local j = i
            while j > gap and v < list[j - gap] do
                list[j] = list[j - gap]
                j = j - gap
            end
            list[j] = v
        end
        gap = math.floor(gap / 2)
    end
end

return shell
