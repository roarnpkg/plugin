local Fusion = require(script.Parent.Parent.modules.Fusion)
local New = Fusion.New
local Children = Fusion.Children

local function Separator(props)
    return New "Frame" {
            Position = props.Position,
            Size = UDim2.new(.9, 0,0.001, 0),
            AnchorPoint = Vector2.new(0,0.5),
            BackgroundTransparency = 0,
            ZIndex = props.ZIndex
}
end
return Separator