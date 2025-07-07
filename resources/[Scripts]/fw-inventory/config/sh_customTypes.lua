Shared = Shared or {}
Shared.CustomTypes = {
    ["ammo"] = {
        ["Pistol"] = {
            Label = "Pistol Ammo x50",
            Image = "ammo-pistol.png",
            Price = 25,
            Craft = {
                { Item = "aluminum", Amount = 3 },
                { Item = "plastic", Amount = 3 },
                { Item = "rubber", Amount = 3 },
            },
        },
        ["Rifle"] = {
            Label = "Rifle Ammo x50",
            Image = "ammo-rifle.png",
            Price = 35,
            Craft = {
                { Item = "aluminum", Amount = 3 },
                { Item = "plastic", Amount = 3 },
                { Item = "rubber", Amount = 3 },
            },
        },
        ["Smg"] = {
            Label = "Sub Ammo x50",
            Image = "ammo-smg.png",
            Price = 35,
            Craft = {
                { Item = "aluminum", Amount = 6 },
                { Item = "plastic", Amount = 3 },
                { Item = "rubber", Amount = 3 },
            },
        },
        ["Shotgun"] = {
            Label = "SG Ammo x12",
            Image = "ammo-shotgun.png",
            Price = 35,
            Craft = {
                { Item = "steel", Amount = 9 },
                { Item = "plastic", Amount = 3 },
            },
        },
        ["Rubber"] = {
            Label = "Rubber Slugs x20",
            Image = "ammo-rubber.png",
            Price = 35,
            Craft = {},
        },
        ["Taser"] = {
            Label = "Taser Cartridges",
            Image = "ammo-taser.png",
            Price = 15,
        },
        ["Paintball"] = {
            Label = "Paintballs",
            Image = "ammo-paintball.png",
            Price = 35,
        },
        ["Sniper"] = {
            Label = "Sniper Ammo x12",
            Image = "ammo-sniper.png",
            Price = 35,
        },
        ["Emp"] = {
            Label = "EMP Ammo x3",
            Image = "ammo-emp.png",
            Price = 45,
        },
        ["Revolver"] = {
            Label = "Revolver Ammo x12",
            Image = "ammo-revolver.png",
            Price = 45,
        },
        ["Snowball"] = {
            Label = "Snowball Ammo x3",
            Image = "ammo-snowball.png",
            Price = 45,
        }
    },
    ["business-bag"] = {
        ["pizzeria"] = {
            Label = "Pizza Box",
            Image = "pizzeria-box.png",
            Description = "A box, with pizza?",
        },
        ["duffel"] = {
            Label = "Duffel Bag",
            Image = "duffel-bag.png",
            Description = "I hope you can fit a lot in here..",
        },
        ["policeduffel"] = {
            Label = "(PD) Duffel Bag",
            Image = "duffel-bag.png",
            Description = "Equipment issued by the government (POLICE/AMBULANCE)",
            Price = 1000,
        },
        ["uwucafe"] = {
            Label = "Bento Box",
            Image = "uwu-bentobox.png",
            Description = "Is there a cat in here?",
        },
        ["burgershot"] = {
            Label = "Burger Bag",
            Image = "burger-box.png",
            Description = "There are tasty things in here.",
        },
        ["dragonsden"] = {
            Label = "Take-away Box",
            Image = "dragonsden-box.png",
            Description = "If I were you, I'd open it quickly..",
        },
        ["petitcroissant"] = {
            Label = "Take-away Box",
            Image = "petitcroissant-box.png",
            Description = "The petit croissant, the real bakery.",
        },
        ["cassettebox"] = {
            Label = "Cassette Boxes",
            Image = "cassettebox.png",
            Description = "A box with music...",
            Craft = {
                { Item = "plastic", Amount = 23 } 
            }
        },
    },
    ["heist-usb"] = {
        ["green"] = {
            Label = "Green USB",
            Image = "heist-usb-green.png",
        },
        ["blue"] = {
            Label = "Blue USB",
            Image = "heist-usb-blue.png",
        },
        ["red"] = {
            Label = "Red USB",
            Image = "heist-usb-red.png",
        },
        ["yellow"] = {
            Label = "Yellow USB",
            Image = "heist-usb-yellow.png",
        },
        ["black"] = {
            Label = "Black USB",
            Image = "heist-usb-black.png",
        },
    },
    ["heist-loot"] = {
        ["tracked"] = {
            Label = "Traceable Valuables",
            Image = "tracked-valuable-goods.png",
            Description = "Do you see a GPS tracker in here?"
        },
    },
    ["fish"] = {
        ["Bass"] = {
            Label = "Bass",
            Image = "fish-bass.png",
            Description = "A fish from the water..",
        },
        ["Blue"] = {
            Label = "Blue Fish",
            Image = "fish-bluefish.png",
            Description = "Whoever came up with this name was a genius!",
        },
        ["Cod"] = {
            Label = "Cod",
            Image = "fish-cod.png",
            Description = "Nice cod, right.",
        },
        ["Flounder"] = {
            Label = "Flounder",
            Image = "fish-flounder.png",
            Description = "I went fishing and all I got was this worthless fish.",
        },
        ["Mackerel"] = {
            Label = "Mackerel",
            Image = "fish-mackerel.png",
            Description = "Sometimes holy.",
        },
        ["Shark"] = {
            Label = "Baby Shark",
            Image = "fish-shark.png",
            Description = "A damn shark! Maybe someone wants to buy it? Haha just kidding. Throw it back. Unless..?",
        },
        ["Whale"] = {
            Label = "Baby Whale",
            Image = "fish-whale.png",
            Description = "A damn whale! Maybe someone wants to buy it? Haha just kidding. Throw it back. Unless..?",
        },
    },
    ["ingredient"] = {
        ["Cream"] = {
            Label = "Whipped Cream",
            Image = "ingredients_icecream.png",
            Description = "Used to make food.<br/><br/><b>Food category: Whipped Cream</b>",
        },
        ["Beans"] = {
            Label = "Coffee Beans",
            Image = "ingredient-beans.png",
            Description = "Used to make food.<br/><br/><b>Food category: Coffee Beans</b>",
        },
        ["Beef"] = {
            Label = "Beef",
            Image = "ingredient-beef.png",
            Description = "Used to make food.<br/><br/><b>Food category: Meat</b>",
        },
        ["Dairy"] = {
            Label = "Milk",
            Image = "ingredient-dairy.png",
            Description = "Used to make food.<br/><br/><b>Food category: Dairy</b>",
        },
        ["Cabbage"] = {
            Label = "Cabbage",
            Image = "ingredients_cabbage.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Carrot"] = {
            Label = "Carrot",
            Image = "ingredients_carrot.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Corn"] = {
            Label = "Corn",
            Image = "ingredients_corn.png",
            Description = "Used to make food.<br/><br/><b>Food category: Grain</b>",
        },
        ["Cucumber"] = {
            Label = "Cucumber",
            Image = "ingredients_cucumber.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Garlic"] = {
            Label = "Garlic",
            Image = "ingredients_garlic.png",
            Description = "Used to make food.<br/><br/><b>Food category: Herbs</b>",
        },
        ["Onion"] = {
            Label = "Onion",
            Image = "ingredients_onion.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Potato"] = {
            Label = "Potato",
            Image = "ingredient-potato.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Pumpkin"] = {
            Label = "Pumpkin",
            Image = "ingredients_pumpkin.png",
            Description = "Used to make food.<br/><br/><b>Food category: Sugar</b>",
        },
        ["Radish"] = {
            Label = "Radish",
            Image = "ingredients_radish.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["RedBeet"] = {
            Label = "Red Beet",
            Image = "ingredients_redbeet.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Sunflower"] = {
            Label = "Sunflower Oil",
            Image = "ingredient-sunflower.png",
            Description = "Used to make food.<br/><br/><b>Food category: Oil</b>",
        },
        ["Tomato"] = {
            Label = "Tomato",
            Image = "ingredients_tomato.png",
            Description = "Used to make food.<br/><br/><b>Food category: Vegetables</b>",
        },
        ["Watermelon"] = {
            Label = "Watermelon",
            Image = "ingredient-watermelon.png",
            Description = "Used to make food.<br/><br/><b>Food category: Sugar</b>",
        },
        ["Wheat"] = {
            Label = "Grain",
            Image = "ingredient-grain.png",
            Description = "Used to make food.<br/><br/><b>Food category: Grain</b>",
        },
        ["Honey"] = {
            Label = "Honey",
            Image = "bee-honey.png",
            Description = "This smells good.. Makes me crave pancakes!<br/><br/><b>Food category: Sugar</b>",
        },
    },
    ["cryptostick"] = {
        ["GNE5"] = {
            Label = "GNE Stick",
            Description = "A USB with  5 GNE On it."
        },
        ["GNE10"] = {
            Label = "GNE Stick",
            Description = "A USB with  10 GNE On it."
        },
        ["GNE25"] = {
            Label = "GNE Stick",
            Description = "A USB with  25 GNE On it."
        },
        ["GNE50"] = {
            Label = "GNE Stick",
            Description = "A USB with  50 GNE On it."
        },
        ["GNE100"] = {
            Label = "GNE Stick",
            Description = "A USB with  100 GNE On it."
        },
        ["GNE250"] = {
            Label = "GNE Stick",
            Description = "A USB with  250 GNE On it."
        },
    },
    ["farming-seed"] = {
        ["Cabbage"] = {
            Label = "cabbage Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-cabbage.png",
        },
        ["Carrot"] = {
            Label = "Carot Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-carrot.png",
        },
        ["Corn"] = {
            Label = "Corn Kernel",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-corn.png",
        },
        ["Cucumber"] = {
            Label = "cucumber Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-cucumber.png",
        },
        ["Garlic"] = {
            Label = "Garlic Seed",
            Description = "Some seed to place in a garden..",
            Image = "weed-seeds.png",
        },
        ["Onion"] = {
            Label = "Union Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-onion.png",
        },
        ["Potato"] = {
            Label = "Potato Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-potato.png",
        },
        ["Pumpkin"] = {
            Label = "Pumpkin Seed",
            Description = "Some seed to place in a garden, voor halloween..",
            Image = "farming-seed-pumpkin.png",
        },
        ["Radish"] = {
            Label = "Radish Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-radish.png",
        },
        ["RedBeet"] = {
            Label = "Red Beet Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-beetroot.png",
        },
        ["Sunflower"] = {
            Label = "Sunflower Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-sunflower.png",
        },
        ["Tomato"] = {
            Label = "Tomato Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-tomato.png",
        },
        ["Watermelon"] = {
            Label = "Watermelon Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-watermelon.png",
        },
        ["Wheat"] = {
            Label = "Wheat Seed",
            Description = "Some seed to place in a garden..",
            Image = "farming-seed-wheat.png",
        },
    },
    ['gang-chain'] = {
        ["bakker"] = {
            Label = "Chain: Bakker",
            Description = "",
            Image = 'gangchain-bakker.png',
        },
        ["banggang"] = {
            Label = "Chain: Bang Gang",
            Description = "Shows you part of  de Bang Gang!",
            Image = 'gangchain-banggang.png',
        },
        ["cringeboys"] = {
            Label = "Chain: Cringe Boys",
            Description = "Shows you part of  Cringe Boys!",
            Image = 'gangchain-cringeboys.png',
        },
        ["esh"] = {
            Label = "Chain: ESH",
            Description = "Shows you part of  de East Side Hustlers!",
            Image = 'gangchain-esh.png',
        },
        -- ["kings"] = {
        --     Label = "Chain: Kings",
        --     Description = "Shows you part of  Kings!",
        --     Image = 'gangchain-kings.png',
        -- },
    },
    ['identification-badge'] = {
        ["flightschool"] = {
            Label = "Vliegbrevet",
            Description = "You believe you can fly?",
            Image = "badge-flightschool.png",
        },
        ["doj"] = {
            Label = "Wet & Recht Pas",
            Description = "To proof you part of department of justice.",
            Image = "badge-doj.png",
        },
        ["news"] = {
            Label = "Weazel News Pas",
            Description = "Press pass!",
            Image = "badge-news.png",
        },
        ["pd"] = {
            Label = "PD Badge",
            Description = "Badge to indetify you self as PD officer.",
            Image = "badge-pd.png",
        },
        ["ems"] = {
            Label = "EMS Badge",
            Description = "Badge to show you are EMS!",
            Image = "badge-ems.png",
        },
        ["doc"] = {
            Label = "DOC Badge",
            Description = "Badge to show you part of Department of corrections!",
            Image = "badge-doc.png",
        },
    },
    ["goldpan"] = {
        ["small"] = {
            Label = "Gold pan",
            Description = "Small  pan to search gold with.",
            Image = "goldpan-small.png",
            Price = 6500,
            Craft = {
                { Item = 'plastic', Amount = 12 },
                { Item = 'metalscrap', Amount = 12 },
                { Item = 'aluminum', Amount = 12 },
            }
        },
        ["medium"] = {
            Label = "Gold pan",
            Description = "Medium pan to search gold with.",
            Image = "goldpan-medium.png",
            Price = 17500,
            Craft = {
                { Item = 'plastic', Amount = 24 },
                { Item = 'metalscrap', Amount = 24 },
                { Item = 'aluminum', Amount = 24 },
            }
        },
        ["large"] = {
            Label = "Gold pan",
            Description = "Big pan to search gold with.",
            Image = "goldpan-large.png",
            Price = 28500,
            Craft = {
                { Item = 'plastic', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'aluminum', Amount = 3 },
            }
        },
    },
    ["generic-mechanic-part"] = {
        ["S"] = {
            Image = "generic-mechanic-part-s.png",
            Label = "Generic mechanic part (S)",
            Craft = {
                { Item = 'aluminum', Amount = 18 },
                { Item = 'copper', Amount = 18 },
                { Item = 'plastic', Amount = 18 },
                { Item = 'rubber', Amount = 18 },
                { Item = 'steel', Amount = 18 },
                { Item = 'metalscrap', Amount = 18 },
                { Item = 'electronics', Amount = 18 },
            }
        },
        ["A"] = {
            Image = "generic-mechanic-part-a.png",
            Label = "Generic mechanic part (A)",
            Craft = {
                { Item = 'aluminum', Amount = 9 },
                { Item = 'copper', Amount = 9 },
                { Item = 'plastic', Amount = 9 },
                { Item = 'rubber', Amount = 9 },
                { Item = 'steel', Amount = 9 },
                { Item = 'metalscrap', Amount = 9 },
                { Item = 'electronics', Amount = 9 },
            }
        },
        ["B"] = {
            Image = "generic-mechanic-part-b.png",
            Label = "Generic mechanic part (B)",
            Craft = {
                { Item = 'aluminum', Amount = 3 },
                { Item = 'copper', Amount = 3 },
                { Item = 'plastic', Amount = 3 },
                { Item = 'rubber', Amount = 3 },
                { Item = 'steel', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'electronics', Amount = 3 },
            }
        },
        ["C"] = {
            Image = "generic-mechanic-part-c.png",
            Label = "Generic mechanic part (C)",
            Craft = {
                { Item = 'aluminum', Amount = 3 },
                { Item = 'copper', Amount = 3 },
                { Item = 'plastic', Amount = 3 },
                { Item = 'rubber', Amount = 3 },
                { Item = 'steel', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'electronics', Amount = 3 },
            }
        },
        ["D"] = {
            Image = "generic-mechanic-part-d.png",
            Label = "Generic mechanic part (D)",
            Craft = {
                { Item = 'aluminum', Amount = 3 },
                { Item = 'copper', Amount = 3 },
                { Item = 'plastic', Amount = 3 },
                { Item = 'rubber', Amount = 3 },
                { Item = 'steel', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'electronics', Amount = 3 },
            }
        },
        ["E"] = {
            Image = "generic-mechanic-part-e.png",
            Label = "Generic mechanic part (E)",
            Craft = {
                { Item = 'aluminum', Amount = 3 },
                { Item = 'copper', Amount = 3 },
                { Item = 'plastic', Amount = 3 },
                { Item = 'rubber', Amount = 3 },
                { Item = 'steel', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'electronics', Amount = 3 },
            }
        },
        ["M"] = {
            Image = "generic-mechanic-part-m.png",
            Label = "Generic mechanic part (M)",
            Craft = {
                { Item = 'aluminum', Amount = 3 },
                { Item = 'copper', Amount = 3 },
                { Item = 'plastic', Amount = 3 },
                { Item = 'rubber', Amount = 3 },
                { Item = 'steel', Amount = 3 },
                { Item = 'metalscrap', Amount = 3 },
                { Item = 'electronics', Amount = 3 },
            }
        },
    },
    ["vehicle-clutch"] = {
        ["S"] = {
            Label = "Clutch (S)",
            Image = "clutch-s.png",
            Description = "Clutch Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Clutch (A)",
            Image = "clutch-a.png",
            Description = "Clutch Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Clutch (B)",
            Image = "clutch-b.png",
            Description = "Clutch Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Clutch (C)",
            Image = "clutch-c.png",
            Description = "Clutch Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Clutch (D)",
            Image = "clutch-d.png",
            Description = "Clutch Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Clutch (E)",
            Image = "clutch-e.png",
            Description = "Clutch Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Clutch (M)",
            Image = "clutch-m.png",
            Description = "Clutch Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["vehicle-axle"] = {
        ["S"] = {
            Label = "Aandrijfas (S)",
            Image = "axle-s.png",
            Description = "Aandrijfas Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Aandrijfas (A)",
            Image = "axle-a.png",
            Description = "Aandrijfas Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Aandrijfas (B)",
            Image = "axle-b.png",
            Description = "Aandrijfas Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Aandrijfas (C)",
            Image = "axle-c.png",
            Description = "Aandrijfas Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Aandrijfas (D)",
            Image = "axle-d.png",
            Description = "Aandrijfas Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Aandrijfas (E)",
            Image = "axle-e.png",
            Description = "Aandrijfas Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Aandrijfas (M)",
            Image = "axle-m.png",
            Description = "Aandrijfas Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["vehicle-brakes"] = {
        ["S"] = {
            Label = "Remmen (S)",
            Image = "brakes-s.png",
            Description = "Remmen Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Remmen (A)",
            Image = "brakes-a.png",
            Description = "Remmen Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Remmen (B)",
            Image = "brakes-b.png",
            Description = "Remmen Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Remmen (C)",
            Image = "brakes-c.png",
            Description = "Remmen Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Remmen (D)",
            Image = "brakes-d.png",
            Description = "Remmen Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Remmen (E)",
            Image = "brakes-e.png",
            Description = "Remmen Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Remmen (M)",
            Image = "brakes-m.png",
            Description = "Remmen Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["vehicle-engine"] = {
        ["S"] = {
            Label = "Motor (S)",
            Image = "engine-s.png",
            Description = "Motor Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Motor (A)",
            Image = "engine-a.png",
            Description = "Motor Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Motor (B)",
            Image = "engine-b.png",
            Description = "Motor Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Motor (C)",
            Image = "engine-c.png",
            Description = "Motor Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Motor (D)",
            Image = "engine-d.png",
            Description = "Motor Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Motor (E)",
            Image = "engine-e.png",
            Description = "Motor Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Motor (M)",
            Image = "engine-m.png",
            Description = "Motor Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["vehicle-injectors"] = {
        ["S"] = {
            Label = "Brandstof Injectoren (S)",
            Image = "injectors-s.png",
            Description = "Brandstof Injectoren Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Brandstof Injectoren (A)",
            Image = "injectors-a.png",
            Description = "Brandstof Injectoren Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Brandstof Injectoren (B)",
            Image = "injectors-b.png",
            Description = "Brandstof Injectoren Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Brandstof Injectoren (C)",
            Image = "injectors-c.png",
            Description = "Brandstof Injectoren Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Brandstof Injectoren (D)",
            Image = "injectors-d.png",
            Description = "Brandstof Injectoren Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Brandstof Injectoren (E)",
            Image = "injectors-e.png",
            Description = "Brandstof Injectoren Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Brandstof Injectoren (M)",
            Image = "injectors-m.png",
            Description = "Brandstof Injectoren Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["vehicle-transmission"] = {
        ["S"] = {
            Label = "Transmissie (S)",
            Image = "transmission-s.png",
            Description = "Transmissie Klasse S",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "S", Amount = 3 },
            }
        },
        ["A"] = {
            Label = "Transmissie (A)",
            Image = "transmission-a.png",
            Description = "Transmissie Klasse A",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "A", Amount = 2 },
            }
        },
        ["B"] = {
            Label = "Transmissie (B)",
            Image = "transmission-b.png",
            Description = "Transmissie Klasse B",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "B", Amount = 4 },
            }
        },
        ["C"] = {
            Label = "Transmissie (C)",
            Image = "transmission-c.png",
            Description = "Transmissie Klasse C",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "C", Amount = 3 },
            }
        },
        ["D"] = {
            Label = "Transmissie (D)",
            Image = "transmission-d.png",
            Description = "Transmissie Klasse D",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "D", Amount = 2 },
            }
        },
        ["E"] = {
            Label = "Transmissie (E)",
            Image = "transmission-e.png",
            Description = "Transmissie Klasse E",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "E", Amount = 3 },
            }
        },
        ["M"] = {
            Label = "Transmissie (M)",
            Image = "transmission-m.png",
            Description = "Transmissie Klasse M",
            Craft = {
                { Item = "generic-mechanic-part", CustomType = "M", Amount = 4 },
            }
        },
    },
    ["gang-spray"] = {
        ["bakker"] = {
            Description = "Art.<br/><br/><b>Spray: Bakker</b>",
        },
        -- ["bearly_legal_mc"] = {
        --     Description = "Art.<br/><br/><b>Spray: Bearly Legal MC</b>",
        --     Image = "spraycan-bearly_legal_mc.png",
        -- },
        ["flying_dragons"] = {
            Description = "Art.<br/><br/><b>Spray: Flying Dragons</b>",
            Image = "spraycan-flying_dragons.png",
        },
        ["kings"] = {
            Description = "Art.<br/><br/><b>Spray: Kings</b>",
            Image = "spraycan-kings.png",
        },
        ["los_aztecas"] = {
            Description = "Art.<br/><br/><b>Spray: Los Aztecas</b>",
            Image = "spraycan-los_aztecas.png",
        },
        ["los_muertos_mc"] = {
            Description = "Art.<br/><br/><b>Spray: Los Muertos MC</b>",
            Image = "spraycan-los_muertos_mc.png",
        },
        ["lost_holland"] = {
            Description = "Art.<br/><br/><b>Spray: The Lost Holland</b>",
            Image = "spraycan-lost_holland.png",
        },
        ["marabunta_perrera"] = {
            Description = "Art.<br/><br/><b>Spray: Marabunta Perrera</b>",
            Image = "spraycan-marabunta_perrera.png",
        },
        ["dark_wolves"] = {
            Description = "Art.<br/><br/><b>Spray: Dark Wolves MC</b>",
            Image = "spraycan-dark_wolves.png",
        },
        ["crimi_clowns"] = {
            Description = "Art.<br/><br/><b>Spray: Crimi Clowns</b>",
            Image = "spraycan-crimi_clowns.png",
        },
        -- ["ogs"] = {
        --     Description = "Art.<br/><br/><b>Spray: Original Gangsters</b>",
        --     Image = "spraycan-ogs.png",
        -- },
        ["clutch"] = {
            Description = "Art.<br/><br/><b>Spray: Clutch</b>",
            Image = "spraycan-clutch.png",
        },
        ["los_lobos"] = {
            Description = "Art.<br/><br/><b>Spray: Los Lobos</b>",
            Image = "spraycan-los_lobos.png",
        },
        -- ["high_table"] = {
        --     Description = "Art.<br/><br/><b>Spray: The High Table</b>",
        --     Image = "spraycan-high_table.png",
        -- },
        -- ["ant"] = {
        --     Description = "Art.<br/><br/><b>Spray: Ain't No Telling</b>",
        --     Image = "spraycan-ant.png",
        -- },
        ["serpents"] = {
            Description = "Art.<br/><br/><b>Spray: The Serpents</b>",
            Image = "spraycan-serpents.png",
        },
        -- ["wanheda"] = {
        --     Description = "Art.<br/><br/><b>Spray: Wanheda</b>",
        --     Image = "spraycan-wanheda.png",
        -- },
        ["death_sinners"] = {
            Description = "Art.<br/><br/><b>Spray: Death Sinners MC</b>",
            Image = "spraycan-death_sinners.png",
        },
        ["white_widow"] = {
            Description = "Art.<br/><br/><b>Spray: White Widow</b>",
            Image = "spraycan-white_widow.png",
        },
        -- ["skull_gang"] = {
        --     Description = "Art.<br/><br/><b>Spray: Skull Gang</b>",
        --     Image = "spraycan-skull_gang.png",
        -- },
        ["grizzley_gang"] = {
            Description = "Art.<br/><br/><b>Spray: Grizzley Gang</b>",
            Image = "spraycan-grizzley_gang.png",
        },
        ["seoul_street_gang"] = {
            Description = "Art.<br/><br/><b>Spray: Seoul Street Gang</b>",
            Image = "spraycan-seoul_street_gang.png",
        },
        -- ["vdv"] = {
        --     Description = "Art.<br/><br/><b>Spray: Van Der Veer</b>",
        --     Image = "spraycan-vdv.png",
        -- },
        ["bricksquad"] = {
            Description = "Art.<br/><br/><b>Spray: 1017 Bricksquad</b>",
            Image = "spraycan-bricksquad.png",
        },
        ["crips"] = {
            Description = "Art.<br/><br/><b>Spray: Crips</b>",
            Image = "spraycan-crips.png",
        },
        ["crocs"] = {
            Description = "Art.<br/><br/><b>Spray: Crocs</b>",
            Image = "spraycan-crocs.png",
        },
        ["scum"] = {
            Description = "Art.<br/><br/><b>Spray: Scum</b>",
            Image = "spraycan-scum.png",
        },
        ["ballas"] = {
            Description = "Art.<br/><br/><b>Spray: Ballas</b>",
            Image = "spraycan-ballas.png",
        },
        ["wutang"] = {
            Description = "Art.<br/><br/><b>Spray: Wu-Tang</b>",
            Image = "spraycan-wutang.png",
        },
        -- ["nameless"] = {
        --     Description = "Art.<br/><br/><b>Spray: The Nameless</b>",
        --     Image = "spraycan-nameless.png",
        -- },
        -- ["cosanostra"] = {
        --     Description = "Art.<br/><br/><b>Spray: Cosa Nostra</b>",
        --     Image = "spraycan-cosanostra.png",
        -- },
        ["cringeboys"] = {
            Description = "Art.<br/><br/><b>Spray: Cringe Boys</b>",
            Image = "spraycan-cringeboys.png",
        },
        ["21"] = {
            Description = "Art.<br/><br/><b>Spray: 21</b>",
            Image = "spraycan-21.png",
        },
        ["vatoslocos"] = {
            Description = "Art.<br/><br/><b>Spray: Vatos Loco's</b>",
            Image = "spraycan-vatoslocos.png",
        },
        ["bumpergang"] = {
            Description = "Art.<br/><br/><b>Spray: BumperGang</b>",
            Image = "spraycan-bumpergang.png",
        },
        ["getbackgang"] = {
            Description = "Art.<br/><br/><b>Spray: Get Back Gang</b>",
            Image = "spraycan-getbackgang.png",
        },
        ["dimeo"] = {
            Description = "Art.<br/><br/><b>Spray: DiMeo</b>",
            Image = "spraycan-dimeo.png",
        },
        ["blackcobras"] = {
            Description = "Art.<br/><br/><b>Spray: Black Cobras</b>",
            Image = "spraycan-blackcobras.png",
        },
        -- ["nls"] = {
        --     Description = "Art.<br/><br/><b>Spray: No Lost Soldiers</b>",
        --     Image = "spraycan-nls.png",
        -- },
        ["blacklist"] = {
            Description = "Art.<br/><br/><b>Spray: 626 Blacklist</b>",
            Image = "spraycan-blacklist.png",
        },
        ["sopranos"] = {
            Description = "Art.<br/><br/><b>Spray: Sopranos</b>",
            Image = "spraycan-sopranos.png",
        },
        ["s2n"] = {
            Description = "Art.<br/><br/><b>Spray: Second2None</b>",
            Image = "spraycan-s2n.png",
        },
        ["fts"] = {
            Description = "Art.<br/><br/><b>Spray: Fock The System</b>",
        },
        ["tffc"] = {
            Description = "Art.<br/><br/><b>Spray: Thieves & Crooks</b>",
            Image = "spraycan-tffc.png",
        },
    },
    ["evidence-collected"] = {
        ["Blood"] = {
            Description = "Lost blood?",
            Image = "evidence-red.png",
            Label = "evidence: Blood",
        },
        ["Finger"] = {
            Description = "Who would those fingerprints be?",
            Image = "evidence-green.png",
            Label = "evidence: Vingerafdruk",
        },
        ["Bullet"] = {
            Description = "Looks like someone fired an weapon..",
            Image = "evidence-orange.png",
            Label = "evidence: Bullet casings",
        },
    },
    ["customjoint"] = {
        ["1g"] = {
            Description = "!g joint.",
            Label = "1g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 1 },
                { Item = "weed-bag-1g", Amount = 1 },
            }
        },
        ["spacecake"] = {
            Description = "Spacecake.",
            Image = "spacecake.png",
            Label = "Spacecake",
            Craft = {
                { Item = "ingredient", CustomType = "Dairy", Amount = 1 },
                { Item = "ingredient", CustomType = "Wheat", Amount = 1 },
                { Item = "ingredient", CustomType = "Watermelon", Amount = 1 },
                { Item = "weed-bag-1g", Amount = 1 },
            }
        },
        ["hashbrownies"] = {
            Description = "If you're not lazy enough, you don't have to take a puff, eat some food - change your mood.",
            Image = "hashbrownies.png",
            Label = "Hash Brownies",
            Craft = {
                { Item = "ingredient", CustomType = "Dairy", Amount = 1 },
                { Item = "ingredient", CustomType = "Wheat", Amount = 1 },
                { Item = "ingredient", CustomType = "Watermelon", Amount = 1 },
                { Item = "weed-bag-1g", Amount = 1 },
            },
        },
        ["insideout"] = {
            Image = "joint-insideout.png",
            Description = "Nice joint 1-time use.",
            Label = "() 1g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 1 },
                { Item = "weed-bag-1g", Amount = 1 },
            }
        },
        ["cone"] = {
            Image = "joint-cone.png",
            Description = "Nice joint 2-time use.",
            Label = "(Cone) 2g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 3 },
                { Item = "weed-bag-1g", Amount = 3 },
            }
        },
        ["splitter"] = {
            Image = "joint-splitter.png",
            Description = "Nice joint 2-time use.",
            Label = "(Splitter) 2g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 3 },
                { Item = "weed-bag-1g", Amount = 3 },
            }
        },
        ["cross"] = {
            Image = "joint-cross.png",
            Description = "Nice joint 3-time use.",
            Label = "(Cross) 3g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 4 },
                { Item = "weed-bag-1g", Amount = 3 },
            }
        },
        ["tulp"] = {
            Image = "joint-tulp.png",
            Description = "Nice joint 4-time use.",
            Label = "(Tulp) 4g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 5 },
                { Item = "weed-bag-1g", Amount = 4 },
            }
        },
        ["windmill"] = {
            Image = "joint-windmill.png",
            Description = "Nice joint 5-time use.",
            Label = "(Windmill) 5g Joint",
            Craft = {
                { Item = 'rolling-paper', Amount = 6 },
                { Item = "weed-bag-1g", Amount = 5 },
            }
        },
    },

    ["antique-vase"] = {
        ["vase-1"] = {
            Image = "antique-vase-1.png",
        },
        ["vase-2"] = {
            Image = "antique-vase-2.png",
        },
        ["vase-3"] = {
            Image = "antique-vase-3.png",
        },
        ["vase-4"] = {
            Image = "antique-vase-4.png",
        },
        ["vase-5"] = {
            Image = "antique-vase-5.png",
        },
        ["vase-6"] = {
            Image = "antique-vase-6.png",
        },
    },
    ["painting"] = {
        ["painting-1"] = {
            Image = "painting-1.png",
        },
        ["painting-2"] = {
            Image = "painting-2.png",
        },
        ["painting-3"] = {
            Image = "painting-3.png",
        },
        ["painting-4"] = {
            Image = "painting-4.png",
        },
        ["painting-5"] = {
            Image = "painting-5.png",
        },
        ["painting-6"] = {
            Image = "painting-6.png",
        },
        ["painting-7"] = {
            Image = "painting-7.png",
        },
        ["painting-8"] = {
            Image = "painting-8.png",
        },
        ["painting-9"] = {
            Image = "painting-9.png",
        },
    },
}