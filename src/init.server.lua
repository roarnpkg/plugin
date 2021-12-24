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
local Fusion = require(script.modules.Fusion)

local Container = require(script.components.Container)
local Loader = require(script.components.Loader)
local Home = require(script.components.HomeScreen)
local Children = Fusion.Children


local initWidget = plugin:CreateDockWidgetPluginGui("initWidget", defaultWidgetInfo)
initWidget.Title = "Roarn Studio"

initButton.Click:Connect(function()
    initWidget.Enabled = not initWidget.Enabled
end)

Container {
        Widget = initWidget,
    
        [Children] = {
            Home{Widget = initWidget},
            Loader
        }
}
task.wait(0.1)
initWidget.Main.Loader.Visible = false
initWidget.Main.HomeScreen.Visible = true
