local Fusion = require(script.Parent.Parent.modules.Fusion)
local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent

local function Home(props)
    return New "Frame" {
        Visible = false,
        Name = "HomeScreen",
        BackgroundTransparency = 1,
        Size = UDim2.new(1,0,1,0),
        [Children] = {
            New "TextLabel" {
                Position = UDim2.new(0.5, 0,0.259, 0),
                Size = UDim2.new(1, 0,0.044, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                TextColor3 = Color3.fromRGB(3, 108, 156),
                TextScaled = true,
                Text = "Hey!",
                Font = Enum.Font.Roboto,
            },
        }
    }
end

return Home