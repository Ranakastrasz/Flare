data:extend(
{
    {
        type = "explosion",
        name = "explosion-flare",
        flags = {"not-on-map"},
        animations =
        {
          {
            filename = "__Flare__/graphics/null.png",
            priority = "extra-high",
            width = 1,
            height = 1,
            frame_count = 1,
            animation_speed = 1.0/60.0/120.0,
            shift = {0, 0}
          }
        },
        rotate = false,
        light = {intensity = 0.9, size = 80},

        --light = {intensity = 0.05, size = 80,color = { r = 0.5, g = 0.9, b = 0.8,a = 0.0 }},

        --[[smoke = "smoke-fast",
        smoke_count = 1,
        smoke_slow_down_factor = 1]]--
    },
    {
        type = "trivial-smoke",
        name = "flare-cloud",
        flags = {"not-on-map"},
        show_when_smoke_off = true,
        animation =
        {
            filename = "__Flare__/graphics/flare-capsule.png",
            frame_count = 1,
            width = 32,
            height = 32,
            priority = "high",
            scale = 0.2
        },
        slow_down_factor = 0,
        affected_by_wind = false,
        cyclic = true,
        duration =  60 * 120,
        fade_away_duration = 2 * 60,
        spread_duration = 10,
        color = { r = 0.1, g = 0.9, b = 0.7 },
        action =
        {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                  type = "create-explosion",
                  entity_name = "explosion-flare"
              },
            }
        },
        action_frequency = 60
    },
    {
        type = "projectile",
        name = "flare-capsule",
        flags = {"not-on-map"},
        acceleration = 0.005,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-trivial-smoke",
						smoke_name = "nuclear-smoke",

                    },
                    {
                        type = "create-entity",
                        entity_name = "explosion-flare"
                    },
                }
            }
        },
        light = {intensity = 0.9, size = 80},
        animation =
        {
            filename = "__Flare__/graphics/flare-capsule.png",
            frame_count = 1,
            width = 32,
            height = 32,
            priority = "high"
        },
        shadow =
        {
            filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
            frame_count = 1,
            width = 32,
            height = 32,
            priority = "high"
        },
        smoke = capsule_smoke,
    },
})