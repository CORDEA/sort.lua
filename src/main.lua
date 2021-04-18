Bubble = require("bubble")
Selection = require("selection")
Insertion = require("insertion")
Shell = require("shell")
Quick = require("quick")

function main()
    local input = io.read()
    local list = {}
    for v in string.gmatch(input, "(%d+)") do
        table.insert(list, tonumber(v))
    end
    local bubble = Bubble:new({ list = list })
    bubble:sort()
    print(table.concat(list, " "))
end

main()
