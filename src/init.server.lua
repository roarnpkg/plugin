local toolbar = plugin:CreateToolbar("Roarn Studio")

local initButton = toolbar:CreateButton("initButton", "Initialize Roarn Studio", "rbxassetid://8322406932", "Init")

local defaultWidgetInfo = DockWidgetPluginGuiInfo.new(
    Enum.InitialDockState.Float,
    true,
    false,
    200,
    300,
    150,
    150
)
local Container = require(script.components.Container)

local initWidget = plugin:CreateDockWidgetPluginGui("initWidget", defaultWidgetInfo)
initWidget.Title = "Roarn Studio"

Container {
    Widget = initWidget
}

initButton.Click:Connect(function()
    initWidget.Enabled = not initWidget.Enabled
end)