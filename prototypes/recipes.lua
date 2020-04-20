local iconSize = data.raw.item["empty-barrel"].icon_size -- 32px in v0.17, 64px in v0.18

local steamExpansionRecipe = {
  type = "recipe",
  name = "steamWorks-steam-expansion",
  category = "chemistry",
  enabled = false,
  energy_required = 0.3,
  ingredients =
  {
    {type="fluid", name="steam", amount=30, minimum_temperature = 500.0},
    {type="fluid", name="water", amount=80}
  },
  results=
  {
    {type="fluid", name="steam", amount=95, temperature = 165.0}
  },
  main_product= "",
  icon = "__steamWorks__/graphics/icons/steam-expansion.png",
  icon_size = 64, icon_mipmaps = 4,
  subgroup = "fluid-recipes",
  order = "f[fluid-chemistry]-a[steam]",
  emissions_multiplier = 0,
  crafting_machine_tint =
  {
    primary = {r = 0.6, g = 1, b = 1, a = 1.000},
		secondary = {r = 1, g = 1, b = 1, a = 1.000},
    tertiary = {r = 1, g = 1, b = 1, a = 0.010},
  }
}

data:extend({
	steamExpansionRecipe
})
