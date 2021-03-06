data:extend(
{
	{
        type = "capsule",
        name = "flare-capsule",
        icon = "__Flare__/graphics/flare-capsule.png",
		icon_size = 32,
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "capsule",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 50,
                ammo_type =
                {
                    category = "capsule",
                    target_type = "position",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = "flare-capsule",
                            starting_speed = 0.3
                        }
                    }
                }
            }
        },
        subgroup = "capsule",
        order = "a[flare-capsule]",
        stack_size = 100
    },
})