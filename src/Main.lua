-- TurtleData - Main
-- Event handling and slash commands

local TD = _G.TurtleData
local ADDON_NAME = "TurtleData"

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")

-- Register slash commands immediately (before events)
SLASH_TURTLEDATA1 = "/tdata"
SlashCmdList["TURTLEDATA"] = function(msg)
    -- Ensure TD exists
    if not _G.TurtleData then
        DEFAULT_CHAT_FRAME:AddMessage("TurtleData not loaded yet!")
        return
    end
    
    local TD = _G.TurtleData
    msg = (msg or ""):lower()
    local cmd = msg:match("^(%S+)") or ""

    if cmd == "help" or cmd == "" then
        TD:Print("Commands:")
        TD:Print("  /tdata help   - show help")
        TD:Print("  /tdata ping   - test output")
        TD:Print("  /tdata ver    - show version")
    elseif cmd == "ping" then
        TD:Print("pong")
    elseif cmd == "ver" or cmd == "version" then
        TD:Print("version " .. TD.VERSION)
    else
        TD:Print("unknown command; try /tdata help")
    end
end

function frame:OnEvent(event, ...)
    if event == "ADDON_LOADED" then
        local name = ...
        if name == ADDON_NAME then
            TD:Initialize()
            -- Confirm slash command is registered
            DEFAULT_CHAT_FRAME:AddMessage("|cff00ff7fTurtleData|r: Slash command /tdata registered")
        end
    elseif event == "PLAYER_LOGIN" then
        TD:Print("Hello Turtle WoW! Use /tdata help")
    end
end

frame:SetScript("OnEvent", frame.OnEvent)

return TD
