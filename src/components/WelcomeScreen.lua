local Fusion = require(script.Parent.Parent.modules.Fusion)
local fetchu = require(script.Parent.Parent.modules.fetchu)

local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent

local function Welcome(props)
    return New "Frame" {
        Visible = false,
        Name = "WelcomeScreen",
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
                [OnEvent "Activated"] = function()
                    props.Widget.Main.WelcomeScreen.LoginButton.Visible = false
                    props.Widget.Main.WelcomeScreen.GuestLoginButton.Visible = false
                    props.Widget.Main.WelcomeScreen.CodeLabel.Visible = true
                    props.Widget.Main.WelcomeScreen.ConfirmButton.Visible = true
                end,
                [OnEvent "MouseEnter"] = function()
                    props.Widget.Main.WelcomeScreen.LoginButton.BackgroundColor3 = Color3.fromRGB(0, 128, 186)
                    props.Widget.Main.WelcomeScreen.LoginButton.BorderColor3 = Color3.fromRGB(0, 128, 186)
                end,
                [OnEvent "MouseLeave"] = function()
                    props.Widget.Main.WelcomeScreen.LoginButton.BackgroundColor3 = Color3.fromRGB(3,108,156)
                    props.Widget.Main.WelcomeScreen.LoginButton.BorderColor3 = Color3.fromRGB(3,108,156)
                end
            },
            New "TextButton" {
                Position = UDim2.new(0.5, 0,0.770, 0),
                Size = UDim2.new(0.5, 0,0.01, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundColor3 = Color3.fromRGB(3,108,156),
                TextColor3 = Color3.new(255,255,255),
                TextScaled = true,
                BorderSizePixel = 10,
                BorderColor3 = Color3.fromRGB(3,108,156),
                Font = Enum.Font.Roboto,
                Text = "Or continue as a Guest",
                Name = "GuestLoginButton",
                ZIndex = 10,
                [OnEvent "Activated"] = function()

                end,
                [OnEvent "MouseEnter"] = function()
                    props.Widget.Main.WelcomeScreen.GuestLoginButton.BackgroundColor3 = Color3.fromRGB(0, 128, 186)
                    props.Widget.Main.WelcomeScreen.GuestLoginButton.BorderColor3 = Color3.fromRGB(0, 128, 186)
                end,
                [OnEvent "MouseLeave"] = function()
                    props.Widget.Main.WelcomeScreen.GuestLoginButton.BackgroundColor3 = Color3.fromRGB(3,108,156)
                    props.Widget.Main.WelcomeScreen.GuestLoginButton.BorderColor3 = Color3.fromRGB(3,108,156)
                end
            },
            New "TextButton" {
                Position = UDim2.new(0.5, 0,0.701, 0),
                Size = UDim2.new(0.5, 0,0.044, 0),
                AnchorPoint = Vector2.new(0.5,0),
                Visible = false,
                BackgroundColor3 = Color3.fromRGB(3,108,156),
                TextColor3 = Color3.new(255,255,255),
                TextScaled = true,
                BorderSizePixel = 10,
                BorderColor3 = Color3.fromRGB(3,108,156),
                Font = Enum.Font.Roboto,
                Text = "Confirm",
                Name = "ConfirmButton",
                ZIndex = 10,
                [OnEvent "Activated"] = function()
                    props.Widget.Main.WelcomeScreen.ConfirmButton.Visible = false
                   local authData = props.onDone()

                if authData.authenticated then
                    props.Widget.Main.WelcomeScreen.Visible = false
                    props.Widget.Main.HomeScreen.Visible = true
                else
                    task.wait(2)
                    props.Widget.Main.WelcomeScreen.ConfirmButton.Visible = true
                end

                end,
                [OnEvent "MouseEnter"] = function()
                    props.Widget.Main.WelcomeScreen.ConfirmButton.BackgroundColor3 = Color3.fromRGB(0, 128, 186)
                    props.Widget.Main.WelcomeScreen.ConfirmButton.BorderColor3 = Color3.fromRGB(0, 128, 186)
                end,
                [OnEvent "MouseLeave"] = function()
                    props.Widget.Main.WelcomeScreen.ConfirmButton.BackgroundColor3 = Color3.fromRGB(3,108,156)
                    props.Widget.Main.WelcomeScreen.ConfirmButton.BorderColor3 = Color3.fromRGB(3,108,156)
                end
            },
            New "TextLabel" {
                Position = UDim2.new(0.5, 0,0.5, 0),
                Size = UDim2.new(1, 0,0.044, 0),
                AnchorPoint = Vector2.new(0.5,0),
                Visible = false,
                BackgroundTransparency = 1,
                TextColor3 = Color3.fromRGB(3, 108, 156),
                TextScaled = true,
                Name = "CodeLabel",
                Text = props.code,
                Font = Enum.Font.Code,
            },
            New "ImageLabel" {
                Position = UDim2.new(0.5, 0,0.7, 0),
                Size = UDim2.new(1, 0,0.3, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                Image = "rbxassetid://8329654378",
            },
            New "TextLabel" {
                Position = UDim2.new(0.5, 0,0.94, 0),
                Size = UDim2.new(0.97, 0,0.1, 0),
                AnchorPoint = Vector2.new(0.5,0),
                BackgroundTransparency = 1,
                TextColor3 = Color3.new(255, 255, 255),
                TextXAlignment = Enum.TextXAlignment.Left,
                Text = "Copyright © Roarn Team " .. os.date("%Y"),
                Font = Enum.Font.Roboto,
            },
        }
    }
end

return Welcome