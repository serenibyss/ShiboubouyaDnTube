local base_sounds = require("__base__.prototypes.item_sounds")
local space_sounds = require("__space-age__.prototypes.item_sounds")

data:extend({
  {
    type = "module",
    name = "overclock-module-4",
    localised_description = {
      "item-description.overclock-module"
    },
    icon = "__shiboubouya-dn-tube__/graphics/icons/overclock-module-4.png",
    subgroup = "module",
    color_hint = {
      text = "P"
    },
    category = "overclock",
    tier = 4,
    order = "c[overclock]-d[overclock-module-4]",
    inventory_move_sound = base_sounds.module_inventory_move,
    pick_sound = base_sounds.module_inventory_pickup,
    drop_sound = base_sounds.module_inventory_move,
    stack_size = 50,
    weight = 20 * kg,
    default_import_location = "nix",
    effect = {
      productivity = 0.15,
      consumption = 2.0,
    }
  }
})
