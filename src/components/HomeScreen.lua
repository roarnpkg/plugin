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
            New "ImageLabel" {
                Position = UDim2.new(0.5, 0,0.034, 0),
                Size = UDim2.new(1, 0,0.181, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                Image = "rbxassetid://8322406932",
                
                [Children] = {
                    New "UIPadding" {
                        PaddingTop = UDim.new(1,0),
                        PaddingLeft = UDim.new(1,0),
                        PaddingRight = UDim.new(1,0),
                        PaddingBottom = UDim.new(1,0),
                    },
                    New "UIAspectRatioConstraint" {
                        AspectRatio = 1,
                        DominantAxis = Enum.DominantAxis.Width,
                        AspectType = Enum.AspectType.FitWithinMaxSize
                    }
                }
            },
            New "TextLabel" {
                Position = UDim2.new(0.5, 0,0.259, 0),
                Size = UDim2.new(1, 0,0.044, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                TextColor3 = Color3.fromRGB(3, 108, 156),
                TextScaled = true,
                Text = "Roarn Studio",
                Font = Enum.Font.Roboto,
            },
            New "TextButton" {
                Position = UDim2.new(0.5, 0,0.701, 0),
                Size = UDim2.new(0.5, 0,0.044, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundColor3 = Color3.fromRGB(3,108,156),
                TextColor3 = Color3.new(255,255,255),
                TextScaled = true,
                BorderSizePixel = 10,
                BorderColor3 = Color3.fromRGB(3,108,156),
                Font = Enum.Font.Roboto,
                Text = "Login",
                Name = "LoginButton",
                ZIndex = 10,
                [Children] = {
                    -- New "UICorner" {
                    --     CornerRadius = UDim.new(1, 0)
                    -- },
                },
                [OnEvent "Activated"] = function()
                    props.Widget.Main.Loader.Visible = true
                    props.Widget.Main.HomeScreen.Visible = false
                end,
                [OnEvent "MouseEnter"] = function()
                    props.Widget.Main.HomeScreen.LoginButton.BackgroundColor3 = Color3.fromRGB(0, 128, 186)
                    props.Widget.Main.HomeScreen.LoginButton.BorderColor3 = Color3.fromRGB(0, 128, 186)
                end,
                [OnEvent "MouseLeave"] = function()
                    props.Widget.Main.HomeScreen.LoginButton.BackgroundColor3 = Color3.fromRGB(3,108,156)
                    props.Widget.Main.HomeScreen.LoginButton.BorderColor3 = Color3.fromRGB(3,108,156)
                end
            },
            New "ImageLabel" {
                Position = UDim2.new(0.5, 0,0.7, 0),
                Size = UDim2.new(1, 0,0.3, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                Image = "rbxassetid://8329654378",
            }
        }
    }
end

return Home