-- TurtleData - Core
-- Global namespace and utilities

_G.TurtleData = _G.TurtleData or {}
local TD = _G.TurtleData

TD.VERSION = "0.1.0"
TD.NAME = "TurtleData"

function TD:Print(msg)
    local text = "|cff00ff7f" .. self.NAME .. "|r: " .. tostring(msg)
    if DEFAULT_CHAT_FRAME and DEFAULT_CHAT_FRAME.AddMessage then
        DEFAULT_CHAT_FRAME:AddMessage(text)
    elseif UIErrorsFrame and UIErrorsFrame.AddMessage then
        -- Fallback: show in the UI errors frame if chat isn't ready yet
        UIErrorsFrame:AddMessage(text, 0.5, 1.0, 0.5)
    end
end

function TD:Initialize()
    TurtleDataDB = TurtleDataDB or {}
    TurtleDataCharDB = TurtleDataCharDB or {}
    self:Print("Loaded v" .. self.VERSION)
end

return TD
