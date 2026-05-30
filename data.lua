local shared = require("shared")

local function remove_spoil_mechanic(prototype)
  prototype.spoil_ticks = nil

  if mods["spoiling-plant"] == nil then
    prototype.spoil_result = nil
  end

  prototype.spoil_to_trigger_result = nil
end

for _, item in ipairs(shared.spoils) do
  -- log("no-spoilage-item-" .. item.name)
  if settings.startup["no-spoilage-item-" .. item.name].value then
    remove_spoil_mechanic(data.raw[item.type][item.name])
  end
end
