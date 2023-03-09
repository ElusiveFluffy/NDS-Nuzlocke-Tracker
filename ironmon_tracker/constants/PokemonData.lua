PokemonData = {}

PokemonData.TYPE_LIST = {
    "BUG",
    "DARK",
    "DRAGON",
    "ELECTRIC",
    "FIGHTING",
    "FIRE",
    "FLYING",
    "GHOST",
    "GRASS",
    "GROUND",
    "ICE",
    "POISON",
    "PSYCHIC",
    "ROCK",
    "STEEL",
    "WATER"
}

PokemonData.LAST_INDEX_GEN_4 = 494

-- Enumerated constants that defines the various types a Pokemon and its Moves are
PokemonData.POKEMON_TYPES =
    MiscUtils.readOnly(
    {
        NORMAL = "NORMAL",
        FIGHTING = "FIGHTING",
        FLYING = "FLYING",
        POISON = "POISON",
        GROUND = "GROUND",
        ROCK = "ROCK",
        BUG = "BUG",
        GHOST = "GHOST",
        STEEL = "STEEL",
        FIRE = "FIRE",
        WATER = "WATER",
        GRASS = "GRASS",
        ELECTRIC = "ELECTRIC",
        PSYCHIC = "PSYCHIC",
        ICE = "ICE",
        DRAGON = "DRAGON",
        DARK = "DARK",
        FAIRY = "FAIRY", -- Expect this to be unused in Gen 1-5
        UNKNOWN = "UNKNOWN", -- For the move "Curse" in Gen 2-4
        EMPTY = "" -- No second type for this Pokemon or an empty field
    }
)

-- Enumerated constants that defines various evolution possibilities
-- This enum does NOT include levels for evolution, only stones, friendship, no evolution, etc.

--max 7 characters
PokemonData.EVOLUTION_TYPES =
    MiscUtils.readOnly(
    {
        NONE = Graphics.TEXT.PLACEHOLDER, -- This Pokemon does not evolve.
        FRIEND = "FRIEND", -- High friendship
        VARIOUS = "VARIOUS", -- Various evolution stone items
        THUNDER = "THUNDR", -- Thunder stone item
        FIRE = "FIRE", -- Fire stone item
        WATER = "WATER", -- Water stone item
        MOON = "MOON", -- Moon stone item
        DAWN = "DAWN", -- Dawn stone item
        DUSK = "DUSK", -- Dusk stone item
        LEAF = "LEAF", -- Leaf stone item
        SUN = "SUN", -- Sun stone item
        OVAL = "OVAL", --Oval stone item
        LEAF_SUN = "LEAF/SUN", -- Leaf or Sun stone items
        PROTECTOR = "PROTCR", -- Protector held item
        ELECTIRIZER = "ELERZR", -- Elecirizer held item
        MAGMARIZER = "MAGMZR", -- Magmarizer held item
        SHINY_STONE = "SHNY ST", -- Magmarizer held item
        RAZOR_FANG = "RZ FNG", -- Razor Fang held item
        RAZOR_CLAW = "RZ CLW", -- Razor Claw held item
        DUBIOUS_DISC = "DUB DSC", -- Dubious Disc held item
        REAPER_CLOTH = "REA CLH", -- Reaper Cloth held item
        UPGRADE = "UPGDE", --Up-Grade held item
        DRAGON_SCALE = "DRG SCL", --Dragon Scale held item
        METAL_COAT = "MTL CT", --Metal Coat held item
        KINGS_ROCK = "KNG RCK", --King's Rock held item
        CLAMPERL = "DST/DSS",
        SNORUNT = {"42", "42/DWN"},
        KIRLIA = {"30/DWN", "30"},
        SLOWPOKE = "37/WTR",
        POLIWHIRL = "RCK/WTR",
        MANTYKE = "RMRAID",
        KARRABLAST = "SHLMT",
        SHELMET = "KRBLST",
        BURMY = "20 M/F",
        COMBEE = {Graphics.TEXT.PLACEHOLDER, "21 F"}
    }
)

PokemonData.EVO_LONGER_NAMES = {
    [PokemonData.EVOLUTION_TYPES.FRIEND] = {"High friendship"},
    [PokemonData.EVOLUTION_TYPES.VARIOUS] = {
        "Leaf stone",
        "Dawn stone",
        "Thunder stone",
        "Water stone",
        "Fire stone",
        "Sun stone",
        "Moon stone"
    },
    [PokemonData.EVOLUTION_TYPES.THUNDER] = {"Thunder stone"},
    [PokemonData.EVOLUTION_TYPES.FIRE] = {"Fire stone"},
    [PokemonData.EVOLUTION_TYPES.WATER] = {"Water stone"},
    [PokemonData.EVOLUTION_TYPES.MOON] = {"Moon stone"},
    [PokemonData.EVOLUTION_TYPES.DAWN] = {"Dawn stone"},
    [PokemonData.EVOLUTION_TYPES.DUSK] = {"Dusk stone"},
    [PokemonData.EVOLUTION_TYPES.LEAF] = {"Leaf stone"},
    [PokemonData.EVOLUTION_TYPES.SUN] = {"Sun stone"},
    [PokemonData.EVOLUTION_TYPES.OVAL] = {"Oval stone"},
    [PokemonData.EVOLUTION_TYPES.LEAF_SUN] = {"Leaf stone", "Sun stone"},
    [PokemonData.EVOLUTION_TYPES.PROTECTOR] = {"Protector"},
    [PokemonData.EVOLUTION_TYPES.ELECTIRIZER] = {"Electirizer"},
    [PokemonData.EVOLUTION_TYPES.MAGMARIZER] = {"Magmarizer"},
    [PokemonData.EVOLUTION_TYPES.SHINY_STONE] = {"Shiny stone"},
    [PokemonData.EVOLUTION_TYPES.RAZOR_FANG] = {"Razor Fang"},
    [PokemonData.EVOLUTION_TYPES.RAZOR_CLAW] = {"Razor Claw"},
    [PokemonData.EVOLUTION_TYPES.DUBIOUS_DISC] = {"Dubious Disc"},
    [PokemonData.EVOLUTION_TYPES.REAPER_CLOTH] = {"Reaper Cloth"},
    [PokemonData.EVOLUTION_TYPES.UPGRADE] = {"Up-Grade"},
    [PokemonData.EVOLUTION_TYPES.DRAGON_SCALE] = {"Dragon Scale"},
    [PokemonData.EVOLUTION_TYPES.METAL_COAT] = {"Metal Coat"},
    [PokemonData.EVOLUTION_TYPES.KINGS_ROCK] = {"King's Rock"},
    [PokemonData.EVOLUTION_TYPES.CLAMPERL] = {"DeepSeaTooth", "DeepSeaScale"},
    [PokemonData.EVOLUTION_TYPES.SNORUNT] = {"42", "Dawn stone, F"},
    [PokemonData.EVOLUTION_TYPES.KIRLIA] = {"30", "Dawn stone, M"},
    [PokemonData.EVOLUTION_TYPES.SLOWPOKE] = {"37", "King's Rock"},
    [PokemonData.EVOLUTION_TYPES.POLIWHIRL] = {"Water stone", "King's Rock"},
    [PokemonData.EVOLUTION_TYPES.MANTYKE] = {"Level w/ Remoraid"},
    [PokemonData.EVOLUTION_TYPES.KARRABLAST] = {"Level w/ Shelmet"},
    [PokemonData.EVOLUTION_TYPES.SHELMET] = {"Level w/ Karrablast"},
    [PokemonData.EVOLUTION_TYPES.BURMY] = {"Level 20, F", "Level 20, M"},
    [PokemonData.EVOLUTION_TYPES.COMBEE] = {"Level 21, F only"}
}

PokemonData.POKEMON = {
    {
        -- Empty entry for ID 0
        name = "---",
        type = {PokemonData.POKEMON_TYPES.EMPTY, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "---",
        movelvls = {
            {},
            {},
            {},
            {},
            {},
            {},
            {},
            {},
            {},
            {},
            {},
            {}
        },
        weight = 0.0
    },
    {
        name = "Bulbasaur",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = "16",
        bst = "318",
        movelvls = {
            {3, 7, 9, 13, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 13, 15, 19, 21, 25, 27, 31, 33, 37}
        },
        weight = 6.9,
        theme = "9AE1D3 9AE1D3 37E889 D4979E FFFFFF 309481 76D7C4 309481 76D7C4 309481 76D7C4 FFC631 7DB6FF DBDBDB 0 1 1 0 0 1"
    },
    {
        name = "Ivysaur",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = "32",
        bst = "405",
        movelvls = {
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 36, 39, 44},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 36, 39, 44},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 36, 39, 44},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 36, 39, 44},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 36, 39, 44}
        },
        weight = 13.0,
        theme = "9AE1D3 9AE1D3 37E889 D4979E FFFFFF 309481 76D7C4 309481 76D7C4 309481 76D7C4 FFC631 7DB6FF DBDBDB 0 1 1 0 0 1"
    },
    {
        name = "Venusaur",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 32, 39, 45, 53},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 32, 39, 45, 53},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 32, 39, 45, 53},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 32, 39, 45, 53},
            {3, 7, 9, 13, 13, 15, 20, 23, 28, 31, 32, 39, 45, 53}
        },
        weight = 100.0,
        theme = "FFFFFF FFFFFF 6CFF5B FFC67D FAFF5B FFFFFF 3C8623 0ABD69 00E6ED 00BFCF E9829E FFD430 006CF4 DBDBDB 0 1 1 1 0 1"
    },
    {
        name = "Charmander",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "309",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37},
            {7, 10, 16, 19, 25, 28, 34, 37},
            {7, 10, 16, 19, 25, 28, 34, 37},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46}
        },
        weight = 8.5,
        theme = "000000 000000 0068F4 A42602 A90021 FFFFFF CE7107 F09028 F1C28E F09028 4A3CAC 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Charmeleon",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "405",
        movelvls = {
            {7, 10, 17, 21, 28, 32, 39, 43},
            {7, 10, 17, 21, 28, 32, 39, 43},
            {7, 10, 17, 21, 28, 32, 39, 43},
            {7, 10, 17, 21, 28, 32, 39, 43, 50, 54},
            {7, 10, 17, 21, 28, 32, 39, 43, 50, 54}
        },
        weight = 19.0,
        theme = "000000 000000 0068F4 A42602 A90021 FFFFFF CE7107 F09028 F1C28E F09028 4A3CAC 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Charizard",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "534",
        movelvls = {
            {7, 10, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 10, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 10, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 10, 17, 21, 28, 32, 36, 41, 47, 56, 62, 71, 77},
            {7, 10, 17, 21, 28, 32, 36, 41, 47, 56, 62, 71, 77}
        },
        weight = 90.5,
        theme = "000000 000000 0068F4 A42602 A90021 FFFFFF CE7107 F09028 F1C28E F09028 4A3CAC 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Squirtle",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "314",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40}
        },
        weight = 9.0,
        theme = "000000 000000 257BD9 AA0011 257BD9 F5F2ED 887265 CCBAA1 7B675B CCBAA1 84ADD7 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Wartortle",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "405",
        movelvls = {
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48}
        },
        weight = 22.5,
        theme = "000000 000000 257BD9 AA0011 257BD9 F5F2ED 887265 CCBAA1 7B675B CCBAA1 84ADD7 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Blastoise",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 39, 46, 53},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 39, 46, 53, 60},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 39, 46, 53, 60},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 39, 46, 53, 60},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 39, 46, 53, 60}
        },
        weight = 85.5,
        theme = "000000 000000 257BD9 AA0011 257BD9 F5F2ED 887265 CCBAA1 7B675B CCBAA1 84ADD7 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Caterpie",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "7",
        bst = "195",
        movelvls = {
            {},
            {15},
            {15},
            {15},
            {15}
        },
        weight = 2.9,
        theme = "FFFFFF FFFFFF 92FF94 FFB195 A3FEFE FFFFFF 7D7BBD A094D0 C0B8DF A094D0 CE768B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Metapod",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "10",
        bst = "205",
        movelvls = {
            {7},
            {7},
            {7},
            {7},
            {7}
        },
        weight = 9.9,
        theme = "FFFFFF FFFFFF 92FF94 FFB195 A3FEFE FFFFFF 7D7BBD A094D0 C0B8DF A094D0 CE768B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Butterfree",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "385",
        movelvls = {
            {10, 12, 12, 12, 16, 18, 22, 24, 28, 30, 34, 36, 40},
            {10, 12, 12, 12, 16, 18, 22, 24, 28, 30, 34, 36, 40},
            {10, 12, 12, 12, 16, 18, 22, 24, 28, 30, 34, 36, 40},
            {10, 12, 12, 12, 16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {10, 12, 12, 12, 16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46}
        },
        weight = 32.0,
        theme = "FFFFFF FFFFFF 92FF94 FFB195 A3FEFE FFFFFF 7D7BBD A094D0 C0B8DF A094D0 CE768B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Weedle",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "7",
        bst = "195",
        movelvls = {
            {},
            {15},
            {15},
            {15},
            {15}
        },
        weight = 3.2,
        theme = "FFFFFF FFFFFF 00DDFE FFB195 FCFF6B FFFFFF FF78AF 2F2F2F FFE84F 2F2F2F 000000 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kakuna",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "10",
        bst = "205",
        movelvls = {
            {7},
            {7},
            {7},
            {7},
            {7}
        },
        weight = 10.0,
        theme = "FFFFFF FFFFFF 00DDFE FFB195 FCFF6B FFFFFF FF78AF 2F2F2F FFE84F 2F2F2F 000000 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Beedrill",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "385",
        movelvls = {
            {10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40},
            {10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40}
        },
        weight = 29.5,
        theme = "FFFFFF FFFFFF 00DDFE FFB195 FCFF6B FFFFFF FF78AF 2F2F2F FFE84F 2F2F2F 000000 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Pidgey",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "18",
        bst = "251",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 1.8,
        theme = "000000 000000 0071E0 C10800 DE6546 000000 B59099 F1E6BA B59099 F1E6BA BD985F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Pidgeotto",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "36",
        bst = "349",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62}
        },
        weight = 30.0,
        theme = "000000 000000 0071E0 C10800 DE6546 000000 B59099 F1E6BA B59099 F1E6BA BD985F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Pidgeot",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "469",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 38, 44, 50, 56, 62},
            {5, 9, 13, 17, 22, 27, 32, 38, 44, 50, 56, 62},
            {5, 9, 13, 17, 22, 27, 32, 38, 44, 50, 56, 62},
            {5, 9, 13, 17, 22, 27, 32, 38, 44, 50, 56, 62, 68},
            {5, 9, 13, 17, 22, 27, 32, 38, 44, 50, 56, 62, 68}
        },
        weight = 39.5,
        theme = "000000 000000 0071E0 C10800 DE6546 000000 B59099 F1E6BA B59099 F1E6BA BD985F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Rattata",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "253",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34}
        },
        weight = 3.5,
        theme = "000000 000000 009DC5 FF6500 DE6546 000000 D1A07E FFF7B0 D1A07E FFF7B0 BF7700 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Raticate",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "413",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 20, 24, 29, 34, 39, 44},
            {4, 7, 10, 13, 16, 19, 20, 24, 29, 34, 39, 44},
            {4, 7, 10, 13, 16, 19, 20, 24, 29, 34, 39, 44},
            {4, 7, 10, 13, 16, 19, 20, 24, 29, 34, 39, 44},
            {4, 7, 10, 13, 16, 19, 20, 24, 29, 34, 39, 44}
        },
        weight = 18.5,
        theme = "000000 000000 009DC5 FF6500 DE6546 000000 D1A07E FFF7B0 D1A07E FFF7B0 BF7700 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Spearow",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "20",
        bst = "262",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37}
        },
        weight = 2.0,
        theme = "000000 000000 0076D5 BB0600 BB0600 FFE2FF C77F36 EC9B4B F2BF8D EC9B4B AA614A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Fearow",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "442",
        movelvls = {
            {5, 9, 13, 17, 23, 29, 35, 41, 47},
            {5, 9, 13, 17, 23, 29, 35, 41, 47},
            {5, 9, 13, 17, 23, 29, 35, 41, 47},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53}
        },
        weight = 38.0,
        theme = "000000 000000 0076D5 BB0600 BB0600 FFE2FF C77F36 EC9B4B F2BF8D EC9B4B AA614A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ekans",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "22",
        bst = "288",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 25, 25, 28, 33, 36, 41},
            {4, 9, 12, 17, 20, 25, 25, 25, 28, 33, 36, 41},
            {4, 9, 12, 17, 20, 25, 25, 25, 28, 33, 36, 41},
            {4, 9, 12, 17, 20, 25, 25, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 25, 25, 28, 33, 36, 41, 44, 49}
        },
        weight = 6.9,
        theme = "E6E0ED E6E0ED 8ED5FF FECE50 F0F028 DB7264 606058 9078C8 606058 9078C8 413C43 E6E0ED E6E0ED E6E0ED 0 1 1 0 0 1"
    },
    {
        name = "Arbok",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "438",
        movelvls = {
            {4, 9, 12, 17, 20, 22, 28, 28, 28, 34, 42, 48, 56},
            {4, 9, 12, 17, 20, 22, 28, 28, 28, 34, 42, 48, 56},
            {4, 9, 12, 17, 20, 22, 28, 28, 28, 34, 42, 48, 56},
            {4, 9, 12, 17, 20, 22, 27, 27, 27, 32, 39, 44, 51, 56, 63},
            {4, 9, 12, 17, 20, 22, 27, 27, 27, 32, 39, 44, 51, 56, 63}
        },
        weight = 65.0,
        theme = "E6E0ED E6E0ED 8ED5FF FECE50 F0F028 DB7264 606058 9078C8 606058 9078C8 413C43 E6E0ED E6E0ED E6E0ED 0 1 1 0 0 1"
    },
    {
        name = "Pikachu",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.THUNDER,
        bst = "300",
        movelvls = {
            {5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45},
            {5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45},
            {5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45},
            {5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45, 50},
            {5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45, 50}
        },
        weight = 6.0,
        theme = "000000 000000 0081E0 C13200 E2F800 EAA700 FFD600 F2A300 FFD600 F2A300 74532C 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Raichu",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 30.0,
        theme = "000000 000000 0081E0 C13200 E2F800 EAA700 FFD600 F2A300 FFD600 F2A300 74532C 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Sandshrew",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "22",
        bst = "300",
        movelvls = {
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37},
            {3, 5, 7, 9, 11, 14, 17, 20, 23, 26, 30, 34, 38, 42, 46}
        },
        weight = 12.0,
        theme = "000000 000000 0081E0 C13200 956B00 FEEC6A D79961 F1CFA8 D79961 F1CFA8 8D5711 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Sandslash",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {3, 7, 9, 13, 15, 19, 21, 22, 28, 33, 40, 45, 52},
            {3, 7, 9, 13, 15, 19, 21, 22, 28, 33, 40, 45, 52},
            {3, 7, 9, 13, 15, 19, 21, 22, 28, 33, 40, 45, 52},
            {3, 7, 9, 13, 15, 19, 21, 22, 28, 33, 40, 45, 52},
            {3, 5, 7, 9, 11, 14, 17, 20, 22, 23, 26, 30, 34, 38, 42, 46}
        },
        weight = 29.5,
        theme = "000000 000000 0081E0 C13200 956B00 FEEC6A D79961 F1CFA8 D79961 F1CFA8 8D5711 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Nidoran F",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "275",
        movelvls = {
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45}
        },
        weight = 7.0,
        theme = "000000 000000 218700 C13200 995838 DDC895 43ACF5 86CAF9 CA8E38 E5C89E 5C4A1D 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Nidorina",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "365",
        movelvls = {
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58}
        },
        weight = 20.0,
        theme = "000000 000000 218700 C13200 995838 DDC895 43ACF5 86CAF9 CA8E38 E5C89E 5C4A1D 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Nidoqueen",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {23, 43, 58},
            {23, 43, 58},
            {23, 43, 58},
            {23, 35, 43, 58},
            {23, 35, 43, 58}
        },
        weight = 60.0,
        theme = "000000 000000 218700 C13200 995838 DDC895 43ACF5 86CAF9 CA8E38 E5C89E 5C4A1D 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Nidoran M",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "273",
        movelvls = {
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45}
        },
        weight = 9.0,
        theme = "000000 000000 0072D2 C13200 FFF71D E9EAEB E8BCEF DF9BE1 E9EAEB BDC0C3 075368 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Nidorino",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "365",
        movelvls = {
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58},
            {7, 9, 13, 20, 23, 28, 35, 38, 43, 50, 58}
        },
        weight = 19.5,
        theme = "000000 000000 0072D2 C13200 FFF71D E9EAEB E8BCEF DF9BE1 E9EAEB BDC0C3 075368 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Nidoking",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {23, 43, 58},
            {23, 43, 58},
            {23, 43, 58},
            {23, 35, 43, 58},
            {23, 35, 43, 58}
        },
        weight = 62.0,
        theme = "000000 000000 0072D2 C13200 FFF71D E9EAEB E8BCEF DF9BE1 E9EAEB BDC0C3 075368 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Clefairy",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "323",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52, 55},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52, 55, 58}
        },
        weight = 7.5,
        theme = "000000 000000 0072D2 B40002 B40002 F2E9EA C996A5 FFC5BB C996A5 FFC5BB 895D5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Clefable",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "473",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 40.0,
        theme = "000000 000000 0072D2 B40002 B40002 F2E9EA C996A5 FFC5BB C996A5 FFC5BB 895D5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Vulpix",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FIRE,
        bst = "299",
        movelvls = {
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47, 51, 54},
            {4, 7, 10, 12, 15, 18, 20, 23, 26, 28, 31, 34, 36, 39, 42, 44, 47, 50}
        },
        weight = 9.9,
        theme = "000000 000000 0072D2 C13200 8F9788 9E4834 E6A651 F4F4A0 E6A651 F4F4A0 E6A651 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ninetales",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 19.9,
        theme = "000000 000000 0072D2 C13200 8F9788 9E4834 E6A651 F4F4A0 E6A651 F4F4A0 E6A651 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Jigglypuff",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "270",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 5.5,
        theme = "000000 000000 0072D2 C13200 C17794 D6CED6 DBB0C1 FCD2DE DBB0C1 FCD2DE 075E6B 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Wigglytuff",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "425",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 12.0,
        theme = "000000 000000 0072D2 C13200 C17794 D6CED6 DBB0C1 FCD2DE DBB0C1 FCD2DE 075E6B 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Zubat",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "22",
        bst = "245",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {4, 8, 12, 15, 19, 23, 26, 30, 34, 37, 41, 45}
        },
        weight = 7.5,
        theme = "FFFFFF FFFFFF A2DFFF FFA73F FEFB9C FDFAA7 A957C5 CA73E7 DDA5EF CA73E7 486A9A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Golbat",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "455",
        movelvls = {
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51, 57},
            {4, 8, 12, 15, 19, 24, 28, 33, 38, 42, 47, 52}
        },
        weight = 55.0,
        theme = "FFFFFF FFFFFF A2DFFF FFA73F FEFB9C FDFAA7 A957C5 CA73E7 DDA5EF CA73E7 486A9A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Oddish",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = "21",
        bst = "320",
        movelvls = {
            {5, 9, 13, 15, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 15, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 15, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 15, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 15, 17, 21, 25, 29, 33, 37, 41}
        },
        weight = 5.4,
        theme = "FFFFFF FFFFFF 65FF7E FFC43F FEFB9C FEFB9C C4222B EC5968 5B8BB5 73AEE4 3C6385 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gloom",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.LEAF_SUN,
        bst = "395",
        movelvls = {
            {5, 9, 13, 15, 17, 23, 29, 35, 41, 47, 53},
            {5, 9, 13, 15, 17, 23, 29, 35, 41, 47, 53},
            {5, 9, 13, 15, 17, 23, 29, 35, 41, 47, 53},
            {5, 9, 13, 15, 17, 23, 29, 35, 41, 47, 53},
            {5, 9, 13, 15, 17, 23, 29, 35, 41, 47, 53}
        },
        weight = 8.6,
        theme = "FFFFFF FFFFFF 65FF7E FFC43F FEFB9C FEFB9C C4222B EC5968 5B8BB5 73AEE4 3C6385 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Vileplume",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {53, 65},
            {53, 65},
            {53, 65},
            {53, 65},
            {53, 65}
        },
        weight = 18.6,
        theme = "FFFFFF FFFFFF 65FF7E FFC43F FEFB9C FEFB9C C4222B EC5968 5B8BB5 73AEE4 3C6385 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Paras",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = "24",
        bst = "285",
        movelvls = {
            {6, 6, 11, 17, 22, 27, 33, 38, 43},
            {6, 6, 11, 17, 22, 27, 33, 38, 43},
            {6, 6, 11, 17, 22, 27, 33, 38, 43},
            {6, 6, 11, 17, 22, 27, 33, 38, 43, 49, 54},
            {6, 6, 11, 17, 22, 27, 33, 38, 43, 49, 54}
        },
        weight = 5.4,
        theme = "FFFFFF FFFFFF 65FF7E FFC43F FEFB9C FFFFFF A92B43 DF5162 F2B19E E97655 7B313A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Parasect",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {6, 6, 11, 17, 22, 30, 39, 47, 55},
            {6, 6, 11, 17, 22, 30, 39, 47, 55},
            {6, 6, 11, 17, 22, 30, 39, 47, 55},
            {6, 6, 11, 17, 22, 29, 37, 44, 51, 59, 66},
            {6, 6, 11, 17, 22, 29, 37, 44, 51, 59, 66}
        },
        weight = 29.5,
        theme = "FFFFFF FFFFFF 65FF7E FFC43F FEFB9C FFFFFF A92B43 DF5162 F2B19E E97655 7B313A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Venonat",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "31",
        bst = "305",
        movelvls = {
            {5, 11, 13, 17, 23, 25, 29, 35, 37, 41, 47},
            {5, 11, 13, 17, 23, 25, 29, 35, 37, 41, 47},
            {5, 11, 13, 17, 23, 25, 29, 35, 37, 41, 47},
            {5, 11, 13, 17, 23, 25, 29, 35, 37, 41, 47},
            {5, 11, 13, 17, 23, 25, 29, 35, 37, 41, 47}
        },
        weight = 30.0,
        theme = "FFFFFF FFFFFF 64DEFF FFC43F FEFB9C FFFFFF E1CDD0 C69BC9 E1CDD0 C69BC9 578AC5 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Venomoth",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {5, 11, 13, 17, 23, 25, 29, 31, 37, 41, 47, 55, 59},
            {5, 11, 13, 17, 23, 25, 29, 31, 37, 41, 47, 55, 59},
            {5, 11, 13, 17, 23, 25, 29, 31, 37, 41, 47, 55, 59},
            {5, 11, 13, 17, 23, 25, 29, 31, 37, 41, 47, 55, 59, 63},
            {5, 11, 13, 17, 23, 25, 29, 31, 37, 41, 47, 55, 59, 63}
        },
        weight = 12.5,
        theme = "FFFFFF FFFFFF 64DEFF FFC43F FEFB9C FFFFFF E1CDD0 C69BC9 E1CDD0 C69BC9 578AC5 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Diglett",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "26",
        bst = "265",
        movelvls = {
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40, 45},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40, 45}
        },
        weight = 0.8,
        theme = "000000 000000 0083CC D61F00 FEFB9C FFDDFC AF8674 DCAC91 AF8674 DCAC91 815F49 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Dugtrio",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {4, 7, 12, 15, 18, 23, 26, 28, 33, 40, 45, 50},
            {4, 7, 12, 15, 18, 23, 26, 28, 33, 40, 45, 50},
            {4, 7, 12, 15, 18, 23, 26, 28, 33, 40, 45, 50},
            {4, 7, 12, 15, 18, 23, 26, 28, 33, 40, 45, 50, 57},
            {4, 7, 12, 15, 18, 23, 26, 28, 33, 40, 45, 50, 57}
        },
        weight = 33.3,
        theme = "000000 000000 0083CC D61F00 FEFB9C FFDDFC AF8674 DCAC91 AF8674 DCAC91 815F49 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Meowth",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "28",
        bst = "290",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54}
        },
        weight = 4.2,
        theme = "000000 000000 0076D5 BB0600 CD000F FFFFFF BC8B5A EEE9A9 BC8B5A EEE9A9 BC8B5A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Persian",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "440",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 32, 37, 44, 49, 56, 61},
            {6, 9, 14, 17, 22, 25, 32, 37, 44, 49, 56, 61, 68},
            {6, 9, 14, 17, 22, 25, 32, 37, 44, 49, 56, 61, 68},
            {6, 9, 14, 17, 22, 25, 32, 37, 44, 49, 56, 61, 68},
            {6, 9, 14, 17, 22, 25, 28, 32, 37, 44, 49, 56, 61, 68}
        },
        weight = 32.0,
        theme = "000000 000000 0076D5 BB0600 CD000F FFFFFF BC8B5A EEE9A9 BC8B5A EEE9A9 BC8B5A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Psyduck",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "33",
        bst = "320",
        movelvls = {
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48, 53, 57},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 19.6,
        theme = "000000 000000 1C9436 BB0600 D90400 C3DDF6 72A1DA 8BC5FF E4C416 FFFFA2 2D6EA8 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Golduck",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {5, 9, 14, 18, 22, 27, 31, 37, 44, 50, 56},
            {5, 9, 14, 18, 22, 27, 31, 37, 44, 50, 56},
            {5, 9, 14, 18, 22, 27, 31, 37, 44, 50, 56},
            {5, 9, 14, 18, 22, 27, 31, 37, 44, 50, 56, 63, 69},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 38, 43, 49, 54, 60}
        },
        weight = 76.6,
        theme = "000000 000000 1C9436 BB0600 D90400 C3DDF6 72A1DA 8BC5FF E4C416 FFFFA2 2D6EA8 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Mankey",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "28",
        bst = "305",
        movelvls = {
            {9, 13, 17, 21, 25, 33, 37, 41, 45, 49},
            {9, 13, 17, 21, 25, 33, 37, 41, 45, 49},
            {9, 13, 17, 21, 25, 33, 37, 41, 45, 49},
            {9, 13, 17, 21, 25, 33, 37, 41, 45, 49, 53},
            {9, 13, 17, 21, 25, 33, 37, 41, 45, 49, 53}
        },
        weight = 28.0,
        theme = "000000 000000 0095C5 BB0600 E783A1 ECE5DB F9CAD6 FFF3E4 F9CAD6 FFF3E4 9B6A39 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Primeape",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {9, 13, 17, 21, 25, 28, 35, 41, 47, 53, 59},
            {9, 13, 17, 21, 25, 28, 35, 41, 47, 53, 59},
            {9, 13, 17, 21, 25, 28, 35, 41, 47, 53, 59},
            {9, 13, 17, 21, 25, 28, 35, 41, 47, 53, 59, 63},
            {9, 13, 17, 21, 25, 28, 35, 41, 47, 53, 59, 63}
        },
        weight = 32.0,
        theme = "000000 000000 0095C5 BB0600 E783A1 ECE5DB F9CAD6 FFF3E4 F9CAD6 FFF3E4 9B6A39 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Growlithe",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FIRE,
        bst = "350",
        movelvls = {
            {6, 9, 14, 17, 20, 25, 28, 31, 34, 39, 42, 45, 48},
            {6, 9, 14, 17, 20, 25, 28, 31, 34, 39, 42, 45, 48},
            {6, 9, 14, 17, 20, 25, 28, 31, 34, 39, 42, 45, 48},
            {6, 9, 14, 17, 20, 25, 28, 31, 34, 39, 42, 45, 48, 51, 56},
            {6, 8, 10, 12, 17, 19, 21, 23, 28, 30, 32, 34, 39, 41, 43, 45}
        },
        weight = 19.0,
        theme = "000000 000000 0065CF A50E16 A50E16 FFFEFF D89037 EEB464 EDC484 FEEFCC 383838 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Arcanine",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "555",
        movelvls = {
            {39},
            {39},
            {39},
            {39},
            {34}
        },
        weight = 155.0,
        theme = "000000 000000 0065CF A50E16 A50E16 FFFEFF D89037 EEB464 EDC484 FEEFCC 383838 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Poliwag",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "300",
        movelvls = {
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41}
        },
        weight = 12.4,
        theme = "FFFFFF FFFFFF 9CFF7A FE969D FEED69 FFFEFF 41729B 5488B6 41729B 5488B6 3E3E3E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Poliwhirl",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.POLIWHIRL,
        bst = "385",
        movelvls = {
            {5, 8, 11, 15, 18, 21, 27, 32, 37, 43, 48, 53},
            {5, 8, 11, 15, 18, 21, 27, 32, 37, 43, 48, 53},
            {5, 8, 11, 15, 18, 21, 27, 32, 37, 43, 48, 53},
            {5, 8, 11, 15, 18, 21, 27, 32, 37, 43, 48, 53},
            {5, 8, 11, 15, 18, 21, 27, 32, 37, 43, 48, 53}
        },
        weight = 20.0,
        theme = "FFFFFF FFFFFF 9CFF7A FE969D FEED69 FFFEFF 41729B 5488B6 41729B 5488B6 3E3E3E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Poliwrath",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {43, 53},
            {43, 53},
            {43, 53},
            {32, 43, 53},
            {32, 43, 53}
        },
        weight = 54.0,
        theme = "FFFFFF FFFFFF 9CFF7A FE969D FEED69 FFFEFF 41729B 5488B6 41729B 5488B6 3E3E3E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Abra",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "310",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 19.5,
        theme = "FFFFFF FFFFFF 7ADBFF FDC982 FBFF67 FFFEFF AD7C20 D6AB35 96827F 725F5D 322A29 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kadabra",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37", -- Level 37 replaces trade evolution
        bst = "400",
        movelvls = {
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46, 48, 52},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46, 48, 52}
        },
        weight = 56.5,
        theme = "FFFFFF FFFFFF 7ADBFF FDC982 FBFF67 FFFEFF AD7C20 D6AB35 96827F 725F5D 322A29 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Alakazam",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46, 48, 52},
            {16, 18, 22, 24, 28, 30, 34, 36, 40, 42, 46, 48, 52}
        },
        weight = 48.0,
        theme = "FFFFFF FFFFFF 7ADBFF FDC982 FBFF67 FFFEFF AD7C20 D6AB35 96827F 725F5D 322A29 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Machop",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "28",
        bst = "305",
        movelvls = {
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49}
        },
        weight = 19.5,
        theme = "FFFFFF FFFFFF 7ADBFF FF95A7 FEFFA0 FEFFA0 625B54 81776F 4F85B9 87ACD0 A85153 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Machoke",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37", -- Level 37 replaces trade evolution
        bst = "405",
        movelvls = {
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51, 55},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51, 55}
        },
        weight = 70.5,
        theme = "FFFFFF FFFFFF 7ADBFF FF95A7 FEFFA0 FEFFA0 625B54 81776F 4F85B9 87ACD0 A85153 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Machamp",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51, 55},
            {7, 10, 13, 19, 22, 25, 32, 36, 40, 44, 51, 55}
        },
        weight = 130.0,
        theme = "FFFFFF FFFFFF 7ADBFF FF95A7 FEFFA0 FEFFA0 625B54 81776F 4F85B9 87ACD0 A85153 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bellsprout",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = "21",
        bst = "300",
        movelvls = {
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47}
        },
        weight = 4.0,
        theme = "000000 000000 0077C8 D93100 D93100 FEFFA0 FC97A9 FEC5CF ADD29C 82BB69 444444 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Weepinbell",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.LEAF,
        bst = "390",
        movelvls = {
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47},
            {7, 11, 13, 15, 17, 23, 27, 29, 35, 39, 41, 47}
        },
        weight = 6.4,
        theme = "000000 000000 0077C8 D93100 D93100 FEFFA0 FC97A9 FEC5CF ADD29C 82BB69 444444 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Victreebel",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {47},
            {47, 47},
            {47, 47},
            {27, 47, 47},
            {27, 47, 47}
        },
        weight = 15.5,
        theme = "000000 000000 0077C8 D93100 D93100 FEFFA0 FC97A9 FEC5CF ADD29C 82BB69 444444 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Tentacool",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.POISON},
        evolution = "30",
        bst = "335",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54}
        },
        weight = 45.5,
        theme = "000000 000000 0077C8 D93100 756763 FA85AC 2CB3D5 78D4EF C5BDBB 9C8F8B 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Tentacruel",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "515",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55},
            {5, 8, 12, 15, 19, 22, 26, 29, 34, 38, 43, 47, 52, 56, 61},
            {5, 8, 12, 15, 19, 22, 26, 29, 34, 38, 43, 47, 52, 56, 61}
        },
        weight = 55.0,
        theme = "000000 000000 0077C8 D93100 756763 FA85AC 2CB3D5 78D4EF C5BDBB 9C8F8B 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Geodude",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "25",
        bst = "300",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 20.0,
        theme = "FFFFFF FFFFFF 83FE74 FDB77E F5FF00 F78C86 A67A62 C0A190 BABBB7 969891 575953 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Graveler",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "37", -- Level 37 replaces trade evolution
        bst = "390",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 31, 36, 42, 47, 53, 58, 64},
            {4, 8, 11, 15, 18, 22, 27, 31, 36, 42, 47, 53, 58, 64}
        },
        weight = 105.0,
        theme = "FFFFFF FFFFFF 83FE74 FDB77E F5FF00 F78C86 A67A62 C0A190 BABBB7 969891 575953 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Golem",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 33, 38, 44, 49},
            {4, 8, 11, 15, 18, 22, 27, 31, 36, 42, 47, 53, 58, 64, 69},
            {4, 8, 11, 15, 18, 22, 27, 31, 36, 42, 47, 53, 58, 64, 69}
        },
        weight = 300.0,
         theme = "FFFFFF FFFFFF 83FE74 FDB77E F5FF00 F78C86 A67A62 C0A190 BABBB7 969891 575953 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ponyta",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "40",
        bst = "410",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 38, 44, 48},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {4, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {4, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49}
        },
        weight = 30.0,
        theme = "000000 000000 0086AD BE0036 AD0017 FFFFFF E3A500 FFC62C F5EFC4 EBE28B D07D35 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Rapidash",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 38, 40, 49, 58},
            {6, 10, 15, 19, 24, 28, 33, 37, 40, 47, 56},
            {6, 10, 15, 19, 24, 28, 33, 37, 40, 47, 56},
            {4, 9, 13, 17, 21, 25, 29, 33, 37, 40, 41, 45, 49},
            {4, 9, 13, 17, 21, 25, 29, 33, 37, 40, 41, 45, 49}
        },
        weight = 95.0,
        theme = "000000 000000 0086AD BE0036 AD0017 FFFFFF E3A500 FFC62C F5EFC4 EBE28B D07D35 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Slowpoke",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.SLOWPOKE,
        bst = "315",
        movelvls = {
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {5, 9, 14, 19, 23, 28, 32, 36, 41, 45, 49, 54, 58},
            {5, 9, 14, 19, 23, 28, 32, 36, 41, 45, 49, 54, 58}
        },
        weight = 36.0,
        theme = "000000 000000 0084F1 E70013 AD0017 F6EFBC F1B1DA F7D2EA C5DBE3 A7C9D4 4A6777 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Slowbro",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {6, 11, 15, 20, 25, 29, 34, 37, 41, 47, 54, 61, 67},
            {6, 11, 15, 20, 25, 29, 34, 37, 41, 47, 54, 61, 67},
            {6, 11, 15, 20, 25, 29, 34, 37, 41, 47, 54, 61, 67},
            {5, 9, 14, 19, 23, 28, 32, 36, 37, 43, 49, 55, 62, 68},
            {5, 9, 14, 19, 23, 28, 32, 36, 37, 43, 49, 55, 62, 68}
        },
        weight = 78.5,
        theme = "000000 000000 0084F1 E70013 AD0017 F6EFBC F1B1DA F7D2EA C5DBE3 A7C9D4 4A6777 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Magnemite",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.STEEL},
        evolution = "30",
        bst = "325",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 59},
            {4, 7, 11, 15, 18, 21, 25, 29, 32, 35, 39, 43, 46, 49, 53, 57}
        },
        weight = 6.0,
        theme = "000000 000000 009AD9 D7554A 009AD9 FFFFFF 8AA8E5 B8D4F7 8AA8E5 B8D4F7 586170 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Magneton",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.STEEL},
        evolution = "40",
        bst = "465",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60, 66},
            {4, 7, 11, 15, 18, 21, 25, 29, 34, 39, 45, 51, 56, 62, 67, 73}
        },
        weight = 60.0,
        theme = "000000 000000 009AD9 D7554A 009AD9 FFFFFF 8AA8E5 B8D4F7 8AA8E5 B8D4F7 586170 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Farfetch'd",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "352",
        movelvls = {
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45, 49, 55},
            {7, 9, 13, 19, 21, 25, 31, 33, 37, 43, 45, 49, 55}
        },
        weight = 15.0,
        theme = "FFFFFF 000000 ADE7FE FEA3AB FFD349 FEE8A3 A57D63 B99A86 DBCA63 EDE4B0 775942 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Doduo",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "31",
        bst = "310",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50}
        },
        weight = 39.2,
        theme = "FFFFFF 000000 ADE7FE FEA3AB E8A8D1 EDEDED 8F6543 B08058 DDB757 EBD49B 646464 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Dodrio",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60}
        },
        weight = 85.2,
        theme = "FFFFFF 000000 ADE7FE FEA3AB E8A8D1 EDEDED 8F6543 B08058 DDB757 EBD49B 646464 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Seel",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "34",
        bst = "325",
        movelvls = {
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47, 51, 53},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47, 51, 53}
        },
        weight = 90.0,
        theme = "000000 000000 009BE7 E33200 009BE7 EDEDED B0AEBD F0F0F3 B0AEBD F0F0F3 4F556E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Dewgong",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 34, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 34, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 34, 37, 41, 43, 47, 51},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 34, 39, 45, 49, 55, 61, 65},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 34, 39, 45, 49, 55, 61, 65}
        },
        weight = 120.0,
        theme = "000000 000000 009BE7 E33200 009BE7 EDEDED B0AEBD F0F0F3 B0AEBD F0F0F3 4F556E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Grimer",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "38",
        bst = "325",
        movelvls = {
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52},
            {4, 7, 12, 15, 18, 21, 26, 29, 32, 37, 40, 43, 48}
        },
        weight = 30.0,
        theme = "FFFFFF FFFFFF A6C0FF FEA3A3 FFE670 E6DDF7 B8B1D5 8E83BC B0AEBD 8E83BC 4D486E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Muk", -- PUMP SLOP
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 44, 54, 65},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 44, 54, 65},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 44, 54, 65},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 42, 50, 58, 64},
            {4, 7, 12, 15, 18, 21, 26, 29, 32, 37, 43, 49, 57}
        },
        weight = 30.0,
        theme = "FFFFFF FFFFFF A6C0FF FEA3A3 FFE670 E6DDF7 B8B1D5 8E83BC B0AEBD 8E83BC 4D486E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shellder",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.WATER,
        bst = "305",
        movelvls = {
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56, 61},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56, 61}
        },
        weight = 4.0,
        theme = "FFFFFF FFFFFF A6C0FF FF99B4 FFE670 E6DDF7 A595C8 8B76B7 BFC0D8 9192BC 514680 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cloyster",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {28, 40},
            {28, 40},
            {28, 40},
            {13, 28, 52},
            {13, 28, 52}
        },
        weight = 132.5,
        theme = "FFFFFF FFFFFF A6C0FF FF99B4 FFE670 E6DDF7 A595C8 8B76B7 BFC0D8 9192BC 514680 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gastly",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.POISON},
        evolution = "25",
        bst = "310",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 0.1,
        theme = "FFFFFF FFFFFF A5D4FF FF99B4 FFE670 F96661 7E63CE 9F8ADB 7E63CE 9F8ADB 493F74 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Haunter",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.POISON},
        evolution = "37", -- Level 37 replaces trade evolution
        bst = "405",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55, 61},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55, 61}
        },
        weight = 0.1,
        theme = "FFFFFF FFFFFF A5D4FF FF99B4 FFE670 F96661 7E63CE 9F8ADB 7E63CE 9F8ADB 493F74 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gengar",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55, 61},
            {5, 8, 12, 15, 19, 22, 25, 28, 33, 39, 44, 50, 55, 61}
        },
        weight = 40.5,
        theme = "FFFFFF FFFFFF A5D4FF FF99B4 FFE670 F96661 7E63CE 9F8ADB 7E63CE 9F8ADB 493F74 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Onix",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.METAL_COAT,
        bst = "385",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57, 62},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52}
        },
        weight = 210.0,
        theme = "000000 000000 0074C1 BE0E00 BE0E00 FFFFFF 97A9CD CADDF6 97A9CD CADDF6 566371 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Drowzee",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "26",
        bst = "328",
        movelvls = {
            {7, 9, 15, 18, 21, 26, 29, 32, 37, 40, 43, 50, 53},
            {7, 9, 15, 18, 21, 26, 29, 32, 37, 40, 43, 50, 53},
            {7, 9, 15, 18, 21, 26, 29, 32, 37, 40, 43, 50, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 32.4,
        theme = "000000 000000 007EF8 C10006 A05B2B FFFFFF C8C100 F5E86E C8C100 F5E86E 8B8B8B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Hypno",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "483",
        movelvls = {
            {7, 9, 15, 18, 21, 28, 33, 38, 45, 50, 55, 64, 69},
            {7, 9, 15, 18, 21, 28, 33, 38, 45, 50, 55, 64, 69},
            {7, 9, 15, 18, 21, 28, 33, 38, 45, 50, 55, 64, 69},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 75.6,
        theme = "000000 000000 007EF8 C10006 A05B2B FFFFFF C8C100 F5E86E C8C100 F5E86E 8B8B8B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Krabby",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "28",
        bst = "325",
        movelvls = {
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45}
        },
        weight = 6.5,
        theme = "FFFFFF FFFFFF 9FD0FF FF98A6 FFED5B FFFFFF EEA687 DF7840 DDC6B0 C49A74 7B6856 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kingler",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {5, 9, 11, 15, 19, 21, 25, 32, 37, 44, 51, 56, 63},
            {5, 9, 11, 15, 19, 21, 25, 32, 37, 44, 51, 56, 63},
            {5, 9, 11, 15, 19, 21, 25, 32, 37, 44, 51, 56, 63},
            {5, 9, 11, 15, 19, 21, 25, 32, 37, 44, 51, 56, 63},
            {5, 9, 11, 15, 19, 21, 25, 32, 37, 44, 51, 56, 63}
        },
        weight = 60.0,
        theme = "FFFFFF FFFFFF 9FD0FF FF98A6 FFED5B FFFFFF EEA687 DF7840 DDC6B0 C49A74 7B6856 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Voltorb",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "330",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50}
        },
        weight = 10.4,
        theme = "000000 FFFFFF 0076E7 D90010 D90010 FFFFFF BCC4BC EEF0EE DF9892 CD5C53 828282 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Electrode",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 35, 40, 46, 51, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 35, 40, 46, 51, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 35, 40, 46, 51, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 35, 40, 46, 51, 57, 62},
            {5, 8, 12, 15, 19, 22, 26, 29, 35, 40, 46, 51, 57, 62}
        },
        weight = 66.6,
        theme = "000000 FFFFFF 0076E7 D90010 D90010 FFFFFF BCC4BC EEF0EE DF9892 CD5C53 828282 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Exeggcute",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.LEAF,
        bst = "325",
        movelvls = {
            {7, 11, 17, 19, 21, 23, 27, 33, 37, 43, 47},
            {7, 11, 17, 19, 21, 23, 27, 33, 37, 43, 47},
            {7, 11, 17, 19, 21, 23, 27, 33, 37, 43, 47},
            {7, 11, 17, 19, 21, 23, 27, 33, 37, 43, 47, 53},
            {7, 11, 17, 19, 21, 23, 27, 33, 37, 43, 47, 53}
        },
        weight = 2.5,
        theme = "FFFFFF FFFFFF BBEDFF FFB6B9 FFFB95 FEFEA3 449D43 5BB958 CCB09B B18564 756149 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Exeggutor",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "520",
        movelvls = {
            {17, 27, 37, 47},
            {17, 27, 37, 47},
            {17, 27, 37, 47},
            {17, 27, 37, 47},
            {17, 27, 37, 47}
        },
        weight = 120.0,
        theme = "FFFFFF FFFFFF BBEDFF FFB6B9 FFFB95 FEFEA3 449D43 5BB958 CCB09B B18564 756149 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Cubone",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "28",
        bst = "320",
        movelvls = {
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47},
            {3, 7, 11, 13, 17, 21, 23, 27, 31, 33, 37, 41, 43, 47}
        },
        weight = 6.5,
        theme = "000000 000000 006ED6 DD0600 AE7D4C FFFFFF 9FB1AB F0F3F2 B8A65A F8F1B9 8E6749 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Marowak",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "425",
        movelvls = {
            {3, 7, 11, 13, 17, 21, 23, 27, 33, 37, 43, 49, 53},
            {3, 7, 11, 13, 17, 21, 23, 27, 33, 37, 43, 49, 53},
            {3, 7, 11, 13, 17, 21, 23, 27, 33, 37, 43, 49, 53},
            {3, 7, 11, 13, 17, 21, 23, 27, 33, 37, 43, 49, 53, 59},
            {3, 7, 11, 13, 17, 21, 23, 27, 33, 37, 43, 49, 53, 59}
        },
        weight = 45.0,
        theme = "000000 000000 006ED6 DD0600 AE7D4C FFFFFF 9FB1AB F0F3F2 B8A65A F8F1B9 8E6749 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Hitmonlee",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 49.8,
        theme = "FFFFFF 000000 B4E7FF FFBA8A FFEE5F FFFFFF 986F5B B59383 BEAC3C EDDE8D 6D524A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Hitmonchan",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {6, 11, 16, 16, 21, 26, 31, 31, 31, 36, 41, 46, 51, 56},
            {6, 11, 16, 16, 21, 26, 31, 31, 31, 36, 41, 46, 51, 56},
            {6, 11, 16, 16, 21, 26, 31, 31, 31, 36, 41, 46, 51, 56},
            {6, 11, 16, 16, 21, 26, 31, 36, 36, 36, 41, 46, 51, 56, 61, 66},
            {6, 11, 16, 16, 21, 26, 31, 36, 36, 36, 41, 46, 51, 56, 61, 66}
        },
        weight = 50.2,
        theme = "000000 000000 006ED6 C12717 C12717 FFFFFF D8AB5C F6D07C DDACD2 E9C9E2 7F6040 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Lickitung",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "33",
        bst = "385",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 65.5,
        theme = "FFFFFF FFFFFF 8EC7FE FEB069 FFED7D FFFFFF B65677 D36585 B65677 D36585 D59087 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Koffing",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "35",
        bst = "340",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40, 45}
        },
        weight = 1.0,
        theme = "FFFFFF FFFFFF 8EC7FE FF6773 FFED7D FFFFFF 6B517A 916EA0 AB94B8 916EA0 6B517A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Weezing",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 40, 48, 55, 63},
            {6, 10, 15, 19, 24, 28, 33, 40, 48, 55, 63},
            {6, 10, 15, 19, 24, 28, 33, 40, 48, 55, 63},
            {6, 10, 15, 19, 24, 28, 33, 39, 46, 52, 59, 65},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 40, 46, 54}
        },
        weight = 9.5,
        theme = "FFFFFF FFFFFF 8EC7FE FF6773 FFED7D FFFFFF 6B517A 916EA0 AB94B8 916EA0 6B517A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Rhyhorn",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.ROCK},
        evolution = "42",
        bst = "345",
        movelvls = {
            {9, 13, 21, 25, 33, 37, 45, 49, 57},
            {9, 13, 21, 25, 33, 37, 45, 49, 57},
            {9, 13, 21, 25, 33, 37, 45, 49, 57},
            {8, 12, 19, 23, 30, 34, 41, 45, 52, 56, 63, 67},
            {8, 12, 19, 23, 30, 34, 41, 45, 52, 56, 63, 67}
        },
        weight = 115.0,
        theme = "FFFFFF FFFFFF 8EC7FE FF6773 FFED7D F67453 A89699 917A7E A89699 917A7E 525059 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Rhydon",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.PROTECTOR,
        bst = "485",
        movelvls = {
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57},
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57},
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57},
            {9, 12, 19, 23, 30, 34, 41, 42, 47, 56, 62, 71, 77},
            {9, 12, 19, 23, 30, 34, 41, 42, 47, 56, 62, 71, 77}
        },
        weight = 120.0,
        theme = "FFFFFF FFFFFF 8EC7FE FF6773 FFED7D F67453 A89699 917A7E A89699 917A7E 525059 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chansey",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 140,
        bst = "450",
        movelvls = {
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46, 50, 54},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46, 50, 54}
        },
        weight = 34.6,
        theme = "FFFFFF 000000 8EF7FE FFD1A7 FFED7D FFFFFF CB6D96 E48BAD D1D1D1 E8E8E8 A27086 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Tangela",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "33",
        bst = "435",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54},
            {4, 7, 10, 14, 17, 20, 23, 27, 30, 33, 36, 40, 43, 46, 49, 53}
        },
        weight = 35.0,
        theme = "FFFFFF FFFFFF 8EF7FE FE9C9F FFED7D FFFFFF 4772B1 5D85BE A2B9DA 5D85BE C65776 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kangaskhan",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49, 55},
            {7, 10, 13, 19, 22, 25, 31, 34, 37, 43, 46, 49, 55}
        },
        weight = 80.0,
        theme = "FFFFFF FFFFFF 8DDAFF FFA49B F1F0A0 F1F0A0 A86D4C C38D64 A86D4C C38D64 5E5D5C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Horsea",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "295",
        movelvls = {
            {4, 8, 11, 14, 18, 23, 26, 30, 35, 38, 42},
            {4, 8, 11, 14, 18, 23, 26, 30, 35, 38, 42},
            {4, 8, 11, 14, 18, 23, 26, 30, 35, 38, 42},
            {4, 8, 11, 14, 18, 23, 26, 30, 35, 38, 42},
            {4, 8, 11, 14, 18, 23, 26, 30, 35, 38, 42}
        },
        weight = 8.0,
        theme = "FFFFFF FFFFFF 8DDAFF FFA49B FFA49B FEE762 5083AD 699DC8 96BAD8 699DC8 5083AD FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Seadra",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.DRAGON_SCALE,
        bst = "440",
        movelvls = {
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57}
        },
        weight = 25.0,
        theme = "FFFFFF FFFFFF 8DDAFF FFA49B FFA49B FEE762 5083AD 699DC8 96BAD8 699DC8 5083AD FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Goldeen",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "33",
        bst = "320",
        movelvls = {
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57}
        },
        weight = 15.0,
        theme = "FFFFFF FFFFFF B6C9E7 FFC57A F7F8C0 FFFFFF 9F3B21 D2502E E3937E D2502E 3B3B3B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Seaking",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {7, 11, 17, 21, 27, 31, 40, 47, 56, 63},
            {7, 11, 17, 21, 27, 31, 40, 47, 56, 63},
            {7, 11, 17, 21, 27, 31, 40, 47, 56, 63},
            {7, 11, 17, 21, 27, 31, 40, 47, 56, 63, 72},
            {7, 11, 17, 21, 27, 31, 40, 47, 56, 63, 72}
        },
        weight = 39.0,
        theme = "FFFFFF FFFFFF B6C9E7 FFC57A F7F8C0 FFFFFF 9F3B21 D2502E E3937E D2502E 3B3B3B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Staryu",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.WATER,
        bst = "340",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55, 60},
            {6, 10, 12, 15, 18, 22, 25, 30, 33, 36, 40, 43, 48, 52}
        },
        weight = 34.5,
        theme = "F4F4F4 FFFFFF 6CCAFF F37498 F37498 FFF776 6D56AA 8574CB B6ADE0 8574CB 6D56AA FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Starmie",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "520",
        movelvls = {
            {28},
            {28},
            {28},
            {28},
            {22}
        },
        weight = 80.0,
        theme = "F4F4F4 FFFFFF 6CCAFF F37498 F37498 FFF776 6D56AA 8574CB B6ADE0 8574CB 6D56AA FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mr. Mime",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 54.5,
        theme = "F4F4F4 FFFFFF 6CCAFF F37498 FEC1AE FFFFFF 2567AA 2D7CCA 84B3E4 2D7CCA D85366 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Scyther",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.METAL_COAT,
        bst = "500",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 56.0,
        theme = "FFFFFF FFFFFF 6BFFA2 FECCA3 FECCA3 F2EFDF 5A8535 6EA241 9CC877 6EA241 B5A679 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Jynx",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {5, 8, 11, 15, 18, 21, 25, 28, 33, 39, 44, 49, 55},
            {5, 8, 11, 15, 18, 21, 25, 28, 33, 39, 44, 49, 55},
            {5, 8, 11, 15, 18, 21, 25, 28, 33, 39, 44, 49, 55},
            {5, 8, 11, 15, 18, 21, 25, 28, 33, 39, 44, 49, 55, 60},
            {5, 8, 11, 15, 18, 21, 25, 28, 33, 39, 44, 49, 55, 60}
        },
        weight = 40.6,
        theme = "F4F4F4 FFFFFF 7BFF6B FFC1A2 FFFF00 FFFFFF 624CA3 8963BF D78C79 C85446 624CA3 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Electabuzz",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.ELECTIRIZER,
        bst = "490",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58},
            {6, 11, 16, 21, 26, 32, 38, 44, 50, 56, 62},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55}
        },
        weight = 30.0,
        theme = "000000 000000 0063CC CC0100 BB0C00 FFFFFF C4B50D FFE523 C4B50D FFE523 3E3E3E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Magmar", -- MAMGAR
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MAGMARIZER,
        bst = "495",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 36, 41, 49, 54},
            {7, 10, 16, 19, 25, 28, 36, 41, 49, 54},
            {7, 10, 16, 19, 25, 28, 36, 41, 49, 54},
            {6, 11, 16, 21, 26, 32, 38, 44, 50, 56, 62},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55}
        },
        weight = 44.5,
        theme = "FFFFFF FFFFFF 8AC9FF FECBAD FBDE77 FFFFFF BC4619 E3602E F4C8C1 EA9183 474747 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Pinsir",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {4, 8, 13, 18, 21, 25, 30, 35, 38, 42, 47, 52},
            {4, 8, 13, 18, 21, 25, 30, 35, 38, 42, 47, 52},
            {4, 8, 13, 18, 21, 25, 30, 35, 38, 42, 47, 52},
            {4, 8, 13, 18, 21, 25, 30, 35, 38, 42, 47, 52},
            {4, 8, 11, 15, 18, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 55.0,
        theme = "FFFFFF FFFFFF 8AC9FF FFAFAC FFF272 E8E8E8 A0654D BE8D79 DDC4BA BE8D79 797B79 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Tauros",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55, 63},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55, 63}
        },
        weight = 88.4,
        theme = "FFFFFF FFFFFF 8AC9FF FFAFAC FFF272 FFFFFF 7B6A5B 927E6C 7B6A5B 927E6C C39559 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Magikarp", --129
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "200",
        movelvls = {
            {15, 30},
            {15, 30},
            {15, 30},
            {15, 30},
            {15, 30}
        },
        weight = 10.0,
        theme = "FFFFFF 000000 89FFA3 FFAFAC FFF272 FFFFFF 2380D4 509DE2 EAE1D2 E0D2BA 2E67A8 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gyarados",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {20, 23, 26, 29, 32, 35, 38, 41, 44, 47}
        },
        weight = 235.0,
        theme = "FFFFFF 000000 89FFA3 FFAFAC FFF272 FFFFFF 2380D4 509DE2 EAE1D2 E0D2BA 2E67A8 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lapras",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55}
        },
        weight = 220.0,
        theme = "FFFFFF FFFFFF 89FFA3 FFAFAC FFF272 FFFFFF 4D88CD 6EB0E7 CDC3CA AA9AA6 685E61 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ditto",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "288",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 4.0,
        theme = "FFFFFF FFFFFF 95D9FF FFAFAC FFF272 FFFFFF 956BD2 B69DEB D0C0F2 B69DEB 956BD2 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Eevee",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.VARIOUS,
        bst = "325",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 50, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 6.5,
        theme = "F4F4F4 000000 6BECFF FFB967 FFE867 EFE3BD AC773A CE9852 D9BD65 EFE3BD 673E13 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Vaporeon",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 29.0,
        theme = "F4F4F4 FFFFFF 6BECFF FFA99F FFF781 DDEFF7 258AB3 64BADE 9DD2E9 64BADE 375B8F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Jolteon",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 24.5,
        theme = "000000 000000 0076C8 A31B00 78319D DDEFF7 D7A608 F8D35B D7A608 F8D35B 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Flareon",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 25.0,
        theme = "FFFFFF 000000 A4E3FF FFCCB4 FFF1A5 FFFFFF C26747 E48148 D89B1B FBDC83 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Porygon",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.UPGRADE,
        bst = "395",
        movelvls = {
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62}
        },
        weight = 36.5,
        theme = "FFFFFF FFFFFF ACFFB1 FFD695 FFF07A D8E1F6 D54577 F26788 94C0E5 5DA1D8 2B4872 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Omanyte",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.WATER},
        evolution = "40",
        bst = "355",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55}
        },
        weight = 7.5,
        theme = "000000 FFFFFF 0069C1 AB0D01 A30015 CBF1FE BF8D2E DFBC7A 8AD8F2 2FBAE8 17497E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Omastar", -- LORD HELIX
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.WATER},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 40, 48, 56, 67},
            {7, 10, 16, 19, 25, 28, 34, 37, 40, 48, 56, 67},
            {7, 10, 16, 19, 25, 28, 34, 37, 40, 48, 56, 67},
            {7, 10, 16, 19, 25, 28, 34, 37, 40, 48, 56, 67, 75},
            {7, 10, 16, 19, 25, 28, 34, 37, 40, 48, 56, 67, 75}
        },
        weight = 35.0,
        theme = "000000 FFFFFF 0069C1 AB0D01 A30015 CBF1FE BF8D2E DFBC7A 8AD8F2 2FBAE8 17497E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kabuto",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.WATER},
        evolution = "40",
        bst = "355",
        movelvls = {
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51}
        },
        weight = 11.5,
        theme = "FFFFFF FFFFFF A3E1FE FFAAB5 FFF092 DEDEDE 8F6543 B08058 8F6543 B08058 535353 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kabutops",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.WATER},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {6, 11, 16, 21, 26, 31, 36, 40, 45, 54, 63, 72},
            {6, 11, 16, 21, 26, 31, 36, 40, 45, 54, 63, 72},
            {6, 11, 16, 21, 26, 31, 36, 40, 45, 54, 63, 72},
            {6, 11, 16, 21, 26, 31, 36, 40, 45, 54, 63, 72},
            {6, 11, 16, 21, 26, 31, 36, 40, 45, 54, 63, 72}
        },
        weight = 40.5,
        theme = "FFFFFF FFFFFF A3E1FE FFAAB5 FFF092 DEDEDE 8F6543 B08058 8F6543 B08058 535353 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Aerodactyl",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "515",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73},
            {9, 17, 25, 33, 41, 49, 57, 65, 73},
            {9, 17, 25, 33, 41, 49, 57, 65, 73},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81}
        },
        weight = 59.0,
        theme = "FFFFFF FFFFFF 50E3FF FFC1A3 FEEA88 DEDEDE 646A7B 848A9B ACB0BB 848A9B 71449E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Snorlax",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 28, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 28, 33, 36, 41, 44, 49, 52, 57},
            {4, 9, 12, 17, 20, 25, 28, 28, 33, 36, 41, 44, 49, 52, 57}
        },
        weight = 460.0,
        theme = "000000 000000 DF2322 0082B4 0082B4 F2EFEC DCC092 F3E9D9 DCC092 F3E9D9 085B85 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Articuno",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
        },
        weight = 55.4,
        theme = "FFFFFF 000000 50E3FF FFC1A3 FEEA88 E2E0DE 2A7AC0 4995D7 54CBDD C7EEF4 2A7AC0 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Zapdos",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
        },
        weight = 52.6,
        theme = "000000 000000 0053B0 AD0D00 AD0D00 FFFFFF CC6C14 EC913D F6EEAF EBDA49 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Moltres",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
        },
        weight = 60.0,
        theme = "FFFFFF FFFFFF 8EF7FE FFCEBB FFF76C FFFFFF C24C1D DF5F2C F4C562 E39E0F 854224 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Dratini",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "300",
        movelvls = {
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55, 61},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55, 61}
        },
        weight = 3.3,
        theme = "000000 000000 0022B4 BE0032 BE0032 F6F0C6 B46D00 FFA71E F4ECBB EBDC83 0A7598 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Dragonair",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "55",
        bst = "420",
        movelvls = {
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 61, 67},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 61, 67},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 61, 67},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 61, 67, 75},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 61, 67, 75}
        },
        weight = 16.5,
        theme = "000000 000000 0022B4 BE0032 BE0032 F6F0C6 B46D00 FFA71E F4ECBB EBDC83 0A7598 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Dragonite",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 55, 64, 73},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 55, 64, 73},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 55, 64, 73},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 55, 61, 67, 75, 81},
            {5, 11, 15, 21, 25, 33, 39, 47, 53, 55, 61, 67, 75, 81}
        },
        weight = 210.0,
        theme = "000000 000000 0022B4 BE0032 BE0032 F6F0C6 B46D00 FFA71E F4ECBB EBDC83 0A7598 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Mewtwo",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 64, 71, 79, 86, 93, 100},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 64, 71, 79, 86, 93, 100},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 64, 71, 79, 86, 93, 100},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 64, 71, 79, 86, 93, 100},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 64, 71, 79, 86, 93, 100}
        },
        weight = 122.0,
        theme = "000000 000000 004A7A A30400 A30400 FEFFFE B38BB3 DBD4E0 F1EFF3 DBD4E0 B38BB3 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Mew",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
        },
        weight = 4.0,
        theme = "000000 000000 004A7A A30400 A30400 FEFFFE DD8399 F2B2C7 F8D9E3 F2B2C7 DD8399 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Chikorita",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "318",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45}
        },
        weight = 6.4,
        theme = "000000 000000 004A7A A30400 A30400 FFFFFF 5EB523 8EDE59 CCF0B5 8EDE59 DD8399 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Bayleef",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "405",
        movelvls = {
            {6, 9, 12, 18, 22, 26, 32, 36, 40, 46, 50, 54},
            {6, 9, 12, 18, 22, 26, 32, 36, 40, 46, 50, 54},
            {6, 9, 12, 18, 22, 26, 32, 36, 40, 46, 50, 54},
            {6, 9, 12, 18, 22, 26, 32, 36, 40, 46, 50, 54},
            {6, 9, 12, 18, 22, 26, 32, 36, 40, 46, 50, 54}
        },
        weight = 15.8,
        theme = "000000 000000 004A7A A30400 A30400 FFFFFF 5EB523 8EDE59 CCF0B5 8EDE59 DD8399 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Meganium",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {6, 9, 12, 18, 22, 26, 32, 34, 40, 46, 54, 60, 66},
            {6, 9, 12, 18, 22, 26, 32, 34, 40, 46, 54, 60, 66},
            {6, 9, 12, 18, 22, 26, 32, 34, 40, 46, 54, 60, 66},
            {6, 9, 12, 18, 22, 26, 32, 34, 40, 46, 54, 60, 66},
            {6, 9, 12, 18, 22, 26, 32, 34, 40, 46, 54, 60, 66}
        },
        weight = 100.5,
        theme = "000000 000000 004A7A A30400 A30400 FFFFFF 5EB523 8EDE59 CCF0B5 8EDE59 DD8399 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Cyndaquil",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "14",
        bst = "309",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {6, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {6, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49, 55, 58},
            {6, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49, 55, 58}
        },
        weight = 7.9,
        theme = "FFFFFF 000000 9BCDFF FFBBA2 FFF683 FDF6DA 335676 43719B FDF6DA FBE898 96493B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Quilava",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "405",
        movelvls = {
            {4, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {4, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {6, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {6, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57, 64, 68},
            {6, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57, 64, 68}
        },
        weight = 19.0,
        theme = "FFFFFF 000000 9BCDFF FFBBA2 FFF683 FDF6DA 335676 43719B FDF6DA FBE898 96493B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Typhlosion",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "534",
        movelvls = {
            {4, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {4, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {6, 10, 13, 20, 24, 31, 35, 42, 46, 53, 57},
            {6, 10, 13, 20, 24, 31, 35, 43, 48, 56, 61, 69, 74},
            {6, 10, 13, 20, 24, 31, 35, 43, 48, 56, 61, 69, 74}
        },
        weight = 79.5,
        theme = "FFFFFF 000000 9BCDFF FFBBA2 FFF683 FDF6DA 335676 43719B FDF6DA FBE898 96493B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Totodile",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "314",
        movelvls = {
            {6, 8, 13, 15, 20, 22, 27, 29, 34, 36, 41, 43},
            {6, 8, 13, 15, 20, 22, 27, 29, 34, 36, 41, 43, 48},
            {6, 8, 13, 15, 20, 22, 27, 29, 34, 36, 41, 43, 48},
            {6, 8, 13, 15, 20, 22, 27, 29, 34, 36, 41, 43, 48, 50},
            {6, 8, 13, 15, 20, 22, 27, 29, 34, 36, 41, 43, 48, 50}
        },
        weight = 9.5,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFE6D8 1E89B4 45B4E0 FDF2CD FADE7F D4696A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Croconaw",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "405",
        movelvls = {
            {6, 8, 13, 15, 21, 24, 30, 33, 39, 42, 48, 51},
            {6, 8, 13, 15, 21, 24, 30, 33, 39, 42, 48, 51, 57},
            {6, 8, 13, 15, 21, 24, 30, 33, 39, 42, 48, 51, 57},
            {6, 8, 13, 15, 21, 24, 30, 33, 39, 42, 48, 51, 57, 60},
            {6, 8, 13, 15, 21, 24, 30, 33, 39, 42, 48, 51, 57, 60}
        },
        weight = 25.0,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFE6D8 1E89B4 45B4E0 FDF2CD FADE7F D4696A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Feraligatr",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {6, 8, 13, 15, 21, 24, 30, 32, 37, 45, 50, 58, 63},
            {6, 8, 13, 15, 21, 24, 30, 32, 37, 45, 50, 58, 63, 71},
            {6, 8, 13, 15, 21, 24, 30, 32, 37, 45, 50, 58, 63, 71},
            {6, 8, 13, 15, 21, 24, 30, 32, 37, 45, 50, 58, 63, 71, 76},
            {6, 8, 13, 15, 21, 24, 30, 32, 37, 45, 50, 58, 63, 71, 76}
        },
        weight = 88.8,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFE6D8 1E89B4 45B4E0 FDF2CD FADE7F D4696A 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Sentret",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "15",
        bst = "215",
        movelvls = {
            {4, 7, 13, 16, 19, 25, 28, 31, 36, 39, 42, 47},
            {4, 7, 13, 16, 19, 25, 28, 31, 36, 39, 42, 47},
            {4, 7, 13, 16, 19, 25, 28, 31, 36, 39, 42, 47},
            {4, 7, 13, 16, 19, 25, 28, 31, 36, 39, 42, 47},
            {4, 7, 13, 16, 19, 25, 28, 31, 36, 39, 42, 47}
        },
        weight = 6.0,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 F0E5DA 896250 A47865 F4ECE4 DEC5AD 896250 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Furret",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "415",
        movelvls = {
            {4, 7, 13, 17, 21, 28, 32, 36, 42, 46, 50, 56},
            {4, 7, 13, 17, 21, 28, 32, 36, 42, 46, 50, 56},
            {4, 7, 13, 17, 21, 28, 32, 36, 42, 46, 50, 56},
            {4, 7, 13, 17, 21, 28, 32, 36, 42, 46, 50, 56},
            {4, 7, 13, 17, 21, 28, 32, 36, 42, 46, 50, 56}
        },
        weight = 32.5,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 F0E5DA 896250 A47865 F4ECE4 DEC5AD 896250 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Hoothoot",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "20",
        bst = "262",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 21.2,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 EAEAEA 845D4E AB8272 EAEAEA E3D9B7 543832 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Noctowl",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "442",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62, 67},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62, 67}
        },
        weight = 40.8,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 EAEAEA 845D4E AB8272 EAEAEA E3D9B7 543832 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ledyba",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "18",
        bst = "265",
        movelvls = {
            {6, 9, 14, 14, 14, 17, 22, 25, 30, 33, 38, 41},
            {6, 9, 14, 14, 14, 17, 22, 25, 30, 33, 38, 41},
            {6, 9, 14, 14, 14, 17, 22, 25, 30, 33, 38, 41},
            {6, 9, 14, 14, 14, 17, 22, 25, 30, 33, 38, 41},
            {6, 9, 14, 14, 14, 17, 22, 25, 30, 33, 38, 41}
        },
        weight = 10.8,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFFFFF AF2D37 D3545E F4EECF EDE1A0 2F2E2B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ledian",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "390",
        movelvls = {
            {6, 9, 14, 14, 14, 17, 24, 29, 36, 41, 48, 53},
            {6, 9, 14, 14, 14, 17, 24, 29, 36, 41, 48, 53},
            {6, 9, 14, 14, 14, 17, 24, 29, 36, 41, 48, 53},
            {6, 9, 14, 14, 14, 17, 24, 29, 36, 41, 48, 53},
            {6, 9, 14, 14, 14, 17, 24, 29, 36, 41, 48, 53}
        },
        weight = 35.6,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFFFFF AF2D37 D3545E F4EECF EDE1A0 2F2E2B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Spinarak",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "22",
        bst = "250",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 8.5,
        theme = "FFFFFF FFFFFF 9BE9FF FFBBA2 FFF683 FFFFFF C82536 DC4353 BEB2D7 917DBC 252422 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ariados",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "390",
        movelvls = {
            {5, 8, 12, 15, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 8, 12, 15, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 8, 12, 15, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 8, 12, 15, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 8, 12, 15, 19, 23, 28, 32, 37, 41, 46, 50, 55}
        },
        weight = 33.5,
        theme = "FFFFFF FFFFFF 9BE9FF FFBBA2 FFF683 FFFFFF C82536 DC4353 BEB2D7 917DBC 252422 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Crobat",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51},
            {5, 9, 13, 17, 21, 27, 33, 39, 45, 51, 57},
            {4, 8, 12, 15, 19, 24, 28, 33, 38, 42, 47, 52}
        },
        weight = 75.0,
        theme = "FFFFFF FFFFFF A2DFFF FFA73F FEFB9C FDFAA7 A957C5 CA73E7 DDA5EF CA73E7 486A9A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chinchou",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = "27",
        bst = "330",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45, 50},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45, 50}
        },
        weight = 12.0,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFFFFF 396AC2 6B94E5 F9F5D1 F1E68A 396AC2 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lanturn",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 27, 27, 27, 30, 35, 40, 47, 52, 57},
            {6, 9, 12, 17, 20, 23, 27, 27, 27, 30, 35, 40, 47, 52, 57},
            {6, 9, 12, 17, 20, 23, 27, 27, 27, 30, 35, 40, 47, 52, 57},
            {6, 9, 12, 17, 20, 23, 27, 27, 27, 30, 35, 40, 47, 52, 57, 64},
            {6, 9, 12, 17, 20, 23, 27, 27, 27, 30, 35, 40, 47, 52, 57, 64}
        },
        weight = 22.5,
        theme = "FFFFFF 000000 9BE9FF FFBBA2 FFF683 FFFFFF 396AC2 6B94E5 F9F5D1 F1E68A 396AC2 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Pichu",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "205",
        movelvls = {
            {5, 10, 13, 18},
            {5, 10, 13, 18},
            {5, 10, 13, 18},
            {5, 10, 13, 18},
            {5, 10, 13, 18}
        },
        weight = 2.0,
        theme = "000000 000000 0081E0 C13200 E2F800 EAA700 FFD600 F2A300 FFD600 F2A300 74532C 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Cleffa",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 140,
        bst = "218",
        movelvls = {
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16}
        },
        weight = 3.0,
        theme = "000000 000000 0072D2 C13200 CC789F F2E9EA C996A5 FFC5BB C996A5 FFC5BB 895D5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Igglybuff",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "210",
        movelvls = {
            {5, 9, 13, 17},
            {5, 9, 13, 17},
            {5, 9, 13, 17},
            {5, 9, 13, 17},
            {5, 9, 13, 17}
        },
        weight = 1.0,
        theme = "000000 000000 0072D2 C13200 C17794 D6CED6 DBB0C1 FCD2DE DBB0C1 FCD2DE 075E6B 000000 000000 000000 0 1 1 0 0 1"
    },
    {
        name = "Togepi",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "245",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 1.5,
        theme = "000000 000000 0030CC C50031 C50031 FFFFFF B9B9B9 F8F8F8 B9B9B9 F8F8F8 4583C7 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Togetic",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.SHINY_STONE,
        bst = "405",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 3.2,
        theme = "000000 000000 0030CC C50031 C50031 FFFFFF B9B9B9 F8F8F8 B9B9B9 F8F8F8 4583C7 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Natu",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "25",
        bst = "320",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 28, 33, 36, 39, 44, 44, 47},
            {6, 9, 12, 17, 20, 23, 28, 33, 36, 39, 44, 44, 47},
            {6, 9, 12, 17, 20, 23, 28, 33, 36, 39, 44, 44, 47},
            {6, 9, 12, 17, 20, 23, 28, 33, 36, 39, 44, 47, 47, 50},
            {6, 9, 12, 17, 20, 23, 28, 33, 36, 39, 44, 47, 47, 50}
        },
        weight = 2.0,
        theme = "000000 000000 0030CC C50031 C50031 FFFFFF 5AAF31 96D876 C5DBE6 E5EFF4 AF5359 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Xatu",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "470",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 27, 30, 37, 42, 47, 54, 54, 59},
            {6, 9, 12, 17, 20, 23, 27, 30, 37, 42, 47, 54, 54, 59},
            {6, 9, 12, 17, 20, 23, 27, 30, 37, 42, 47, 54, 54, 59},
            {6, 9, 12, 17, 20, 23, 27, 30, 37, 42, 47, 54, 54, 59, 66},
            {6, 9, 12, 17, 20, 23, 27, 30, 37, 42, 47, 54, 54, 59, 66}
        },
        weight = 15.0,
        theme = "000000 000000 0030CC C50031 C50031 FFFFFF 5AAF31 96D876 C5DBE6 E5EFF4 AF5359 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mareep",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "15",
        bst = "280",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46}
        },
        weight = 7.8,
        theme = "FFFFFF 000000 ACD5FF FE9CB5 FEED58 FFFFFF 454545 5B5B5B F0EA96 EAE163 BB4555 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Flaaffy",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "365",
        movelvls = {
            {5, 10, 14, 20, 25, 31, 36, 42, 47, 53},
            {5, 10, 14, 20, 25, 31, 36, 42, 47, 53},
            {5, 10, 14, 20, 25, 31, 36, 42, 47, 53},
            {5, 10, 14, 20, 25, 31, 36, 42, 47, 53, 59, 65},
            {4, 8, 11, 16, 20, 25, 29, 34, 38, 43, 47, 52, 56}
        },
        weight = 13.3,
        theme = "FFFFFF 000000 ACD5FF FE9CB5 FEED58 FFFFFF 454545 5B5B5B F0EA96 EAE163 BB4555 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ampharos",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {5, 10, 14, 20, 25, 30, 34, 42, 51, 59, 68},
            {5, 10, 14, 20, 25, 30, 34, 42, 51, 59, 68},
            {5, 10, 14, 20, 25, 30, 34, 42, 51, 59, 68},
            {5, 10, 14, 20, 25, 30, 33, 40, 48, 55, 63, 71, 79},
            {4, 8, 11, 16, 20, 25, 29, 30, 35, 40, 46, 51, 57, 62}
        },
        weight = 61.5,
        theme = "FFFFFF 000000 ACD5FF FE9CB5 FEED58 FFFFFF 454545 5B5B5B F0EA96 EAE163 BB4555 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bellossom",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {23, 53},
            {23, 53},
            {23, 53},
            {23, 53},
            {23, 53}
        },
        weight = 5.8,
        theme = "FFFFFF 000000 ACD5FF FE9CB5 B2DDA8 FFFFFF 415E43 547A58 F5E6AC EFD777 CA3C3E 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Marill",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "250",
        movelvls = {
            {2, 7, 10, 15, 18, 23, 27, 32, 37, 42},
            {2, 7, 10, 15, 18, 23, 27, 32, 37, 42},
            {2, 7, 10, 15, 18, 23, 27, 32, 37, 42},
            {2, 7, 10, 15, 18, 23, 27, 32, 37, 42},
            {2, 5, 7, 10, 10, 13, 16, 20, 23, 28, 31, 37, 40}
        },
        weight = 8.5,
        theme = "FFFFFF FFFFFF ACD5FF FE9CB5 FFEB76 FFFFFF 0E79BC 3496D8 79B7E4 3496D8 BC566E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Azumarill",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "410",
        movelvls = {
            {2, 7, 10, 15, 20, 27, 33, 40, 47, 54},
            {2, 7, 10, 15, 20, 27, 33, 40, 47, 54},
            {2, 7, 10, 15, 20, 27, 33, 40, 47, 54},
            {2, 7, 10, 15, 20, 27, 33, 40, 47, 54},
            {2, 5, 7, 10, 10, 13, 16, 21, 25, 31, 35, 42, 46}
        },
        weight = 28.5,
        theme = "FFFFFF FFFFFF ACD5FF FE9CB5 FFEB76 FFFFFF 0E79BC 3496D8 79B7E4 3496D8 BC566E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sudowoodo",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "410",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {5, 8, 12, 15, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 38.0,
        theme = "FFFFFF FFFFFF 9CFF7A FE969D FEED69 FFFFFF 84644A A47C5D BA9C85 A47C5D 4F6047 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Politoed",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {43, 53},
            {27, 37, 48},
            {27, 37, 48},
            {27, 37, 48},
            {27, 37, 48}
        },
        weight = 33.9,
        theme = "FFFFFF 000000 7AE2FF FFD795 FEED69 FFFFFF 658A3E 84B253 D6CA4C ECE497 516280 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Hoppip",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "18",
        bst = "250",
        movelvls = {
            {4, 7, 10, 12, 14, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 12, 14, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 12, 14, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 12, 14, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49},
            {4, 7, 10, 12, 14, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49}
        },
        weight = 0.5,
        theme = "FFFFFF FFFFFF 9FFF70 FFF295 FFF151 FFFFFF 5977B1 8098D2 B4C2E3 8098D2 A99C84 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Skiploom",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "27",
        bst = "340",
        movelvls = {
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60}
        },
        weight = 1.0,
        theme = "FFFFFF FFFFFF 9FFF70 FFF295 FFF151 FFFFFF 5977B1 8098D2 B4C2E3 8098D2 A99C84 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Jumpluff",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 12, 14, 16, 20, 24, 29, 34, 39, 44, 49, 54, 59, 64, 69},
            {4, 7, 10, 12, 14, 16, 20, 24, 29, 34, 39, 44, 49, 54, 59, 64, 69}
        },
        weight = 3.0,
        theme = "FFFFFF FFFFFF 9FFF70 FFF295 FFF151 FFFFFF 5977B1 8098D2 B4C2E3 8098D2 A99C84 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Aipom",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "360",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43}
        },
        weight = 11.5,
        theme = "FFFFFF 000000 6FD5FF FFA995 FFF151 FFFFFF 8362A3 9376AF F4EAC9 EBD89A D1666F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sunkern",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SUN,
        bst = "180",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 1.8,
        theme = "000000 FFFFFF 004FD6 CC1A00 CC1A00 FFFFFF D9C82C F1F25D A5D0A2 6CB467 4C8142 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sunflora",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "425",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 43},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 43},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 43},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 8.5,
        theme = "000000 FFFFFF 004FD6 CC1A00 CC1A00 FFFFFF D9C82C F1F25D A5D0A2 6CB467 4C8142 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Yanma",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "33",
        bst = "390",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57}
        },
        weight = 38.0,
        theme = "FFFFFF FFFFFF 92CEFF FEA28E FFEA61 FFFFFF 4D5C3F 5F7847 E8908D DD5955 3D3B3B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wooper",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "20",
        bst = "210",
        movelvls = {
            {5, 9, 15, 19, 23, 29, 33, 37, 43, 43, 47},
            {5, 9, 15, 19, 23, 29, 33, 37, 43, 43, 47},
            {5, 9, 15, 19, 23, 29, 33, 37, 43, 43, 47},
            {5, 9, 15, 19, 23, 29, 33, 37, 43, 43, 47},
            {5, 9, 15, 19, 23, 29, 33, 37, 43, 43, 47}
        },
        weight = 8.5,
        theme = "FFFFFF FFFFFF 92CEFF FEA28E FFEA61 FFFFFF 2E8EC3 5FAED9 AAA0CB 8E81BA 163F4C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Quagsire",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "430",
        movelvls = {
            {5, 9, 15, 19, 24, 31, 36, 41, 48, 48, 53},
            {5, 9, 15, 19, 24, 31, 36, 41, 48, 48, 53},
            {5, 9, 15, 19, 24, 31, 36, 41, 48, 48, 53},
            {5, 9, 15, 19, 24, 31, 36, 41, 48, 48, 53},
            {5, 9, 15, 19, 24, 31, 36, 41, 48, 48, 53}
        },
        weight = 75.0,
        theme = "FFFFFF FFFFFF 92CEFF FEA28E FFEA61 FFFFFF 2E8EC3 5FAED9 AAA0CB 8E81BA 163F4C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Espeon",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 26.5,
        theme = "000000 000000 006CAD A83754 A83754 FFFFFF DBA0C5 EFD5E4 DBA0C5 EFD5E4 225C8C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Umbreon",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 27.0,
        theme = "FFFFFF FFFFFF 00BDFF FFFF65 FFFF65 FFFFFF 2C2F32 3F4345 676E71 3F4345 A8363B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Murkrow",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.DUSK,
        bst = "405",
        movelvls = {
            {5, 11, 15, 21, 25, 31, 35, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55, 61, 65},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55, 61, 65}
        },
        weight = 2.1,
        theme = "FFFFFF FFFFFF 00BDFF FF8264 FFFF65 FFFFFF 293B50 395270 72716A 4D4C47 862E3A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Slowking",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {6, 11, 15, 20, 25, 29, 34, 39, 43, 48, 53, 57},
            {5, 9, 14, 19, 23, 28, 32, 36, 41, 45, 49, 54, 58},
            {5, 9, 14, 19, 23, 28, 32, 36, 41, 45, 49, 54, 58}
        },
        weight = 79.5,
        theme = "000000 000000 0084F1 E70013 AD0017 FFFFFF B1AEA9 EDECEA D2C686 EFE9B1 C07A88 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Misdreavus",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.DUSK,
        bst = "435",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55}
        },
        weight = 1.0,
        theme = "FFFFFF FFFFFF B4DFFF FFCCB0 FFED57 FFFFFF 675386 8069A2 675386 8069A2 C07EAA FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Unown",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "336",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 5.0,
        theme = "FFFFFF FFFFFF B4DFFF FFCCB0 FFED57 FFFFFF 000000 25292B 42494C 25292B 000000 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wobbuffet",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 28.5,
        theme = "FFFFFF FFFFFF B8FFB4 FFB2B0 FFE848 FFFFFF 0F77A1 119CD8 0F77A1 119CD8 343532 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Girafarig",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46}
        },
        weight = 41.5,
        theme = "000000 000000 0049DD BE0400 BE0400 FFFFFF CD9318 EEC545 DC7A93 FFB9BA 5F3E32 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Pineco",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "31",
        bst = "290",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45}
        },
        weight = 7.2,
        theme = "000000 000000 0044C1 B0000E B0000E FFFFFF C3A1BC E4D5E1 C3A1BC E4D5E1 9E3F3F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Forretress",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {6, 9, 12, 17, 20, 23, 28, 31, 33, 38, 45, 50, 57, 62},
            {6, 9, 12, 17, 20, 23, 28, 31, 33, 38, 45, 50, 55, 62, 67},
            {6, 9, 12, 17, 20, 23, 28, 31, 33, 38, 45, 50, 55, 62, 67},
            {6, 9, 12, 17, 20, 23, 28, 31, 32, 36, 42, 46, 50, 56, 60, 64, 70},
            {6, 9, 12, 17, 20, 23, 28, 31, 32, 36, 42, 46, 50, 56, 60, 64, 70}
        },
        weight = 125.8,
        theme = "000000 000000 0044C1 B0000E B0000E FFFFFF C3A1BC E4D5E1 C3A1BC E4D5E1 9E3F3F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Dunsparce",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "415",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {4, 8, 12, 16, 20, 24, 28, 33, 38, 43, 48, 53, 58, 63},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49}
        },
        weight = 14.0,
        theme = "000000 000000 0044C1 B0000E B0000E FFFFFF D2C746 FDEE8E D2C746 FDEE8E 1E809B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Gligar",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.RAZOR_FANG,
        bst = "430",
        movelvls = {
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 49},
            {4, 7, 10, 13, 16, 19, 22, 27, 30, 35, 40, 45, 50, 55}
        },
        weight = 64.8,
        theme = "FFFFFF FFFFFF C1E4FF FEB4A3 FFE883 FFFFFF 6871A0 848BB2 B3B8CF 848BB2 B94759 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Steelix",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57, 62},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46, 49, 52}
        },
        weight = 400.0,
        theme = "000000 000000 0074C1 BE0E00 BE0E00 FFFFFF 97A9CD CADDF6 97A9CD CADDF6 566371 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Snubbull",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "23",
        bst = "300",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49}
        },
        weight = 7.8,
        theme = "FFFFFF FFFFFF C1E4FF FFC0A2 FFE883 FFFFFF A470A5 BB8BB3 D9BED4 BB8BB3 41403F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Granbull",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {7, 13, 19, 27, 35, 43, 51, 59},
            {7, 13, 19, 27, 35, 43, 51, 59},
            {7, 13, 19, 27, 35, 43, 51, 59},
            {7, 13, 19, 27, 35, 43, 51, 59, 67},
            {7, 13, 19, 27, 35, 43, 51, 59, 67}
        },
        weight = 48.7,
        theme = "FFFFFF FFFFFF C1E4FF FFC0A2 FFE883 FFFFFF A470A5 BB8BB3 D9BED4 BB8BB3 41403F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Qwilfish",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "430",
        movelvls = {
            {9, 9, 13, 17, 21, 25, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {9, 9, 13, 17, 21, 25, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {9, 9, 13, 17, 21, 25, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {9, 9, 13, 17, 21, 25, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {9, 9, 13, 17, 21, 25, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 3.9,
        theme = "FFFFFF 000000 C1E4FF FFC0A2 FFE883 FFFFFF 2D504F 427674 C0C382 E6EEC7 2D504F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Scizor",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 118.0,
        theme = "FFFFFF FFFFFF C1E4FF FFD4A2 FFE883 FFFFFF 962123 D3363A E48486 D3363A 000000 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shuckle",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {9, 14, 22, 27, 35, 40, 48},
            {9, 14, 22, 27, 35, 40, 48},
            {9, 14, 22, 27, 35, 40, 48},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 55},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 45, 49}
        },
        weight = 20.5,
        theme = "000000 000000 005392 CC0016 CC0016 FFFFFF D2B514 FFE64C E7C973 F4E6BE A33A3F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Heracross",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49, 55},
            {7, 13, 19, 25, 31, 37, 43, 49, 55},
            {7, 13, 19, 25, 31, 37, 43, 49, 55},
            {7, 13, 19, 25, 31, 37, 43, 49, 55},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46}
        },
        weight = 54.0,
        theme = "FFFFFF FFFFFF A2FFBE FEBA9C FEF94E FFFFFF 3D6884 548BAF 84ABC5 548BAF 3D6884 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sneasel",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.RAZOR_CLAW,
        bst = "430",
        movelvls = {
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49, 51},
            {8, 10, 14, 16, 20, 22, 25, 28, 32, 35, 40, 44, 47}
        },
        weight = 28.0,
        theme = "FFFFFF FFFFFF A2FFBE FEBA9C FEF94E FFFFFF 56627F 707D9E A9B1C5 707D9E A73742 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Teddiursa",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "330",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 43, 50, 57},
            {8, 15, 22, 29, 36, 43, 43, 50, 57}
        },
        weight = 8.8,
        theme = "FFFFFF FFFFFF A2D3FF FEBA9C FFEB55 FFFFFF 8D5C45 B0785E C49B88 B0785E 674534 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ursaring",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {8, 15, 22, 29, 38, 47, 49, 58, 67},
            {8, 15, 22, 29, 38, 47, 49, 58, 67},
            {8, 15, 22, 29, 38, 47, 49, 58, 67},
            {8, 15, 22, 29, 38, 47, 49, 58, 67},
            {8, 15, 22, 29, 38, 47, 49, 58, 67}
        },
        weight = 125.8,
        theme = "FFFFFF FFFFFF A2D3FF FEBA9C FFEB55 FFFFFF 8D5C45 B0785E C49B88 B0785E 674534 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Slugma",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "38",
        bst = "250",
        movelvls = {
            {8, 11, 16, 23, 26, 31, 38, 41, 46, 53, 56},
            {8, 11, 16, 23, 26, 31, 38, 41, 46, 53, 56},
            {8, 11, 16, 23, 26, 31, 38, 41, 46, 53, 56},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55}
        },
        weight = 35.0,
        theme = "FFFFFF FFFFFF A2E9FF FFE89B FAFE54 FFFFFF CB5028 F16854 ABB0BD 757E93 434855 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Magcargo",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "410",
        movelvls = {
            {8, 11, 16, 23, 26, 31, 40, 45, 52, 61, 66},
            {8, 11, 16, 23, 26, 31, 40, 45, 52, 61, 66},
            {8, 11, 16, 23, 26, 31, 40, 45, 52, 61, 66},
            {5, 10, 14, 19, 23, 28, 32, 37, 38, 44, 52, 59, 67},
            {5, 10, 14, 19, 23, 28, 32, 37, 38, 44, 52, 59, 67}
        },
        weight = 55.0,
        theme = "FFFFFF FFFFFF A2E9FF FFE89B FAFE54 FFFFFF CB5028 F16854 ABB0BD 757E93 434855 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Swinub",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "33",
        bst = "250",
        movelvls = {
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49},
            {5, 8, 11, 14, 18, 21, 24, 28, 35, 37, 40, 44, 48}
        },
        weight = 6.5,
        theme = "FFFFFF 000000 A3FEAD FFDBA6 FEFF95 FFFFFF 805C4B A47966 E3C6A5 FDF3EC 345D8C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Piloswine",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "45",
        bst = "450",
        movelvls = {
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {5, 8, 11, 14, 18, 21, 24, 28, 33, 37, 41, 46, 52, 58}
        },
        weight = 55.8,
        theme = "FFFFFF 000000 A3FEAD FFDBA6 FEFF95 FFFFFF 805C4B A47966 E3C6A5 FDF3EC 345D8C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Corsola",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "380",
        movelvls = {
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 48, 53},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 48, 53},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 48, 53},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 48, 53},
            {4, 8, 10, 13, 17, 20, 23, 27, 29, 31, 35, 38, 41, 45, 47, 52}
        },
        weight = 5.0,
        theme = "000000 000000 004EA4 CF0800 CF0800 FFFFFF E490AA FDBCCE ABCDDE DCF1F9 4A5F6F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Remoraid",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "300",
        movelvls = {
            {6, 10, 14, 19, 23, 27, 32, 36, 40, 45},
            {6, 10, 14, 19, 23, 27, 32, 36, 40, 45},
            {6, 10, 14, 19, 23, 27, 32, 36, 40, 45},
            {6, 10, 14, 19, 23, 27, 32, 36, 40, 45, 49},
            {6, 10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50}
        },
        weight = 12.0,
        theme = "FFFFFF 000000 A6DCFF FFC989 FFF36B FFFFFF C53D38 E66052 DEB144 F9DA83 943933 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Octillery",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {6, 10, 14, 19, 23, 25, 29, 36, 42, 48, 55},
            {6, 10, 14, 19, 23, 25, 29, 36, 42, 48, 55},
            {6, 10, 14, 19, 23, 25, 29, 36, 42, 48, 55},
            {6, 10, 14, 19, 23, 25, 29, 36, 42, 48, 55, 61},
            {6, 10, 14, 18, 22, 25, 28, 34, 40, 46, 52, 58, 64}
        },
        weight = 28.5,
        theme = "FFFFFF 000000 A6DCFF FFC989 FFF36B FFFFFF C53D38 E66052 DEB144 F9DA83 943933 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Delibird",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "330",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 16.0,
        theme = "000000 000000 004BCC C50900 C50900 FFFFFF BBB0B8 F2F0F1 D7BB59 F2D887 C53F2F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Mantine",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {3, 7, 11, 14, 16, 19, 23, 27, 32, 36, 39, 46, 49}
        },
        weight = 220.0,
        theme = "000000 000000 004BCC C50900 C50900 FFFFFF D0ACC8 E8D6E4 D0ACC8 E8D6E4 405067 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Skarmory",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {7, 11, 14, 20, 24, 27, 33, 38, 40, 46, 50},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45, 50},
            {6, 9, 12, 17, 20, 23, 28, 31, 34, 39, 42, 45, 50}
        },
        weight = 50.5,
        theme = "000000 FFFFFF 004BCC C50900 C50900 FFFFFF 97B7E1 D1DFF2 586281 7983A3 A5423A FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Houndour",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FIRE},
        evolution = "24",
        bst = "330",
        movelvls = {
            {4, 9, 14, 17, 22, 27, 30, 35, 40, 43, 48, 53},
            {4, 9, 14, 17, 22, 27, 30, 35, 40, 43, 48, 53},
            {4, 9, 14, 17, 22, 27, 30, 35, 40, 43, 48, 53},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56}
        },
        weight = 10.8,
        theme = "FFFFFF FFFFFF B4E0FF FFC595 FFE75F FFFFFF 413935 5A4F49 95867D 5A4F49 C8573C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Houndoom",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {4, 9, 14, 17, 22, 28, 32, 38, 44, 48, 54, 60},
            {4, 9, 14, 17, 22, 28, 32, 38, 44, 48, 54, 60},
            {4, 9, 14, 17, 22, 28, 32, 38, 44, 48, 54, 60},
            {4, 8, 13, 16, 20, 26, 30, 35, 41, 45, 50, 56, 60, 65},
            {4, 8, 13, 16, 20, 26, 30, 35, 41, 45, 50, 56, 60, 65}
        },
        weight = 35.0,
        theme = "FFFFFF FFFFFF B4E0FF FFC595 FFE75F FFFFFF 413935 5A4F49 95867D 5A4F49 C8573C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kingdra",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57},
            {4, 8, 11, 14, 18, 23, 26, 30, 40, 48, 57}
        },
        weight = 152.0,
        theme = "FFFFFF FFFFFF 8DDAFF FFA49B FFA49B FEE762 5083AD 699DC8 96BAD8 699DC8 5083AD FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Phanpy",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "330",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42},
            {6, 10, 15, 19, 24, 28, 33, 37, 42},
            {6, 10, 15, 19, 24, 28, 33, 37, 42},
            {6, 10, 15, 19, 24, 28, 33, 37, 42},
            {6, 10, 15, 19, 24, 28, 33, 37, 42}
        },
        weight = 33.5,
        theme = "FFFFFF 000000 8DDAFF FFA49B FFEA9B FFFFFF 424A52 56606B 92B2CF C6D7E6 853534 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Donphan",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {6, 10, 15, 19, 24, 25, 31, 39, 46, 54},
            {6, 10, 15, 19, 24, 25, 31, 39, 46, 54},
            {6, 10, 15, 19, 24, 25, 31, 39, 46, 54},
            {6, 10, 15, 19, 24, 25, 31, 39, 46, 54},
            {6, 10, 15, 19, 24, 25, 31, 39, 46, 54}
        },
        weight = 120.0,
        theme = "FFFFFF 000000 8DDAFF FFA49B FFEA9B FFFFFF 424A52 56606B 92B2CF C6D7E6 853534 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Porygon2",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.DUBIOUS_DISC,
        bst = "515",
        movelvls = {
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67}
        },
        weight = 32.5,
        theme = "FFFFFF FFFFFF ACFFB1 FFD695 FFF07A D8E1F6 D54577 F26788 94C0E5 5DA1D8 2B4872 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Stantler",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {3, 7, 10, 13, 16, 21, 23, 27, 33, 38, 43, 49, 53},
            {3, 7, 10, 13, 16, 21, 23, 27, 33, 38, 43, 49, 53},
            {3, 7, 10, 13, 16, 21, 23, 27, 33, 38, 43, 49, 53},
            {3, 7, 10, 13, 16, 21, 23, 27, 33, 38, 43, 49, 53, 55},
            {3, 7, 10, 13, 16, 21, 23, 27, 33, 38, 43, 49, 53, 55}
        },
        weight = 71.2,
        theme = "FFFFFF FFFFFF 8DDAFF FFC995 EFDC6F FFFFFF 7D5E4B A9856F C7AFA1 A9856F 623D23 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Smeargle",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "250",
        movelvls = {
            {11, 21, 31, 41, 51, 61, 71, 81, 91},
            {11, 21, 31, 41, 51, 61, 71, 81, 91},
            {11, 21, 31, 41, 51, 61, 71, 81, 91},
            {11, 21, 31, 41, 51, 61, 71, 81, 91},
            {11, 21, 31, 41, 51, 61, 71, 81, 91}
        },
        weight = 58.0,
        theme = "000000 FFFFFF 006292 B40006 B40006 FFFFFF E0BE8F F2E4D0 C78E6E B06B44 597454 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Tyrogue",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "210",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 21.0,
        theme = "000000 000000 006ED6 C12717 C12717 FFFFFF D8AB5C F6D07C DDACD2 E9C9E2 7F6040 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Hitmontop",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51, 55},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 46, 51, 55, 60},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 46, 51, 55, 60}
        },
        weight = 48.0,
        theme = "FFFFFF FFFFFF 91DDFF FFD999 FFF681 FFFFFF 41678E 5583B1 BEA395 A78471 41678E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Smoochum",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "30",
        bst = "305",
        movelvls = {
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48}
        },
        weight = 6.0,
        theme = "F4F4F4 FFFFFF 7BFF6B FFC1A2 FFFF00 FFFFFF 624CA3 8963BF D78C79 C85446 624CA3 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Elekid",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "360",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43}
        },
        weight = 23.5,
        theme = "000000 000000 0063CC CC0100 BB0C00 FFFFFF C4B50D FFE523 C4B50D FFE523 3E3E3E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Magby",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "365",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 49},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43}
        },
        weight = 21.4,
        theme = "FFFFFF FFFFFF 8AC9FF FECBAD FBDE77 FFFFFF BC4619 E3602E F4C8C1 EA9183 474747 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Miltank",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55},
            {3, 5, 8, 11, 15, 19, 24, 29, 35, 41, 48, 55}
        },
        weight = 75.5,
        theme = "000000 000000 005EDD B40002 B40002 FFFFFF DF7E91 FCBBC0 CDBA4F E9E0AF 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Blissey",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46, 50, 54},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 46, 50, 54}
        },
        weight = 46.8,
        theme = "FFFFFF 000000 8EF7FE FFD1A7 FFED7D FFFFFF CB6D96 E48BAD D1D1D1 E8E8E8 A27086 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Raikou",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85}
        },
        weight = 178.0,
        theme = "000000 000000 005EDD B40002 B40002 FFFFFF 72A6CD A8D4ED CDAC53 E4D697 98668B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Entei",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85}
        },
        weight = 198.0,
        theme = "FFFFFF FFFFFF A9D9FF FFA481 EEFF5B FFFFFF 653C1F 7E4E33 A7AFBA 808C9B A23340 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Suicune",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85}
        },
        weight = 187.0,
        theme = "FFFFFF 000000 A9D9FF FFD681 EEFF5B FFFFFF 8E6390 AD82A7 729FBB C3DFE5 2E576F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Larvitar",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "30",
        bst = "300",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55}
        },
        weight = 72.0,
        theme = "000000 000000 004BB7 B40002 B40002 FFFFFF 899E62 B6CAA0 D6E1CA B6CAA0 596F91 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Pupitar",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "55",
        bst = "410",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60, 67},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 60, 67}
        },
        weight = 152.0,
        theme = "000000 000000 004BB7 B40002 B40002 FFFFFF 899E62 B6CAA0 D6E1CA B6CAA0 596F91 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Tyranitar",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 70},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 70},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 70},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 63, 73, 82},
            {5, 10, 14, 19, 23, 28, 34, 41, 47, 54, 63, 73, 82}
        },
        weight = 202.0,
        theme = "000000 000000 004BB7 B40002 B40002 FFFFFF 899E62 B6CAA0 D6E1CA B6CAA0 596F91 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Lugia",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {9, 15, 23, 29, 37, 43, 51, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 51, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99}
        },
        weight = 216.0,
        theme = "000000 000000 004BB7 B40002 B40002 FFFFFF B5B0DF F8F7FC D8E5F6 ACC8EB 39416D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ho-Oh",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {9, 15, 23, 29, 37, 43, 51, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 51, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99},
            {9, 15, 23, 29, 37, 43, 50, 57, 65, 71, 79, 85, 93, 99}
        },
        weight = 199.0,
        theme = "FFFFFF 000000 C0E2FF FFD6CF F7FF83 FFFFFF C84928 E46441 B5BFAB EDF0E5 3A445B 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Celebi",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91}
        },
        weight = 5.0,
        theme = "000000 000000 004BB7 B40002 B40002 FFFFFF C0CB83 E1F0CB CEE5B9 B3D791 2279AF 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Treecko",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "310",
        movelvls = {
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51}
        },
        weight = 5.0,
        theme = "FFFFFF FFFFFF C5DCFF FFD284 FEF05C FFFFFF 468B59 55A86B A9D3B4 55A86B 3D6746 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Grovyle",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "405",
        movelvls = {
            {6, 11, 16, 17, 23, 29, 35, 41, 47, 53, 59},
            {6, 11, 16, 17, 23, 29, 35, 41, 47, 53, 59},
            {6, 11, 16, 17, 23, 29, 35, 41, 47, 53, 59},
            {6, 11, 16, 17, 23, 29, 35, 41, 47, 53, 59},
            {6, 11, 16, 17, 23, 29, 35, 41, 47, 53, 59}
        },
        weight = 21.6,
        theme = "FFFFFF FFFFFF C5DCFF FFD284 FEF05C FFFFFF 468B59 55A86B A9D3B4 55A86B 3D6746 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sceptile",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {6, 11, 16, 17, 23, 29, 35, 43, 51, 59, 67},
            {6, 11, 16, 17, 23, 29, 35, 43, 51, 59, 67},
            {6, 11, 16, 17, 23, 29, 35, 43, 51, 59, 67},
            {6, 11, 16, 17, 23, 29, 35, 43, 51, 59, 67},
            {6, 11, 16, 17, 23, 29, 35, 43, 51, 59, 67}
        },
        weight = 52.2,
        theme = "FFFFFF FFFFFF C5DCFF FFD284 FEF05C FFFFFF 468B59 55A86B A9D3B4 55A86B 3D6746 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Torchic",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "310",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 43},
            {7, 10, 16, 19, 25, 28, 34, 37, 43},
            {7, 10, 16, 19, 25, 28, 34, 37, 43},
            {7, 10, 16, 19, 25, 28, 34, 37, 43},
            {7, 10, 16, 19, 25, 28, 34, 37, 43}
        },
        weight = 2.5,
        THEME = "000000 FFFFFF 003DBB B40002 B40002 FFFFFF ECC47F F7E6C8 DB8D78 CB593B 5E534E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Combusken",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = "36",
        bst = "405",
        movelvls = {
            {7, 13, 16, 17, 21, 28, 32, 39, 43, 50, 54},
            {7, 13, 16, 17, 21, 28, 32, 39, 43, 50, 54},
            {7, 13, 16, 17, 21, 28, 32, 39, 43, 50, 54},
            {7, 13, 16, 17, 21, 28, 32, 39, 43, 50, 54},
            {7, 13, 16, 17, 21, 28, 32, 39, 43, 50, 54}
        },
        weight = 19.5,
        THEME = "000000 FFFFFF 003DBB B40002 B40002 FFFFFF ECC47F F7E6C8 DB8D78 CB593B 5E534E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Blaziken",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {7, 13, 16, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 13, 16, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 13, 16, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 13, 16, 17, 21, 28, 32, 36, 42, 49, 59, 66},
            {7, 13, 16, 17, 21, 28, 32, 36, 42, 49, 59, 66}
        },
        weight = 52.0,
        THEME = "000000 FFFFFF 003DBB B40002 B40002 FFFFFF ECC47F F7E6C8 DB8D78 CB593B 5E534E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mudkip",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "310",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46}
        },
        weight = 7.6,
        theme = "FFFFFF FFFFFF B3FFBA FFA99B FFAD32 FFFFFF 495563 627284 61C0F6 16A2F3 495563 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Marshtomp",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "36",
        bst = "405",
        movelvls = {
            {6, 10, 15, 16, 20, 25, 31, 37, 42, 46, 53},
            {6, 10, 15, 16, 20, 25, 31, 37, 42, 46, 53},
            {6, 10, 15, 16, 20, 25, 31, 37, 42, 46, 53},
            {6, 10, 15, 16, 20, 25, 31, 37, 42, 46, 53},
            {6, 10, 15, 16, 20, 25, 31, 37, 42, 46, 53}
        },
        weight = 28.0,
        theme = "FFFFFF FFFFFF B3FFBA FFA99B FFAD32 FFFFFF 495563 627284 61C0F6 16A2F3 495563 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Swampert",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {6, 10, 15, 16, 20, 25, 31, 39, 46, 52, 61, 69},
            {6, 10, 15, 16, 20, 25, 31, 39, 46, 52, 61, 69},
            {6, 10, 15, 16, 20, 25, 31, 39, 46, 52, 61, 69},
            {6, 10, 15, 16, 20, 25, 31, 39, 46, 52, 61, 69},
            {6, 10, 15, 16, 20, 25, 31, 39, 46, 52, 61, 69}
        },
        weight = 81.9,
        theme = "FFFFFF FFFFFF B3FFBA FFA99B FFAD32 FFFFFF 495563 627284 61C0F6 16A2F3 495563 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Poochyena",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "220",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 13.6,
        theme = "FFFFFF 000000 B3D6FF F27168 F27168 FFFFFF 0D0D0D 2F2F2C A3A3A3 DCDCDC 403D3D 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mightyena",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "420",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52, 57, 62}
        },
        weight = 37.0,
        theme = "FFFFFF 000000 B3D6FF F27168 F27168 FFFFFF 0D0D0D 2F2F2C A3A3A3 DCDCDC 403D3D 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Zigzagoon",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "240",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49}
        },
        weight = 17.5,
        theme = "FFFFFF 000000 B3D6FF FFCF9C FFFA81 FFFFFF 7A5D43 A88260 B7A795 E3DDD6 237EA3 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Linoone",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "420",
        movelvls = {
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53, 59},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53, 59},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53, 59},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53, 59, 65},
            {5, 9, 13, 17, 23, 29, 35, 41, 47, 53, 59, 65}
        },
        weight = 32.5,
        theme = "FFFFFF 000000 B3D6FF FFCF9C FFFA81 FFFFFF 7A5D43 A88260 B7A795 E3DDD6 237EA3 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wurmple",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "7",
        bst = "195",
        movelvls = {
            {5},
            {5, 15},
            {5, 15},
            {5, 15},
            {5, 15}
        },
        weight = 3.6,
        theme = "FFFFFF 000000 B3D6FF FFCF9C FACF63 FFFFFF 514E4E 6F6B6A BCA4A4 F1ECEC 2F7098 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Silcoon",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "10",
        bst = "205",
        movelvls = {
            {7},
            {7},
            {7},
            {7},
            {7}
        },
        weight = 10.0,
        theme = "FFFFFF 000000 B3D6FF FFCF9C FACF63 FFFFFF 514E4E 6F6B6A BCA4A4 F1ECEC 2F7098 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Beautifly",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "385",
        movelvls = {
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41, 45},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41, 45}
        },
        weight = 28.4,
        theme = "FFFFFF 000000 B3D6FF FFCF9C FACF63 FFFFFF 514E4E 6F6B6A BCA4A4 F1ECEC 2F7098 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cascoon",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "10",
        bst = "205",
        movelvls = {
            {7},
            {7},
            {7},
            {7},
            {7}
        },
        weight = 11.5,
        theme = "FFFFFF FFFFFF B3D6FF FFCF9C F9FF79 FFFFFF 7A5D7F 97799C A3C884 72A449 BA5254 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Dustox",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "385",
        movelvls = {
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41, 45},
            {10, 13, 17, 20, 24, 27, 31, 34, 38, 41, 45}
        },
        weight = 31.6,
        theme = "FFFFFF FFFFFF B3D6FF FFCF9C F9FF79 FFFFFF 7A5D7F 97799C A3C884 72A449 BA5254 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lotad",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GRASS},
        evolution = "14",
        bst = "220",
        movelvls = {
            {3, 5, 7, 11, 15, 19, 27, 35, 43},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45}
        },
        weight = 2.6,
        theme = "FFFFFF 000000 B3D6FF FFCF9C F9FF79 FFFFFF 60863B 7AAB4B DCBD6C FFECB9 836859 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lombre",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.WATER,
        bst = "340",
        movelvls = {
            {3, 5, 7, 11, 15, 19, 27, 35, 43},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45}
        },
        weight = 32.5,
        theme = "FFFFFF 000000 B3D6FF FFCF9C F9FF79 FFFFFF 60863B 7AAB4B DCBD6C FFECB9 836859 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ludicolo",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 55.0,
        theme = "FFFFFF 000000 B3D6FF FFCF9C F9FF79 FFFFFF 60863B 7AAB4B DCBD6C FFECB9 836859 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Seedot",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "14",
        bst = "220",
        movelvls = {
            {3, 7, 13, 21, 31, 43},
            {3, 7, 13, 21, 31, 43},
            {3, 7, 13, 21, 31, 43},
            {3, 7, 13, 21, 31, 43},
            {3, 7, 13, 21, 31, 43}
        },
        weight = 4.0,
        theme = "000000 FFFFFF 00397D B40002 B40002 FFFFFF BCBCBC FDFDFD C09A7B A2734D 276343 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Nuzleaf",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.LEAF,
        bst = "340",
        movelvls = {
            {3, 7, 13, 19, 25, 31, 37, 43, 49},
            {3, 7, 13, 19, 25, 31, 37, 43, 49},
            {3, 7, 13, 19, 25, 31, 37, 43, 49},
            {3, 7, 13, 19, 25, 31, 37, 43, 49},
            {3, 7, 13, 19, 25, 31, 37, 43, 49}
        },
        weight = 28.0,
        theme = "000000 FFFFFF 00397D B40002 B40002 FFFFFF BCBCBC FDFDFD C09A7B A2734D 276343 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Shiftry",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {49},
            {49},
            {49},
            {19, 49},
            {19, 49}
        },
        weight = 59.6,
        theme = "000000 FFFFFF 00397D B40002 B40002 FFFFFF BCBCBC FDFDFD C09A7B A2734D 276343 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Taillow",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "22",
        bst = "270",
        movelvls = {
            {4, 8, 13, 19, 26, 34, 43, 53},
            {4, 8, 13, 19, 26, 34, 43, 53},
            {4, 8, 13, 19, 26, 34, 43, 53},
            {4, 8, 13, 19, 26, 34, 43, 53},
            {4, 8, 13, 19, 26, 34, 43, 53}
        },
        weight = 2.3,
        theme = "FFFFFF FFFFFF BEDBFF FFB0B1 FFDB5B FFFFFF 3C455E 5B6B95 D58893 C35363 3C455E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Swellow",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "430",
        movelvls = {
            {4, 8, 13, 19, 28, 38, 49, 61},
            {4, 8, 13, 19, 28, 38, 49, 61},
            {4, 8, 13, 19, 28, 38, 49, 61},
            {4, 8, 13, 19, 28, 38, 49, 61},
            {4, 8, 13, 19, 28, 38, 49, 61}
        },
        weight = 19.8,
        theme = "FFFFFF FFFFFF BEDBFF FFB0B1 FFDB5B FFFFFF 3C455E 5B6B95 D58893 C35363 3C455E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wingull",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "25",
        bst = "270",
        movelvls = {
            {6, 11, 16, 19, 24, 29, 34, 37, 42, 47},
            {6, 11, 16, 19, 24, 29, 34, 37, 42, 47},
            {6, 11, 16, 19, 24, 29, 34, 37, 42, 47},
            {6, 11, 16, 19, 24, 29, 34, 37, 42, 47, 50},
            {6, 9, 14, 17, 22, 26, 30, 33, 38, 42, 46, 49}
        },
        weight = 9.5,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF B0B0B0 FAFAFA DAB342 FFEAA7 3777A7 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Pelipper",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "430",
        movelvls = {
            {6, 11, 16, 19, 24, 25, 31, 38, 38, 38, 43, 50, 57},
            {6, 11, 16, 19, 24, 25, 31, 38, 38, 38, 43, 50, 57},
            {6, 11, 16, 19, 24, 25, 31, 38, 38, 38, 43, 50, 57},
            {6, 11, 16, 19, 24, 25, 31, 38, 38, 38, 43, 50, 57, 63},
            {6, 9, 14, 17, 22, 25, 28, 34, 39, 39, 39, 46, 52, 58, 63}
        },
        weight = 28.0,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF B0B0B0 FAFAFA DAB342 FFEAA7 3777A7 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ralts",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "198",
        movelvls = {
            {6, 10, 12, 17, 21, 23, 28, 32, 34, 39, 43, 45},
            {6, 10, 12, 17, 21, 23, 28, 32, 34, 39, 43, 45},
            {6, 10, 12, 17, 21, 23, 28, 32, 34, 39, 43, 45},
            {6, 10, 12, 17, 21, 23, 28, 32, 34, 39, 43, 45, 50, 54},
            {6, 10, 12, 17, 21, 23, 28, 32, 34, 39, 43, 45, 50, 54}
        },
        weight = 6.6,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 50774F 5CA261 D7BDBD FCFAFA C25B5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Kirlia",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.KIRLIA,
        bst = "278",
        movelvls = {
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53, 59, 64},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53, 59, 64}
        },
        weight = 20.2,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 50774F 5CA261 D7BDBD FCFAFA C25B5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Gardevoir",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "518",
        movelvls = {
            {6, 10, 12, 17, 22, 25, 33, 40, 45, 53, 60, 65},
            {6, 10, 12, 17, 22, 25, 33, 40, 45, 53, 60, 65},
            {6, 10, 12, 17, 22, 25, 33, 40, 45, 53, 60, 65},
            {6, 10, 12, 17, 22, 25, 33, 40, 45, 53, 60, 65, 73, 80},
            {6, 10, 12, 17, 22, 25, 33, 40, 45, 53, 60, 65, 73, 80}
        },
        weight = 48.4,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 50774F 5CA261 D7BDBD FCFAFA C25B5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Surskit",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.WATER},
        evolution = "22",
        bst = "269",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 37, 43},
            {7, 13, 19, 25, 31, 37, 37, 43},
            {7, 13, 19, 25, 31, 37, 37, 43},
            {7, 13, 19, 25, 31, 37, 37, 43},
            {7, 13, 19, 25, 31, 37, 37, 43}
        },
        weight = 1.7,
        theme = "000000 000000 00469F B40002 B40002 FFFFFF 85A4C6 BFDAEF FCD9CB FCC9B6 915262 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Masquerain",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "414",
        movelvls = {
            {7, 13, 19, 22, 26, 33, 40, 47, 54, 61},
            {7, 13, 19, 22, 26, 33, 40, 47, 54, 61},
            {7, 13, 19, 22, 26, 33, 40, 47, 54, 61},
            {7, 13, 19, 22, 26, 33, 40, 47, 54, 61, 68},
            {7, 13, 19, 22, 26, 33, 40, 47, 54, 61, 68}
        },
        weight = 3.6,
        theme = "000000 000000 00469F B40002 B40002 FFFFFF 85A4C6 BFDAEF FCD9CB FCC9B6 915262 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Shroomish",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "23",
        bst = "295",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 4.5,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 50754F 6C9A6B DBAE67 F9E5C8 C75554 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Breloom",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {5, 9, 13, 17, 21, 23, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 23, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 23, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 23, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 23, 25, 29, 33, 37, 41, 45}
        },
        weight = 39.2,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 50754F 6C9A6B DBAE67 F9E5C8 C75554 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Slakoth",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "280",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43},
            {7, 13, 19, 25, 31, 37, 43},
            {7, 13, 19, 25, 31, 37, 43},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49}
        },
        weight = 24.0,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF BBBBBB FFFFFF D5B68F F1E1C4 69483E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Vigoroth",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "440",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49, 55},
            {7, 13, 19, 25, 31, 37, 43, 49, 55}
        },
        weight = 46.5,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF BBBBBB FFFFFF D5B68F F1E1C4 69483E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Slaking",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "670",
        movelvls = {
            {7, 13, 19, 25, 31, 36, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 36, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 36, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 36, 37, 43, 49, 55, 61, 67},
            {7, 13, 19, 25, 31, 36, 37, 43, 49, 55, 61, 67}
        },
        weight = 130.5,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF BBBBBB FFFFFF D5B68F F1E1C4 69483E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Nincada",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "20",
        bst = "266",
        movelvls = {
            {5, 9, 14, 19, 25, 31, 38, 45},
            {5, 9, 14, 19, 25, 31, 38, 45},
            {5, 9, 14, 19, 25, 31, 38, 45},
            {5, 9, 14, 19, 25, 31, 38, 45},
            {5, 9, 14, 19, 25, 31, 38, 45}
        },
        weight = 5.5,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF CDA96D FEE28D 9E9E9E C9CACA 333333 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Ninjask",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "456",
        movelvls = {
            {5, 9, 14, 19, 20, 20, 20, 25, 31, 38, 45, 52},
            {5, 9, 14, 19, 20, 20, 20, 25, 31, 38, 45, 52},
            {5, 9, 14, 19, 20, 20, 20, 25, 31, 38, 45, 52},
            {5, 9, 14, 19, 20, 20, 20, 25, 31, 38, 45, 52},
            {5, 9, 14, 19, 20, 20, 20, 25, 31, 38, 45, 52}
        },
        weight = 12.0,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF CDA96D FEE28D 9A9A9A D7D7D7 C05156 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Shedinja",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "236",
        movelvls = {
            {5, 9, 14, 19, 25, 31, 38, 45, 52, 59},
            {5, 9, 14, 19, 25, 31, 38, 45, 52, 59},
            {5, 9, 14, 19, 25, 31, 38, 45, 52, 59},
            {5, 9, 14, 19, 25, 31, 38, 45, 52, 59},
            {5, 9, 14, 19, 25, 31, 38, 45, 52, 59}
        },
        weight = 1.2,
        theme = "000000 FFFFFF 005A99 B40003 B40003 FFFFFF A77F4C CEAE81 B5AAA8 877672 49413D FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Whismur",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "240",
        movelvls = {
            {5, 11, 15, 21, 25, 31, 35, 41, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 41, 45},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 45, 51},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 45, 51}
        },
        weight = 16.3,
        theme = "000000 FFFFFF 0065AD B40002 B40002 FFFFFF C19B66 E8DA8B 5C6298 7E83B1 A94D86 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Loudred",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "40",
        bst = "360",
        movelvls = {
            {5, 11, 15, 20, 23, 29, 37, 43, 51, 51, 57},
            {5, 11, 15, 20, 23, 29, 37, 43, 51, 51, 57},
            {5, 11, 15, 20, 23, 29, 37, 43, 51, 51, 57},
            {5, 11, 15, 20, 23, 29, 37, 43, 51, 57, 57, 65},
            {5, 11, 15, 20, 23, 29, 37, 43, 51, 57, 57, 65}
        },
        weight = 40.5,
        theme = "000000 FFFFFF 0065AD B40002 B40002 FFFFFF C19B66 E8DA8B 5C6298 7E83B1 A94D86 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Exploud",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {5, 11, 15, 20, 23, 29, 37, 40, 45, 55, 55, 63, 71},
            {5, 11, 15, 20, 23, 29, 37, 40, 45, 55, 55, 63, 71},
            {5, 11, 15, 20, 23, 29, 37, 40, 45, 55, 55, 63, 71},
            {5, 11, 15, 20, 23, 29, 37, 40, 45, 55, 55, 63, 71, 79},
            {5, 11, 15, 20, 23, 29, 37, 40, 45, 55, 55, 63, 71, 79}
        },
        weight = 84.0,
        theme = "000000 FFFFFF 0065AD B40002 B40002 FFFFFF C19B66 E8DA8B 5C6298 7E83B1 A94D86 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Makuhita",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "24",
        bst = "237",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46}
        },
        weight = 86.4,
        theme = "FFFFFF 000000 99D4FF FFBBBB FFF581 FFFFFF BD662F DA8459 E5B13B FFE58A 444C68 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Hariyama",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "474",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 27, 32, 37, 42, 47, 52, 57},
            {4, 7, 10, 13, 16, 19, 22, 27, 32, 37, 42, 47, 52, 57},
            {4, 7, 10, 13, 16, 19, 22, 27, 32, 37, 42, 47, 52, 57},
            {4, 7, 10, 13, 16, 19, 22, 27, 32, 37, 42, 47, 52, 57, 62},
            {4, 7, 10, 13, 16, 19, 22, 27, 32, 37, 42, 47, 52, 57, 62}
        },
        weight = 253.8,
        theme = "FFFFFF 000000 99D4FF FFBBBB FFF581 FFFFFF BD662F DA8459 E5B13B FFE58A 444C68 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Azurill",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "190",
        movelvls = {
            {2, 7, 10, 15, 18},
            {2, 7, 10, 15, 18},
            {2, 7, 10, 15, 18},
            {2, 7, 10, 15, 18},
            {2, 5, 7, 10, 13, 16, 20, 23}
        },
        weight = 2.0,
        theme = "FFFFFF FFFFFF ACD5FF FE9CB5 FFEB76 FFFFFF 0E79BC 3496D8 79B7E4 3496D8 BC566E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Nosepass",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "40",
        bst = "375",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 50}
        },
        weight = 97.0,
        theme = "FFFFFF FFFFFF BBE3FF FFBEBF FFFB9F FFFFFF A63F3A C45E58 8BAAC2 5F8AAB 2D2C2C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Skitty",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "260",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 42},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 42, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 42, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 42, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 42, 46}
        },
        weight = 11.0,
        theme = "FFFFFF 000000 B7E1FE FFC4BE FEF469 FFFFFF 916285 BB88B2 D9BD4E FDF0BD 916285 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Delcatty",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "380",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 32.6,
        theme = "FFFFFF 000000 B7E1FE FFC4BE FEF469 FFFFFF 916285 BB88B2 D9BD4E FDF0BD 916285 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sableye",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "380",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53, 57},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53, 57},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53, 57},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53, 57, 60},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53, 57, 60}
        },
        weight = 11.0,
        theme = "FFFFFF FFFFFF B7E1FE FFC4BE B7E1FE FFFFFF 69507E 886CA1 AE9BBF 886CA1 B04351 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mawile",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "380",
        movelvls = {
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 51, 51, 56},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 51, 51, 56},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 51, 51, 56},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 51, 51, 56},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 51, 51, 56}
        },
        weight = 11.5,
        theme = "FFFFFF 000000 B7E1FE FFC4BE FFF7B6 FFFFFF 575655 716F6E DCA051 F9DAA4 AF6277 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Aron",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.ROCK},
        evolution = "32",
        bst = "330",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 53},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 60.0,
        theme = "000000 FFFFFF 014C7F B40002 B40002 FFFFFF B6B6AE EEEEEC 959392 727370 3D3E43 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lairon",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.ROCK},
        evolution = "42",
        bst = "430",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 45, 51, 56},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 45, 51, 56},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 45, 51, 56},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 45, 51, 56, 62, 67},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 45, 51, 56, 62}
        },
        weight = 120.0,
        theme = "000000 FFFFFF 014C7F B40002 B40002 FFFFFF B6B6AE EEEEEC 959392 727370 3D3E43 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Aggron",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 48, 57, 65},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 48, 57, 65},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 48, 57, 65},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 48, 57, 65, 74, 82},
            {4, 8, 11, 15, 18, 22, 25, 29, 34, 40, 48, 57, 65, 74}
        },
        weight = 360.0,
        theme = "000000 FFFFFF 014C7F B40002 B40002 FFFFFF B6B6AE EEEEEC 959392 727370 3D3E43 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Meditite",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "37",
        bst = "280",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 11.2,
        theme = "FFFFFF 000000 AEDDFE FFDAC0 FDF79A FFFFFF BA4B57 D56D78 A6A6A6 DDDDDD 8B4552 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Medicham",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "410",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 42, 49, 55},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 42, 49, 55},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 42, 49, 55},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 42, 49, 55, 62},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 42, 49, 55, 62}
        },
        weight = 31.5,
        theme = "FFFFFF 000000 AEDDFE FFDAC0 FDF79A FFFFFF BA4B57 D56D78 A6A6A6 DDDDDD 8B4552 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Electrike",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "26",
        bst = "295",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52}
        },
        weight = 15.2,
        theme = "000000 000000 0267AE B40002 B40002 FFFFFF BBAD72 F2DF8F B0D1E1 88BBD2 354D6C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Manectric",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 30, 37, 42, 49, 54, 61},
            {4, 9, 12, 17, 20, 25, 30, 37, 42, 49, 54, 61},
            {4, 9, 12, 17, 20, 25, 30, 37, 42, 49, 54, 61},
            {4, 9, 12, 17, 20, 25, 30, 37, 42, 49, 54, 61, 66},
            {4, 9, 12, 17, 20, 25, 30, 37, 42, 49, 54, 61, 66}
        },
        weight = 40.2,
        theme = "000000 000000 0267AE B40002 B40002 FFFFFF BBAD72 F2DF8F B0D1E1 88BBD2 354D6C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Plusle",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51, 56, 63},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51, 56, 63}
        },
        weight = 4.2,
        theme = "000000 000000 0267AE B40002 B40002 FFFFFF D5C177 FCEDB7 D5C177 FCEDB7 C85A62 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Minun",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51, 56, 63},
            {3, 7, 10, 15, 17, 21, 24, 29, 31, 35, 38, 42, 44, 48, 51, 56, 63}
        },
        weight = 4.2,
        theme = "000000 000000 0267AE B40002 B40002 FFFFFF D5C177 FCEDB7 D5C177 FCEDB7 3775B6 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Volbeat",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "400",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 17.7,
        theme = "FFFFFF FFFFFF A4D8FD FFCFCF FBFF76 FFFFFF 7981B5 919DC8 F49D8E EE5B43 494741 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Illumise",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "400",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 17.7,
        theme = "FFFFFF FFFFFF A2FFC7 FFCFCF FBFF76 FFFFFF 1A8AB4 37B3E1 7981B5 919DC8 494741 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Roselia",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.SHINY_STONE,
        bst = "400",
        movelvls = {
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46}
        },
        weight = 2.0,
        theme = "FFFFFF FFFFFF BBD6FF FFCFB7 FFF68A FFFFFF DB3851 F05A6D 8EBCFB 5298FA 488765 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gulpin",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "26",
        bst = "302",
        movelvls = {
            {6, 9, 14, 17, 23, 28, 34, 34, 34, 39, 44, 49, 54},
            {6, 9, 14, 17, 23, 28, 34, 34, 34, 39, 44, 49, 54},
            {6, 9, 14, 17, 23, 28, 34, 34, 34, 39, 44, 49, 54},
            {6, 9, 14, 17, 23, 28, 34, 39, 39, 39, 44, 49, 54, 59},
            {6, 9, 14, 17, 23, 28, 34, 39, 39, 39, 44, 49, 54, 59}
        },
        weight = 10.3,
        theme = "FFFFFF FFFFFF BBD6FF FFB7BF FFF68A FFFFFF 736CC5 928FE5 AFACEB 928FE5 323132 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Swalot",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "467",
        movelvls = {
            {6, 9, 14, 17, 23, 26, 30, 38, 38, 38, 45, 52, 59, 66},
            {6, 9, 14, 17, 23, 26, 30, 38, 38, 38, 45, 52, 59, 66},
            {6, 9, 14, 17, 23, 26, 30, 38, 38, 38, 45, 52, 59, 66},
            {6, 9, 14, 17, 23, 26, 30, 38, 45, 45, 45, 52, 59, 66, 73},
            {6, 9, 14, 17, 23, 26, 30, 38, 45, 45, 45, 52, 59, 66, 73}
        },
        weight = 80.0,
        theme = "FFFFFF FFFFFF BBD6FF FFB7BF FFF68A FFFFFF 736CC5 928FE5 AFACEB 928FE5 323132 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Carvanha",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.DARK},
        evolution = "30",
        bst = "305",
        movelvls = {
            {6, 8, 11, 16, 18, 21, 26, 28, 31, 36, 38},
            {6, 8, 11, 16, 18, 21, 26, 28, 31, 36, 38},
            {6, 8, 11, 16, 18, 21, 26, 28, 31, 36, 38},
            {6, 8, 11, 16, 18, 21, 26, 28, 31, 36, 38},
            {6, 8, 11, 16, 18, 21, 26, 28, 31, 36, 38}
        },
        weight = 20.8,
        theme = "FFFFFF 000000 BBD6FF FFB7BF FFF68A FFFFFF 004062 005F92 AEB4D1 F1F2F7 804652 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Sharpedo",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {6, 8, 11, 16, 18, 21, 26, 28, 30, 34, 40, 45, 50, 56},
            {6, 8, 11, 16, 18, 21, 26, 28, 30, 34, 40, 45, 50, 56},
            {6, 8, 11, 16, 18, 21, 26, 28, 30, 34, 40, 45, 50, 56},
            {6, 8, 11, 16, 18, 21, 26, 28, 30, 34, 40, 45, 50, 56},
            {6, 8, 11, 16, 18, 21, 26, 28, 30, 34, 40, 45, 50, 56}
        },
        weight = 88.8,
        theme = "FFFFFF 000000 BBD6FF FFB7BF FFF68A FFFFFF 004062 005F92 AEB4D1 F1F2F7 804652 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wailmer",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "40",
        bst = "400",
        movelvls = {
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47, 50},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 41, 44, 47, 50}
        },
        weight = 130.0,
        theme = "FFFFFF 000000 BBD6FF FFB7BF FFF68A FFFFFF 336195 4E8ECE AEB4D1 F1F2F7 336195 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wailord", -- STONKS
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 46, 54, 62},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 46, 54, 62},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 46, 54, 62},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 46, 54, 62, 70},
            {4, 7, 11, 14, 17, 21, 24, 27, 31, 34, 37, 46, 54, 62, 70}
        },
        weight = 398.0,
        theme = "FFFFFF 000000 BBD6FF FFB7BF FFF68A FFFFFF 336195 4E8ECE AEB4D1 F1F2F7 336195 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Numel",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "33",
        bst = "305",
        movelvls = {
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51},
            {5, 11, 15, 21, 25, 31, 35, 41, 45, 51, 55},
            {5, 8, 12, 15, 19, 22, 26, 29, 31, 36, 40, 43, 47}
        },
        weight = 24.0,
        theme = "FFFFFF 000000 B4D1FF FFBEBF FCFF8E FFFFFF C85F3D DD805F BDAA9D DCD2CC 616060 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Camerupt",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {5, 11, 15, 21, 25, 31, 33, 39, 49, 57, 67},
            {5, 11, 15, 21, 25, 31, 33, 39, 49, 57, 67},
            {5, 11, 15, 21, 25, 31, 33, 39, 49, 57, 67},
            {5, 11, 15, 21, 25, 31, 33, 39, 49, 57, 67, 75},
            {5, 8, 12, 15, 19, 22, 26, 29, 31, 33, 39, 46, 52, 59}
        },
        weight = 220.0,
        theme = "FFFFFF 000000 B4D1FF FFBEBF FCFF8E FFFFFF C85F3D DD805F BDAA9D DCD2CC 616060 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Torkoal",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "470",
        movelvls = {
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52, 55},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52, 55},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52, 55},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52, 55, 60, 65},
            {4, 7, 12, 17, 20, 23, 28, 33, 36, 39, 44, 49, 52, 55, 60, 65}
        },
        weight = 80.4,
        theme = "000000 FFFFFF 003B99 B40002 B40002 FFFFFF BF9A74 D5C4AA E0B195 D38265 494849 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Spoink",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "330",
        movelvls = {
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 34, 41, 46, 48},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 34, 41, 46, 48},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 34, 41, 46, 48},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 34, 41, 46, 48, 53},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 33, 38, 40, 44, 50}
        },
        weight = 30.6,
        theme = "FFFFFF FFFFFF ADCCFE FFB0B1 FFF76F FFFFFF 5F5E5E 838181 B3B1B1 838181 A5619C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Grumpig",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "470",
        movelvls = {
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 37, 47, 55, 60},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 37, 47, 55, 60},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 37, 47, 55, 60},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 37, 47, 55, 60, 68},
            {7, 10, 14, 15, 18, 21, 26, 29, 29, 35, 42, 46, 52, 60}
        },
        weight = 71.5,
        theme = "FFFFFF FFFFFF ADCCFE FFB0B1 FFF76F FFFFFF 5F5E5E 838181 B3B1B1 838181 A5619C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Spinda",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "360",
        movelvls = {
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55}
        },
        weight = 5.0,
        theme = "000000 000000 013C9A B40002 B40002 FFFFFF DBBA93 F2E6D8 D5AF82 F2E6D8 C35851 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Trapinch",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "35",
        bst = "290",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {4, 7, 10, 13, 17, 21, 25, 29, 34, 39, 44, 49, 55, 61, 67, 73}
        },
        weight = 15.0,
        theme = "FFFFFF 000000 B4D1FE FFBEBF FEFE73 FFFFFF 4A8856 5BA66A 98BA5A D9EBB5 D0565D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Vibrava",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = "45",
        bst = "340",
        movelvls = {
            {9, 17, 25, 33, 35, 41, 49, 57},
            {9, 17, 25, 33, 35, 41, 49, 57},
            {9, 17, 25, 33, 35, 41, 49, 57},
            {9, 17, 25, 33, 35, 41, 49, 57},
            {4, 7, 10, 13, 17, 21, 25, 29, 34, 35, 39, 44, 49}
        },
        weight = 15.3,
        theme = "FFFFFF 000000 B4D1FE FFBEBF FEFE73 FFFFFF 4A8856 5BA66A 98BA5A D9EBB5 D0565D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Flygon",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "520",
        movelvls = {
            {9, 17, 25, 33, 35, 41, 45, 49, 57},
            {9, 17, 25, 33, 35, 41, 45, 49, 57},
            {9, 17, 25, 33, 35, 41, 45, 49, 57},
            {9, 17, 25, 33, 35, 41, 45, 49, 57, 65},
            {4, 7, 10, 13, 17, 21, 25, 29, 34, 35, 39, 44, 45, 49, 55}
        },
        weight = 82.0,
        theme = "FFFFFF 000000 B4D1FE FFBEBF FEFE73 FFFFFF 4A8856 5BA66A 98BA5A D9EBB5 D0565D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Cacnea",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "335",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 51.3,
        theme = "FFFFFF 000000 B4D1FE FFBEBF FEFE73 FFFFFF 437752 589C6C 88C173 C4E0BB 375641 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Cacturne",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 35, 41, 47, 53, 59, 65, 71},
            {5, 9, 13, 17, 21, 25, 29, 35, 41, 47, 53, 59, 65, 71},
            {5, 9, 13, 17, 21, 25, 29, 35, 41, 47, 53, 59, 65, 71},
            {5, 9, 13, 17, 21, 25, 29, 35, 41, 47, 53, 59, 65, 71},
            {5, 9, 13, 17, 21, 25, 29, 35, 41, 47, 53, 59, 65, 71}
        },
        weight = 77.4,
        theme = "FFFFFF 000000 B4D1FE FFBEBF FEFE73 FFFFFF 437752 589C6C 88C173 C4E0BB 375641 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Swablu",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "35",
        bst = "310",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 32, 36, 40, 45, 50},
            {5, 9, 13, 18, 23, 28, 32, 36, 40, 45, 50},
            {5, 9, 13, 18, 23, 28, 32, 36, 40, 45, 50},
            {5, 9, 13, 18, 23, 28, 32, 36, 40, 45, 50, 55},
            {4, 8, 10, 13, 15, 18, 21, 25, 29, 34, 39, 42, 48}
        },
        weight = 1.2,
        theme = "FFFFFF FFFFFF BBFFB3 FFD7A9 FEFE73 FFFFFF 0F7BB2 17A3EB 5FBFF1 17A3EB 637591 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Altaria",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 32, 35, 39, 46, 54, 62, 70},
            {5, 9, 13, 18, 23, 28, 32, 35, 39, 46, 54, 62, 70},
            {5, 9, 13, 18, 23, 28, 32, 35, 39, 46, 54, 62, 70},
            {5, 9, 13, 18, 23, 28, 32, 35, 39, 46, 54, 62, 70, 77},
            {4, 8, 10, 13, 15, 18, 21, 25, 29, 34, 35, 42, 48, 57, 64}
        },
        weight = 20.6,
        theme = "FFFFFF FFFFFF BBFFB3 FFD7A9 FEFE73 FFFFFF 0F7BB2 17A3EB 5FBFF1 17A3EB 637591 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Zangoose",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "458",
        movelvls = {
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48, 53},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48, 53},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48, 53},
            {5, 9, 14, 18, 22, 27, 31, 35, 40, 44, 48, 53},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 40.3,
        theme = "000000 FFFFFF 00409F B40002 B40002 FFFFFF 9CA3D2 E2E4F2 F2989D DF5456 4F4E4F FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Seviper",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "458",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55},
            {7, 10, 16, 19, 25, 28, 34, 37, 43, 46, 52, 55, 61, 64},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 49, 53}
        },
        weight = 52.5,
        theme = "FFFFFF FFFFFF ADCEFE FEADAE F9FF6C FFFFFF 6B51AC 8F6EC4 DF8C96 CD4859 3E4F61 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Lunatone",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "440",
        movelvls = {
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56, 64},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 168.0,
        theme = "000000 000000 00409F B40002 B40002 FFFFFF B7A26C D9C99B B7A26C D9C99B 000000 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Solrock",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "440",
        movelvls = {
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56},
            {9, 12, 20, 23, 31, 34, 42, 45, 53, 56, 64},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 154.0,
        theme = "000000 000000 00409F B40002 B40002 FFFFFF CDA131 F1CB7F CDA131 F1CB7F B5633F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Barboach",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "30",
        bst = "288",
        movelvls = {
            {6, 6, 10, 14, 18, 22, 26, 31, 31, 35, 39, 43, 47},
            {6, 6, 10, 14, 18, 22, 26, 31, 31, 35, 39, 43, 47},
            {6, 6, 10, 14, 18, 22, 26, 31, 31, 35, 39, 43, 47},
            {6, 6, 10, 14, 18, 22, 26, 31, 31, 35, 39, 43, 47},
            {6, 6, 10, 14, 18, 22, 26, 31, 31, 35, 39, 43, 47}
        },
        weight = 1.9,
        theme = "000000 000000 00409F B40002 B40002 FFFFFF DCB369 F4D9AC 54AADA 9DCEE9 283C6C 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Whiscash",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "468",
        movelvls = {
            {6, 6, 10, 14, 18, 22, 26, 33, 33, 39, 45, 51, 57},
            {6, 6, 10, 14, 18, 22, 26, 33, 33, 39, 45, 51, 57},
            {6, 6, 10, 14, 18, 22, 26, 33, 33, 39, 45, 51, 57},
            {6, 6, 10, 14, 18, 22, 26, 33, 33, 39, 45, 51, 57},
            {6, 6, 10, 14, 18, 22, 26, 33, 33, 39, 45, 51, 57}
        },
        weight = 23.6,
        theme = "000000 000000 00409F B40002 B40002 FFFFFF DCB369 F4D9AC 54AADA 9DCEE9 283C6C 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Corphish",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "308",
        movelvls = {
            {7, 10, 13, 20, 23, 26, 32, 35, 38, 44, 47, 53},
            {7, 10, 13, 20, 23, 26, 32, 35, 38, 44, 47, 53},
            {7, 10, 13, 20, 23, 26, 32, 35, 38, 44, 47, 53},
            {7, 10, 13, 20, 23, 26, 32, 35, 38, 44, 47, 53},
            {7, 10, 13, 20, 23, 26, 32, 35, 38, 44, 47, 53}
        },
        weight = 11.5,
        theme = "FFFFFF 000000 BED8FF FFC8C9 FFF792 FFFFFF A73D2A D05B47 D1B888 EFE0D2 2866A0 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Crawdaunt", -- FRAUD
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "468",
        movelvls = {
            {7, 10, 13, 20, 23, 26, 30, 34, 39, 44, 52, 57, 65},
            {7, 10, 13, 20, 23, 26, 30, 34, 39, 44, 52, 57, 65},
            {7, 10, 13, 20, 23, 26, 30, 34, 39, 44, 52, 57, 65},
            {7, 10, 13, 20, 23, 26, 30, 34, 39, 44, 52, 57, 65},
            {7, 10, 13, 20, 23, 26, 30, 34, 39, 44, 52, 57, 65}
        },
        weight = 32.8,
        theme = "FFFFFF 000000 BED8FF FFC8C9 FFF792 FFFFFF A73D2A D05B47 D1B888 EFE0D2 2866A0 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Baltoy",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "36",
        bst = "300",
        movelvls = {
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45, 53, 61, 71},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45, 53, 61, 71},
            {3, 5, 7, 11, 15, 19, 25, 31, 37, 45, 53, 61, 71},
            {4, 7, 11, 15, 18, 21, 26, 31, 34, 37, 43, 48, 48, 51, 54, 60},
            {4, 7, 10, 13, 17, 21, 25, 28, 31, 34, 34, 37, 41, 45, 49}
        },
        weight = 21.5,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 33312F 4B4946 8F8C87 4B4946 CF5677 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Claydol",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {3, 5, 7, 11, 15, 19, 25, 31, 36, 40, 51, 62, 73, 86},
            {3, 5, 7, 11, 15, 19, 25, 31, 36, 40, 51, 62, 73, 86},
            {3, 5, 7, 11, 15, 19, 25, 31, 36, 40, 51, 62, 73, 86},
            {4, 7, 11, 15, 18, 21, 26, 31, 34, 36, 39, 47, 54, 54, 59, 64, 72},
            {4, 7, 10, 13, 17, 21, 25, 28, 31, 34, 34, 36, 40, 47, 54, 61}
        },
        weight = 108.0,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 33312F 4B4946 8F8C87 4B4946 CF5677 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lileep",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GRASS},
        evolution = "40",
        bst = "355",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 57, 64},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 57, 64},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 57, 64},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 57, 64},
            {8, 15, 22, 29, 36, 43, 50, 57, 57, 57, 64}
        },
        weight = 23.8,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 406C42 579259 85B686 579259 BF5774 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cradily",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {8, 15, 22, 29, 36, 46, 56, 66, 66, 66, 76},
            {8, 15, 22, 29, 36, 46, 56, 66, 66, 66, 76},
            {8, 15, 22, 29, 36, 46, 56, 66, 66, 66, 76},
            {8, 15, 22, 29, 36, 46, 56, 66, 66, 66, 76},
            {8, 15, 22, 29, 36, 46, 56, 66, 66, 66, 76}
        },
        weight = 60.4,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 406C42 579259 85B686 579259 BF5774 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Anorith",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.BUG},
        evolution = "40",
        bst = "355",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61}
        },
        weight = 12.5,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 3F7196 588FB8 999999 626262 B04948 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Armaldo",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.BUG},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 46, 55, 67, 73},
            {7, 13, 19, 25, 31, 37, 46, 55, 67, 73},
            {7, 13, 19, 25, 31, 37, 46, 55, 67, 73},
            {7, 13, 19, 25, 31, 37, 46, 55, 67, 73},
            {7, 13, 19, 25, 31, 37, 46, 55, 67, 73}
        },
        weight = 68.2,
        theme = "FFFFFF FFFFFF BED8FF FFC8C9 FFF792 FFFFFF 3F7196 588FB8 999999 626262 B04948 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Feebas",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "35",
        bst = "200",
        movelvls = {
            {15, 30},
            {15, 30},
            {15, 30},
            {15, 30},
            {15, 30}
        },
        weight = 7.4,
        theme = "000000 FFFFFF 0041A3 B40002 B40002 FFFFFF D6BA69 F0DFBF EE9EB0 E56481 0974B7 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Milotic", -- THICC
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49}
        },
        weight = 162.0,
        theme = "000000 FFFFFF 0041A3 B40002 B40002 FFFFFF D6BA69 F0DFBF EE9EB0 E56481 0974B7 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Castform",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "420",
        movelvls = {
            {10, 10, 10, 20, 20, 20, 30},
            {10, 10, 10, 20, 20, 20, 30},
            {10, 10, 10, 20, 20, 20, 30},
            {10, 10, 10, 20, 30, 30, 30, 40, 50, 50, 50},
            {10, 10, 10, 15, 20, 20, 20, 30, 40, 40, 40}
        },
        weight = 0.8,
        theme = "000000 000000 0041A3 B40002 B40002 FFFFFF A9ACBB DDDEE4 A9ACBB DDDEE4 7D8298 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Kecleon",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "440",
        movelvls = {
            {4, 7, 10, 15, 20, 25, 32, 39, 46, 55, 64},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55, 58},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49, 55, 58}
        },
        weight = 22.0,
        theme = "000000 000000 0041A3 B40002 B40002 FFFFFF D5B766 FFE499 82A33C ADD87A C15263 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Shuppet",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37",
        bst = "295",
        movelvls = {
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 38, 43, 46, 50},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 38, 43, 46, 50},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 38, 43, 46, 50},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 38, 43, 46, 50, 55},
            {4, 7, 10, 13, 16, 19, 22, 26, 30, 34, 38, 42, 46, 50}
        },
        weight = 2.3,
        theme = "FFFFFF FFFFFF 99C1FF FDA7A9 FFED84 FFFFFF 444245 646266 8D8A8F 646266 B44766 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Banette",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "455",
        movelvls = {
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 42, 51, 58, 66},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 42, 51, 58, 66},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 42, 51, 58, 66},
            {5, 8, 13, 16, 20, 23, 28, 31, 35, 42, 51, 58, 66, 75},
            {4, 7, 10, 13, 16, 19, 22, 26, 30, 34, 40, 46, 52, 58}
        },
        weight = 12.5,
        theme = "FFFFFF FFFFFF 99C1FF FDA7A9 FFED84 FFFFFF 444245 646266 8D8A8F 646266 B44766 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Duskull",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37",
        bst = "295",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49}
        },
        weight = 15.0,
        theme = "000000 FFFFFF 003E9F B40002 B40002 FFEB76 959595 C7C7C7 999999 7C7C7C 933F54 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Dusclops",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.REAPER_CLOTH,
        bst = "455",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 42, 49, 58, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 42, 49, 58, 61}
        },
        weight = 30.6,
        theme = "000000 FFFFFF 003E9F B40002 B40002 FFEB76 959595 C7C7C7 999999 7C7C7C 933F54 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Tropius",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57, 61},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57, 61},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57, 61},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57, 61, 67, 71},
            {7, 11, 17, 21, 27, 31, 37, 41, 47, 51, 57, 61, 67, 71}
        },
        weight = 100.0,
        theme = "FFFFFF 000000 B0CFFF FEBFBF FFF47D FFFFFF 397751 4C9D6B C8914E EDDE7E 6D4C3F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chimecho",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "425",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57}
        },
        weight = 1.0,
        theme = "000000 000000 004F9F B40002 B40002 FFFFFF CCB458 F9DC7F 78C3EE CDE8F9 BC5259 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Absol",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57, 60, 65},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57, 60, 65},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57, 60, 65},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57, 60, 65},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57, 60, 65}
        },
        weight = 47.0,
        theme = "000000 000000 0044AD B40002 B40002 FFFFFF A1BAE5 E1E9F7 A1BAE5 E1E9F7 475C7A 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wynaut",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "15",
        bst = "260",
        movelvls = {
            {15, 15, 15, 15},
            {15, 15, 15, 15},
            {15, 15, 15, 15},
            {15, 15, 15, 15},
            {15, 15, 15, 15}
        },
        weight = 14.0,
        theme = "FFFFFF FFFFFF B8FFB4 FFB2B0 FFE848 FFFFFF 0F77A1 119CD8 0F77A1 119CD8 343532 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Snorunt",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SNORUNT,
        bst = "300",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46}
        },
        weight = 16.8,
        theme = "000000 000000 0044AD B40002 B40002 FFFFFF A1BAE5 DDE5F0 A1BAE5 DDE5F0 000000 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Glalie",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59}
        },
        weight = 256.5,
        theme = "000000 000000 0044AD B40002 B40002 FFFFFF A1BAE5 DDE5F0 A1BAE5 DDE5F0 000000 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Spheal",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.WATER},
        evolution = "32",
        bst = "290",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 37, 43, 49}
        },
        weight = 39.5,
        theme = "000000 FFFFFF 00409F B40002 B40002 FFFFFF 91BDE1 E6F0F8 55A9DF 268BCC 1B5475 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Sealeo",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.WATER},
        evolution = "44",
        bst = "410",
        movelvls = {
            {7, 13, 19, 25, 31, 32, 39, 39, 47, 55},
            {7, 13, 19, 25, 31, 32, 39, 39, 47, 55},
            {7, 13, 19, 25, 31, 32, 39, 39, 47, 55},
            {7, 13, 19, 25, 31, 32, 39, 39, 47, 55},
            {7, 13, 19, 25, 31, 32, 39, 39, 47, 55}
        },
        weight = 87.6,
        theme = "000000 FFFFFF 00409F B40002 B40002 FFFFFF 91BDE1 E6F0F8 55A9DF 268BCC 1B5475 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Walrein",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.WATER},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {7, 13, 19, 25, 31, 32, 39, 39, 44, 52, 65},
            {7, 13, 19, 25, 31, 32, 39, 39, 44, 52, 65},
            {7, 13, 19, 25, 31, 32, 39, 39, 44, 52, 65},
            {7, 13, 19, 25, 31, 32, 39, 39, 44, 52, 65},
            {7, 13, 19, 25, 31, 32, 39, 39, 44, 52, 65}
        },
        weight = 150.6,
        theme = "000000 FFFFFF 00409F B40002 B40002 FFFFFF 91BDE1 E6F0F8 55A9DF 268BCC 1B5475 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Clamperl",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.CLAMPERL,
        bst = "345",
        movelvls = {
            {},
            {},
            {},
            {51},
            {51}
        },
        weight = 52.5,
        theme = "F4F4F4 FFFFFF 6BECFF FFA99F FFF781 DDEFF7 258AB3 64BADE 9DD2E9 64BADE 375B8F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Huntail",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51}
        },
        weight = 27.0,
        theme = "FFFFFF FFFFFF CFE2FF FFDF9F FEE08E FFFFFF CD641A E78743 ADD6E7 65B3D3 B06072 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gorebyss",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 51}
        },
        weight = 22.6,
        theme = "000000 FFFFFF 0045B0 B40002 B40002 FFFFFF E780A6 F6BCCC D5BED6 AE8AC4 BD6584 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Relicanth",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78}
        },
        weight = 23.4,
        theme = "F4F4F4 FFFFFF A6D7FF FEC8C1 FFF781 FFFFFF 876E5C A99281 CDC0B6 A99281 484342 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Luvdisc",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "330",
        movelvls = {
            {4, 7, 9, 14, 17, 22, 27, 31, 37, 40, 46, 51},
            {4, 7, 9, 14, 17, 22, 27, 31, 37, 40, 46, 51},
            {4, 7, 9, 14, 17, 22, 27, 31, 37, 40, 46, 51},
            {4, 7, 9, 14, 17, 22, 27, 31, 37, 40, 46, 51, 55},
            {4, 7, 9, 14, 17, 22, 27, 31, 37, 40, 46, 51, 55}
        },
        weight = 8.7,
        theme = "FFFFFF FFFFFF C5D4FF FFD1A7 FFED7D FFFFFF DB6695 F283A8 F4B4CA F283A8 966178 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bagon",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "300",
        movelvls = {
            {5, 10, 16, 20, 25, 31, 35, 40, 46, 50, 55},
            {5, 10, 16, 20, 25, 31, 35, 40, 46, 50, 55},
            {5, 10, 16, 20, 25, 31, 35, 40, 46, 50, 55},
            {5, 10, 16, 20, 25, 31, 35, 40, 46, 50, 55},
            {5, 10, 16, 20, 25, 31, 35, 40, 46, 50, 55}
        },
        weight = 42.1,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 2085B2 35A7DA 7BCDE2 35A7DA C5465E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shelgon",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "50",
        bst = "420",
        movelvls = {
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 55, 61},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 55, 61},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 55, 61},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 55, 61},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 55, 61}
        },
        weight = 110.5,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 2085B2 35A7DA 7BCDE2 35A7DA C5465E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Salamence",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 53, 61, 70},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 53, 61, 70},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 53, 61, 70},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 53, 61, 70, 80},
            {5, 10, 16, 20, 25, 30, 32, 37, 43, 50, 53, 61, 70, 80}
        },
        weight = 102.6,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 2085B2 35A7DA 7BCDE2 35A7DA C5465E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Beldum",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "20",
        bst = "300",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 95.2,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 426F86 5792AB 8FB6C7 5792AB 898986 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Metang",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "45",
        bst = "420",
        movelvls = {
            {20, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56},
            {20, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56},
            {20, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56},
            {20, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56},
            {20, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47, 50}
        },
        weight = 202.5,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 426F86 5792AB 8FB6C7 5792AB 898986 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Metagross",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {20, 20, 24, 28, 32, 36, 40, 44, 45, 53, 62, 71},
            {20, 20, 24, 28, 32, 36, 40, 44, 45, 53, 62, 71},
            {20, 20, 24, 28, 32, 36, 40, 44, 45, 53, 62, 71},
            {20, 20, 24, 28, 32, 36, 40, 44, 45, 53, 62, 71},
            {20, 20, 23, 26, 29, 32, 35, 38, 41, 44, 45, 53, 62}
        },
        weight = 550.0,
        theme = "FFFFFF FFFFFF BEDBFF FFBAB0 FFED7D FFFFFF 426F86 5792AB 8FB6C7 5792AB 898986 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Regirock",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89}
        },
        weight = 230.0,
        theme = "000000 000000 0048A3 B40002 B40002 FFFFFF A89586 DAD2CB A89586 DAD2CB B47559 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Regice",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89}
        },
        weight = 175.0,
        theme = "FFFFFF FFFFFF CFE4FF FECCCC FFEC86 FFFFFF 3B7FBC 5FA7D9 9AC6E5 5FA7D9 3B7FBC FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Registeel",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {9, 17, 25, 33, 41, 41, 49, 57, 65, 73, 73, 81, 89},
            {9, 17, 25, 33, 41, 41, 49, 57, 65, 73, 73, 81, 89},
            {9, 17, 25, 33, 41, 41, 49, 57, 65, 73, 73, 81, 89},
            {9, 17, 25, 33, 41, 41, 49, 57, 65, 73, 73, 81, 89},
            {9, 17, 25, 33, 41, 41, 49, 57, 65, 73, 73, 81, 89}
        },
        weight = 205.0,
        theme = "FFFFFF 000000 CFE4FF FECCCC FFEC86 FFFFFF 4F4F4F 707070 899B9B D0D8D8 A04755 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Latias",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85}
        },
        weight = 40.0,
        theme = "000000 FFFFFF 0054C1 B40002 B40002 FFFFFF A5A7D6 EEEEFE E4838D D74654 883837 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Latios",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85}
        },
        weight = 60.0,
        theme = "000000 FFFFFF 0054C1 B40002 B40002 FFFFFF A5A7D6 EEEEFE 7AACE3 3682D5 254B83 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Kyogre",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "670",
        movelvls = {
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90}
        },
        weight = 352.0,
        theme = "FFFFFF 000000 BBD6FF FFBBBB FFEB64 FFFFFF 184987 2369C1 909CBD DAE7F0 184987 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Groudon",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "670",
        movelvls = {
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90}
        },
        weight = 950.0,
        theme = "FFFFFF FFFFFF BBD6FF FFBBBB FFEB64 FFFFFF B22029 DC3C46 BE948B 966054 313131 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Rayquaza",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90},
            {5, 15, 20, 30, 35, 45, 50, 60, 65, 75, 80, 90}
        },
        weight = 206.5,
        theme = "FFFFFF FFFFFF BBD6FF FFBBBB FFEB64 FFFFFF 17583E 258961 31B882 258961 AC3F5D FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Jirachi",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70}
        },
        weight = 1.1,
        theme = "000000 000000 003F9F B40002 B40002 FFFFFF D3B24A FFED96 B7B7B7 FDFDFD 32819D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Deoxys",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97}
        },
        weight = 60.8,
        theme = "FFFFFF FFFFFF CFE2FF FFDF9F FEE08E FFFFFF B8632E E77E43 95D0DD 4DB1C6 5D4369 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    --gen 4(#387-493)
    {
        name = "Turtwig",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "318",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 10.2,
        theme = "FFFFFF FFFFFF CFE2FF FFB3AA FEE08E FFFFFF 376F4B 499363 C8AC8F A87E53 747472 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Grotle",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "405",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52},
            {5, 9, 13, 17, 22, 27, 32, 37, 42, 47, 52}
        },
        weight = 97.0,
        theme = "FFFFFF FFFFFF CFE2FF FFB3AA FEE08E FFFFFF 376F4B 499363 C8AC8F A87E53 747472 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Torterra",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {5, 9, 13, 17, 22, 27, 32, 33, 39, 45, 51, 57},
            {5, 9, 13, 17, 22, 27, 32, 33, 39, 45, 51, 57},
            {5, 9, 13, 17, 22, 27, 32, 33, 39, 45, 51, 57},
            {5, 9, 13, 17, 22, 27, 32, 33, 39, 45, 51, 57},
            {5, 9, 13, 17, 22, 27, 32, 33, 39, 45, 51, 57}
        },
        weight = 310.0,
        theme = "FFFFFF FFFFFF CFE2FF FFB3AA FEE08E FFFFFF 376F4B 499363 C8AC8F A87E53 747472 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chimchar",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "14",
        bst = "309",
        movelvls = {
            {7, 9, 15, 17, 23, 25, 31, 33, 39, 41},
            {7, 9, 15, 17, 23, 25, 31, 33, 39, 41},
            {7, 9, 15, 17, 23, 25, 31, 33, 39, 41},
            {7, 9, 15, 17, 23, 25, 31, 33, 39, 41, 47},
            {7, 9, 15, 17, 23, 25, 31, 33, 39, 41, 47}
        },
        weight = 6.2,
        theme = "FFFFFF FFFFFF CFE2FF FFE4A9 FEE08E FFFFFF B82124 DB4145 F3AB89 EC743B 2D4A90 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Monferno",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = "36",
        bst = "405",
        movelvls = {
            {7, 9, 14, 16, 19, 26, 29, 36, 39, 46, 49},
            {7, 9, 14, 16, 19, 26, 29, 36, 39, 46, 49},
            {7, 9, 14, 16, 19, 26, 29, 36, 39, 46, 49},
            {7, 9, 14, 16, 19, 26, 29, 36, 39, 46, 49, 56},
            {7, 9, 14, 16, 19, 26, 29, 36, 39, 46, 49, 56}
        },
        weight = 22.0,
        theme = "FFFFFF FFFFFF CFE2FF FFE4A9 FEE08E FFFFFF B82124 DB4145 F3AB89 EC743B 2D4A90 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Infernape",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "534",
        movelvls = {
            {7, 9, 14, 17, 21, 29, 33, 41, 45, 53, 57},
            {7, 9, 14, 17, 21, 29, 33, 41, 45, 53, 57},
            {7, 9, 14, 17, 21, 29, 33, 41, 45, 53, 57},
            {7, 9, 14, 16, 19, 26, 29, 36, 42, 52, 58, 68},
            {7, 9, 14, 16, 19, 26, 29, 36, 42, 52, 58, 68}
        },
        weight = 55.0,
        theme = "FFFFFF FFFFFF CFE2FF FFE4A9 FEE08E FFFFFF B82124 DB4145 F3AB89 EC743B 2D4A90 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Piplup",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "314",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43}
        },
        weight = 5.2,
        theme = "FFFFFF FFFFFF CFE2FF FBE481 FBE481 FFFFFF 063170 08459A 5F8CD9 336DCF 031F46 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Prinplup",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "405",
        movelvls = {
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 37, 42, 46, 51},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 37, 42, 46, 51},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 37, 42, 46, 51},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 37, 42, 46, 51},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 37, 42, 46, 51}
        },
        weight = 23.0,
        theme = "FFFFFF FFFFFF CFE2FF FBE481 FBE481 FFFFFF 063170 08459A 5F8CD9 336DCF 031F46 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Empoleon",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 36, 39, 46, 52, 59},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 36, 39, 46, 52, 59},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 36, 39, 46, 52, 59},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 36, 39, 46, 52, 59},
            {4, 8, 11, 15, 16, 19, 24, 28, 33, 36, 39, 46, 52, 59}
        },
        weight = 84.5,
        theme = "FFFFFF FFFFFF CFE2FF FBE481 FBE481 FFFFFF 063170 08459A 5F8CD9 336DCF 031F46 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Starly",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "14",
        bst = "245",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41}
        },
        weight = 2.0,
        theme = "FFFFFF 000000 BBD6FF FFBBBB FFEB64 FFFFFF 785D63 9F848A C6C6C6 FFFFFF 4C4649 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Staravia",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "34",
        bst = "340",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 33, 38, 43},
            {5, 9, 13, 18, 23, 28, 33, 38, 43},
            {5, 9, 13, 18, 23, 28, 33, 38, 43},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48}
        },
        weight = 15.5,
        theme = "FFFFFF 000000 BBD6FF FFBBBB FFEB64 FFFFFF 785D63 9F848A C6C6C6 FFFFFF 4C4649 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Staraptor",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 33, 34, 41, 49},
            {5, 9, 13, 18, 23, 28, 33, 34, 41, 49},
            {5, 9, 13, 18, 23, 28, 33, 34, 41, 49},
            {5, 9, 13, 18, 23, 28, 33, 34, 41, 49, 57},
            {5, 9, 13, 18, 23, 28, 33, 34, 41, 49, 57}
        },
        weight = 24.9,
        theme = "FFFFFF 000000 BBD6FF FFBBBB FFEB64 FFFFFF 785D63 9F848A C6C6C6 FFFFFF 4C4649 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bidoof",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "15",
        bst = "250",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 20.0,
        theme = "000000 FFFFFF 003484 B40002 B40002 FFFFFF C7A767 EBDCAE DCB588 CA8B45 4E4239 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Bibarel",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.WATER},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "410",
        movelvls = {
            {5, 9, 13, 15, 18, 23, 28, 33, 38, 43, 48},
            {5, 9, 13, 15, 18, 23, 28, 33, 38, 43, 48, 53},
            {5, 9, 13, 15, 18, 23, 28, 33, 38, 43, 48, 53},
            {5, 9, 13, 15, 18, 23, 28, 33, 38, 43, 48, 53},
            {5, 9, 13, 15, 18, 23, 28, 33, 38, 43, 48, 53}
        },
        weight = 31.5,
        theme = "000000 FFFFFF 003484 B40002 B40002 FFFFFF C7A767 EBDCAE DCB588 CA8B45 4E4239 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Kricketot",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "10",
        bst = "194",
        movelvls = {
            {},
            {16},
            {16},
            {6, 16},
            {6, 16}
        },
        weight = 2.2,
        theme = "FFFFFF FFFFFF CCE0FE FDCBB9 FCFF76 FFFFFF B23C2D E44B3F 9C9C9C 757575 343434 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Kricketune",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "384",
        movelvls = {
            {10, 14, 18, 22, 26, 30, 34, 38},
            {10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50},
            {10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50},
            {10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50},
            {10, 14, 18, 22, 26, 30, 34, 38, 42, 46, 50}
        },
        weight = 25.5,
        theme = "FFFFFF FFFFFF CCE0FE FDCBB9 FCFF76 FFFFFF B23C2D E44B3F 9C9C9C 757575 343434 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shinx",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "15",
        bst = "263",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 9.5,
        theme = "FFFFFF FFFFFF CCE0FE FDCBB9 FCFF76 FFFFFF 323344 45465D A0C5E6 5195D3 323344 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Luxio",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "363",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48, 53},
            {5, 9, 13, 18, 23, 28, 33, 38, 43, 48, 53}
        },
        weight = 30.5,
        theme = "FFFFFF FFFFFF CCE0FE FDCBB9 FCFF76 FFFFFF 323344 45465D A0C5E6 5195D3 323344 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Luxray",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "523",
        movelvls = {
            {5, 9, 13, 18, 23, 28, 35, 42, 49, 56},
            {5, 9, 13, 18, 23, 28, 35, 42, 49, 56},
            {5, 9, 13, 18, 23, 28, 35, 42, 49, 56},
            {5, 9, 13, 18, 23, 28, 35, 42, 49, 56, 63},
            {5, 9, 13, 18, 23, 28, 35, 42, 49, 56, 63}
        },
        weight = 42.0,
        theme = "FFFFFF FFFFFF CCE0FE FDCBB9 FCFF76 FFFFFF 323344 45465D A0C5E6 5195D3 323344 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Budew",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "280",
        movelvls = {
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16},
            {4, 7, 10, 13, 16}
        },
        weight = 1.2,
        theme = "FFFFFF FFFFFF BBD6FF FFCFB7 FFF68A FFFFFF DB3851 F05A6D 8EBCFB 5298FA 488765 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Roserade",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 14.5,
        theme = "FFFFFF FFFFFF BBD6FF FFCFB7 FFF68A FFFFFF DB3851 F05A6D 8EBCFB 5298FA 488765 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cranidos",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "350",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46}
        },
        weight = 31.5,
        theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 1D5B93 2D85D4 A4A4A5 828284 34312E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Rampardos",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 51, 58},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 51, 58}
        },
        weight = 102.5,
        theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 1D5B93 2D85D4 A4A4A5 828284 34312E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shieldon",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.STEEL},
        evolution = "30",
        bst = "350",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 43},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46}
        },
        weight = 57.0,
        theme = "FFFFFF 000000 CCE0FE FFB9B7 FCFF76 FFFFFF 515354 7D7F81 DCB744 F9E4A0 393633 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bastiodon",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 52},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 51, 58},
            {6, 10, 15, 19, 24, 28, 30, 36, 43, 51, 58}
        },
        weight = 149.5,
        theme = "FFFFFF 000000 CCE0FE FFB9B7 FCFF76 FFFFFF 515354 7D7F81 DCB744 F9E4A0 393633 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Burmy P",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.BURMY,
        bst = "224",
        movelvls = {
            {10, 20},
            {10, 15, 20},
            {10, 15, 20},
            {10, 15, 20},
            {10, 15, 20}
        },
        weight = 3.4,
        theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 454545 5B5D5D 9BC79A 51945A 454545 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Wormadam P",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "424",
        movelvls = {
            {10, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47}
        },
        weight = 6.5,
        theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 296F54 338B69 9BC79A 51945A 454545 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mothim",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "424",
        movelvls = {
            {10, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47, 50},
            {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47, 50}
        },
        weight = 23.3,
        theme = "000000 FFFFFF 03409C B40002 B40002 FFFFFF CEA758 F9D47F F5B28D EF7F42 464546 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Combee",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.COMBEE,
        bst = "244",
        movelvls = {
            {},
            {13},
            {13},
            {13},
            {13, 29}
        },
        weight = 5.5,
        theme = "FFFFFF 000000 C6DCFD FDB9B9 FEDF73 FFFFFF 2B2B30 42424A CE8D00 FFD864 90491B 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Vespiquen",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "474",
        movelvls = {
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 38.5,
        theme = "FFFFFF 000000 C6DCFD FDB9B9 FEDF73 FFFFFF 2B2B30 42424A CE8D00 FFD864 90491B 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Pachirisu",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "405",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49}
        },
        weight = 3.9,
        theme = "FFFFFF 000000 BCFFBB FDD4D4 FFED92 FFFFFF 127EAB 2AB0E8 8DC2D6 EEF8FA 127EAB 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Buizel",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "26",
        bst = "330",
        movelvls = {
            {3, 6, 10, 15, 21, 28, 36, 45},
            {3, 6, 10, 15, 21, 28, 36, 45},
            {3, 6, 10, 15, 21, 28, 36, 45},
            {3, 6, 10, 15, 21, 28, 36, 45, 55},
            {4, 7, 11, 15, 18, 21, 24, 27, 31, 35, 38, 41, 45}
        },
        weight = 29.5,
        theme = "FFFFFF 000000 BBDEFF FDD4D4 FFF67D FFFFFF C7631F E18241 D4AD1F F6DF53 3175AA 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Floatzel",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {3, 6, 10, 15, 21, 26, 29, 39, 50},
            {3, 6, 10, 15, 21, 26, 29, 39, 50},
            {3, 6, 10, 15, 21, 26, 29, 39, 50},
            {3, 6, 10, 15, 21, 26, 29, 39, 50, 62},
            {4, 7, 11, 15, 18, 21, 24, 29, 35, 41, 46, 51, 57}
        },
        weight = 33.5,
        theme = "FFFFFF 000000 BBDEFF FDD4D4 FFF67D FFFFFF C7631F E18241 D4AD1F F6DF53 3175AA 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cherubi",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "275",
        movelvls = {
            {7, 10, 13, 19, 22, 28, 31, 37, 40},
            {7, 10, 13, 19, 22, 28, 31, 37, 40},
            {7, 10, 13, 19, 22, 28, 31, 37, 40},
            {7, 10, 13, 19, 22, 28, 31, 37, 40},
            {7, 10, 13, 19, 22, 28, 31, 37, 40}
        },
        weight = 3.3,
        theme = "FFFFFF FFFFFF BBDEFF FFC8C8 FFF67D FFFFFF 308A49 3FB35F AFA0BA 8F7B9F C26573 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Cherrim O",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "450",
        movelvls = {
            {7, 10, 13, 19, 22, 25, 30, 35, 43, 48},
            {7, 10, 13, 19, 22, 25, 30, 35, 43, 48},
            {7, 10, 13, 19, 22, 25, 30, 35, 43, 48},
            {7, 10, 13, 19, 22, 25, 30, 35, 43, 48},
            {7, 10, 13, 19, 22, 25, 30, 35, 43, 48}
        },
        weight = 9.3,
        theme = "FFFFFF FFFFFF BBDEFF FFC8C8 FFF67D FFFFFF 308A49 3FB35F AFA0BA 8F7B9F C26573 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Shellos W",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "325",
        movelvls = {
            {2, 4, 7, 11, 16, 22, 29, 37, 46},
            {2, 4, 7, 11, 16, 22, 29, 37, 46},
            {2, 4, 7, 11, 16, 22, 29, 37, 46},
            {2, 4, 7, 11, 16, 22, 29, 37, 46},
            {2, 4, 7, 11, 16, 22, 29, 37, 46}
        },
        weight = 6.3,
        theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 85542E A66939 F1ADC6 EB83AA 85542E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gastrodon W",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {2, 4, 7, 11, 16, 22, 29, 41, 54},
            {2, 4, 7, 11, 16, 22, 29, 41, 54},
            {2, 4, 7, 11, 16, 22, 29, 41, 54},
            {2, 4, 7, 11, 16, 22, 29, 41, 54},
            {2, 4, 7, 11, 16, 22, 29, 41, 54}
        },
        weight = 29.9,
        theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 85542E A66939 F1ADC6 EB83AA 85542E FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Ambipom",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "482",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43}
        },
        weight = 20.3,
        theme = "FFFFFF 000000 6FD5FF FFA995 FFF151 FFFFFF 8362A3 9376AF F4EAC9 EBD89A D1666F 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Drifloon",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "28",
        bst = "348",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 27, 30, 33, 38, 43},
            {6, 11, 14, 17, 22, 27, 27, 30, 33, 38, 43},
            {6, 11, 14, 17, 22, 27, 27, 30, 33, 38, 43},
            {6, 11, 14, 17, 22, 27, 30, 30, 33, 38, 43, 46},
            {4, 8, 13, 16, 20, 25, 27, 32, 32, 36, 40, 44, 50}
        },
        weight = 1.2,
        theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 695876 887497 D0C9D5 AC9CB4 BE4A4F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Drifblim",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "498",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 27, 32, 37, 44, 51},
            {6, 11, 14, 17, 22, 27, 27, 32, 37, 44, 51},
            {6, 11, 14, 17, 22, 27, 27, 32, 37, 44, 51},
            {6, 11, 14, 17, 22, 27, 32, 32, 37, 44, 51, 56},
            {4, 8, 13, 16, 20, 25, 27, 34, 34, 40, 46, 52, 60}
        },
        weight = 15.0,
        theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 695876 887497 D0C9D5 AC9CB4 BE4A4F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Buneary",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 0,
        bst = "350",
        movelvls = {
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53, 56, 63},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53, 56, 63}
        },
        weight = 5.5,
        theme = "FFFFFF 000000 BEDFFF FFC5C5 FFF670 FFFFFF 7D4F36 A76A49 DCBA69 FFE7AF 7D4F36 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lopunny",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53, 56, 63},
            {6, 13, 16, 23, 26, 33, 36, 43, 46, 53, 56, 63}
        },
        weight = 33.3,
        theme = "FFFFFF 000000 BEDFFF FFC5C5 FFF670 FFFFFF 7D4F36 A76A49 DCBA69 FFE7AF 7D4F36 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mismagius",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 4.4,
        theme = "FFFFFF FFFFFF B4DFFF FFCCB0 FFED57 FFFFFF 675386 8069A2 675386 8069A2 C07EAA FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Honchkrow",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {25, 35, 45, 55},
            {25, 35, 45, 55},
            {25, 35, 45, 55},
            {25, 35, 45, 55, 65, 75},
            {25, 35, 45, 55, 65, 75}
        },
        weight = 27.3,
        theme = "FFFFFF FFFFFF 00BDFF FF8264 FFFF65 FFFFFF 293B50 395270 72716A 4D4C47 862E3A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Glameow",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "38",
        bst = "310",
        movelvls = {
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 41, 45},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 41, 45},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 41, 45},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 41, 44, 48},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 41, 44, 48}
        },
        weight = 3.9,
        theme = "FFFFFF 000000 BEDFFF FFC5C5 FFF670 FFFFFF 545D5F 7C8789 C6C6C6 F4F4F4 8F689A 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Purugly",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "452",
        movelvls = {
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 38, 45, 53},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 38, 45, 53},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 38, 45, 53},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 38, 45, 52, 60},
            {5, 8, 13, 17, 20, 25, 29, 32, 37, 38, 45, 52, 60}
        },
        weight = 43.8,
        theme = "FFFFFF 000000 BEDFFF FFC5C5 FFF670 FFFFFF 545D5F 7C8789 C6C6C6 F4F4F4 8F689A 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chingling",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "285",
        movelvls = {
            {6, 9, 14, 17, 22},
            {6, 9, 14, 17, 22},
            {6, 9, 14, 17, 22},
            {6, 9, 14, 17, 22, 25},
            {6, 9, 14, 17, 22, 25}
        },
        weight = .6,
        theme = "000000 000000 004F9F B40002 B40002 FFFFFF CCB458 F9DC7F 78C3EE CDE8F9 BC5259 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Stunky",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.DARK},
        evolution = "34",
        bst = "329",
        movelvls = {
            {4, 7, 11, 15, 20, 25, 31, 37, 44},
            {4, 7, 10, 14, 18, 22, 27, 32, 38, 44},
            {4, 7, 10, 14, 18, 22, 27, 32, 38, 44},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49},
            {4, 7, 10, 14, 18, 22, 27, 32, 37, 43, 49}
        },
        weight = 19.2,
        theme = "FFFFFF 000000 BBDCFF FFCFCF FFFE64 FFFFFF 59435F 83648C E1BA80 FEE9C7 59435F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Skuntank",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "479",
        movelvls = {
            {4, 7, 11, 15, 20, 25, 31, 34, 41, 52},
            {4, 7, 10, 14, 18, 22, 27, 32, 34, 42, 52},
            {4, 7, 10, 14, 18, 22, 27, 32, 34, 42, 52},
            {4, 7, 10, 14, 18, 22, 27, 32, 34, 41, 51, 61},
            {4, 7, 10, 14, 18, 22, 27, 32, 34, 41, 51, 61}
        },
        weight = 38.0,
        theme = "FFFFFF 000000 BBDCFF FFCFCF FFFE64 FFFFFF 59435F 83648C E1BA80 FEE9C7 59435F 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Bronzor",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = "33",
        bst = "300",
        movelvls = {
            {7, 12, 14, 19, 26, 30, 35, 37, 41, 49, 52},
            {7, 12, 14, 19, 26, 30, 35, 37, 41, 49, 52},
            {7, 12, 14, 19, 26, 30, 35, 37, 41, 49, 52},
            {7, 12, 14, 19, 26, 30, 35, 37, 41, 49, 52, 54},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 35, 39, 41, 45, 49}
        },
        weight = 60.5,
        theme = "FFFFFF FFFFFF BBDCFF FFCFCF FFFE64 FFFFFF 307D77 4AACA3 88B4B7 5B9499 A94A4F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bronzong",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {7, 12, 14, 19, 26, 30, 33, 38, 43, 50, 61, 67},
            {7, 12, 14, 19, 26, 30, 33, 38, 43, 50, 61, 67},
            {7, 12, 14, 19, 26, 30, 33, 38, 43, 50, 61, 67},
            {7, 12, 14, 19, 26, 30, 33, 38, 43, 50, 61, 67, 72},
            {5, 9, 11, 15, 19, 21, 25, 29, 31, 33, 36, 42, 46, 52, 58}
        },
        weight = 187.0,
        theme = "FFFFFF FFFFFF BBDCFF FFCFCF FFFE64 FFFFFF 307D77 4AACA3 88B4B7 5B9499 A94A4F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Bonsly",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "17",
        bst = "290",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40}
        },
        weight = 15.0,
        theme = "FFFFFF FFFFFF 9CFF7A FE969D FEED69 FFFFFF 84644A A47C5D BA9C85 A47C5D 4F6047 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mime Jr.",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "18",
        bst = "310",
        movelvls = {
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 13.0,
        theme = "F4F4F4 FFFFFF 6CCAFF F37498 FEC1AE FFFFFF 2567AA 2D7CCA 84B3E4 2D7CCA D85366 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Happiny",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.OVAL,
        bst = "220",
        movelvls = {
            {5, 9, 12},
            {5, 9, 12},
            {5, 9, 12},
            {5, 9, 12},
            {5, 9, 12}
        },
        weight = 24.4,
        theme = "FFFFFF 000000 8EF7FE FFD1A7 FFED7D FFFFFF CB6D96 E48BAD D1D1D1 E8E8E8 A27086 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Chatot",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "411",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 1.9,
        theme = "FFFFFF FFFFFF B0DBFF FFC2BE FFED7D FFFFFF 2D2D2E 484849 76BB9B 3A9866 3078B3 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Spiritomb",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49},
            {7, 13, 19, 25, 31, 37, 43, 49}
        },
        weight = 108.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 994C8C BC6AAC B7A59F 9C827A 427F35 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gible",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "24",
        bst = "300",
        movelvls = {
            {3, 7, 13, 15, 19, 25, 27, 31, 37},
            {3, 7, 13, 15, 19, 25, 27, 31, 37},
            {3, 7, 13, 15, 19, 25, 27, 31, 37},
            {3, 7, 13, 15, 19, 25, 27, 31, 37},
            {3, 7, 13, 15, 19, 25, 27, 31, 37}
        },
        weight = 20.5,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 384374 4C5B9D 8591C4 4C5B9D A7424A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gabite",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "48",
        bst = "410",
        movelvls = {
            {3, 7, 13, 15, 19, 28, 33, 40, 49},
            {3, 7, 13, 15, 19, 28, 33, 40, 49},
            {3, 7, 13, 15, 19, 28, 33, 40, 49},
            {3, 7, 13, 15, 19, 24, 28, 33, 40, 49},
            {3, 7, 13, 15, 19, 24, 28, 33, 40, 49}
        },
        weight = 56.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 384374 4C5B9D 8591C4 4C5B9D A7424A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Garchomp",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {3, 7, 13, 15, 19, 28, 33, 40, 48, 55},
            {3, 7, 13, 15, 19, 28, 33, 40, 48, 55},
            {3, 7, 13, 15, 19, 28, 33, 40, 48, 55},
            {3, 7, 13, 15, 19, 24, 28, 33, 40, 48, 55},
            {3, 7, 13, 15, 19, 24, 28, 33, 40, 48, 55}
        },
        weight = 95.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 384374 4C5B9D 8591C4 4C5B9D A7424A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Munchlax",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "390",
        movelvls = {
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57},
            {4, 9, 12, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52, 57}
        },
        weight = 105.0,
        theme = "000000 000000 DF2322 0082B4 0082B4 F2EFEC DCC092 F3E9D9 DCC092 F3E9D9 085B85 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Riolu",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "285",
        movelvls = {
            {6, 11, 15, 19, 24, 29},
            {6, 11, 15, 19, 24, 29},
            {6, 11, 15, 19, 24, 29},
            {6, 11, 15, 19, 24, 29, 47, 55},
            {6, 11, 15, 19, 24, 29, 47, 55}
        },
        weight = 20.2,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 05629D 0989D9 939393 6C6C6C 05629D FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lucario",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {6, 11, 15, 19, 24, 29, 33, 37, 42, 47, 51},
            {6, 11, 15, 19, 24, 29, 33, 37, 42, 47, 51},
            {6, 11, 15, 19, 24, 29, 33, 37, 42, 47, 51},
            {6, 11, 15, 19, 24, 29, 33, 37, 42, 47, 51, 55, 60, 65},
            {6, 11, 15, 19, 24, 29, 33, 37, 42, 47, 51, 55, 60, 65}
        },
        weight = 54.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 05629D 0989D9 939393 6C6C6C 05629D FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Hippopotas",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "34",
        bst = "330",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 44, 50},
            {7, 13, 19, 25, 31, 37, 44, 50},
            {7, 13, 19, 19, 25, 31, 37, 44, 50},
            {7, 13, 19, 19, 25, 31, 37, 44, 50},
            {7, 13, 19, 19, 25, 31, 37, 44, 50}
        },
        weight = 49.5,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 474747 636364 D3BD62 AC9934 9D5C72 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Hippowdon",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {7, 13, 19, 25, 31, 40, 50, 60},
            {7, 13, 19, 25, 31, 40, 50, 60},
            {7, 13, 19, 19, 25, 31, 40, 50, 60},
            {7, 13, 19, 19, 25, 31, 40, 50, 60},
            {7, 13, 19, 19, 25, 31, 40, 50, 60}
        },
        weight = 300.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 474747 636364 D3BD62 AC9934 9D5C72 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Skorupi",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.BUG},
        evolution = "40",
        bst = "330",
        movelvls = {
            {6, 12, 17, 23, 28, 34, 39, 45, 50},
            {6, 12, 17, 23, 28, 34, 39, 45, 50},
            {6, 12, 17, 23, 28, 34, 39, 45, 50},
            {6, 12, 17, 23, 28, 34, 39, 45, 50, 56, 61},
            {5, 9, 13, 16, 20, 23, 27, 30, 34, 38, 41, 45, 49}
        },
        weight = 12.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 6B3E65 8C5284 B89FC1 9E7DAB 0F719A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Drapion",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "500",
        movelvls = {
            {6, 12, 17, 23, 28, 34, 39, 49, 58},
            {6, 12, 17, 23, 28, 34, 39, 49, 58},
            {6, 12, 17, 23, 28, 34, 39, 49, 58},
            {6, 12, 17, 23, 28, 34, 39, 48, 56, 65, 73},
            {5, 9, 13, 16, 20, 23, 27, 30, 34, 38, 43, 49, 57}
        },
        weight = 61.5,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 6B3E65 8C5284 B89FC1 9E7DAB 0F719A FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Croagunk",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = "37",
        bst = "300",
        movelvls = {
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 38, 43, 45},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 38, 43, 45},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 38, 43, 45},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 38, 43, 45, 50},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 38, 43, 45, 50}
        },
        weight = 23.0,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 2A5383 3D78BD EB9192 E05456 3B3935 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Toxicroak",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 41, 49, 54},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 41, 49, 54},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 41, 49, 54},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 41, 49, 54, 62},
            {3, 8, 10, 15, 17, 22, 24, 29, 31, 36, 41, 49, 54, 62}
        },
        weight = 44.4,
        theme = "FFFFFF FFFFFF B0DBFF FECFCB FFED7D FFFFFF 2A5383 3D78BD EB9192 E05456 3B3935 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Carnivine",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "454",
        movelvls = {
            {7, 11, 17, 21, 27, 31, 31, 31, 37, 41, 47},
            {7, 11, 17, 21, 27, 31, 31, 31, 37, 41, 47},
            {7, 11, 17, 21, 27, 31, 31, 31, 37, 41, 47},
            {7, 11, 17, 21, 27, 31, 37, 37, 37, 41, 47, 51},
            {7, 11, 17, 21, 27, 31, 37, 37, 37, 41, 47, 51}
        },
        weight = 27.0,
        theme = "FFFFFF FFFFFF BEE1FF FEC6C7 FBFF8B FFFFFF 688245 83A859 9FC697 64A058 B7463F FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Finneon",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "31",
        bst = "330",
        movelvls = {
            {6, 10, 13, 17, 22, 26, 29, 33, 38, 42, 45, 49},
            {6, 10, 13, 17, 22, 26, 29, 33, 38, 42, 45, 49},
            {6, 10, 13, 17, 22, 26, 29, 33, 38, 42, 45, 49},
            {6, 10, 13, 17, 22, 26, 29, 33, 38, 42, 45, 49, 54},
            {6, 10, 13, 17, 22, 26, 29, 33, 38, 42, 45, 49, 54}
        },
        weight = 7.0,
        theme = "FFFFFF FFFFFF BEE1FF FEC6C7 FBFF8B FFFFFF 263649 3A526F 7FCFE9 23A9D4 CB4E87 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Lumineon",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {6, 10, 13, 17, 22, 26, 29, 35, 42, 48, 53, 59},
            {6, 10, 13, 17, 22, 26, 29, 35, 42, 48, 53, 59},
            {6, 10, 13, 17, 22, 26, 29, 35, 42, 48, 53, 59},
            {6, 10, 13, 17, 22, 26, 29, 35, 42, 48, 53, 59, 66},
            {6, 10, 13, 17, 22, 26, 29, 35, 42, 48, 53, 59, 66}
        },
        weight = 24.0,
        theme = "FFFFFF FFFFFF BEE1FF FEC6C7 FBFF8B FFFFFF 263649 3A526F 7FCFE9 23A9D4 CB4E87 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mantyke",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.MANTYKE,
        bst = "345",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 46, 49},
            {3, 7, 11, 14, 16, 19, 23, 27, 32, 36, 39, 46, 49}
        },
        weight = 65.0,
        theme = "000000 000000 004BCC C50900 C50900 FFFFFF D0ACC8 E8D6E4 D0ACC8 E8D6E4 405067 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Snover",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.ICE},
        evolution = "40",
        bst = "334",
        movelvls = {
            {5, 9, 13, 17, 21, 26, 31, 36, 41, 46},
            {5, 9, 13, 17, 21, 26, 31, 36, 41, 46},
            {5, 9, 13, 17, 21, 26, 31, 36, 41, 46},
            {5, 9, 13, 17, 21, 26, 31, 36, 41, 46},
            {5, 9, 13, 17, 21, 26, 31, 36, 41, 46}
        },
        weight = 50.5,
        theme = "000000 FFFFFF 004C8E B40002 B40002 FFFFFF C5C5C5 FFFFFF 72C3B6 45A293 326351 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Abomasnow",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "494",
        movelvls = {
            {5, 9, 13, 17, 21, 26, 31, 36, 47, 58},
            {5, 9, 13, 17, 21, 26, 31, 36, 47, 58},
            {5, 9, 13, 17, 21, 26, 31, 36, 47, 58},
            {5, 9, 13, 17, 21, 26, 31, 36, 47, 58},
            {5, 9, 13, 17, 21, 26, 31, 36, 47, 58}
        },
        weight = 135.5,
        theme = "000000 FFFFFF 004C8E B40002 B40002 FFFFFF C5C5C5 FFFFFF 72C3B6 45A293 326351 FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Weavile",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49},
            {8, 10, 14, 21, 24, 28, 35, 38, 42, 49, 51},
            {8, 10, 14, 16, 20, 22, 25, 28, 32, 35, 40, 44, 47}
        },
        weight = 34.0,
        theme = "FFFFFF FFFFFF A2FFBE FEBA9C FEF94E FFFFFF 56627F 707D9E A9B1C5 707D9E A73742 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Magnezone",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60},
            {6, 11, 14, 17, 22, 27, 30, 34, 40, 46, 50, 54, 60, 66},
            {4, 7, 11, 15, 18, 21, 25, 29, 34, 39, 45, 51, 56, 62, 67, 73}
        },
        weight = 180.0,
        theme = "000000 000000 009AD9 D7554A 009AD9 FFFFFF 8AA8E5 B8D4F7 8AA8E5 B8D4F7 586170 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Lickilicky",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "515",
        movelvls = {
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 140.0,
        theme = "FFFFFF FFFFFF 8EC7FE FEB069 FFED7D FFFFFF B65677 D36585 B65677 D36585 D59087 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Rhyperior",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57, 61},
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57, 61},
            {9, 13, 21, 25, 33, 37, 42, 45, 49, 57, 61},
            {9, 19, 19, 23, 30, 41, 42, 47, 56, 62, 71, 77, 86},
            {9, 19, 19, 23, 30, 41, 42, 47, 56, 62, 71, 77, 86}
        },
        weight = 282.8,
        theme = "FFFFFF FFFFFF 8EC7FE FF6773 FFED7D F67453 A89699 917A7E A89699 917A7E 525059 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Tangrowth",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54, 57},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47, 50, 54, 57},
            {4, 7, 10, 14, 17, 20, 23, 27, 30, 33, 36, 40, 43, 46, 49, 53, 56}
        },
        weight = 128.6,
        theme = "FFFFFF FFFFFF 8EF7FE FE9C9F FFED7D FFFFFF 4772B1 5D85BE A2B9DA 5D85BE C65776 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Electivire",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {6, 11, 16, 21, 26, 32, 38, 44, 50, 56, 62, 68},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55, 62}
        },
        weight = 138.6,
        theme = "000000 000000 0063CC CC0100 BB0C00 FFFFFF C4B50D FFE523 C4B50D FFE523 3E3E3E 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Magmortar",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {7, 10, 16, 19, 25, 28, 37, 43, 52, 58, 67},
            {6, 11, 16, 21, 26, 32, 38, 44, 50, 56, 62, 68},
            {5, 8, 12, 15, 19, 22, 26, 29, 36, 42, 49, 55, 62}
        },
        weight = 68.0,
        theme = "FFFFFF FFFFFF 8AC9FF FECBAD FBDE77 FFFFFF BC4619 E3602E F4C8C1 EA9183 474747 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Togekiss",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "545",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 38.0,
        theme = "000000 000000 0030CC C50031 C50031 FFFFFF B9B9B9 F8F8F8 B9B9B9 F8F8F8 4583C7 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Yanmega",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "515",
        movelvls = {
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57},
            {6, 11, 14, 17, 22, 27, 30, 33, 38, 43, 46, 49, 54, 57}
        },
        weight = 51.5,
        theme = "FFFFFF FFFFFF 92CEFF FEA28E FFEA61 FFFFFF 4D5C3F 5F7847 E8908D DD5955 3D3B3B FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Leafeon",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 25.5,
        theme = "000000 FFFFFF 004C8E B40002 B40002 FFFFFF D3B064 F2DCAF CF9A7D B76C43 207B5D FFFFFF FFFFFF 000000 0 1 1 1 0 1"
    },
    {
        name = "Glaceon",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45}
        },
        weight = 25.9,
        theme = "FFFFFF 000000 BFE1FE FECCCC FFFD8B FFFFFF 297591 3AA2C7 96C1E2 CBEEFF 17476B 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gliscor",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 49},
            {4, 7, 10, 13, 16, 19, 22, 27, 30, 35, 40, 45, 50, 55}
        },
        weight = 42.5,
        theme = "FFFFFF FFFFFF C1E4FF FEB4A3 FFE883 FFFFFF 6871A0 848BB2 B3B8CF 848BB2 B94759 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Mamoswine",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "530",
        movelvls = {
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {4, 8, 13, 16, 20, 25, 28, 32, 33, 40, 48, 56, 65},
            {5, 8, 11, 14, 18, 21, 24, 28, 33, 37, 41, 46, 52, 58}
        },
        weight = 291.0,
        theme = "FFFFFF 000000 A3FEAD FFDBA6 FEFF95 FFFFFF 805C4B A47966 E3C6A5 FDF3EC 345D8C 000000 000000 FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Porygon-Z",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67},
            {7, 12, 18, 23, 29, 34, 40, 45, 51, 56, 62, 67}
        },
        weight = 34.0,
        theme = "FFFFFF FFFFFF ACFFB1 FFD695 FFF07A D8E1F6 D54577 F26788 94C0E5 5DA1D8 2B4872 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Gallade",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "518",
        movelvls = {
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53, 59, 64},
            {6, 10, 12, 17, 22, 25, 31, 36, 39, 45, 50, 53, 59, 64}
        },
        weight = 52.0,
        theme = "FFFFFF 000000 BBD9FF FFBEBF F8FF5B FFFFFF 346F49 469663 D7BDBD FCFAFA C25B5D 000000 000000 000000 0 1 1 1 0 1"
    },
    {
        name = "Probopass",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 50}
        },
        weight = 340.0,
        theme = "FFFFFF FFFFFF BBE3FF FFBEBF FFFB9F FFFFFF A63F3A C45E58 8BAAC2 5F8AAB 2D2C2C FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Dusknoir",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "525",
        movelvls = {
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 43, 51, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 42, 49, 58, 61},
            {6, 9, 14, 17, 22, 25, 30, 33, 37, 42, 49, 58, 61}
        },
        weight = 106.6,
        theme = "000000 FFFFFF 003E9F B40002 B40002 FFEB76 959595 C7C7C7 999999 7C7C7C 933F54 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
    },
    {
        name = "Froslass",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59},
            {4, 10, 13, 19, 22, 28, 31, 37, 40, 51, 59}
        },
        weight = 26.6
    },
    {
        name = "Rotom",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "440",
        movelvls = {
            {8, 15, 22, 29, 36, 43, 50},
            {8, 15, 22, 29, 36, 43, 50},
            {8, 15, 22, 29, 36, 43, 50},
            {8, 15, 22, 29, 36, 43, 50, 57, 64},
            {8, 15, 22, 29, 36, 43, 50, 57, 64}
        },
        weight = .3
    },
    {
        name = "Uxie",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76}
        },
        weight = .3
    },
    {
        name = "Mesprit",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76}
        },
        weight = .3
    },
    {
        name = "Azelf",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76},
            {6, 16, 21, 31, 36, 46, 51, 61, 66, 76}
        },
        weight = .3
    },
    {
        name = "Dialga",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50}
        },
        weight = 683.0
    },
    {
        name = "Palkia",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50}
        },
        weight = 336.0
    },
    {
        name = "Heatran",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 88, 96},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 88, 96},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 88, 96},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 88, 96},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 88, 96}
        },
        weight = 430.0
    },
    {
        name = "Regigigas",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "670",
        movelvls = {
            {25, 50, 75, 100},
            {25, 50, 75, 100},
            {25, 50, 75, 100},
            {25, 40, 50, 65, 75, 90, 100},
            {25, 40, 50, 65, 75, 90, 100}
        },
        weight = 420.0
    },
    {
        name = "Giratina A",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {10, 20, 30, 40, 50, 60, 70, 80, 90},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50},
            {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50}
        },
        weight = 750.0
    },
    {
        name = "Cresselia",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93}
        },
        weight = 85.6
    },
    {
        name = "Phione",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {9, 16, 24, 31, 39, 46, 54, 61, 69},
            {9, 16, 24, 31, 39, 46, 54, 61, 69},
            {9, 16, 24, 31, 39, 46, 54, 61, 69},
            {9, 16, 24, 31, 39, 46, 54, 61, 69},
            {9, 16, 24, 31, 39, 46, 54, 61, 69}
        },
        weight = 3.1
    },
    {
        name = "Manaphy",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {9, 16, 24, 31, 39, 46, 54, 61, 69, 76},
            {9, 16, 24, 31, 39, 46, 54, 61, 69, 76},
            {9, 16, 24, 31, 39, 46, 54, 61, 69, 76},
            {9, 16, 24, 31, 39, 46, 54, 61, 69, 76},
            {9, 16, 24, 31, 39, 46, 54, 61, 69, 76}
        },
        weight = 1.4
    },
    {
        name = "Darkrai",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93},
            {11, 20, 29, 38, 47, 57, 66, 75, 84, 93}
        },
        weight = 50.5
    },
    {
        name = "Shaymin L",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
            {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100}
        },
        weight = 2.1
    },
    {
        name = "Arceus",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "720",
        movelvls = {
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
        },
        weight = 320.0
    },
    --gen 5(#494-649)
    {
        name = "Victini",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {},
            {},
            {},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
            {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97}
        },
        weight = 4.0
    },
    {
        name = "Snivy",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "17",
        bst = "308",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 8.1
    },
    {
        name = "Servine",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "413",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52}
        },
        weight = 16.0
    },
    {
        name = "Serperior",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "528",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 38, 44, 50, 56, 62},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 38, 44, 50, 56, 62}
        },
        weight = 63.0
    },
    {
        name = "Tepig",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "17",
        bst = "308",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43}
        },
        weight = 9.9
    },
    {
        name = "Pignite",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = "36",
        bst = "418",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 9, 13, 15, 17, 20, 23, 28, 31, 36, 39, 44, 47, 52},
            {3, 7, 9, 13, 15, 17, 20, 23, 28, 31, 36, 39, 44, 47, 52}
        },
        weight = 55.5
    },
    {
        name = "Emboar",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "528",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 9, 13, 15, 17, 20, 23, 28, 31, 38, 43, 50, 55, 62},
            {3, 7, 9, 13, 15, 17, 20, 23, 28, 31, 38, 43, 50, 55, 62}
        },
        weight = 150.0
    },
    {
        name = "Oshawott",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "17",
        bst = "308",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43},
            {5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43}
        },
        weight = 5.9
    },
    {
        name = "Dewott",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "413",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52},
            {5, 7, 11, 13, 17, 20, 25, 28, 33, 36, 41, 44, 49, 52}
        },
        weight = 24.5
    },
    {
        name = "Samurott",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "528",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 20, 25, 28, 33, 36, 38, 45, 50, 57, 62},
            {5, 7, 11, 13, 17, 20, 25, 28, 33, 36, 38, 45, 50, 57, 62}
        },
        weight = 94.6
    },
    {
        name = "Patrat",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "255",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 8, 11, 13, 16, 18, 21, 23, 26, 28, 31, 33, 36},
            {3, 6, 8, 11, 13, 16, 18, 21, 23, 26, 28, 31, 33, 36}
        },
        weight = 11.6
    },
    {
        name = "Watchog",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "420",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 8, 11, 13, 16, 18, 20, 22, 25, 29, 32, 36, 39, 43},
            {3, 6, 8, 11, 13, 16, 18, 20, 22, 25, 29, 32, 36, 39, 43}
        },
        weight = 27.0
    },
    {
        name = "Lillipup",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "16",
        bst = "275",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40}
        },
        weight = 4.1
    },
    {
        name = "Herdier",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "370",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 20, 24, 29, 33, 38, 42, 47},
            {5, 8, 12, 15, 20, 24, 29, 33, 38, 42, 47}
        },
        weight = 14.7
    },
    {
        name = "Stoutland",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 20, 24, 29, 36, 42, 51, 59},
            {5, 8, 12, 15, 20, 24, 29, 36, 42, 51, 59}
        },
        weight = 61.0
    },
    {
        name = "Purrloin",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "20",
        bst = "281",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 10, 12, 15, 19, 21, 24, 28, 30, 33, 37, 39, 42, 46},
            {3, 6, 10, 12, 15, 19, 21, 24, 28, 30, 33, 37, 39, 42, 46}
        },
        weight = 10.1
    },
    {
        name = "Liepard",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "446",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 10, 12, 15, 19, 22, 26, 31, 34, 38, 43, 47, 50, 55},
            {3, 6, 10, 12, 15, 19, 22, 26, 31, 34, 38, 43, 47, 50, 55}
        },
        weight = 37.5
    },
    {
        name = "Pansage",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.LEAF,
        bst = "316",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 10.5
    },
    {
        name = "Simisage",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "498",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 30.5
    },
    {
        name = "Pansear",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.FIRE,
        bst = "316",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 11.0
    },
    {
        name = "Simisear",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "498",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 28.0
    },
    {
        name = "Panpour",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.WATER,
        bst = "316",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43}
        },
        weight = 13.5
    },
    {
        name = "Simipour",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "498",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 29.0
    },
    {
        name = "Munna",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.MOON,
        bst = "292",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47},
            {5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47}
        },
        weight = 23.3
    },
    {
        name = "Musharna",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "487",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 60.5
    },
    {
        name = "Pidove",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "21",
        bst = "264",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 2.1
    },
    {
        name = "Tranquill",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "32",
        bst = "358",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 23, 27, 32, 36, 41, 45, 50, 54, 59},
            {4, 8, 11, 15, 18, 23, 27, 32, 36, 41, 45, 50, 54, 59}
        },
        weight = 15.0
    },
    {
        name = "Unfezant M",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "478",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 23, 27, 33, 38, 44, 49, 55, 60, 66},
            {4, 8, 11, 15, 18, 23, 27, 33, 38, 44, 49, 55, 60, 66}
        },
        weight = 29.0
    },
    {
        name = "Blitzle",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "27",
        bst = "295",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43}
        },
        weight = 29.8
    },
    {
        name = "Zebstrika",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "497",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 22, 25, 31, 36, 42, 47, 53},
            {4, 8, 11, 15, 18, 22, 25, 31, 36, 42, 47, 53}
        },
        weight = 79.5
    },
    {
        name = "Roggenrola",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "280",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 14, 17, 20, 23, 27, 30, 33, 36, 40},
            {4, 7, 10, 14, 17, 20, 23, 27, 30, 33, 36, 40}
        },
        weight = 18.0
    },
    {
        name = "Boldore",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37",
        bst = "390",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 14, 17, 20, 23, 25, 30, 36, 42, 48, 55},
            {4, 7, 10, 14, 17, 20, 23, 25, 30, 36, 42, 48, 55}
        },
        weight = 102.0
    },
    {
        name = "Gigalith",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 14, 17, 20, 23, 25, 30, 36, 42, 48, 55},
            {4, 7, 10, 14, 17, 20, 23, 25, 30, 36, 42, 48, 55}
        },
        weight = 260.0
    },
    {
        name = "Woobat",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "313",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 12, 15, 19, 21, 25, 29, 29, 32, 36, 41, 47},
            {4, 8, 12, 15, 19, 21, 25, 29, 29, 32, 36, 41, 47}
        },
        weight = 2.1
    },
    {
        name = "Swoobat",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "425",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 12, 15, 19, 21, 25, 29, 29, 32, 36, 41, 47},
            {4, 8, 12, 15, 19, 21, 25, 29, 29, 32, 36, 41, 47}
        },
        weight = 10.5
    },
    {
        name = "Drilbur",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "31",
        bst = "328",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43, 47}
        },
        weight = 8.5
    },
    {
        name = "Excadrill",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "508",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 22, 26, 29, 31, 36, 42, 49, 55, 62},
            {5, 8, 12, 15, 19, 22, 26, 29, 31, 36, 42, 49, 55, 62}
        },
        weight = 40.4
    },
    {
        name = "Audino",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "445",
        movelvls = {
            {},
            {},
            {},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55},
            {5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55}
        },
        weight = 31.0
    },
    {
        name = "Timburr",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 12, 16, 20, 24, 28, 31, 34, 37, 40, 43, 46, 49},
            {4, 8, 12, 16, 20, 24, 28, 31, 34, 37, 40, 43, 46, 49}
        },
        weight = 12.5
    },
    {
        name = "Gurdurr",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37",
        bst = "405",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 12, 16, 20, 24, 29, 33, 37, 41, 45, 49, 53, 57},
            {4, 8, 12, 16, 20, 24, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 40.0
    },
    {
        name = "Conkeldurr",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "505",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 12, 16, 20, 24, 29, 33, 37, 41, 45, 49, 53, 57},
            {4, 8, 12, 16, 20, 24, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 87.0
    },
    {
        name = "Tympole",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "25",
        bst = "294",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45}
        },
        weight = 4.5
    },
    {
        name = "Palpitoad",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = "36",
        bst = "384",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 12, 16, 20, 23, 28, 33, 37, 42, 47, 51},
            {5, 9, 12, 16, 20, 23, 28, 33, 37, 42, 47, 51}
        },
        weight = 17.0
    },
    {
        name = "Seismitoad",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "499",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 12, 16, 20, 23, 28, 33, 36, 39, 44, 49, 53, 59},
            {5, 9, 12, 16, 20, 23, 28, 33, 36, 39, 44, 49, 53, 59}
        },
        weight = 62.0
    },
    {
        name = "Throh",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 55.5
    },
    {
        name = "Sawk",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "465",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53}
        },
        weight = 51.0
    },
    {
        name = "Sewaddle",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = "20",
        bst = "310",
        movelvls = {
            {},
            {},
            {},
            {8, 15, 22, 29, 36, 43},
            {8, 15, 22, 29, 36, 43}
        },
        weight = 2.5
    },
    {
        name = "Swadloon",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.FRIEND,
        baseFriendship = 70,
        bst = "380",
        movelvls = {
            {},
            {},
            {},
            {20},
            {20}
        },
        weight = 7.3
    },
    {
        name = "Leavanny",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {8, 15, 22, 29, 32, 36, 39, 43, 46, 50},
            {8, 15, 22, 29, 32, 36, 39, 43, 46, 50}
        },
        weight = 20.5
    },
    {
        name = "Venipede",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "22",
        bst = "260",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43},
            {5, 8, 12, 15, 19, 22, 26, 29, 33, 36, 40, 43}
        },
        weight = 5.3
    },
    {
        name = "Whirlipede",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = "30",
        bst = "360",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 22, 23, 28, 32, 37, 41, 46, 50},
            {5, 8, 12, 15, 19, 22, 23, 28, 32, 37, 41, 46, 50}
        },
        weight = 58.5
    },
    {
        name = "Scolipede",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 12, 15, 19, 23, 28, 30, 33, 39, 44, 50, 55},
            {5, 8, 12, 15, 19, 23, 28, 30, 33, 39, 44, 50, 55}
        },
        weight = 200.5
    },
    {
        name = "Cottonee",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SUN,
        bst = "280",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 10, 13, 17, 19, 22, 26, 28, 31, 35, 37, 40, 44, 46},
            {4, 8, 10, 13, 17, 19, 22, 26, 28, 31, 35, 37, 40, 44, 46}
        },
        weight = .6
    },
    {
        name = "Whimsicott",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {},
            {},
            {},
            {10, 28, 46},
            {10, 28, 46}
        },
        weight = 6.6
    },
    {
        name = "Petilil",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SUN,
        bst = "280",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 10, 13, 17, 19, 22, 26, 28, 31, 35, 37, 40, 44, 46},
            {4, 8, 10, 13, 17, 19, 22, 26, 28, 31, 35, 37, 40, 44, 46}
        },
        weight = 6.6
    },
    {
        name = "Lilligant",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {},
            {},
            {},
            {10, 28, 46},
            {10, 28, 46}
        },
        weight = 16.3
    },
    {
        name = "Basculin R",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "460",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56}
        },
        weight = 18.0
    },
    {
        name = "Sandile",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.DARK},
        evolution = "29",
        bst = "292",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40, 43, 46}
        },
        weight = 15.2
    },
    {
        name = "Krokorok",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.DARK},
        evolution = "40",
        bst = "351",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 32, 36, 40, 44, 48, 52},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 32, 36, 40, 44, 48, 52}
        },
        weight = 33.4
    },
    {
        name = "Krookodile",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.DARK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "509",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 32, 36, 42, 48, 54, 60},
            {4, 7, 10, 13, 16, 19, 22, 25, 28, 32, 36, 42, 48, 54, 60}
        },
        weight = 96.3
    },
    {
        name = "Darumaka",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "35",
        bst = "315",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 42},
            {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 42}
        },
        weight = 37.5
    },
    {
        name = "Darmanitan",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 47, 54},
            {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 47, 54}
        },
        weight = 92.9
    },
    {
        name = "Maractus",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "461",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 10, 13, 15, 18, 22, 26, 29, 33, 38, 42, 45, 50, 55, 57},
            {3, 6, 10, 13, 15, 18, 22, 26, 29, 33, 38, 42, 45, 50, 55, 57}
        },
        weight = 28.0
    },
    {
        name = "Dwebble",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.ROCK},
        evolution = "34",
        bst = "325",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 19, 23, 24, 29, 31, 35, 37, 41, 43},
            {5, 7, 11, 13, 17, 19, 23, 24, 29, 31, 35, 37, 41, 43}
        },
        weight = 14.5
    },
    {
        name = "Crustle",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {},
            {},
            {},
            {5, 7, 11, 13, 17, 19, 23, 24, 29, 31, 38, 43, 50, 55},
            {5, 7, 11, 13, 17, 19, 23, 24, 29, 31, 38, 43, 50, 55}
        },
        weight = 200.0
    },
    {
        name = "Scraggy",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = "39",
        bst = "348",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 49, 53},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 42, 45, 49, 53}
        },
        weight = 11.8
    },
    {
        name = "Scrafty",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "488",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 45, 51, 58, 65},
            {5, 9, 12, 16, 20, 23, 27, 31, 34, 38, 45, 51, 58, 65}
        },
        weight = 30.0
    },
    {
        name = "Sigilyph",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 14, 18, 21, 24, 28, 31, 34, 38, 41, 44, 48, 51},
            {4, 8, 11, 14, 18, 21, 24, 28, 31, 34, 38, 41, 44, 48, 51}
        },
        weight = 14.0
    },
    {
        name = "Yamask",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "34",
        bst = "303",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 33, 37, 41, 45, 49},
            {5, 9, 13, 17, 21, 25, 29, 33, 33, 37, 41, 45, 49}
        },
        weight = 1.5
    },
    {
        name = "Cofagrigus",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "483",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 33, 34, 39, 45, 51, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 33, 34, 39, 45, 51, 57}
        },
        weight = 76.5
    },
    {
        name = "Tirtouga",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ROCK},
        evolution = "37",
        bst = "355",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48, 51},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48, 51}
        },
        weight = 16.5
    },
    {
        name = "Carracosta",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.ROCK},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 40, 45, 51, 56, 61},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 40, 45, 51, 56, 61}
        },
        weight = 81.0
    },
    {
        name = "Archen",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "37",
        bst = "401",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48, 51},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 38, 41, 45, 48, 51}
        },
        weight = 9.5
    },
    {
        name = "Archeops",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "567",
        movelvls = {
            {},
            {},
            {},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 40, 45, 51, 56, 61},
            {5, 8, 11, 15, 18, 21, 25, 28, 31, 35, 40, 45, 51, 56, 61}
        },
        weight = 32.0
    },
    {
        name = "Trubbish",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "36",
        bst = "329",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 12, 14, 18, 23, 23, 25, 29, 34, 36, 40, 45, 47},
            {3, 7, 12, 14, 18, 23, 23, 25, 29, 34, 36, 40, 45, 47}
        },
        weight = 31.0
    },
    {
        name = "Garbodor",
        type = {PokemonData.POKEMON_TYPES.POISON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "474",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 12, 14, 18, 23, 23, 25, 29, 34, 39, 46, 54, 59},
            {3, 7, 12, 14, 18, 23, 23, 25, 29, 34, 39, 46, 54, 59}
        },
        weight = 107.3
    },
    {
        name = "Zorua",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "30",
        bst = "330",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57}
        },
        weight = 12.5
    },
    {
        name = "Zoroark",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 30, 34, 39, 44, 49, 54, 59, 64},
            {5, 9, 13, 17, 21, 25, 29, 30, 34, 39, 44, 49, 54, 59, 64}
        },
        weight = 81.1
    },
    {
        name = "Minccino",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SHINY_STONE,
        bst = "300",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43, 45, 49},
            {3, 7, 9, 13, 15, 19, 21, 25, 27, 31, 33, 37, 39, 43, 45, 49}
        },
        weight = 5.8
    },
    {
        name = "Cinccino",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "470",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 7.5
    },
    {
        name = "Gothita",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "290",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 33, 37, 40, 46, 48},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 33, 37, 40, 46, 48}
        },
        weight = 5.8
    },
    {
        name = "Gothorita",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "41",
        bst = "390",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 43, 50, 53},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 43, 50, 53}
        },
        weight = 18.0
    },
    {
        name = "Gothitelle",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 45, 54, 59},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 45, 54, 59}
        },
        weight = 44.0
    },
    {
        name = "Solosis",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "32",
        bst = "290",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 33, 37, 40, 46, 48},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 33, 37, 40, 46, 48}
        },
        weight = 1.0
    },
    {
        name = "Duosion",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "41",
        bst = "370",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 43, 50, 53},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 43, 50, 53}
        },
        weight = 8.0
    },
    {
        name = "Reuniclus",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 41, 45, 54, 59},
            {3, 7, 10, 14, 16, 19, 24, 25, 28, 31, 34, 39, 41, 45, 54, 59}
        },
        weight = 20.1
    },
    {
        name = "Ducklett",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "35",
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 9, 13, 15, 19, 21, 24, 27, 30, 34, 37, 41, 46},
            {3, 6, 9, 13, 15, 19, 21, 24, 27, 30, 34, 37, 41, 46}
        },
        weight = 5.5
    },
    {
        name = "Swanna",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "473",
        movelvls = {
            {},
            {},
            {},
            {3, 6, 9, 13, 15, 19, 21, 24, 27, 30, 34, 40, 47, 55},
            {3, 6, 9, 13, 15, 19, 21, 24, 27, 30, 34, 40, 47, 55}
        },
        weight = 24.2
    },
    {
        name = "Vanillite",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "35",
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 35, 40, 44, 49, 53},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 35, 40, 44, 49, 53}
        },
        weight = 5.7
    },
    {
        name = "Vanillish",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "47",
        bst = "395",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 36, 42, 47, 53, 58},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 36, 42, 47, 53, 58}
        },
        weight = 41.0
    },
    {
        name = "Vanilluxe",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "535",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 36, 42, 50, 59, 67},
            {4, 7, 10, 13, 16, 19, 22, 26, 31, 36, 42, 50, 59, 67}
        },
        weight = 57.5
    },
    {
        name = "Deerling",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
        evolution = "34",
        bst = "335",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51}
        },
        weight = 19.5
    },
    {
        name = "Sawsbuck",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "475",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60}
        },
        weight = 92.5
    },
    {
        name = "Emolga",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "428",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 19, 22, 26, 30, 34, 38, 42, 46, 50},
            {4, 7, 10, 13, 16, 19, 22, 26, 30, 34, 38, 42, 46, 50}
        },
        weight = 5.0
    },
    {
        name = "Karrablast",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.KARRABLAST,
        bst = "315",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56}
        },
        weight = 5.9
    },
    {
        name = "Escavalier",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56}
        },
        weight = 33.0
    },
    {
        name = "Foongus",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = "39",
        bst = "294",
        movelvls = {
            {},
            {},
            {},
            {6, 8, 12, 15, 18, 20, 24, 28, 32, 35, 39, 43, 45, 50},
            {6, 8, 12, 15, 18, 20, 24, 28, 32, 35, 39, 43, 45, 50}
        },
        weight = 1.0
    },
    {
        name = "Amoonguss",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.POISON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "464",
        movelvls = {
            {},
            {},
            {},
            {6, 8, 12, 15, 18, 20, 24, 28, 32, 35, 43, 49, 54, 62},
            {6, 8, 12, 15, 18, 20, 24, 28, 32, 35, 43, 49, 54, 62}
        },
        weight = 10.5
    },
    {
        name = "Frillish M",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GHOST},
        evolution = "40",
        bst = "335",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 22, 27, 32, 37, 43, 49, 55, 61},
            {5, 9, 13, 17, 22, 27, 32, 37, 43, 49, 55, 61}
        },
        weight = 33.0
    },
    {
        name = "Jellicent M",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "480",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 22, 27, 32, 37, 45, 53, 61, 69},
            {5, 9, 13, 17, 22, 27, 32, 37, 45, 53, 61, 69}
        },
        weight = 135.0
    },
    {
        name = "Alomomola",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "470",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 31.6
    },
    {
        name = "Joltik",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = "36",
        bst = "319",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40, 45, 48},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 37, 40, 45, 48}
        },
        weight = .6
    },
    {
        name = "Galvantula",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "472",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 40, 46, 54, 60},
            {4, 7, 12, 15, 18, 23, 26, 29, 34, 40, 46, 54, 60}
        },
        weight = 14.3
    },
    {
        name = "Ferroseed",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.STEEL},
        evolution = "40",
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {6, 9, 14, 18, 21, 26, 30, 35, 38, 43, 47, 52, 55},
            {6, 9, 14, 18, 21, 26, 30, 35, 38, 43, 47, 52, 55}
        },
        weight = 18.8
    },
    {
        name = "Ferrothorn",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "489",
        movelvls = {
            {},
            {},
            {},
            {6, 9, 14, 18, 21, 26, 30, 35, 38, 40, 46, 53, 61, 67},
            {6, 9, 14, 18, 21, 26, 30, 35, 38, 40, 46, 53, 61, 67}
        },
        weight = 110.0
    },
    {
        name = "Klink",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "38",
        bst = "300",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 39, 42, 45, 48, 51, 54, 57},
            {6, 11, 16, 21, 26, 31, 36, 39, 42, 45, 48, 51, 54, 57}
        },
        weight = 21.0
    },
    {
        name = "Klang",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "49",
        bst = "440",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 40, 44, 48, 52, 56, 60, 64},
            {6, 11, 16, 21, 26, 31, 36, 40, 44, 48, 52, 56, 60, 64}
        },
        weight = 51.0
    },
    {
        name = "Klinklang",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "520",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 25, 31, 36, 40, 44, 48, 54, 60, 66, 72},
            {6, 11, 16, 21, 25, 31, 36, 40, 44, 48, 54, 60, 66, 72}
        },
        weight = 81.0
    },
    {
        name = "Tynamo",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "39",
        bst = "275",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = .3
    },
    {
        name = "Eelektrik",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.THUNDER,
        bst = "405",
        movelvls = {
            {},
            {},
            {},
            {9, 19, 29, 39, 44, 49, 54, 59, 64, 69, 74},
            {9, 19, 29, 39, 44, 49, 54, 59, 64, 69, 74}
        },
        weight = 22.0
    },
    {
        name = "Eelektross",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "515",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 80.5
    },
    {
        name = "Elgyem",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "42",
        bst = "335",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 50, 53, 56},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 43, 46, 50, 50, 53, 56}
        },
        weight = 9.0
    },
    {
        name = "Beheeyem",
        type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 45, 50, 56, 58, 63, 68},
            {4, 8, 11, 15, 18, 22, 25, 29, 32, 36, 39, 45, 50, 56, 58, 63, 68}
        },
        weight = 34.5
    },
    {
        name = "Litwick",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.FIRE},
        evolution = "41",
        bst = "275",
        movelvls = {
            {},
            {},
            {},
            {3, 5, 7, 10, 13, 16, 20, 24, 28, 33, 38, 43, 49, 55, 61},
            {3, 5, 7, 10, 13, 16, 20, 24, 28, 33, 38, 43, 49, 55, 61}
        },
        weight = 3.1
    },
    {
        name = "Lampent",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.DUSK,
        bst = "370",
        movelvls = {
            {},
            {},
            {},
            {3, 5, 7, 10, 13, 16, 20, 24, 28, 33, 38, 45, 53, 61, 69},
            {3, 5, 7, 10, 13, 16, 20, 24, 28, 33, 38, 45, 53, 61, 69}
        },
        weight = 13.0
    },
    {
        name = "Chandelure",
        type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "520",
        movelvls = {
            {},
            {},
            {},
            {},
            {}
        },
        weight = 34.3
    },
    {
        name = "Axew",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "38",
        bst = "320",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56, 61},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56, 61}
        },
        weight = 18.0
    },
    {
        name = "Fraxure",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "48",
        bst = "410",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 42, 48, 54, 60, 66},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 42, 48, 54, 60, 66}
        },
        weight = 36.0
    },
    {
        name = "Haxorus",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "540",
        movelvls = {
            {},
            {},
            {},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 42, 50, 58, 66, 74},
            {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 42, 50, 58, 66, 74}
        },
        weight = 105.5
    },
    {
        name = "Cubchoo",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "37",
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 36, 41, 45, 49, 53, 57},
            {5, 9, 13, 17, 21, 25, 29, 33, 36, 41, 45, 49, 53, 57}
        },
        weight = 8.5
    },
    {
        name = "Beartic",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 36, 37, 41, 45, 53, 59, 66},
            {5, 9, 13, 17, 21, 25, 29, 33, 36, 37, 41, 45, 53, 59, 66}
        },
        weight = 260.0
    },
    {
        name = "Cryogonal",
        type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 21, 25, 29, 33, 37, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 21, 25, 29, 33, 37, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 148.0
    },
    {
        name = "Shelmet",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.SHELMET,
        bst = "305",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56}
        },
        weight = 7.7
    },
    {
        name = "Accelgor",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "495",
        movelvls = {
            {},
            {},
            {},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56},
            {4, 8, 13, 16, 20, 25, 28, 32, 37, 40, 44, 49, 52, 56}
        },
        weight = 25.3
    },
    {
        name = "Stunfisk",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "471",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 45, 50, 55, 61},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 45, 50, 55, 61}
        },
        weight = 11.0
    },
    {
        name = "Mienfoo",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = "50",
        bst = "350",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 53, 57, 61}
        },
        weight = 20.0
    },
    {
        name = "Mienshao",
        type = {PokemonData.POKEMON_TYPES.FIGHTING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 56, 63, 70},
            {5, 9, 13, 17, 21, 25, 29, 33, 37, 41, 45, 49, 56, 63, 70}
        },
        weight = 35.5
    },
    {
        name = "Druddigon",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "485",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 18, 21, 25, 27, 31, 35, 40, 45, 49, 55, 62},
            {5, 9, 13, 18, 21, 25, 27, 31, 35, 40, 45, 49, 55, 62}
        },
        weight = 139.0
    },
    {
        name = "Golett",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.GHOST},
        evolution = "43",
        bst = "303",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 45, 50, 55},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 45, 50, 55}
        },
        weight = 92.0
    },
    {
        name = "Golurk",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.GHOST},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "483",
        movelvls = {
            {},
            {},
            {},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 43, 50, 60, 70},
            {5, 9, 13, 17, 21, 25, 30, 35, 40, 43, 50, 60, 70}
        },
        weight = 330.0
    },
    {
        name = "Pawniard",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.STEEL},
        evolution = "52",
        bst = "340",
        movelvls = {
            {},
            {},
            {},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57, 62},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 54, 57, 62}
        },
        weight = 10.2
    },
    {
        name = "Bisharp",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 57, 63, 71},
            {6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46, 49, 57, 63, 71}
        },
        weight = 70.0
    },
    {
        name = "Bouffalant",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "490",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 61},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 61}
        },
        weight = 94.6
    },
    {
        name = "Rufflet",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "54",
        bst = "350",
        movelvls = {
            {},
            {},
            {},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55, 59, 64},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55, 59, 64}
        },
        weight = 10.5
    },
    {
        name = "Braviary",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {},
            {},
            {},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 51, 57, 63, 70},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 51, 57, 63, 70}
        },
        weight = 41.0
    },
    {
        name = "Vullaby",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = "54",
        bst = "370",
        movelvls = {
            {},
            {},
            {},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55, 59, 64},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 55, 59, 64}
        },
        weight = 9.0
    },
    {
        name = "Mandibuzz",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "510",
        movelvls = {
            {},
            {},
            {},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 51, 57, 63, 70},
            {5, 10, 14, 19, 23, 28, 32, 37, 41, 46, 50, 51, 57, 63, 70}
        },
        weight = 39.5
    },
    {
        name = "Heatmor",
        type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "484",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 56, 56, 61},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 56, 56, 61}
        },
        weight = 58.0
    },
    {
        name = "Durant",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "484",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 61, 66},
            {6, 11, 16, 21, 26, 31, 36, 41, 46, 51, 56, 61, 66}
        },
        weight = 33.0
    },
    {
        name = "Deino",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = "50",
        bst = "300",
        movelvls = {
            {},
            {},
            {},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 52, 58, 62},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 52, 58, 62}
        },
        weight = 17.3
    },
    {
        name = "Zweilous",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = "64",
        bst = "420",
        movelvls = {
            {},
            {},
            {},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 55, 64, 71},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 55, 64, 71}
        },
        weight = 50.0
    },
    {
        name = "Hydreigon",
        type = {PokemonData.POKEMON_TYPES.DARK, PokemonData.POKEMON_TYPES.DRAGON},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {},
            {},
            {},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 55, 68, 79},
            {4, 9, 12, 17, 20, 25, 28, 32, 38, 42, 48, 55, 68, 79}
        },
        weight = 160.0
    },
    {
        name = "Larvesta",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FIRE},
        evolution = "59",
        bst = "360",
        movelvls = {
            {},
            {},
            {},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
        },
        weight = 28.8
    },
    {
        name = "Volcarona",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "550",
        movelvls = {
            {},
            {},
            {},
            {10, 20, 30, 40, 50, 59, 60, 70, 80, 90, 100},
            {10, 20, 30, 40, 50, 59, 60, 70, 80, 90, 100}
        },
        weight = 46.0
    },
    {
        name = "Cobalion",
        type = {PokemonData.POKEMON_TYPES.STEEL, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73}
        },
        weight = 250.0
    },
    {
        name = "Terrakion",
        type = {PokemonData.POKEMON_TYPES.ROCK, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73}
        },
        weight = 260.0
    },
    {
        name = "Virizion",
        type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 42, 49, 55, 61, 67, 73}
        },
        weight = 200.0
    },
    {
        name = "Tornadus",
        type = {PokemonData.POKEMON_TYPES.FLYING, PokemonData.POKEMON_TYPES.EMPTY},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
        },
        weight = 63.0
    },
    {
        name = "Thundurus",
        type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
        },
        weight = 61.0
    },
    {
        name = "Reshiram",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.FIRE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {},
            {},
            {},
            {8, 15, 22, 29, 36, 43, 50, 54, 64, 71, 78, 85, 92, 100},
            {8, 15, 22, 29, 36, 43, 50, 54, 64, 71, 78, 85, 92, 100}
        },
        weight = 330.0
    },
    {
        name = "Zekrom",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.ELECTRIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "680",
        movelvls = {
            {},
            {},
            {},
            {8, 15, 22, 29, 36, 43, 50, 54, 64, 71, 78, 85, 92, 100},
            {8, 15, 22, 29, 36, 43, 50, 54, 64, 71, 78, 85, 92, 100}
        },
        weight = 345.0
    },
    {
        name = "Landorus",
        type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.FLYING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
        },
        weight = 68.0
    },
    {
        name = "Kyurem",
        type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.ICE},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "660",
        movelvls = {
            {},
            {},
            {},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92},
            {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
        },
        weight = 325.0
    },
    {
        name = "Keldeo",
        type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FIGHTING},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "580",
        movelvls = {
            {},
            {},
            {},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73},
            {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73}
        },
        weight = 48.5
    },
    {
        name = "Meloetta A",
        type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.PSYCHIC},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {},
            {},
            {},
            {6, 11, 16, 21, 26, 31, 36, 43, 50, 57, 64, 71, 78, 85},
            {6, 11, 16, 21, 26, 31, 36, 43, 50, 57, 64, 71, 78, 85}
        },
        weight = 6.5
    },
    {
        name = "Genesect",
        type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
        evolution = PokemonData.EVOLUTION_TYPES.NONE,
        bst = "600",
        movelvls = {
            {},
            {},
            {},
            {7, 11, 18, 22, 29, 33, 40, 44, 51, 55, 62, 66, 73, 77},
            {7, 11, 18, 22, 29, 33, 40, 44, 51, 55, 62, 66, 73, 77}
        },
        weight = 82.5
    }
}

PokemonData.TOTAL_POKEMON = #PokemonData.POKEMON

PokemonData.ALTERNATE_FORMS = {
    ["Deoxys"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Deoxys A",
                type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97}
                },
                weight = 60.8
            },
            {
                name = "Deoxys D",
                type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97}
                },
                weight = 60.8
            },
            {
                name = "Deoxys S",
                type = {PokemonData.POKEMON_TYPES.PSYCHIC, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97},
                    {9, 17, 25, 33, 41, 49, 57, 65, 73, 81, 89, 97}
                },
                weight = 60.8
            }
        }
    },
    ["Wormadam P"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Wormadam S",
                type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.GROUND},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "424",
                movelvls = {
                    {10, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47}
                },
                weight = 6.5,
                theme = "FFFFFF 000000 CCE0FE FFB9B7 FCFF76 FFFFFF 85593B B58452 D8BB70 F1DDAD 454545 000000 000000 FFFFFF 0 1 1 1 0 1"
            },
            {
                name = "Wormadam T",
                type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.STEEL},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "424",
                movelvls = {
                    {10, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47},
                    {10, 15, 20, 23, 26, 29, 32, 35, 38, 41, 44, 47}
                },
                weight = 6.5,
                theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 9B4472 BA5F86 C76660 DE8286 454545 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
            }
        }
    },
    ["Shaymin L"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Shaymin S",
                type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.FLYING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
                    {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
                    {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
                    {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100},
                    {10, 19, 28, 37, 46, 55, 64, 73, 82, 91, 100}
                },
                weight = 2.1
            }
        }
    },
    ["Giratina A"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Giratina O",
                type = {PokemonData.POKEMON_TYPES.GHOST, PokemonData.POKEMON_TYPES.DRAGON},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "680",
                movelvls = {
                    {10, 20, 30, 40, 50, 60, 70, 80, 90},
                    {10, 20, 30, 40, 50, 60, 70, 80, 90},
                    {6, 10, 15, 19, 24, 28, 33, 37, 42, 46},
                    {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50},
                    {6, 10, 15, 19, 24, 28, 33, 37, 42, 46, 50}
                },
                weight = 750.0
            }
        }
    },
    ["Rotom"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Rotom Heat",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FIRE},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "520",
                movelvls = {
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64}
                },
                weight = .3
            },
            {
                name = "Rotom Wash",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.WATER},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "520",
                movelvls = {
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64}
                },
                weight = .3
            },
            {
                name = "Rotom Frost",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.ICE},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "520",
                movelvls = {
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64}
                },
                weight = .3
            },
            {
                name = "Rotom Fan",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FLYING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "520",
                movelvls = {
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64}
                },
                weight = .3
            },
            {
                name = "Rotom Mow",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.GRASS},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "520",
                movelvls = {
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64}
                },
                weight = .3
            }
        }
    },
    ["Castform"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Castform F",
                type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "420",
                movelvls = {
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 30, 30, 30, 40, 50, 50, 50},
                    {10, 10, 10, 15, 20, 20, 20, 30, 40, 40, 40}
                },
                weight = 0.8
            },
            {
                name = "Castform R",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "420",
                movelvls = {
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 30, 30, 30, 40, 50, 50, 50},
                    {10, 10, 10, 15, 20, 20, 20, 30, 40, 40, 40}
                },
                weight = 0.8
            },
            {
                name = "Castform S",
                type = {PokemonData.POKEMON_TYPES.ICE, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "420",
                movelvls = {
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 30, 30, 30, 40, 50, 50, 50},
                    {10, 10, 10, 15, 20, 20, 20, 30, 40, 40, 40}
                },
                weight = 0.8
            }
        }
    },
    ["Basculin R"] = {
        shortenedName = "Basculin",
        cosmetic = true,
        startIndex = 0,
        forms = {
            {
                name = "Basculin B",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "460",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51, 56}
                },
                weight = 18.0
            }
        }
    },
    ["Darmanitan"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Darmanitan Z",
                type = {PokemonData.POKEMON_TYPES.FIRE, PokemonData.POKEMON_TYPES.PSYCHIC},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "540",
                movelvls = {
                    {},
                    {},
                    {},
                    {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 47, 54},
                    {3, 6, 9, 11, 14, 17, 19, 22, 25, 27, 30, 33, 35, 39, 47, 54}
                },
                weight = 92.9
            }
        }
    },
    ["Meloetta A"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Meloetta P",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FIGHTING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {},
                    {},
                    {},
                    {6, 11, 16, 21, 26, 31, 36, 43, 50, 57, 64, 71, 78, 85},
                    {6, 11, 16, 21, 26, 31, 36, 43, 50, 57, 64, 71, 78, 85}
                },
                weight = 6.5
            }
        }
    },
    ["Kyurem"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Kyurem W",
                type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.ICE},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "700",
                movelvls = {
                    {},
                    {},
                    {},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
                },
                weight = 325.0
            },
            {
                name = "Kyurem B",
                type = {PokemonData.POKEMON_TYPES.DRAGON, PokemonData.POKEMON_TYPES.ICE},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "700",
                movelvls = {
                    {},
                    {},
                    {},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92},
                    {8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78, 85, 92}
                },
                weight = 325.0
            }
        }
    },
    ["Landorus"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Landorus T",
                type = {PokemonData.POKEMON_TYPES.GROUND, PokemonData.POKEMON_TYPES.FLYING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "600",
                movelvls = {
                    {},
                    {},
                    {},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
                },
                weight = 68.0
            }
        }
    },
    ["Burmy P"] = {
        shortenedName = "Burmy",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Burmy S",
                type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = "20",
                bst = "224",
                movelvls = {
                    {10, 20},
                    {10, 15, 20},
                    {10, 15, 20},
                    {10, 15, 20},
                    {10, 15, 20}
                },
                weight = 3.4,
                theme = "FFFFFF 000000 CCE0FE FFB9B7 FCFF76 FFFFFF 454545 5B5D5D D8BB70 F1DDAD 454545 000000 000000 FFFFFF 0 1 1 1 0 1"
            },
            {
                name = "Burmy T",
                type = {PokemonData.POKEMON_TYPES.BUG, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = "20",
                bst = "224",
                movelvls = {
                    {10, 20},
                    {10, 15, 20},
                    {10, 15, 20},
                    {10, 15, 20},
                    {10, 15, 20}
                },
                weight = 3.4,
                theme = "FFFFFF FFFFFF CCE0FE FFB9B7 FCFF76 FFFFFF 454545 5B5D5D C76660 DE8286 454545 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
            }
        }
    },
    ["Cherrim O"] = {
        shortenedName = "Cherrim",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Cherrim S",
                type = {PokemonData.POKEMON_TYPES.GRASS, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "450",
                movelvls = {
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 20, 20, 30},
                    {10, 10, 10, 20, 30, 30, 30, 40, 50, 50, 50},
                    {10, 10, 10, 15, 20, 20, 20, 30, 40, 40, 40}
                },
                weight = 9.3,
                theme = "000000 000000 004E99 B40002 B40002 FFFFFF E78F8D FDC3BE D5B547 F7DD92 C26573 000000 000000 000000 0 1 1 1 0 1"
            }
        }
    },
    ["Deerling"] = {
        cosmetic = true,
        shortenedName = "Deerling",
        forms = {
            {
                name = "Deerling",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = "34",
                bst = "335",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51}
                },
                weight = 19.5
            },
            {
                name = "Deerling",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = "34",
                bst = "335",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51}
                },
                weight = 19.5
            },
            {
                name = "Deerling",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = "34",
                bst = "335",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 41, 46, 51}
                },
                weight = 19.5
            }
        }
    },
    ["Frillish M"] = {
        shortenedName = "Frillish",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Frillish F",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GHOST},
                evolution = "40",
                bst = "335",
                movelvls = {
                    {},
                    {},
                    {},
                    {5, 9, 13, 17, 22, 27, 32, 37, 43, 49, 55, 61},
                    {5, 9, 13, 17, 22, 27, 32, 37, 43, 49, 55, 61}
                },
                weight = 33.0
            }
        }
    },
    ["Gastrodon W"] = {
        shortenedName = "Gastrodon",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Gastrodon E",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GROUND},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "475",
                movelvls = {
                    {2, 4, 7, 11, 16, 22, 29, 41, 54},
                    {2, 4, 7, 11, 16, 22, 29, 41, 54},
                    {2, 4, 7, 11, 16, 22, 29, 41, 54},
                    {2, 4, 7, 11, 16, 22, 29, 41, 54},
                    {2, 4, 7, 11, 16, 22, 29, 41, 54}
                },
                weight = 29.9,
                theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 367041 458E53 97DFE4 35C1CC 367041 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
            }
        }
    },
    ["Jellicent M"] = {
        shortenedName = "Jellicent",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Jellicent F",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.GHOST},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "480",
                movelvls = {
                    {},
                    {},
                    {},
                    {5, 9, 13, 17, 22, 27, 32, 37, 45, 53, 61, 69},
                    {5, 9, 13, 17, 22, 27, 32, 37, 45, 53, 61, 69}
                },
                weight = 135.0
            }
        }
    },
    ["Keldeo"] = {
        shortenedName = "Keldeo",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Keldeo R",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.FIGHTING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "580",
                movelvls = {
                    {},
                    {},
                    {},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73}
                },
                weight = 48.5
            }
        }
    },
    ["Sawsbuck"] = {
        cosmetic = true,
        shortenedName = "Sawsbuck",
        index = 0,
        forms = {
            {
                name = "Sawsbuck",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "475",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60}
                },
                weight = 92.5
            },
            {
                name = "Sawsbuck",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "475",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60}
                },
                weight = 92.5
            },
            {
                name = "Sawsbuck",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.GRASS},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "475",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60},
                    {4, 7, 10, 13, 16, 20, 24, 28, 32, 36, 37, 44, 52, 60}
                },
                weight = 92.5
            }
        }
    },
    ["Shellos W"] = {
        shortenedName = "Shellos",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Shellos E",
                type = {PokemonData.POKEMON_TYPES.WATER, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = "30",
                bst = "325",
                movelvls = {
                    {2, 4, 7, 11, 16, 22, 29, 37, 46},
                    {2, 4, 7, 11, 16, 22, 29, 37, 46},
                    {2, 4, 7, 11, 16, 22, 29, 37, 46},
                    {2, 4, 7, 11, 16, 22, 29, 37, 46},
                    {2, 4, 7, 11, 16, 22, 29, 37, 46}
                },
                weight = 6.3,
                theme = "FFFFFF FFFFFF BEDFFF FFC5C5 FFF670 FFFFFF 367041 458E53 97DFE4 35C1CC 367041 FFFFFF FFFFFF FFFFFF 0 1 1 1 0 1"
            }
        }
    },
    ["Thundurus"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Thundurus T",
                type = {PokemonData.POKEMON_TYPES.ELECTRIC, PokemonData.POKEMON_TYPES.FLYING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "580",
                movelvls = {
                    {},
                    {},
                    {},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
                },
                weight = 61.0
            }
        }
    },
    ["Tornadus"] = {
        cosmetic = false,
        index = 0,
        forms = {
            {
                name = "Tornadus T",
                type = {PokemonData.POKEMON_TYPES.FLYING, PokemonData.POKEMON_TYPES.EMPTY},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "580",
                movelvls = {
                    {},
                    {},
                    {},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85},
                    {7, 13, 19, 25, 31, 37, 43, 49, 55, 61, 67, 73, 79, 85}
                },
                weight = 63.0
            }
        }
    },
    ["Unfezant M"] = {
        shortenedName = "Unfezant",
        cosmetic = true,
        index = 0,
        forms = {
            {
                name = "Unfezant F",
                type = {PokemonData.POKEMON_TYPES.NORMAL, PokemonData.POKEMON_TYPES.FLYING},
                evolution = PokemonData.EVOLUTION_TYPES.NONE,
                bst = "478",
                movelvls = {
                    {},
                    {},
                    {},
                    {4, 8, 11, 15, 18, 23, 27, 33, 38, 44, 49, 55, 60, 66},
                    {4, 8, 11, 15, 18, 23, 27, 33, 38, 44, 49, 55, 60, 66}
                },
                weight = 29.0
            }
        }
    }
}
