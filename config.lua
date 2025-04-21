Config = {}
Config.Locale = 'en'

Config.Framework = "ESX" -- ESX, qbcore, qbcore-new

Config.EnableDebug = false -- Enable/Disable prints and showing box of targets
Config.Target = "ox_target" -- ox_target or qb-target


Config.Craftings = {
    ["gang"] = {
        jobs = nil, -- Required jobs to access table or nil
        gang = nil, -- Required gang to access table or nil (QB ONLY)
        model = `gr_prop_gr_bench_04b`, -- Table model.
        label = 'Open crafting', -- Target label
        icon = "fas fa-gun",
        item = "badge", -- item name or nil for no item QB ONLY
        coords = { -- Table Coords
            [1] = vector4(1136.7330, -2016.7771, 31.0242, 95.1778),
        },
        items = { -- Items in the crafting table.
            {
                title = "Combat Pistol",
                description = "250x Scrap Metal",
                progressbar = "Making Combat Pistol",
                duration = 5000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 250},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_combatpistol", amount = 1},
                },
            },
            {
                title = "AP Pistol",
                description = "650x Scrap Metal",
                progressbar = "Making AP Pistol",
                duration = 10000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 650},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_appistol", amount = 1},
                },
            },
            {
                title = "Heavy Pistol",
                description = "750x Scrap Metal",
                progressbar = "Making Heavy Pistol",
                duration = 10000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 750},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_heavypistol", amount = 1},
                },
            },
            {
                title = "Pistol .50",
                description = "900x Scrap Metal",
                progressbar = "Making Pistol .50",
                duration = 11000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 900},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_pistol50", amount = 1},
                },
            },
            {
                title = "Pistol Mk II",
                description = "975x Scrap Metal",
                progressbar = "Making Pistol Mk II",
                duration = 11000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 975},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_pistol_mk2", amount = 1},
                },
            },
            {
                title = "Micro SMG",
                description = "1500x Scrap Metal",
                progressbar = "Making Micro SMG",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 1500},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_microsmg", amount = 1},
                },
            },
            {
                title = "SMG Mk II",
                description = "1750x Scrap Metal",
                progressbar = "Making SMG Mk II",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 1750},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_smg_mk", amount = 1},
                },
            },
            {
                title = "Pump Shotgun",
                description = "2000x Scrap Metal",
                progressbar = "Making Pump Shotgun",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 2000},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_pumpshotgun", amount = 1},
                },
            },
            {
                title = "Ammo .50",
                description = "50x Scrap Metal = 50 Ammo",
                progressbar = "Making Ammo .50",
                duration = 8000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 50},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "ammo-50", amount = 50},
                },
            },
            {
                title = "Ammo Shotgun",
                description = "50x Scrap Metal = 50 Ammo",
                progressbar = "Making Ammo Shotgun",
                duration = 8000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 50},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "ammo-shotgun", amount = 50},
                },
            },
        },
    },
    ["illegal"] = {
        jobs = nil, -- Required jobs to access table or nil
        gang = nil, -- Required gang to access table or nil (QB ONLY)
        model = `gr_prop_gr_bench_04b`, -- Table model.
        label = 'Open crafting',  -- Target label
        icon = "fas fa-gun",
        item = "illegal_card", -- item name or nil for no item QB ONLY
        coords = { -- Table Coords
            [1] = vector4(590.1334, -3280.1052, 6.0696, 191.8949),
        },
        items = { -- Items in the crafting table.
            {
                title = "Assault Rifle Mk II",
                description = "2300x Scrap Metal",
                progressbar = "Making aAssault Rifle Mk II",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 2300},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_assaultrifle_mk2", amount = 1},
                },
            },
            {
                title = "Heavy Shotgun",
                description = "2800x Scrap Metal",
                progressbar = "Making Heavy Shotgun",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 2800},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_heavyshotgun", amount = 1},
                },
            },
            {
                title = "SMG",
                description = "3750x Scrap Metal",
                progressbar = "Making SMG",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 3750},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_smg", amount = 1},
                },
            },
            {
                title = "Combat PDW",
                description = "4000x Scrap Metal",
                progressbar = "Making Combat PDW",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 4000},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_combatpdw", amount = 1},
                },
            },
            {
                title = "Special Carbine",
                description = "4200x Scrap Metal",
                progressbar = "Making Special Carbine",
                duration = 15000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 4200},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "weapon_specialcarbine", amount = 1},
                },
            },
            {
                title = "Ammo Rifle 2",
                description = "100x Scrap Metal = 50 Ammo",
                progressbar = "Making Ammo Rifle 2",
                duration = 7000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 100},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "ammo-rifle2", amount = 50},
                },
            },
            {
                title = "Ammo Rifle",
                description = "100x Scrap Metal = 50 Ammo",
                progressbar = "Making Ammo Rifle",
                duration = 7000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "scrapmetal", amount = 100},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "ammo-rifle", amount = 50},
                },
            },
        },
    },
    ["burgershot"] = {
        jobs = {["burgershot"] = 0}, -- Required jobs to access table or nil
        gang = nil, -- Required gang to access table or nil (QB ONLY)
        model = nil, -- Table model.
        label = 'Open burgershot crafting',  -- Target label
        icon = "fas fa-burger",
        item = nil, -- item name or nil for no item QB ONLY
        coords = { -- Table Coords
            [1] = vector4(-1194.9108, -897.4638, 13.8862, 324.5184),
        },
        items = { -- Items in the crafting table.
            {
                title = "Bigmac",
                description = "1x Salat, 1x Meat, 1x Bund",
                progressbar = "Making Bigmac",
                duration = 1000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "salat", amount = 1},
                    {name = "meat", amount = 1},
                    {name = "bund", amount = 1},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "bigmac", amount = 1},
                },
            },
            {
                title = "Big Bigmac",
                description = "4x Salat, 4x Meat, 2x Bund",
                progressbar = "Making Big Bigmac",
                duration = 1000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "salat", amount = 4},
                    {name = "meat", amount = 4},
                    {name = "bund", amount = 2},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "food_hamburger_extralarge", amount = 1},
                },
            },
            {
                title = "Quarter Pounder",
                description = "1x Salat, 2x Meat, 1x Bund",
                progressbar = "Making Quarter Pounder",
                duration = 5000, -- duration to craft the item after action is complete.
                requireditems = { -- Items required to craft.
                    {name = "salat", amount = 1},
                    {name = "meat", amount = 2},
                    {name = "bund", amount = 1},
                },
                additems = { -- Items that will be given after craft is done
                    {name = "dquarterpounder", amount = 1},
                },
            },
        },
    },
}