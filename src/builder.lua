local Fusion = require(script.Parent.modules.Fusion)

local Container = require(script.Parent.components.Container)
local Loader = require(script.Parent.components.Loader)
local Welcome = require(script.Parent.components.WelcomeScreen)
local Home = require(script.Parent.components.HomeScreen)
local Menu = require(script.Parent.components.Menu)
local PackagePage = require(script.Parent.components.PackagePage)

local Children = Fusion.Children

function build(authenticate)
    local authData = authenticate()
    
    Container {
            [Children] = {
                Menu{},
                PackagePage,
                Welcome{onDone = authenticate, code = authData.code},
                Home,
                Loader
            }
    }
    
    if authData.authenticated then
        _G.Widget.Main.Loader.Visible = false
        _G.Widget.Main.HomeScreen.Visible = true
        _G.Widget.Main.Menu.Visible = true
    else
        _G.Widget.Main.Loader.Visible = false
        _G.Widget.Main.WelcomeScreen.Visible = true
    end
end

return build