local sounds = require("__base__.prototypes.entity.sounds")

local projectiles = {}

local plutonium_cannon_shell_explosion = util.table.deepcopy(data.raw["explosion"]["big-explosion"])
plutonium_cannon_shell_explosion.name = "plutonium-cannon-shell-explosion"
plutonium_cannon_shell_explosion.animations[1].tint = {r = 0.1, g = 0.9, b = 0.7}
table.insert(projectiles, plutonium_cannon_shell_explosion)


local plutonium_cannon_explosion = util.table.deepcopy(data.raw["explosion"]["explosion"])
plutonium_cannon_explosion.name = "plutonium-cannon-explosion"
for k, v in pairs(plutonium_cannon_explosion.animations) do
    v.tint = {r = 0.1, g = 0.9, b = 0.7}
end
table.insert(projectiles, plutonium_cannon_explosion)



--[[
-- atomic rocket * 1.4
local plutonium_atomic_rocket = util.table.deepcopy(data.raw["projectile"]["atomic-rocket"])
plutonium_atomic_rocket.name = "plutonium-atomic-rocket"
plutonium_atomic_rocket.action.action_delivery.target_effects[1].radius = 17                           -- math.ceil(12 * 1.4)
plutonium_atomic_rocket.action.action_delivery.target_effects[2].radius = 13                           -- 9 * 1.4 = 12.6
local index_offset = 0
if plutonium_atomic_rocket.action.action_delivery.target_effects[4] and plutonium_atomic_rocket.action.action_delivery.target_effects[4].effect and plutonium_atomic_rocket.action.action_delivery.target_effects[4].effect == 'screen-burn'then
    index_offset = 0
else
    index_offset = -1
end
plutonium_atomic_rocket.action.action_delivery.target_effects[7+index_offset].damage.amount = 560                   -- 400 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[10+index_offset].radius = 20                          -- 14 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[11+index_offset].spawn_min_radius = 16.5              -- Rough numbers
plutonium_atomic_rocket.action.action_delivery.target_effects[11+index_offset].spawn_max_radius = 17.5
plutonium_atomic_rocket.action.action_delivery.target_effects[11+index_offset].spawn_min = 45
plutonium_atomic_rocket.action.action_delivery.target_effects[11+index_offset].spawn_max = 60
plutonium_atomic_rocket.action.action_delivery.target_effects[12+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[12+index_offset].action.radius = 10                   -- 7 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[12+index_offset].action.action_delivery.starting_speed = 0.5*0.8 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[13+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[13+index_offset].action.radius = 50                   -- 35 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[13+index_offset].action.action_delivery.starting_speed = 0.5*0.7 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[14+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[14+index_offset].action.radius = 36                   -- 26 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[14+index_offset].action.action_delivery.starting_speed = 0.5*0.7 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[15+index_offset].action.repeat_count = 980            -- 700 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[15+index_offset].action.radius = 6                    -- 4 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[15+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[16+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[16+index_offset].action.radius = 11                   -- 8 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[16+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[17+index_offset].action.repeat_count = 420            -- 300 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[17+index_offset].action.radius = 36                   -- 26 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[17+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[18+index_offset].action.repeat_count = 14             -- 10 * 1.4
plutonium_atomic_rocket.action.action_delivery.target_effects[18+index_offset].action.radius = 11                   -- 8 * 1.4
table.insert(projectiles, plutonium_atomic_rocket)


index_offset = 0 ]]

if mods['bobwarfare'] then
    local plutonium_atomic_artillery_projectile = util.table.deepcopy(data.raw["artillery-projectile"]["atomic-artillery-projectile"])

    plutonium_atomic_artillery_projectile.name = "plutonium-atomic-artillery-projectile"

    plutonium_atomic_artillery_projectile.picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/hr-plutonium-atomic-shell.png"
    plutonium_atomic_artillery_projectile.chart_picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/plutonium-atomic-artillery-shoot-map-visualization.png"

    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[1].repeat_count = 140
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[3].damage.amount = 560
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[6].radius = 10
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[7].action.repeat_count = 2800
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[7].action.radius = 50
    table.insert(projectiles, plutonium_atomic_artillery_projectile)

elseif mods["AtomicArtillery"] then
    local plutonium_atomic_artillery_projectile = util.table.deepcopy(data.raw["artillery-projectile"]["atomic-artillery-projectile"])

    plutonium_atomic_artillery_projectile.name = "plutonium-atomic-artillery-projectile"

    plutonium_atomic_artillery_projectile.picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/hr-plutonium-atomic-shell.png"
    plutonium_atomic_artillery_projectile.chart_picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/plutonium-atomic-artillery-shoot-map-visualization.png"

    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[1].action.radius = 49
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[1].action.action_delivery.target_effects[1].damage.amount = 2100
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[2].radius = 13
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[3].action.radius = 49
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[3].action.action_delivery.starting_speed = 0.5*0.7*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[4].action.radius = 13
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[4].action.action_delivery.starting_speed = 0.6*0.8*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[14].action.radius = 36
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[14].action.action_delivery.starting_speed = 0.5*0.7*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[15].action.repeat_count = 980
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[15].action.radius = 6
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[15].action.action_delivery.starting_speed = 0.5*0.65*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[16].action.repeat_count = 1400
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[16].action.radius = 11
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[16].action.action_delivery.starting_speed = 0.5*0.65*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[17].action.repeat_count = 420 -- Nice
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[17].action.radius = 36
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[17].action.action_delivery.starting_speed = 0.5*0.65*1.4
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[18].action.repeat_count = 14
    plutonium_atomic_artillery_projectile.action.action_delivery.target_effects[18].action.radius = 11
    table.insert(projectiles, plutonium_atomic_artillery_projectile)
end

if mods['SchallArtillery'] then
    local sc_plutonium_aa_pj = util.table.deepcopy(data.raw['artillery-projectile']['Schall-atomic-artillery-projectile'])

    sc_plutonium_aa_pj.name = 'Schall-plutonium-atomic-artillery-projectile'

    sc_plutonium_aa_pj.picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/hr-plutonium-atomic-shell.png"
    sc_plutonium_aa_pj.chart_picture.filename = "__PlutoniumEnergy__/graphics/entity/plutonium-artillery-projectile/plutonium-atomic-artillery-shoot-map-visualization.png"

    sc_plutonium_aa_pj.action.action_delivery.target_effects[7+index_offset].damage.amount = 560                   -- 400 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[10+index_offset].radius = 20                          -- 14 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[11+index_offset].spawn_min_radius = 16.5              -- Rough numbers
    sc_plutonium_aa_pj.action.action_delivery.target_effects[11+index_offset].spawn_max_radius = 17.5
    sc_plutonium_aa_pj.action.action_delivery.target_effects[11+index_offset].spawn_min = 45
    sc_plutonium_aa_pj.action.action_delivery.target_effects[11+index_offset].spawn_max = 60
    sc_plutonium_aa_pj.action.action_delivery.target_effects[12+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[12+index_offset].action.radius = 10                   -- 7 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[12+index_offset].action.action_delivery.starting_speed = 0.5*0.8 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[13+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[13+index_offset].action.radius = 50                   -- 35 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[13+index_offset].action.action_delivery.starting_speed = 0.5*0.7 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[14+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[14+index_offset].action.radius = 36                   -- 26 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[14+index_offset].action.action_delivery.starting_speed = 0.5*0.7 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[15+index_offset].action.repeat_count = 980            -- 700 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[15+index_offset].action.radius = 6                    -- 4 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[15+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[16+index_offset].action.repeat_count = 1400           -- 1000 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[16+index_offset].action.radius = 11                   -- 8 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[16+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[17+index_offset].action.repeat_count = 420            -- 300 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[17+index_offset].action.radius = 36                   -- 26 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[17+index_offset].action.action_delivery.starting_speed = 0.5*0.65 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[18+index_offset].action.repeat_count = 14             -- 10 * 1.4
    sc_plutonium_aa_pj.action.action_delivery.target_effects[18+index_offset].action.radius = 11                   -- 8 * 1.4

    table.insert(projectiles, sc_plutonium_aa_pj)

end

data:extend(projectiles)

data:extend({
        {
            type = "projectile",
            name = "plutonium-cannon-projectile",
            flags = {"not-on-map"},
            collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
            acceleration = 0,
            direction_only = true,
            piercing_damage = 600,
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {amount = 600 , type = "physical"}
                        },
                        {
                            type = "damage",
                            damage = {amount = 300 , type = "explosion"}
                        },
                        {
                            type = "create-entity",
                            entity_name = "plutonium-cannon-explosion"
                        }
                    }
                }
            },
            final_action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "small-scorchmark",
                            check_buildability = true
                        }
                    }
                }
            },
            animation = {
                filename = "__base__/graphics/entity/bullet/bullet.png",
                frame_count = 1,
                width = 3,
                height = 50,
                priority = "high"
            }
        },
        {
            type = "projectile",
            name = "explosive-plutonium-cannon-projectile",
            flags = {"not-on-map"},
            collision_box = {{-0.3, -1.1}, {0.3, 1.1}},
            acceleration = 0,
            piercing_damage = 150,
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {amount = 525 , type = "physical"}
                        },
                        {
                            type = "create-entity",
                            entity_name = "plutonium-cannon-explosion"
                        }
                    }
                }
            },
            final_action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "create-entity",
                            entity_name = "plutonium-cannon-shell-explosion"
                        },
                        {
                            type = "nested-result",
                            action = {
                                type = "area",
                                radius = 4.25,
                                action_delivery = {
                                    type = "instant",
                                    target_effects = {
                                        {
                                            type = "damage",
                                            damage = {amount = 475, type = "explosion"}
                                        },
                                        {
                                            type = "create-entity",
                                            entity_name = "plutonium-cannon-explosion"
                                        }
                                    }
                                }
                            }
                        },
                        {
                            type = "create-entity",
                            entity_name = "small-scorchmark",
                            check_buildability = true
                        }
                    }
                }
            },
            animation = {
                filename = "__base__/graphics/entity/bullet/bullet.png",
                frame_count = 1,
                width = 3,
                height = 50,
                priority = "high"
            }
        },
        {
            type = "projectile",
            name = "plutonium-atomic-rocket",
            flags = {"not-on-map"},
            acceleration = 0.005,
            turn_speed = 0.003,
            turning_speed_increases_exponentially_with_projectile_speed = true,
            action =
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "set-tile",
                            tile_name = "nuclear-ground",
                            radius = 17, -- This
                            apply_projection = true,
                            tile_collision_mask = { "water-tile" }
                        },
                        {
                            type = "destroy-cliffs",
                            radius = 13, -- This
                            explosion = "explosion"
                        },
                        {
                            type = "create-entity",
                            entity_name = "nuke-explosion"
                        },
                        {
                            type = "camera-effect",
                            effect = "screen-burn",
                            duration = 60,
                            ease_in_duration = 5,
                            ease_out_duration = 60,
                            delay = 0,
                            strength = 6,
                            full_strength_max_distance = 200,
                            max_distance = 800
                        },
                        {
                            type = "play-sound",
                            sound = sounds.nuclear_explosion(0.9),
                            play_on_target_position = false,
                            -- min_distance = 200,
                            max_distance = 1000,
                            -- volume_modifier = 1,
                            audible_distance_modifier = 3
                        },
                        {
                            type = "play-sound",
                            sound = sounds.nuclear_explosion_aftershock(0.4),
                            play_on_target_position = false,
                            -- min_distance = 200,
                            max_distance = 1000,
                            -- volume_modifier = 1,
                            audible_distance_modifier = 3
                        },
                        {
                            type = "damage",
                            damage = {amount = 560, type = "explosion"} -- This
                        },
                        {
                            type = "create-entity",
                            entity_name = "huge-scorchmark",
                            offsets = {{ 0, -0.5 }},
                            check_buildability = true
                        },
                        {
                            type = "invoke-tile-trigger",
                            repeat_count = 1
                        },
                        {
                            type = "destroy-decoratives",
                            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
                            include_decals = true,
                            invoke_decorative_trigger = true,
                            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
                            radius = 20 -- large radius for demostrative purposes -- This
                        },
                        {
                            type = "create-decorative",
                            decorative = "nuclear-ground-patch",
                            spawn_min_radius = 16.5, -- This
                            spawn_max_radius = 17.5, -- This
                            spawn_min = 45, -- This
                            spawn_max = 60, -- This
                            apply_projection = true,
                            spread_evenly = true
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 1400, -- This
                                radius = 10, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-ground-zero-projectile",
                                    starting_speed = 0.6 * 0.8 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 1400, -- This
                                radius = 50, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-wave",
                                    starting_speed = 0.5 * 0.7 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                show_in_tooltip = false,
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 1400, -- This
                                radius = 36, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                                    starting_speed = 0.5 * 0.7 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                show_in_tooltip = false,
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 980, -- This
                                radius = 6, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                                    starting_speed = 0.5 * 0.65 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                show_in_tooltip = false,
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 1400, -- This
                                radius = 11, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                                    starting_speed = 0.5 * 0.65 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                show_in_tooltip = false,
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 420, -- This
                                radius = 36, -- This
                                action_delivery =
                                {
                                    type = "projectile",
                                    projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                                    starting_speed = 0.5 * 0.65 * 1.4, -- This
                                    starting_speed_deviation = nuke_shockwave_starting_speed_deviation
                                }
                            }
                        },
                        {
                            type = "nested-result",
                            action =
                            {
                                type = "area",
                                show_in_tooltip = false,
                                target_entities = false,
                                trigger_from_target = true,
                                repeat_count = 14, -- This
                                radius = 11, -- This
                                action_delivery =
                                {
                                    type = "instant",
                                    target_effects =
                                    {
                                        {
                                            type = "create-entity",
                                            entity_name = "nuclear-smouldering-smoke-source",
                                            tile_collision_mask = { "water-tile" }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            },
            --light = {intensity = 0.8, size = 15},
            animation =
            {
                filename = "__base__/graphics/entity/rocket/rocket.png",
                draw_as_glow = true,
                frame_count = 8,
                line_length = 8,
                width = 9,
                height = 35,
                shift = {0, 0},
                priority = "high"
            },
            shadow =
            {
                filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
                frame_count = 1,
                width = 7,
                height = 24,
                priority = "high",
                shift = {0, 0}
            },
            smoke =
            {
                {
                    name = "smoke-fast",
                    deviation = {0.15, 0.15},
                    frequency = 1,
                    position = {0, 1},
                    slow_down_factor = 1,
                    starting_frame = 3,
                    starting_frame_deviation = 5,
                    starting_frame_speed = 0,
                    starting_frame_speed_deviation = 5
                }
            }
        }
    })
