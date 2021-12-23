local Fusion = require(script.Parent.Parent.modules.Fusion)
local New = Fusion.New
local Children = Fusion.Children

local AnimateGif = require(script.Parent.Parent.helpers.animateGif)
local FPSs = 81 / 3.4

local Loader = New "ImageLabel" {
            Name = "Loader",
            Position = UDim2.new(0.5,0,0.5,0),
            Size = UDim2.new(0.233, 0,0.525, 0),
            AnchorPoint = Vector2.new(0.5,0.5),
            BackgroundTransparency = 1,
            ImageColor3 = Color3.fromRGB(3,108,156),
            Image = "rbxassetid://7996219298",

            [Children] = {
                New "UIAspectRatioConstraint" {
                    AspectRatio = 1,
                    DominantAxis = Enum.DominantAxis.Height,
                    AspectType = Enum.AspectType.FitWithinMaxSize
                }
            }
}


AnimateGif(Loader, 1296, 1296, 9, 9, 81, 7996219298, FPSs)

return Loader