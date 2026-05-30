local shared = require("shared")

local function remove_spoil_mechanic(prototype)
  prototype.spoil_ticks = nil

  if mods["spoiling-plant"] == nil then
    prototype.spoil_result = nil
  end

  prototype.spoil_to_trigger_result = nil
end
