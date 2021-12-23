local Fusion = require(script.Parent.Parent.modules.Fusion)
local New = Fusion.New

local function Container(props)
    return New "Frame" {
            Parent = props.Widget,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            BackgroundColor3 = Color3.new(255,255,0)
        }
end

return Container