if mods["metal-and-stars"] and mods["secretas"] then

    -- Add Overclock Module 4
    if (settings.startup["condense-level-4-modules-into-one-technology"].value) then
        local tech = data.raw["technology"]["module-finale"]

        table.insert(tech.effects, #tech.effects, {
            type = "unlock-recipe",
            recipe = "overclock-module-4"
        })

        table.insert(tech.unit.ingredients, { "nanite-science-pack", 1 })
        table.insert(tech.unit.ingredients, { "anomaly-science-pack", 1 })

        table.insert(tech.prerequisites, { "overclock-module-3" })

    else
        data:extend({
          {
            type = "technology",
            name = "overclock-module-4",
            icon = "__shiboubouya-dn-tube__/graphics/technology/overclock-module-4.png",
            icon_size = 256,
            prerequisites = {
              "planet-discovery-secretas",
              "overclock-module-3"
            },
            effects = {
              {
                type = "unlock-recipe",
                recipe = "overclock-module-4",
              }
            },
            unit = {
              count = 2000,
              ingredients = {
                { "space-science-pack", 1 },
                { "nanite-science-pack", 1 },
                { "anomaly-science-pack", 1 },
              },
              time = 60,
              upgrade = true
            }
          },
        })
    end

    -- Add Elite Module Research Productivity, productivity for Tier 4 Modules
    data:extend({
      {
        type = "technology",
        name = "module-productivity-elite",
        icons = util.technology_icon_constant_recipe_productivity("__secretas__/graphics/technology/module.png"),
        icon_size = 256,
        order="a[inf]-bd[modules]",
        effects = {
          {
            type = "change-recipe-productivity",
            recipe = "productivity-module-4-S",
            change = 0.1
          },
          {
            type = "change-recipe-productivity",
            recipe = "efficiency-module-4-S",
            change = 0.1
          },
          {
            type = "change-recipe-productivity",
            recipe = "speed-module-4-S",
            change = 0.1
          },
          {
            type = "change-recipe-productivity",
            recipe = "quality-module-4-S",
            change = 0.1
          },
          {
            type = "change-recipe-productivity",
            recipe = "overclock-module-4",
            change = 0.1
          },
        },
        prerequisites = {
          "modules",
          "anomaly-science-pack",
          "ring-science-pack"
        },
        unit = {
          count_formula = "1.5^L*1000",
          ingredients = {
            { "space-science-pack", 1 },
            { "nanite-science-pack", 1 },
            { "ring-science-pack", 1 },
            { "anomaly-science-pack", 1 }
          },
          time = 60
        },
        max_level = "infinite",
        upgrade = true
      }
    })

    -- Add Stationkeeping Module 4 here if needed since its convenient
    if mods["dea-dia-system"] then
        local tech = data.raw["technology"]["module-productivity-elite"]

        table.insert(tech.effects, #tech.effects, {
            type = "change-recipe-productivity",
            recipe = "stationkeeping-module-4",
            change = 0.1
        })
    end
end
