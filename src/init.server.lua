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
local fetchu = require(script.modules.fetchu)

local Container = require(script.components.Container)
local Loader = require(script.components.Loader)
local Welcome = require(script.components.WelcomeScreen)
local Home = require(script.components.HomeScreen)
local Menu = require(script.components.Menu)

local Children = Fusion.Children


local initWidget = plugin:CreateDockWidgetPluginGui("initWidget", defaultWidgetInfo)
initWidget.Title = "Roarn Studio"

initButton.Click:Connect(function()
    initWidget.Enabled = not initWidget.Enabled
end)

function authenticate()
    local GUID = plugin:GetSetting("GUID")

    if not GUID then
        GUID = fetchu.generateGUID(false)
        plugin:SetSetting("GUID", GUID)
    end
    
    local response = fetchu.post("https://roarn.space/api/studio/authenticate", {
        body = {guid = GUID},
        tablefy = true,
    })
    
    local authData = response.data
    return authData
end

local authData = authenticate()

Container {
        Widget = initWidget,
    
        [Children] = {
            Menu{Widget = initWidget},
            Welcome{Widget = initWidget, onDone = authenticate, code = authData.code},
            Home{Widget = initWidget},
            Loader
        }
}

if authData.authenticated then
    initWidget.Main.Loader.Visible = false
    initWidget.Main.HomeScreen.Visible = true
    initWidget.Main.Menu.Visible = true
else
    initWidget.Main.Loader.Visible = false
    initWidget.Main.WelcomeScreen.Visible = true
end 