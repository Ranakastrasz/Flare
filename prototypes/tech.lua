data:extend(
{
  {
    type = "technology",
    name = "flare-capsule",
	icon_size = 32,
    icon = "__Flare__/graphics/flare-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flare-capsule"
      },
    },
    --prerequisites = {"~~~"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 10
    },
    order = "e-a-f"
  }
})