local StudioService = game:GetService("StudioService")
local Players = game:GetService("Players")

local Fusion = require(script.Parent.Parent.modules.Fusion)

local New = Fusion.New
local Children = Fusion.Children
local OnEvent = Fusion.OnEvent
local State = Fusion.State

 
local loggedInUserId = StudioService:GetUserId()
local playerName = Players:GetNameFromUserIdAsync(loggedInUserId)

local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size352x352
local content = Players:GetUserThumbnailAsync(loggedInUserId, thumbType, thumbSize)


local ProfileButton = New "TextButton" {
    Size = UDim2.new(1,0,.05,0),
    Position = UDim2.new(0,0,0,0),
    BorderColor3 = Color3.fromRGB(51, 51, 51),
    BackgroundColor3 = Color3.fromRGB(36, 36, 36),
    BorderSizePixel = 3,
    ZIndex = 5,

    [Children] = {
        New "ImageButton" {
            Position = UDim2.new(.28,0,.5,0),
            Size = UDim2.new(.15, 0,1, 0),
            AnchorPoint = Vector2.new(.28,.5),
            BackgroundTransparency = 1,
            Image = content,
            ZIndex = 5,
            [Children] = {
                New "UIAspectRatioConstraint" {},
                New "UICorner" {
                    CornerRadius = UDim.new(100,0)
                },
                New "UIPadding" {
                    PaddingRight = UDim.new(100,0)
                }
            }
        },
        New "TextLabel" {
            Position = UDim2.new(.5,0,.5,0),
            Size = UDim2.new(.15, 0,1, 0),
            AnchorPoint = Vector2.new(.5,.5),
            BackgroundTransparency = 1,
            ZIndex = 5,
            TextColor3 = Color3.new(255,255,255),
            Text = playerName,
            TextSize = 20,
        }
    }
}

local SettingsButton = New "TextButton" {
    Size = UDim2.new(1,0,.05,0),
    Position = UDim2.new(0,0,0,0),
    BorderColor3 = Color3.fromRGB(51, 51, 51),
    BackgroundColor3 = Color3.fromRGB(36, 36, 36),
    BorderSizePixel = 3,
    ZIndex = 5,

    [Children] = {
        New "ImageButton" {
            Position = UDim2.new(.28,0,.5,0),
            Size = UDim2.new(.15, 0,1, 0),
            AnchorPoint = Vector2.new(.28,.5),
            BackgroundTransparency = 1,
            Image = "rbxassetid://8448691358",
            ZIndex = 5,
            [Children] = {
                New "UIAspectRatioConstraint" {},
                New "UICorner" {
                    CornerRadius = UDim.new(100,0)
                },
                New "UIPadding" {
                    PaddingRight = UDim.new(100,0)
                }
            }
        },
        New "TextLabel" {
            Position = UDim2.new(.5,0,.5,0),
            Size = UDim2.new(.15, 0,1, 0),
            AnchorPoint = Vector2.new(.5,.5),
            BackgroundTransparency = 1,
            ZIndex = 5,
            TextColor3 = Color3.new(255,255,255),
            Text = "Settings",
            TextSize = 20,
        }
    }
}


local function Menu(props)
    local isOpen = State(false)
    return {
    New "Frame" {
        Visible = false,
        Name = "Menu",
        Size = UDim2.new(1,0,1,0),
        Position = UDim2.new(1,0,0,0),
        BackgroundColor3 = Color3.fromRGB(36, 36, 36),
        ZIndex = 5,
        [Children] = {
            New "Frame" {
                Position = UDim2.new(0.5,0,0.5,0),
                Size = UDim2.new(0.97, 0,0.93, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundTransparency = 1,
                ZIndex = 5,

                [Children] = {
                    New "UIListLayout" {
                        Padding = UDim.new(0.02,0),
                        HorizontalAlignment = Enum.HorizontalAlignment.Center,
                        VerticalAlignment = Enum.VerticalAlignment.Top,
                        FillDirection = Enum.FillDirection.Vertical,
                    },
                    ProfileButton,
                    SettingsButton

                }
            },
        }
    },
    New "ImageButton" {
        Position = UDim2.new(1,0,0,0),
        Size = UDim2.new(0.14, 0,0.04, 0),
        Name = "MenuButton",
        AnchorPoint = Vector2.new(1, 0),
        BackgroundTransparency = 1,
        Image = "rbxassetid://8437305102",
        ZIndex = 5,

        [OnEvent "Activated"] = function()
            if isOpen:get() then
                props.Widget.Main.Menu:TweenPosition(UDim2.new(1,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Back, .5, true)
                props.Widget.Main.MenuButton.Image = "rbxassetid://8437305102"
                isOpen:set(false)
            else
                props.Widget.Main.Menu:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, .5, true)
                props.Widget.Main.MenuButton.Image = "rbxassetid://8448721297"
                isOpen:set(true)
            end
        end,

        [Children] = {
            New "UIAspectRatioConstraint" {}
        }
    }
}
end


return Menu