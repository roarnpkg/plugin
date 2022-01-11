local Fusion = require(script.Parent.Parent.modules.Fusion)

local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent

local function PackageBox()
    return New "Frame" {
        Size = UDim2.new(1, 0,0.13, 0),
        BorderColor3 = Color3.fromRGB(51, 51, 51),
        BorderSizePixel = 3,
        BackgroundColor3 = Color3.fromRGB(36, 36, 36),

        [Children] = {
            New "Frame" {
                Position = UDim2.new(.5,0,.5,0),
                Size = UDim2.new(.9,0,.8,0),
                AnchorPoint = Vector2.new(.5,.5),
                BackgroundTransparency = 1,
                [Children] = {
                New "TextLabel" {
                    Position = UDim2.new(0,0,0,0),
                    Size = UDim2.new(.5,0,.3,0),
                    AnchorPoint = Vector2.new(0,0),
                    BackgroundTransparency = 1,
                    TextScaled = true,
                    Text = "fetchu",
                    TextColor3 = Color3.new(255,255,255),
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Font = Enum.Font.Roboto,
                },
                New "TextLabel" {
                    Position = UDim2.new(1,0,0,0),
                    Size = UDim2.new(.4,0,.18,0),
                    AnchorPoint = Vector2.new(1,0),
                    BackgroundTransparency = 1,
                    TextScaled = true,
                    Text = "v1.0.0",
                    TextColor3 = Color3.new(255,255,255),
                    TextXAlignment = Enum.TextXAlignment.Right,
                    Font = Enum.Font.Code,
                },
                New "TextLabel" {
                    Position = UDim2.new(0,0,0.3,0),
                    Size = UDim2.new(1,0,.3,0),
                    AnchorPoint = Vector2.new(0,0),
                    BackgroundTransparency = 1,
                    TextScaled = true,
                    Text = "Lightweight package making Roblox's HttpService easier to use. ",
                    TextColor3 = Color3.new(255,255,255),
                    TextXAlignment = Enum.TextXAlignment.Left,
                },
                Font = Enum.Font.Roboto,
                New "TextButton" {
                    Position = UDim2.new(0.5,0,1,0),
                    Size = UDim2.new(0.97,0,.3,0),
                    AnchorPoint = Vector2.new(0.5,1),
                    BackgroundColor3 = Color3.fromRGB(13, 138, 255),
                    TextScaled = true,
                    Text = "Go",
                    TextColor3 = Color3.new(255,255,255),
                    Font = Enum.Font.Roboto,
                    
                    [Children] = {
                        New "UICorner" {
                            CornerRadius = UDim.new(.2,0)
                        }
                    }
                }
             }
        }
    }
}
end

return PackageBox