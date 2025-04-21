Config = {}

Config.SellZones = {
    ["sell_scrap"] = {
        npc = {
            model = "a_m_m_og_boss_01",
            coords = vector4(150.6913, 319.8318, 111.1200, 114.4357)
        },
        items = {
            scrapmetal = {
                label = "Scrap Metal",
                give = {
                    { item = "money", amount = 35 }
                },
                price = 35
            }
        }
    },

    ["vymenik_kovarna"] = {
        npc = {
            model = "cs_orleans",
            coords = vector4(210.1464, 360.2750, 89.7271, 303.7862)
        },
        items = {
            iron = {
                label = "Iron",
                give = {
                    { item = "money", amount = 30 },
                    { item = "steel", amount = 1 }
                },
                price = 20
            },
            gold_piece = {
                label = "Gold Piece",
                give = {
                    { item = "money", amount = 100 }
                },
                price = 100
            }
        }
    }
}
