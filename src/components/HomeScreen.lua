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
            New "ImageButton" {
                Position = UDim2.new(1,0,0,0),
                Size = UDim2.new(0.14, 0,0.04, 0),
                AnchorPoint = Vector2.new(1, 0),
                BackgroundTransparency = 1,
                Image = "rbxassetid://8437305102",
            },
            New "TextLabel" {
                Position = UDim2.new(0.98,0,1.035, 0),
                Size = UDim2.new(0.3, 0,0.1, 0),
                AnchorPoint = Vector2.new(1,1),
                BackgroundTransparency = 1,
                TextColor3 = Color3.new(255, 255, 255),
                TextXAlignment = Enum.TextXAlignment.Right,
                Text = "Copyright © Roarn Team " .. os.date("%Y"),
                Font = Enum.Font.Roboto,
            },
        }
    }
end

return Home