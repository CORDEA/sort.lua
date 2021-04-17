local quick = {
    list = {}
}

function quick:new(object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

local function sort(list)
    if #list <= 1 then
        return list
    end
    local pivot = list[1]
    local low = {}
    local high = {}
    for i = 2, #list, 1 do
        if pivot >= list[i] then
            table.insert(low, list[i])
        else
            table.insert(high, list[i])
        end
    end
    local l = sort(low)
    local h = sort(high)
    local r = {}
    for i = 1, #l, 1 do
        table.insert(r, l[i])
    end
    table.insert(r, pivot)
    for i = 1, #h, 1 do
        table.insert(r, h[i])
    end
    return r
end

function quick:sort()
    local list = self.list
    local r = sort(list)
    for i = 1, #list, 1 do
        list[i] = r[i]
    end
end

return quick
