local Fusion = require(script.Parent.Parent.modules.Fusion)
local New = Fusion.New
local Children = Fusion.Children

local function Container(props)
    return New "Frame" {
            Name = "Main",
            Parent = _G.Widget,
            Size = UDim2.new(1,0,1,0),
            Position = UDim2.new(0,0,0,0),
            BackgroundColor3 = Color3.fromRGB(36, 36, 36),

            [Children] = {
                props[Children]
            }
        }
end

return Container