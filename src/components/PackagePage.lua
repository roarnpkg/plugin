local Fusion = require(script.Parent.Parent.modules.Fusion)

local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent
local State = Fusion.State

local Separator = require(script.Parent.Separator)
 
local PackagePage = New "Frame" {
    Name = "PackagePage",
    Size = UDim2.new(1,0,1,0),
    Position = UDim2.new(1,0,0,0),
    BackgroundColor3 = Color3.fromRGB(36, 36, 36),
    ZIndex = 4,

    [Children] = {
        New "ImageButton" {
            Position = UDim2.new(0.87,0,0,0),
            Size = UDim2.new(0.14, 0,0.04, 0),
            Name = "MenuButton",
            AnchorPoint = Vector2.new(1, 0),
            BackgroundTransparency = 1,
            Image = "rbxassetid://6031091000",
            ZIndex = 5,
    
            [Children] = {
                New "UIAspectRatioConstraint" {}
            }
        },
        New "TextLabel" {
            Position = UDim2.new(0.02,0,0.04,0),
            Size = UDim2.new(1,0,.02,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Name = "packageVersion",
            Text = "v1.0.0",
            TextColor3 = Color3.new(0.878431, 0.878431, 0.878431),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code,
            ZIndex = 4,
        },
        New "TextLabel" {
            Position = UDim2.new(0.01,0,0.06,0),
            Size = UDim2.new(1,0,.05,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Name = "packageName",
            Text = "fetchu",
            TextColor3 = Color3.new(255,255,255),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Roboto,
            ZIndex = 4,
        },
        Separator {
            Position = UDim2.new(0.05,0,0.12,0),
            AnchorPoint = Vector2.new(0,0),
            ZIndex = 4
        },
        New "TextLabel" {
            Position = UDim2.new(0.01,0,0.13,0),
            Size = UDim2.new(1,0,.02,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Text = "description",
            TextColor3 = Color3.new(0.878431, 0.878431, 0.878431),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code,
            ZIndex = 4,
        },
        New "TextLabel" {
            Position = UDim2.new(0.01,0,0.155,0),
            Size = UDim2.new(1,0,.06,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Name = "packageDescription",
            Text = "Lightweight package making Roblox's HttpService easier to use. ",
            TextColor3 = Color3.new(0.878431, 0.878431, 0.878431),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Roboto,
            ZIndex = 4,
        },
        Separator {
            Position = UDim2.new(0.05,0,0.23,0),
            AnchorPoint = Vector2.new(0,0),
            ZIndex = 4
        },
        New "TextLabel" {
            Position = UDim2.new(0.01,0,0.24,0),
            Size = UDim2.new(1,0,.02,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Text = "creator",
            TextColor3 = Color3.new(0.878431, 0.878431, 0.878431),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code,
            ZIndex = 4,
        },
        New "TextLabel" {
            Position = UDim2.new(0.01,0,0.265,0),
            Size = UDim2.new(1,0,.02,0),
            AnchorPoint = Vector2.new(0,0),
            BackgroundTransparency = 1,
            TextScaled = true,
            Text = "OnlyTwentyCharacters",
            Name = "packageCreator",
            TextColor3 = Color3.new(0.878431, 0.878431, 0.878431),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Roboto,
            ZIndex = 4,
        },
        Separator {
            Position = UDim2.new(0.05,0,0.30,0),
            AnchorPoint = Vector2.new(0,0),
            ZIndex = 4
        },
        New "TextButton" {
            Position = UDim2.new(0.5,0,0.98,0),
            Size = UDim2.new(0.97,0,.03,0),
            AnchorPoint = Vector2.new(0.5,1),
            BackgroundColor3 = Color3.fromRGB(9, 130, 25),
            TextScaled = true,
            Text = "Install",
            TextColor3 = Color3.new(255,255,255),
            Font = Enum.Font.Roboto,
            ZIndex = 4,
            
            [Children] = {
                New "UICorner" {
                    CornerRadius = UDim.new(.2,0)
                }
            }
        }
    }
}


return PackagePage