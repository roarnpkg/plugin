--[[  
Plugin Configuration @ imacodr

For builder options go to builder.luau file
--]]


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

_G.Widget = plugin:CreateDockWidgetPluginGui("initWidget", defaultWidgetInfo)
_G.Widget.Title = "Roarn Studio"

initButton.Click:Connect(function()
    _G.Widget.Enabled = not _G.Widget.Enabled
end)

local fetchu = require(script.modules.fetchu)

local constants = require(script.helpers.constants)

function authenticate()
    local GUID = plugin:GetSetting("GUID")

    if not GUID then
        GUID = fetchu.generateGUID(false)
        plugin:SetSetting("GUID", GUID)
    end
    
    local response = fetchu.post(constants.AUTH_URL, {
        body = {guid = GUID},
        tablefy = true,
    })
    
    local authData = response.data
    return authData
end

-- Builds the UI and authenticates the PM user
require(script.builder)(authenticate)