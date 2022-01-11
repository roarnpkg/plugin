local Fusion = require(script.Parent.Parent.modules.Fusion)

local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent

local PackageBox = require(script.Parent.PackageBox)

local Home = New "Frame" {
        Visible = false,
        Name = "HomeScreen",
        BackgroundTransparency = 1,
        Size = UDim2.new(1,0,1,0),
        [Children] = {
            New "TextBox" {
                Position = UDim2.new(0.01,0,0.005,0),
                Size = UDim2.new(0.8, 0,0.03, 0),
                AnchorPoint = Vector2.new(0, 0),
                TextXAlignment = Enum.TextXAlignment.Left,
                PlaceholderText = "Search",
                Name = "SearchBar",
                BorderColor3 = Color3.fromRGB(51, 51, 51),
                BorderSizePixel = 1.2,
                BackgroundColor3 = Color3.fromRGB(18, 18, 18),
                Font = Enum.Font.Code,
                TextScaled = true,
                TextColor3 = Color3.new(255,255,255),
            },
            New "Frame" {
                Position = UDim2.new(0.5,0,0.5,0),
                Size = UDim2.new(0.97, 0,0.9, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundTransparency = 1,

                [Children] = {
                    New "UIListLayout" {
                        Padding = UDim.new(0.02,0),
                        HorizontalAlignment = Enum.HorizontalAlignment.Center,
                        VerticalAlignment = Enum.VerticalAlignment.Top,
                        FillDirection = Enum.FillDirection.Vertical,
                    },
                    PackageBox {},
                    PackageBox {},
                    PackageBox {}
                }
            },
            New "TextLabel" {
                Position = UDim2.new(0.98,0,1.035, 0),
                Size = UDim2.new(0.3, 0,0.1, 0),
                AnchorPoint = Vector2.new(1,1),
                BackgroundTransparency = 1,
                TextColor3 = Color3.new(255, 255, 255),
                TextXAlignment = Enum.TextXAlignment.Right,
                Text = "Copyright © Roarn Team " .. tostring(os.date("%Y")),
                Font = Enum.Font.Roboto,
            },
        }
}


return Home