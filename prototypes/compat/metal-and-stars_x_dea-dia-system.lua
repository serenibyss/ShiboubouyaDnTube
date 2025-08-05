if mods["metal-and-stars"] and mods["dea-dia-system"] then
    -- Add Stationkeeping Modules to the module productivity researches
    local tech1 = data.raw["technology"]["module-productivity-basic"]

    table.insert(tech1.effects, #tech1.effects, {
        type = "change-recipe-productivity",
        recipe = "stationkeeping-module",
        change = 0.1
    })

    local tech2 = data.raw["technology"]["module-productivity-intermediate"]

    table.insert(tech2.effects, #tech2.effects, {
        type = "change-recipe-productivity",
        recipe = "stationkeeping-module-2",
        change = 0.1
    })

    local tech3 = data.raw["technology"]["module-productivity-advanced"]

    table.insert(tech3.effects, #tech3.effects, {
        type = "change-recipe-productivity",
        recipe = "stationkeeping-module-3",
        change = 0.1
    })
end
