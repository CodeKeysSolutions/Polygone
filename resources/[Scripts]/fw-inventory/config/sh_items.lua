Shared = Shared or {}
Shared.Items = {}

-- The higher the decay number, the longer it takes to decay. Lower means it breaks faster.

Shared.Items["repairhammer"] = {
    Name = "repairhammer",
    Label = "(DEV) Repair Hammer",
    Image = "w_sledgehammer.png",
    Description = "Abuser",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 0.0,
    Melee = false, HasProp = false,
    Price = 0,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["pistolparts"] = {
    Name = "pistolparts",
    Label = "Pistol Parts",
    Image = "w_pistol_parts.png",
    Description = "Illegal pistol components.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Melee = false, HasProp = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["shotgunparts"] = {
    Name = "shotgunparts",
    Label = "Shotgun Parts",
    Image = "w_shotgun_parts.png",
    Description = "Illegal shotgun components.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Melee = false, HasProp = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["riflebody"] = {
    Name = "riflebody",
    Label = "Rifle Body",
    Image = "w_rifle_body.png",
    Description = "Illegal rifle components.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Melee = false, HasProp = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["smgbody"] = {
    Name = "smgbody",
    Label = "SMG Body",
    Image = "w_smg_body.png",
    Description = "Illegal SMG components.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Melee = false, HasProp = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_huntingrifle"] = {
    Name = "weapon_huntingrifle",
    Label = "Hunting Rifle",
    Image = "w_huntingrifle.png",
    Description = "Only shoot animals with this, thank you.",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 500,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_empgun"] = {
    Name = "weapon_empgun",
    Label = "(PD) EMP Gun",
    Image = "w_empgun.png",
    Description = "There goes your car",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 7250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_remington"] = {
    Name = "weapon_remington",
    Label = "(PD) Pump Shotgun",
    Image = "w_remington.png",
    Description = "This thing will blow your head off if you're not careful..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 750,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_expedite"] = {
    Name = "weapon_expedite",
    Label = "Pump Shotgun",
    Image = "w_expedite.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 250,
    Craft = {
        { Item = 'steel', Amount = 1250 },
        { Item = 'copper', Amount = 1250 },
        { Item = 'metalscrap', Amount = 1250 },
        { Item = 'shotgunparts', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_rubberslug"] = {
    Name = "weapon_rubberslug",
    Label = "(PD) Rubber Shotgun",
    Image = "w_rubberslug.png",
    Description = "Is this a rubber shotgun, or does it shoot rubber?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 800,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_m4"] = {
    Name = "weapon_m4",
    Label = "(PD) Tactical Rifle",
    Image = "w_m4.png",
    Description = "Compensating for something?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 500,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_scar"] = {
    Name = "weapon_scar",
    Label = "(PD) Heavy Rifle",
    Image = "w_scar.png",
    Description = "Does this thing come from fortnut?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 600,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_groza"] = {
    Name = "weapon_groza",
    Label = "Bullpup Rifle",
    Image = "w_groza.png",
    Description = "Gro",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 1500 },
        { Item = 'plastic', Amount = 1500 },
        { Item = 'rubber', Amount = 1500 },
        { Item = 'riflebody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_m70"] = {
    Name = "weapon_m70",
    Label = "Military Rifle",
    Image = "w_m70.png",
    Description = "Looks nice!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 1500 },
        { Item = 'plastic', Amount = 1500 },
        { Item = 'rubber', Amount = 1500 },
        { Item = 'riflebody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_ak47"] = {
    Name = "weapon_ak47",
    Label = "Assault Rifle",
    Image = "w_ak47.png",
    Description = "Ratatata, am I in the ghetto?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_ak74"] = {
    Name = "weapon_ak74",
    Label = "Assault Rifle Mk2",
    Image = "w_ak74.png",
    Description = "Ratatata, am I in the ghetto?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 17.0,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 1500 },
        { Item = 'plastic', Amount = 1500 },
        { Item = 'rubber', Amount = 1500 },
        { Item = 'riflebody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_rpk"] = {
    Name = "weapon_rpk",
    Label = "Machine Gun",
    Image = "w_rpk.png",
    Description = "Should I shoot zombies with this?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 36.0,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_mpx"] = {
    Name = "weapon_mpx",
    Label = "(PD) PDW",
    Image = "w_mpx.png",
    Description = "Looks like a nice weapon..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 500,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_draco"] = {
    Name = "weapon_draco",
    Label = "SMG Mk2",
    Image = "w_draco.png",
    Description = "Does a dragon come out of this?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'metalscrap', Amount = 414 },
        { Item = 'copper', Amount = 348 },
        { Item = 'steel', Amount = 384 },
        { Item = 'smgbody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_mp5"] = {
    Name = "weapon_mp5",
    Label = "SMG",
    Image = "w_mp5.png",
    Description = "This thing gets out of hand.",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 270 },
        { Item = 'plastic', Amount = 540 },
        { Item = 'rubber', Amount = 270 },
        { Item = 'smgbody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_mp7"] = {
    Name = "weapon_mp7",
    Label = "(PD) Tactical SMG",
    Image = "w_mp7.png",
    Description = "Is this the MP5 but with compensation issues?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 500,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_mac10"] = {
    Name = "weapon_mac10",
    Label = "Mini SMG",
    Image = "w_mac10.png",
    Description = "Is this a menu at McDonald's?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'metalscrap', Amount = 414 },
        { Item = 'copper', Amount = 348 },
        { Item = 'steel', Amount = 384 },
        { Item = 'smgbody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_uzi"] = {
    Name = "weapon_uzi",
    Label = "Micro SMG",
    Image = "w_uzi.png",
    Description = "Looks like an Uzi..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.5,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {
        { Item = 'metalscrap', Amount = 414 },
        { Item = 'copper', Amount = 348 },
        { Item = 'steel', Amount = 384 },
        { Item = 'smgbody', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_colt"] = {
    Name = "weapon_colt",
    Label = "Ceramic Pistol",
    Image = "w_colt.png",
    Description = "I think this is from COD?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 2500,
    Craft = {
        { Item = 'aluminum', Amount = 45 },
        { Item = 'plastic', Amount = 45 },
        { Item = 'rubber', Amount = 45 },
        { Item = 'pistolparts', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_beretta"] = {
    Name = "weapon_beretta",
    Label = "Combat Pistol",
    Image = "w_beretta.png",
    Description = "Looks like a spicy gun..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 2500,
    Craft = {
        { Item = 'aluminum', Amount = 45 },
        { Item = 'plastic', Amount = 45 },
        { Item = 'rubber', Amount = 45 },
        { Item = 'pistolparts', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_fnx"] = {
    Name = "weapon_fnx",
    Label = "Vintage Pistol",
    Image = "w_fnx.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 2500,
    Craft = {
        { Item = 'steel', Amount = 195 },
        { Item = 'plastic', Amount = 45 },
        { Item = 'rubber', Amount = 45 },
        { Item = 'pistolparts', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_python"] = {
    Name = "weapon_python",
    Label = "Double-Action Revolver",
    Image = "w_python.png",
    Description = "Does this weapon come from the old west?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_diamond"] = {
    Name = "weapon_diamond",
    Label = "XM3 Pistol",
    Image = "w_diamond.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_heavypistol"] = {
    Name = "weapon_heavypistol",
    Label = "Heavy Pistol",
    Image = "w_heavypistol.png",
    Description = "Wow, this thing is really heavy!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 11.0,
    Melee = false,
    Price = 1,
    Craft = {
        { Item = 'steel', Amount = 195 },
        { Item = 'plastic', Amount = 195 },
        { Item = 'rubber', Amount = 195 },
        { Item = 'pistolparts', Amount = 2 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_glock"] = {
    Name = "weapon_glock",
    Label = "(PD) Pistol",
    Image = "w_glock.png",
    Description = "For the real gangsters!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 175,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_fn57"] = {
    Name = "weapon_fn57",
    Label = "(PD) Pistol Mk2",
    Image = "w_fn57.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 175,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_fn502"] = {
    Name = "weapon_fn502",
    Label = "SNS Pistol",
    Image = "w_fn502.png",
    Description = "For the real gangsters!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 2500,
    Craft = {
        { Item = 'steel', Amount = 195 },
        { Item = 'plastic', Amount = 45 },
        { Item = 'rubber', Amount = 45 },
        { Item = 'pistolparts', Amount = 1 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_glock18c"] = {
    Name = "weapon_glock18c",
    Label = "AP Pistol",
    Image = "w_appistol.png",
    Description = "For the real gangsters, but automatic, so a bit less cool.",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 720 },
        { Item = 'plastic', Amount = 630 },
        { Item = 'pistolparts', Amount = 2 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_taser"] = {
    Name = "weapon_taser",
    Label = "(PD) Taser",
    Image = "w_taser.png",
    Description = "Nice with a couple of pins in your back, lovely!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false,
    Price = 35,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_paintball"] = {
    Name = "weapon_paintball",
    Label = "Paintball Gun",
    Image = "w_paintball.png",
    Description = "Is this what you paint with?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 8.5,
    Melee = false, HasProp = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_katana"] = {
    Name = "weapon_katana",
    Label = "Katana",
    Image = "w_katana.png",
    Description = "Is this the REAL Hattori Hanzō katana?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true, HasProp = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_bat"] = {
    Name = "weapon_bat",
    Label = "Bat",
    Image = "w_bat.png",
    Description = "You really are a bat..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 14,
    Melee = true, HasProp = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_machete"] = {
    Name = "weapon_machete",
    Label = "Machete",
    Image = "w_machete.png",
    Description = "Shank on hip",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15,
    Melee = true, HasProp = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_sledgeham"] = {
    Name = "weapon_sledgeham",
    Label = "Sledgehammer",
    Image = "w_sledgehammer.png",
    Description = "I think this comes from Miley Cyrus' song Wrecking Ball!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true, HasProp = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_flashlight"] = {
    Name = "weapon_flashlight",
    Label = "Flashlight",
    Image = "w_flashlight.png",
    Description = "Isn't this the thing you play with?",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_nightstick"] = {
    Name = "weapon_nightstick",
    Label = "(PD) Baton",
    Image = "w_nightstick.png",
    Description = "Good for the anus.",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_switchblade"] = {
    Name = "weapon_switchblade",
    Label = "Shank",
    Image = "w_shank.png",
    Description = "Fresh from England.",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_shiv"] = {
    Name = "weapon_shiv",
    Label = "Shiv",
    Image = "w_shiv.png",
    Description = "For the crooks in prison..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 3 },
        { Item = 'metalscrap', Amount = 3 },
    },
    DecayRate = 0.7,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_wrench"] = {
    Name = "weapon_wrench",
    Label = "Pipe Wrench",
    Image = "w_wrench.png",
    Description = "A good hit against the wrong pipe and it's over.",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_poolcue"] = {
    Name = "weapon_poolcue",
    Label = "Pool Cue",
    Image = "w_poolcue.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_hammer"] = {
    Name = "weapon_hammer",
    Label = "Hammer",
    Image = "w_hammer.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_crowbar"] = {
    Name = "weapon_crowbar",
    Label = "Crowbar",
    Image = "w_crowbar.png",
    Description = "",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 250,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_bats"] = {
    Name = "weapon_bats",
    Label = "Wooden Bat",
    Image = "w_bat.png",
    Description = "Honestly, I just play basketball with this..",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_shoe"] = {
    Name = "weapon_shoe",
    Label = "Shoe",
    Image = "w_shoes.png",
    Description = "Don't smell it, it can stink..",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_snowball"] = {
    Name = "weapon_snowball",
    Label = "Snowball",
    Image = "w_snowball.png",
    Description = "This is a ball, made of snow.",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0.0,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_snowballlauncher"] = {
    Name = "weapon_snowballlauncher",
    Label = "Snowball Launcher",
    Image = "w_snowballlauncher.png",
    Description = "This thing shoots snowballs.",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_banana"] = {
    Name = "weapon_banana",
    Label = "Banana",
    Image = "banana.png",
    Description = "At least you can suck on something...",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_brick"] = {
    Name = "weapon_brick",
    Label = "Brick",
    Image = "brick.png",
    Description = "Bob the Builder can we fix it!",
    Weapon = true, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5.0,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_grenade"] = {
    Name = "weapon_grenade",
    Label = "Grenade",
    Image = "w_grenade.png",
    Description = "I think this goes boom!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 5.0,
    Melee = true,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 1600 },
        { Item = 'metalscrap', Amount = 1600 },
        { Item = 'rubber', Amount = 1600 },
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weapon_stickybomb"] = {
    Name = "weapon_stickybomb",
    Label = "Sticky Bomb",
    Image = "w_c4.png",
    Description = "BIEM!",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.0,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["silencer_oilcan"] = {
    Name = "silencer_oilcan",
    Label = "Oil Filter",
    Image = "oilcan.png",
    Description = "Old, used oil filter. Doesn't seem to last long.",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.0,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 45 },
        { Item = 'copper', Amount = 45 },
        { Item = 'steel', Amount = 45 },
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["silencer"] = {
    Name = "silencer",
    Label = "Silencer",
    Image = "Silencer.png",
    Description = "High quality silencer though..",
    Weapon = true, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15.0,
    Price = 1,
    Craft = {
        { Item = 'aluminum', Amount = 49 },
        { Item = 'copper', Amount = 57 },
        { Item = 'steel', Amount = 69 },
        { Item = 'rubber', Amount = 101 },
    },
    DecayRate = 0.8,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["laptop"] = {
    Name = "laptop",
    Label = "Laptop",
    Image = "laptop.png",
    Description = "Clarity (os) 2.0",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 7500,
    Craft = {
        { Item = 'electronics', Amount = 300 }
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["hacking_device"] = {
    Name = "hacking_device",
    Label = "Tracker Disabling Tool",
    Image = "hacking_device.png",
    Description = "Plug this in and keep driving.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {
        { Item = 'copper', Amount = 225 },
        { Item = 'glass', Amount = 225 },
        { Item = 'electronics', Amount = 225 },
        { Item = 'aluminum', Amount = 225 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["security_hacking_device"] = {
    Name = "security_hacking_device",
    Label = "Security System Hacking Device",
    Image = "security_hacking_device.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {
        { Item = 'copper', Amount = 149 },
        { Item = 'rubber', Amount = 149 },
        { Item = 'plastic', Amount = 149 },
        { Item = 'aluminum', Amount = 149 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["fake_plate"] = {
    Name = "fake_plate",
    Label = "Fake Plate Kit",
    Image = "fake_plate.png",
    Description = "Used to change a vehicle's license plate - 1 time use.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 50,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["ammo"] = {
    Name = "ammo",
    Label = "Ammo",
    Image = "ammo-pistol.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 10,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["herion_syringe"] = {
    Name = "herion_syringe",
    Label = "Syringe",
    Image = "herion_sryinge.png",
    Description = "This thing injects, just like you.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 150,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["narcose_syringe"] = {
    Name = "narcose_syringe",
    Label = "Anesthesia Syringe",
    Image = "narcose_syringe.png",
    Description = "An anesthesia syringe..",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 150,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["handcuffs"] = {
    Name = "handcuffs",
    Label = "Handcuffs",
    Image = "cuffs.png",
    Description = "Please keep me out of the bedroom..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {
        { Item = 'metalscrap', Amount = 500 },
    },
    DecayRate = 0.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["lockpick"] = {
    Name = "lockpick",
    Label = "Lockpick Set",
    Image = "lockpick.png",
    Description = "Works wonders, if you know what to do with it..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 800,
    Craft = {
        { Item = 'aluminum', Amount = 8 },
        { Item = 'plastic', Amount = 5 },
        { Item = 'rubber', Amount = 5 },
    },
    DecayRate = 0.45,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["megaphone"] = {
    Name = "megaphone",
    Label = "Megaphone",
    Image = "megaphone.png",
    Description = "Don't talk so loud..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 0.2,
    Price = 600,
    Craft = {
        { Item = 'plastic', Amount = 11 },
        { Item = 'metalscrap', Amount = 2 },
        { Item = 'electronics', Amount = 8 },
    },
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["radio"] = {
    Name = "radio",
    Label = "Standard Radio",
    Image = "radio.png",
    Description = "You use this to chat with each other on certain frequencies, but if you get caught during a crime you'll lose it..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 3000,
    Craft = {
        { Item = 'plastic', Amount = 22 },
        { Item = 'aluminum', Amount = 40 },
        { Item = 'metalscrap', Amount = 28 },
        { Item = "electronics", Amount = 27 },
    },
    DecayRate = 0.6,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["pdradio"] = {
    Name = "pdradio",
    Label = "(PD) Walkie Talkie",
    Image = "radio.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 200,
    Craft = {
        { Item = 'plastic', Amount = 29 },
        { Item = 'aluminum', Amount = 62 },
        { Item = 'metalscrap', Amount = 35 },
        { Item = "electronics", Amount = 30 },
    },
    DecayRate = 0.6,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["pdcamera"] = {
    Name = "pdcamera",
    Label = "(PD) Camera",
    Image = "camera.png",
    Description = "Does this thing still work? Otherwise just use your smartphone..<br/><br/>Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 1250,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["bloodvial"] = {
    Name = "bloodvial",
    Label = "Blood Sample",
    Image = "bloodvial.png",
    Description = "A sample of blood?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.0,
    Price = 0.0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["armor"] = {
    Name = "armor",
    Label = "Chest Armor",
    Image = "armor.png",
    Description = "Now you don't feel that shank so much anymore..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 37,
    Price = 400,
    Craft = {
        { Item = 'aluminum', Amount = 8 },
        { Item = 'plastic', Amount = 8 },
        { Item = 'rubber', Amount = 8 },
    },
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heavyarmor"] = {
    Name = "heavyarmor",
    Label = "(PD) Chest Armor",
    Image = "armor.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 37,
    Price = 50,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["lighter"] = {
    Name = "lighter",
    Label = "Lighter",
    Image = "lighter.png",
    Description = "Be careful with those fireworks..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 100,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["binoculars"] = {
    Name = "binoculars",
    Label = "Binoculars",
    Image = "binoculars.png",
    Description = "Peeking at the neighbors..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 300,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["nitrous"] = {
    Name = "nitrous",
    Label = "Nitro Bottle",
    Image = "nitrous.png",
    Description = "Step on it with that lollipop..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 35,
    Price = 300,
    Craft = {
        { Item = "aluminum", Amount = 900 },
        { Item = "plastic", Amount = 38 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["pickaxe"] = {
    Name = "pickaxe",
    Label = "My Pickaxe",
    Image = "pickaxe.png",
    Description = "Nice Minecrafting..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 20,
    Price = 1,
    Craft = {},
    DecayRate = 0.00277,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["repairkit"] = {
    Name = "repairkit",
    Label = "Repair Kit",
    Image = "repairkit.png",
    Description = "A box full of tools.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 150,
    Craft = {
        { Item = "electronics", Amount = 38 }
    },
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["tirekit"] = {
    Name = "tirekit",
    Label = "Tire Repair Set",
    Image = "tirekit.png",
    Description = "To patch up some tires.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 20,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["harness"] = {
    Name = "harness",
    Label = "Racing Harness",
    Image = "harness.png",
    Description = "So you don't get YEETED anymore..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10000,
    Craft = {
        { Item = "rubber", Amount = 15 },
    },
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["advlockpick"] = {
    Name = "advlockpick",
    Label = "Large Lock Pick",
    Image = "advlockpick.png",
    Description = "Works wonders, if you know what to do with it..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 2500,
    Craft = {
        { Item = 'aluminum', Amount = 26 },
        { Item = 'plastic', Amount = 18 },
        { Item = 'steel', Amount = 39 },
        { Item = 'metalscrap', Amount = 51 },
    },
    DecayRate = 0.6,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["electronickit"] = {
    Name = "electronickit",
    Label = "Electronic Kit",
    Image = "electronickit.png",
    Description = "A kind of motherboard?!?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 15,
    Price = 900,
    Craft = {
        { Item = 'electronics', Amount = 420 },
    },
    DecayRate = 0.2,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["markedbills"] = {
    Name = "markedbills",
    Label = "Inked Money",
    Image = "markedbills.png",
    Description = "A bag with ink?",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false, HasProp = true,
    IsBag = false, Weight = 0,
    Price = 300,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["inkedmoneybag"] = {
    Name = "inkedmoneybag",
    Label = "Bag of Inked Money",
    Image = "markedbills.png",
    Description = "There's quite a bit of $$$ in here.. Let the bag cool down for a few days first..",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false, HasProp = true,
    IsBag = false, Weight = 0,
    Price = 300,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["rolex"] = {
    Name = "rolex",
    Label = "Gold Watch",
    Image = "gold-rolex.png",
    Description = "Does this thing work?",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 50,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["goldchain"] = {
    Name = "goldchain",
    Label = "Gold Necklace",
    Image = "gold-necklace.png",
    Description = "What a beautiful gold necklace this is.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 2230,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["goldbar"] = {
    Name = "goldbar",
    Label = "Gold Bar",
    Image = "gold-bar.png",
    Description = "Big heavy bar of gold.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 6,
    Price = 2000,
    Craft = {
        { Item = "goldnugget", Amount = 3 }
    },
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["goldnugget"] = {
    Name = "goldnugget",
    Label = "Gold Nugget",
    Image = "goldnugget.png",
    Description = "A nugget of gold.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 2000,
    Craft = {
        { Item = "golddust", Amount = 9 }
    },
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["golddust"] = {
    Name = "golddust",
    Label = "Gold Dust",
    Image = "golddust.png",
    Description = "Can you make a curtain with this?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 2000,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond-blue"] = {
    Name = "diamond-blue",
    Label = "Blue Diamond",
    Image = "diamond-blue.png",
    Description = "A blue diamond? Is it real?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond-yellow"] = {
    Name = "diamond-yellow",
    Label = "Yellow Diamond",
    Image = "diamond-yellow.png",
    Description = "Who peed on this diamond?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["cult-necklace"] = {
    Name = "cult-necklace",
    Label = "Cult Necklace",
    Image = "cult-necklace.png",
    Description = "A cult is a religion with no political power",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["white-pearl"] = {
    Name = "white-pearl",
    Label = "White Pearl",
    Image = "white-pearl.png",
    Description = "Caught in an oyster, freed for sale",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond-skull"] = {
    Name = "diamond-skull",
    Label = "Diamond Skull",
    Image = "diamond-skull.png",
    Description = "How many diamonds are on my head?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond-chessboard"] = {
    Name = "diamond-chessboard",
    Label = "Chessboard",
    Image = "diamond-chessboard.png",
    Description = "Expensive game of chess..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heirloom"] = {
    Name = "heirloom",
    Label = "Signet Ring",
    Image = "heirloom.png",
    Description = "Champion!!!!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1.5,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["platinum-record"] = {
    Name = "platinum-record",
    Label = "Platinum Record",
    Image = "platinum-record.png",
    Description = "Small hit...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["gold-record"] = {
    Name = "gold-record",
    Label = "Gold Record",
    Image = "gold-record.png",
    Description = "Hit....",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond-record"] = {
    Name = "diamond-record",
    Label = "Diamond Record",
    Image = "diamond-record.png",
    Description = "Big hit....",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["diamond"] = {
    Name = "diamond",
    Label = "Diamond",
    Image = "diamond.png",
    Description = "A diamond from 1918.. Wow, nice thing",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["stolen-tv"] = {
    Name = "stolen-tv",
    Label = "Flat Panel TV",
    Image = "stolen-tv.png",
    Description = "What a flat thing..",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 50,
    Price = 710,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["stolen-pc"] = {
    Name = "stolen-pc",
    Label = "Computer",
    Image = "stolen-pc.png",
    Description = "Good for a few roleplay sessions.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 50,
    Price = 475,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["stolen-micro"] = {
    Name = "stolen-micro",
    Label = "Microwave",
    Image = "stolen-micro.png",
    Description = "Popcorn with it, delicious.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 50,
    Price = 440,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["wheelchair"] = {
    Name = "wheelchair",
    Label = "Wheelchair",
    Image = "wheelchair.png",
    Description = "Are you lame or something?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 20,
    Price = 150,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["scootmobile"] = {
    Name = "scootmobile",
    Label = "Mobility Scooter",
    Image = "scootmobile.png",
    Description = "For those old fat guys",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 30,
    Price = 5000,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["oxy-box"] = {
    Name = "oxy-box",
    Label = "Suspicious Package",
    Image = "oxy-box.png",
    Description = "Package covered with tape and milk stickers. Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 25,
    Price = 0,
    Craft = {},
    DecayRate = 0.002,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["money-roll"] = {
    Name = "money-roll",
    Label = "Money Roll",
    Image = "money-roll.png",
    Description = "This isn't Euro? Should I put cocaine in here or something?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.02,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["recycle-mats"] = {
    Name = "recycle-mats",
    Label = "Recyclable Material",
    Image = "recycle-mats.png",
    Description = "A bin with recyclable stuff..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 20,
    Craft = {},
    DecayRate = 0.3,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["plastic"] = {
    Name = "plastic",
    Label = "Plastic",
    Image = "plastic.png",
    Description = "Don't throw this on the street!",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["metalscrap"] = {
    Name = "metalscrap",
    Label = "Metal Scrap",
    Image = "metalscrap.png",
    Description = "You can probably make something sturdy with this.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["copper"] = {
    Name = "copper",
    Label = "Copper",
    Image = "copper.png",
    Description = "Handy piece of metal you can probably use.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["aluminum"] = {
    Name = "aluminum",
    Label = "Aluminum",
    Image = "aluminum.png",
    Description = "Handy piece of metal you can probably use.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["steel"] = {
    Name = "steel",
    Label = "Steel",
    Image = "steel.png",
    Description = "Handy piece of metal you can probably use.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["rubber"] = {
    Name = "rubber",
    Label = "Rubber",
    Image = "rubber.png",
    Description = "Juicy piece of rubber..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["glass"] = {
    Name = "glass",
    Label = "Glass Plate",
    Image = "glassplate.png",
    Description = "It's quite fragile.. Be careful.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["electronics"] = {
    Name = "electronics",
    Label = "Electronics",
    Image = "electronics.png",
    Description = "Can I make a computer with this?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.04,
    Price = 0,
    Craft = {
        { Item = "recycle-mats", Amount = 1 }
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heavy-thermite"] = {
    Name = "heavy-thermite",
    Label = "Thermite Charge",
    Image = "hthermite.png",
    Description = "Wow this is very flammable..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 6,
    Price = 250,
    Craft = {
        { Item = 'aluminum', Amount = 113 },
        { Item = 'copper', Amount = 113 },
        { Item = 'rubber', Amount = 75 },
        { Item = 'plastic', Amount = 113 },
        { Item = 'electronics', Amount = 150 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["coin"] = {
    Name = "coin",
    Label = "Lucky Coin",
    Image = "coin.png",
    Description = "A lucky coin that will give you luck??",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 40,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["dice"] = {
    Name = "dice",
    Label = "Dice",
    Image = "dice.png",
    Description = "Set of dice for gambling.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 40,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["jail-food"] = {
    Name = "jail-food",
    Label = "Food Tray",
    Image = "jailfood.png",
    Description = "Looks just as bad as the Police's aim..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 25,
    Price = 0,
    Craft = {},
    DecayRate = 0.001,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["bandage"] = {
    Name = "bandage",
    Label = "Bandage",
    Image = "bandage.png",
    Description = "Bandage for your small wounds and bleeding.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = .25,
    Price = 85,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["ifak"] = {
    Name = "ifak",
    Label = "(PD) IFAK",
    Image = "ifak.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.25,
    Price = 85,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["medkit"] = {
    Name = "medkit",
    Label = "(PD) Medical Kit",
    Image = "medkit.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.25,
    Price = 15,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["oxy"] = {
    Name = "oxy",
    Label = "Oxycodone 100mg",
    Image = "oxy.png",
    Description = "Exactly 100 milligrams of pretty heavy medication.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["lsd-strip"] = {
    Name = "lsd-strip",
    Label = "Stamp",
    Image = "postzegel.png",
    Description = "Where is the mail going?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 200,
    Craft = {},
    DecayRate = 0.3,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["joint"] = {
    Name = "joint",
    Label = "3g Joint",
    Image = "joint.png",
    Description = "A joint for your lips.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.2,
    Price = 1,
    Craft = {
        { Item = 'rolling-paper', Amount = 2 },
        { Item = 'weed-dried-bud-two', Amount = 2 },
    },
    DecayRate = 0.2,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["customjoint"] = {
    Name = "customjoint",
    Label = "3g Joint",
    Image = "joint.png",
    Description = "A joint for your lips.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.2,
    Price = 1,
    Craft = {},
    DecayRate = 0.2,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["health-pack"] = {
    Name = "health-pack",
    Label = "First Aid Kit",
    Image = "bandage.png",
    Description = "Something with first aid?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 525,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["bong"] = {
    Name = "bong",
    Label = "Bong",
    Image = "bong.png",
    Description = "Bong",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {
        { Item = "steel", Amount = 40 },
        { Item = "aluminum", Amount = 30 },
        { Item = "copper", Amount = 30 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["phone"] = {
    Name = "phone",
    Label = "Phone",
    Image = "phone.png",
    Description = "To call your girlfriend that you don't have..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 1000,
    Craft = {
        { Item = 'plastic', Amount = 45 },
        { Item = 'metalscrap', Amount = 8 },
        { Item = 'electronics', Amount = 30 },
    },
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["burnerphone"] = {
    Name = "phone",
    Label = "Burner Phone",
    Image = "phone.png",
    Description = "Disposable phone for calling and texting only. - Marked for confiscation.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 5,
    Craft = {
        { Item = 'plastic', Amount = 135 },
        { Item = 'metalscrap', Amount = 23 },
        { Item = 'electronics', Amount = 90 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["sandwich"] = {
    Name = "sandwich",
    Label = "Sandwich",
    Image = "bread.png",
    Description = "A sandwich with toppings.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["water_bottle"] = {
    Name = "water_bottle",
    Label = "Water",
    Image = "water.png",
    Description = "Just a nice drink.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["slushy"] = {
    Name = "slushy",
    Label = "The best slushy ever",
    Image = "slushy.png",
    Description = "The only thing that tastes good in prison.. Quite a heavy cup though..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 15,
    Price = 60,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["kurkakola"] = {
    Name = "kurkakola",
    Label = "E-Cola",
    Image = "ecola.png",
    Description = "Can of E-cola delicious huh.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["sprunk"] = {
    Name = "sprunk",
    Label = "Sprunk",
    Image = "sprunk.png",
    Description = "Sprunkie with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["whiskey"] = {
    Name = "whiskey",
    Label = "Whiskey",
    Image = "whiskey.png",
    Description = "Best with ice cubes.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["beer"] = {
    Name = "beer",
    Label = "Beer",
    Image = "beer.png",
    Description = "Beer with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["beer-heineken"] = {
    Name = "beer-heineken",
    Label = "Heineken",
    Image = "beer-heineken.png",
    Description = "Beer with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["beer-hertogjan"] = {
    Name = "beer-hertogjan",
    Label = "Hertog Jan",
    Image = "beer-hertogjan.png",
    Description = "Beer with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["beer-grolsch"] = {
    Name = "beer-grolsch",
    Label = "Grolsch",
    Image = "beer-grolsch.png",
    Description = "Beer with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["red-wine"] = {
    Name = "red-wine",
    Label = "Red Wine",
    Image = "red-wine.png",
    Description = "Red wine with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["white-wine"] = {
    Name = "white-wine",
    Label = "White Wine",
    Image = "white-wine.png",
    Description = "White wine with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["bacardi"] = {
    Name = "bacardi",
    Label = "Bacardi",
    Image = "bacardi.png",
    Description = "Bacardi with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vodka"] = {
    Name = "vodka",
    Label = "Vodka",
    Image = "vodka.png",
    Description = "Vodka with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["goldstrike"] = {
    Name = "goldstrike",
    Label = "Shot of Goldstrike",
    Image = "goldstrike.png",
    Description = "Shot with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["flugel"] = {
    Name = "flugel",
    Label = "Shot of Flugel",
    Image = "flugel.png",
    Description = "Shot with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["goldstrike"] = {
    Name = "goldstrike",
    Label = "Shot of Tequila",
    Image = "tequila.png",
    Description = "Shot with it?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-split"] = {
    Name = "cocktail-split",
    Label = "Split",
    Image = "cocktail-split.png",
    Description = "Oohhh a COCKtail.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-pinacolada"] = {
    Name = "cocktail-pinacolada",
    Label = "Pina Colada",
    Image = "cocktail-pinacolada.png",
    Description = "Oohhh a COCKtail.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-aperolspritz"] = {
    Name = "cocktail-aperolspritz",
    Label = "Aperol Spritz",
    Image = "cocktail-aperolspritz.png",
    Description = "Oohhh a COCKtail.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["chocolade"] = {
    Name = "chocolade",
    Label = "Chocolate Bar",
    Image = "chocolade.png",
    Description = "A chocolate bar watch out you might get fat.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["coffee"] = {
    Name = "coffee",
    Label = "Coffee",
    Image = "coffee.png",
    Description = "Nice for in the morning.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["420-choco"] = {
    Name = "420-choco",
    Label = "420 Chocolate Bar",
    Image = "420-choco.png",
    Description = "Is this bar from Jonko Jay?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.2,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["chips"] = {
    Name = "chips",
    Label = "Chips",
    Image = "chips.png",
    Description = "Nice chips.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["macncheese"] = {
    Name = "macncheese",
    Label = "Mac and Cheese",
    Image = "macncheese.png",
    Description = "Just like Grandma used to make.. Delicious!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["fristi"] = {
    Name = "fristi",
    Label = "Fristi",
    Image = "Fristi.png",
    Description = "Rosy-colored poison?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["chocomelk"] = {
    Name = "chocomelk",
    Label = "Chocolate Milk",
    Image = "chocomelk.png",
    Description = "Liquid poop in a bottle",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["fernandes"] = {
    Name = "fernandes",
    Label = "Fernandes",
    Image = "fernandes.png",
    Description = "Nice and sweet",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["mint"] = {
    Name = "mint",
    Label = "Peppermint",
    Image = "pepermint.png",
    Description = "Freshen up your stinky mouth",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-1"] = {
    Name = "cocktail-1",
    Label = "Naughty Bullet",
    Image = "cocktail-1.png",
    Description = "Oohhh a COCKtail.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-2"] = {
    Name = "cocktail-2",
    Label = "Arju(n) Hot",
    Image = "cocktail-2.png",
    Description = "This is very pink.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cocktail-3"] = {
    Name = "cocktail-3",
    Label = "Noahs Ark",
    Image = "cocktail-3.png",
    Description = "Looks delicious and tropical.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 80,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["scuba-gear"] = {
    Name = "scuba-gear",
    Label = "Diving Gear",
    Image = "scuba-gear.png",
    Description = "Hope you don't suffocate..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 45,
    Price = 2500,
    Craft = {},
    DecayRate = 1.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["fishingrod"] = {
    Name = "fishingrod",
    Label = "Fishing Rod",
    Image = "fishingrod.png",
    Description = "Time for some fishing..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 100,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["fish"] = {
    Name = "fish",
    Label = "Fish",
    Image = "fish-bass.png",
    Description = "A bass not the guitar bass but the fish bass.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 1,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["plasticbag"] = {
    Name = "plasticbag",
    Label = "Plastic Bag",
    Image = "plasticbag.png",
    Description = "Bag over the head and go, right??",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["shoe"] = {
    Name = "shoe",
    Label = "Old Shoe",
    Image = "shoe.png",
    Description = "Sporty little shoe huh.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["hunting-knife"] = {
    Name = "hunting-knife",
    Label = "Hunting Knife",
    Image = "hunting-knife.png",
    Description = "Don't play The Knife Goes Chop Chop Chop with this..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 11,
    Price = 100,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["hunting-bait"] = {
    Name = "hunting-bait",
    Label = "Bait",
    Image = "hunting-bait.png",
    Description = "This is not for human consumption I think.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 50,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["hunting-carcass-one"] = {
    Name = "hunting-carcass-one",
    Label = "Poor Carcass",
    Image = "hunting-carcass1.png",
    Description = "What is this? Did you shoot the animal with an AK?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 50,
    Price = 0,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["hunting-carcass-two"] = {
    Name = "hunting-carcass-two",
    Label = "Normal Carcass",
    Image = "hunting-carcass2.png",
    Description = "Not a bad carcass actually..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 50,
    Price = 0,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["hunting-carcass-three"] = {
    Name = "hunting-carcass-three",
    Label = "Perfect Carcass",
    Image = "hunting-carcass3.png",
    Description = "This could still bring in some good profit..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 50,
    Price = 0,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["hunting-carcass-four"] = {
    Name = "hunting-carcass-four",
    Label = "Perfect Carcass",
    Image = "hunting-carcass4.png",
    Description = "Is this carcass even legal?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 50,
    Price = 0,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["licence"] = {
    Name = "licence",
    Label = "License",
    Image = "licence.png",
    Description = "Official documents.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["id_card"] = {
    Name = "id_card",
    Label = "Identity Card",
    Image = "license-id.png",
    Description = "A card with all your details on it.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 500,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["driver_license"] = {
    Name = "driver_license",
    Label = "Driver's License",
    Image = "license-drive.png",
    Description = "Proof that you can operate a vehicle.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 500,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["big-repair"] = {
    Name = "big-repair",
    Label = "Large Repair Kit",
    Image = "big-repair.png",
    Description = "A large repair set.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 20,
    Price = 100,
    Craft = {
        { Item = "electronics", Amount = 23 },
        { Item = "aluminum", Amount = 23 },
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["walkstick"] = {
    Name = "walkstick",
    Label = "Walking Stick",
    Image = "walkstick.png",
    Description = "For the old men.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 150,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["jerry_can"] = {
    Name = "jerry_can",
    Label = "Jerrycan",
    Image = "jerry_can.png",
    Description = "I usually smell this I find it delicious.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 8,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["parachute"] = {
    Name = "parachute",
    Label = "Parachute",
    Image = "parachute.png",
    Description = "For the real daredevils.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 30,
    Price = 350,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["moneybag"] = {
    Name = "moneybag",
    Label = "Bag of Money",
    Image = "moneybag.png",
    Description = "There's some money in here I think.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["rentalpapers"] = {
    Name = "rentalpapers",
    Label = "Rental Papers",
    Image = "rentalpapers.png",
    Description = "Proof of payment. Use to get an extra set of keys.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.018,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["xray-brain"] = {
    Name = "xray-brain",
    Label = "Brain MRI",
    Image = "xray-hersen.png",
    Description = "A brain MRI of someone.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["xray-arm"] = {
    Name = "xray-arm",
    Label = "Arm X-ray",
    Image = "xray-arm.png",
    Description = "An arm x-ray of someone.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["teddy"] = {
    Name = "teddy",
    Label = "Teddy Bear",
    Image = "teddy.png",
    Description = "Hug me.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["melissa-teddy"] = {
    Name = "melissa-teddy",
    Label = "Teddy",
    Image = "melissa-teddy.png",
    Description = "I would keep the zipper closed..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["umbrella"] = {
    Name = "umbrella",
    Label = "Umbrella",
    Image = "umbrella.png",
    Description = "To get less wet..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 500,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["hat"] = {
    Name = "hat",
    Label = "Cap",
    Image = "hat.png",
    Description = "A little hat.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["mask"] = {
    Name = "mask",
    Label = "Mask",
    Image = "mask.png",
    Description = "A little mask",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["glasses"] = {
    Name = "glasses",
    Label = "Glasses",
    Image = "glasses.png",
    Description = "A little glasses",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["hairtie"] = {
    Name = "hairtie",
    Label = "Scrunchie",
    Image = "scrunchie.png",
    Description = "We all know what this is really for...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 25,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["vpn"] = {
    Name = "vpn",
    Label = "VPN",
    Image = "vpn.png",
    Description = "Can I use this to connect to other countries?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 300,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

-- Shared.Items["printerdocument"] = {
--     Name = "printerdocument",
--     Label = "Document",
--     Image = "printerdocument.png",
--     Description = "",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 0,
--     Price = 0,
--     Craft = {},
--     DecayRate = 0.0,
--     FullDecay = false,
--     InsertInto = {},
-- }

Shared.Items["spikestrip"] = {
    Name = "spikestrip",
    Label = "(PD) Spike Strip",
    Image = "spikestrip.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 12,
    Price = 450,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["welcome"] = {
    Name = "welcome",
    Label = "Welcome Gift",
    Image = "welcome.png",
    Description = "A gift for a new citizen!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.02,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["bitterbal"] = {
    Name = "bitterbal",
    Label = "Bitterball",
    Image = "bitterbal.png",
    Description = "Nice little bitterball.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 250,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["frikandel"] = {
    Name = "frikandel",
    Label = "Frikandel Sandwich",
    Image = "frikandel.png",
    Description = "Nice little frikandel",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 250,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["car-polish"] = {
    Name = "car-polish",
    Label = "Fantastic Polish Set",
    Image = "car-polish.png",
    Description = "To keep your car sparkling clean..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {
        { Item = "water_bottle", Amount = 1 },
        { Item = "plastic", Amount = 8 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cannabiscup"] = {
    Name = "cannabiscup",
    Label = "Trophy",
    Image = "cannabiscup.png",
    Description = "A real winner, that's you!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Shared.Items["printer"] = {
--     Name = "printer",
--     Label = "Printer",
--     Image = "printer.png",
--     Description = "Iets met inkt en wat papier...",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 30,
--     Price = 3000,
--     Craft = {
--         { Item = 'plastic', Amount = 60 },
--         { Item = 'aluminum', Amount = 128 },
--         { Item = 'metalscrap', Amount = 75 },
--         { Item = "electronics", Amount = 60 },
--     },
--     DecayRate = 0.0,
--     FullDecay = false,
--     InsertInto = {},
-- }

-- Shared.Items["printer-pack-paper"] = {
--     Name = "printer-pack-paper",
--     Label = "Printer Pak Papier",
--     Image = "printer-pack-paper.png",
--     Description = "Een pak, met wat papiertjes..",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 7,
--     Price = 685,
--     Craft = {
--         { Item = 'plastic', Amount = 45 },
--     },
--     DecayRate = 5.0,
--     FullDecay = true,
--     InsertInto = {},
-- }

-- Shared.Items["printer-paper"] = {
--     Name = "printer-paper",
--     Label = "Printer Papier",
--     Image = "printer-paper.png",
--     Description = "Wat zal je dit keer op het papier afdrukken?",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = false,
--     IsBag = false, Weight = 1,
--     Price = 0,
--     Craft = {},
--     DecayRate = 0.0,
--     FullDecay = false,
--     InsertInto = {},
-- }

Shared.Items["nightvision"] = {
    Name = "nightvision",
    Label = "Night Vision",
    Image = "nightvision.png",
    Description = "Mil-Spec. High price, low quality.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 5000,
    Craft = {},
    DecayRate = 0.2,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["ingredient"] = {
    Name = "ingredient",
    Label = "Ingredient",
    Image = "ingredient.png",
    Description = "Used to make food.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.5,
    Price = 1,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-mystery-box"] = {
    Name = "uwu-mystery-box",
    Label = "Mystery Box",
    Image = "uwu-toy-package.png",
    Description = "Contains a random UwU Cafe toy.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-biker"] = {
    Name = "uwu-toy-biker",
    Label = "Biker Kitty",
    Image = "uwu-toy-biker.png",
    Description = "UwU Cafe (1/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Shared.Items["uwu-toy-banggang"] = {
--     Name = "uwu-toy-banggang",
--     Label
--     Description = "UwU Cafe (2/11). Collect them all!",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = false,
--     IsBag = false, Weight = 1,
--     Price = 0,
--     Craft = {},
--     DecayRate = 0.0,
--     FullDecay = false,
--     InsertInto = {},
-- }

Shared.Items["uwu-toy-business"] = {
    Name = "uwu-toy-business",
    Label = "Business Kitty",
    Image = "uwu-toy-business.png",
    Description = "UwU Cafe (2/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-burglar"] = {
    Name = "uwu-toy-burglar",
    Label = "Burglar Kitty",
    Image = "uwu-toy-burglar.png",
    Description = "UwU Cafe (3/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-doctor"] = {
    Name = "uwu-toy-doctor",
    Label = "Doctor Kitty",
    Image = "uwu-toy-doctor.png",
    Description = "UwU Cafe (4/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Shared.Items["uwu-toy-cringe"] = {
--     Name = "uwu-toy-cringe",
--     Label = "Cringe Boys Kitty",
--     Image = "uwu-toy-cringe.png",
--     Description = "UwU Cafe (6/11). Collect them all!",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = false,
--     IsBag = false, Weight = 1,
--     Price = 0,
--     Craft = {},
--     DecayRate = 0.0,
--     FullDecay = false,
--     InsertInto = {},
-- }

Shared.Items["uwu-toy-fisher"] = {
    Name = "uwu-toy-fisher",
    Label = "Fisher Kitty",
    Image = "uwu-toy-fisher.png",
    Description = "UwU Cafe (5/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-maid"] = {
    Name = "uwu-toy-maid",
    Label = "Maid Kitty",
    Image = "uwu-toy-maid.png",
    Description = "UwU Cafe (6/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-officer"] = {
    Name = "uwu-toy-officer",
    Label = "Police Kitty",
    Image = "uwu-toy-officer.png",
    Description = "UwU Cafe (7/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-wizard"] = {
    Name = "uwu-toy-wizard",
    Label = "Witch Kitty",
    Image = "uwu-toy-wizard.png",
    Description = "UwU Cafe (8/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["uwu-toy-worker"] = {
    Name = "uwu-toy-worker",
    Label = "Construction Kitty",
    Image = "uwu-toy-worker.png",
    Description = "UwU Cafe (9/9). Collect them all!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-binder"] = {
    Name = "tcg-binder",
    Label = "Trading Card Binder",
    Image = "tcg-binder.png",
    Description = "A binder to store all Trading Cards in.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-card"] = {
    Name = "tcg-card",
    Label = "Trading Card",
    Image = "tcg-card.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-case"] = {
    Name = "tcg-case",
    Label = "Hard Case",
    Image = "tcg-case.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-booster"] = {
    Name = "tcg-booster",
    Label = "Booster Pack",
    Image = "tcg-booster.png",
    Description = "All set booster pack with 3 cards.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-civbooster"] = {
    Name = "tcg-civbooster",
    Label = "Booster Pack",
    Image = "tcg-civbooster.png",
    Description = "Civ set booster pack with 3 cards.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-crewbooster"] = {
    Name = "tcg-crewbooster",
    Label = "Booster Pack",
    Image = "tcg-crewbooster.png",
    Description = "Crew set booster pack with 3 cards.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-govbooster"] = {
    Name = "tcg-govbooster",
    Label = "Booster Pack",
    Image = "tcg-govbooster.png",
    Description = "Gov set booster pack with 3 cards.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-promobooster"] = {
    Name = "tcg-promobooster",
    Label = "Booster Pack",
    Image = "tcg-promobooster.png",
    Description = "All set booster pack with 6 cards.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tcg-promopack"] = {
    Name = "tcg-promopack",
    Label = "Promotional Pack",
    Image = "tcg-promopack.png",
    Description = "2x Civs Booster - 2x Crews Booster 2x Gov Booster",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["business-ticket"] = {
    Name = "business-ticket",
    Label = "Order Ticket",
    Image = "business-ticket.png",
    Description = "This has an order on it that needs to be completed quickly!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.15,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["worstenbroodje"] = {
    Name = "worstenbroodje",
    Label = "Sausage Roll",
    Image = "sausageroll.png",
    Description = "A roll with a Brabant touch.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["moneycase"] = {
    Name = "moneycase",
    Label = "Briefcase",
    Image = "moneycase.png",
    Description = "Good for about $50k in large bills",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 500,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["advmoneycase"] = {
    Name = "advmoneycase",
    Label = "Large Briefcase",
    Image = "advmoneycase.png",
    Description = "Good for about $100k in large bills",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 20,
    Price = 1000,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["explosive"] = {
    Name = "explosive",
    Label = "Explosive",
    Image = "explosive.png",
    Description = "Be careful with that firework..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 15,
    Price = 4500,
    Craft = {
        { Item = "metalscrap", Amount = 1400 },
        { Item = "plastic", Amount = 1800 },
        { Item = "rubber", Amount = 320 },
        { Item = "electronickit", Amount = 5 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["business-bag"] = {
    Name = "business-bag",
    Label = "Business Bag",
    Image = "business-bag.png",
    Description = "This contains some nice stuff.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = true, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["zombie-antidote"] = {
    Name = "zombie-antidote",
    Label = "Infection Antidote",
    Image = "syringe.png",
    Description = "A syringe with some green stuff in it..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["receipt"] = {
    Name = "receipt",
    Label = "Receipt",
    Image = "business-ticket.png",
    Description = "A receipt with some codes written on it..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 500,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["yacht-pad"] = {
    Name = "yacht-pad",
    Label = "Pepega Pad",
    Image = "yacht-pad.png",
    Description = "Preconfigured for access to certain systems. Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 1,
    Craft = {},
    DecayRate = 0.075,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heist-codes"] = {
    Name = "heist-codes",
    Label = "Authorization Codes",
    Image = "business-ticket.png",
    Description = "Temporary code to disable certain security systems. Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 500,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["foodchain-food-item"] = {
    Name = "foodchain-food-item",
    Label = "Food",
    Image = "foodchain-food-item.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 5,
    Craft = {},
    DecayRate = 0.04,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["foodchain-side-item"] = {
    Name = "foodchain-side-item",
    Label = "Side",
    Image = "foodchain-side-item.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 5,
    Craft = {},
    DecayRate = 0.04,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["foodchain-dessert-item"] = {
    Name = "foodchain-dessert-item",
    Label = "Dessert",
    Image = "foodchain-dessert-item.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 5,
    Craft = {},
    DecayRate = 0.04,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["foodchain-drink-item"] = {
    Name = "foodchain-drink-item",
    Label = "Drink",
    Image = "foodchain-drink-item.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 5,
    Craft = {},
    DecayRate = 0.04,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["foodchain-alcohol-item"] = {
    Name = "foodchain-alcohol-item",
    Label = "Alcohol",
    Image = "foodchain-alcohol-item.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 5,
    Craft = {},
    DecayRate = 0.04,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["detcord"] = {
    Name = "detcord",
    Label = "(PD) Detonation Cord",
    Image = "detcord.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5.0,
    Price = 150,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["cryptostick"] = {
    Name = "cryptostick",
    Label = "Crypto Stick",
    Image = "cryptostick.png",
    Description = "A USB with 0 Crypto on it.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 750,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["farming-seed"] = {
    Name = "farming-seed",
    Label = "Seed",
    Image = "farming-seed.png",
    Description = "Seed.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 100,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = { 'farming-hoe' },
}

Shared.Items["farming-seedbag"] = {
    Name = "farming-seedbag",
    Label = "Bag of Seeds",
    Image = "farming-seedbag.png",
    Description = "A bag with seeds 💦. Keep your seed collection safely with you.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true,
    IsBag = true, Weight = 1,
    Price = 200,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["producebasket"] = {
    Name = "producebasket",
    Label = "Fruit Basket",
    Image = "producebasket.png",
    Description = "A hand-woven basket to store your harvest yields.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true,
    IsBag = true, Weight = 5,
    Craft = {},
    Price = 340,
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["farming-wateringcan"] = {
    Name = "farming-wateringcan",
    Label = "Watering Can",
    Image = "farming-wateringcan.png",
    Description = "Water?",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 2,
    Price = 700,
    Craft = {},
    DecayRate = 5.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["farming-pitchfork"] = {
    Name = "farming-pitchfork",
    Label = "Pitchfork",
    Image = "farming-pitchfork.png",
    Description = "Pitchfork, to stick in your butt.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 1100,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["farming-hoe"] = {
    Name = "farming-hoe",
    Label = "Hoe",
    Image = "farming-hoe.png",
    Description = "Can be used to plant multiple seeds at once.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Price = 900,
    Craft = {},
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["gang-chain"] = {
    Name = "gang-chain",
    Label = "Chain: Loser",
    Image = "gold-necklace.png",
    Description = "You're a loser if you have this chain..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1.0,
    Price = 10,
    Craft = {
        { Item = "goldbar", Amount = 3 },
        { Item = 'aluminum', Amount = 150 },
        { Item = "copper", Amount = 150 },
    },
    DecayRate = 0.25,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["identification-badge"] = {
    Name = "identification-badge",
    Label = "Badge",
    Image = "badge.png",
    Description = "A badge to identify that you work somewhere.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["newscamera"] = {
    Name = "newscamera",
    Label = "News Camera",
    Image = "newscamera.png",
    Description = "A bit dusty.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 11,
    Price = 100,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["newsmic"] = {
    Name = "newsmic",
    Label = "News Microphone",
    Image = "newsmic.png",
    Description = "Is this thing on?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 100,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["goldpan"] = {
    Name = "goldpan",
    Label = "Gold Pan",
    Image = "goldpan.png",
    Description = "Nice item.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 6500,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["jewelry-part"] = {
    Name = "jewelry-part",
    Label = "Jewelry Part",
    Image = "jewelry-part.png",
    Description = "A part of jewelry, if you sell this it could fetch a good price!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {
        { Item = 'golddust', Amount = 5 }
    },
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["lawnchair"] = {
    Name = "lawnchair",
    Label = "Lawn Chair",
    Image = "lawnchair.png",
    Description = "Sit comfortably in your backyard.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 0.85,
    Price = 300,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Weed
Shared.Items["fertilizer"] = {
    Name = "fertilizer",
    Label = "Fertilizer",
    Image = "fertilizer.png",
    Description = "Did you shit in this?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2.5,
    Price = 76,
    Craft = {
        { Item = "ingredient", CustomType = "Cabbage", Amount = 2 },
        { Item = "ingredient", CustomType = "Carrot", Amount = 2 },
        { Item = "ingredient", CustomType = "Potato", Amount = 2 },
        { Item = "ingredient", CustomType = "Tomato", Amount = 2 },
    },
    DecayRate = 0.25,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["weed-seed-male"] = {
    Name = "weed-seed-male",
    Label = "Weed Seed (M)",
    Image = "weed-seeds.png",
    Description = "Let my children grow!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1.5,
    Price = 1,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-seed-female"] = {
    Name = "weed-seed-female",
    Label = "Weed Seed (F)",
    Image = "weed-seeds.png",
    Description = "Let my children grow!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1.5,
    Price = 101,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-branch"] = {
    Name = "weed-branch",
    Label = "Weed Branch",
    Image = "weed-branch.png",
    Description = "The best smell ever!!!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false, HasProp = true,
    IsBag = false, Weight = 25.0,
    Price = 1,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-dried-bud-one"] = {
    Name = "weed-dried-bud-one",
    Label = "Dried Bud (7g)",
    Image = "weed-dried-bud-one.png",
    Description = "The best smell ever!!!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5.0,
    Price = 1,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-dried-bud-two"] = {
    Name = "weed-dried-bud-two",
    Label = "Dried Bud (3g)",
    Image = "weed-dried-bud-one.png",
    Description = "The best smell ever!!!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3.0,
    Price = 1,
    Craft = {
        { Item = 'weed-dried-bud-one', Amount = 2 },
    },
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-bag"] = {
    Name = "weed-bag",
    Label = "Bag (7g)",
    Image = "weed-bagged.png",
    Description = "Sold on the street yo.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.7,
    Price = 1,
    Craft = {
        { Item = 'emptybaggies', Amount = 2 },
        { Item = 'weed-dried-bud-one', Amount = 2 },
    },
    DecayRate = 0.3,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["weed-bag-1g"] = {
    Name = "weed-bag-1g",
    Label = "Bag (1g)",
    Image = "weed-bagged.png",
    Description = "Sold on the street yo.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.7,
    Price = 1,
    Craft = {
        { Item = 'emptybaggies', Amount = 7 },
        { Item = 'weed-dried-bud-one', Amount = 1 },
    },
    DecayRate = 0.3,
    FullDecay = false,
    InsertInto = { "bong" },
}

Shared.Items["rolling-paper"] = {
    Name = "rolling-paper",
    Label = "Rolling Paper",
    Image = "rollingpaper.png",
    Description = "Required to roll joints!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.3,
    Price = 2,
    Craft = {},
    DecayRate = 0.3,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["emptybaggies"] = {
    Name = "emptybaggies",
    Label = "Empty Baggies",
    Image = "m_emptybaggies.png",
    Description = "Why is this empty?!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.1,
    Price = 8,
    Craft = {
        { Item = "plastic", Amount = 1 },
    },
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["scales"] = {
    Name = "scales",
    Label = "Scales",
    Image = "scales.png",
    Description = "Is this even accurate?!",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 2.5,
    Price = 95,
    Craft = {
        { Item = "metalscrap", Amount = 4 },
        { Item = "aluminum", Amount = 3 },
        { Item = "electronics", Amount = 3 },
    },
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["generic-mechanic-part"] = {
    Name = "generic-mechanic-part",
    Label = "Mechanical Part",
    Image = "generic-mechanic-part-a.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-clutch"] = {
    Name = "vehicle-clutch",
    Label = "Clutch (?)",
    Image = "clutch-a.png",
    Description = "Unknown Clutch Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-axle"] = {
    Name = "vehicle-axle",
    Label = "Drive Axle (?)",
    Image = "axle-a.png",
    Description = "Unknown Drive Axle Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-brakes"] = {
    Name = "vehicle-brakes",
    Label = "Brakes (?)",
    Image = "brakes-a.png",
    Description = "Unknown Brakes Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-engine"] = {
    Name = "vehicle-engine",
    Label = "Engine (?)",
    Image = "engine-a.png",
    Description = "Unknown Engine Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-injectors"] = {
    Name = "vehicle-injectors",
    Label = "Injectors (?)",
    Image = "injectors-a.png",
    Description = "Unknown Fuel Injectors Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["vehicle-transmission"] = {
    Name = "vehicle-transmission",
    Label = "Transmission (?)",
    Image = "transmission-a.png",
    Description = "Unknown Transmission Class",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = true,
    InsertInto = {},
}

-- 2.1
Shared.Items["gang-spray"] = {
    Name = "gang-spray",
    Label = "Spray Can",
    Image = "spraycan.png",
    Description = "A spray can.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 2,
    Price = 10,
    Craft = {},
    DecayRate = 0.066,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["scrubbingcloth"] = {
    Name = "scrubbingcloth",
    Label = "Scrubbing Cloth",
    Image = "scrubbingcloth.png",
    Description = "Seems to dry quickly..",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 35,
    Price = 100,
    Craft = {},
    DecayRate = 0.000694,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["mugoftea"] = {
    Name = "mugoftea",
    Label = "Mug of Tea",
    Image = "mugoftea.png",
    Description = "Slurp, slurp...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Shared.Items["casino-member"] = {
--     Name = "casino-member",
--     Label = "Casino Lidmaatschap",
--     Image = "casino_member.png",
--     Description = "Alle spelletjes, al het plezier. Diamond Casino.",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 1,
--     Price = 1,
--     Craft = {},
--     DecayRate = 0.25,
--     FullDecay = true,
--     InsertInto = {},
-- }

-- Shared.Items["casino-vip"] = {
--     Name = "casino-vip",
--     Label = "High Roller Lidmaatschap",
--     Image = "casino_member_high.png",
--     Description = "Meer doekoes uitgeven. Diamond Casino.",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 1,
--     Price = 1,
--     Craft = {},
--     DecayRate = 0.25,
--     FullDecay = true,
--     InsertInto = {},
-- }

-- Shared.Items["casino-loyalty"] = {
--     Name = "casino-loyalty",
--     Label = "Loyalty Lidmaatschap",
--     Image = "casino_member.png",
--     Description = "%gamba",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 1,
--     Price = 1,
--     Craft = {},
--     DecayRate = 0.25,
--     FullDecay = true,
--     InsertInto = {},
-- }

-- Shared.Items["casino-free-ticket"] = {
--     Name = "casino-free-ticket",
--     Label = "Gratis Spin!",
--     Image = "casino_spin.png",
--     Description = "Gratis! Gratis! Spin!",
--     Weapon = false, Illegal = false,
--     Metal = false, NonStack = true,
--     IsBag = false, Weight = 1,
--     Price = 1,
--     Craft = {},
--     DecayRate = 0.25,
--     FullDecay = true,
--     InsertInto = {},
-- }

-- Drugs
Shared.Items["cocainebrick"] = {
    Name = "cocainebrick",
    Label = "Airtight Cocaine Brick (1kg)",
    Image = "cocainebrick.png",
    Description = "Good shit cuz",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false, HasProp = true,
    IsBag = false, Weight = 20,
    Price = 50000,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["10gcocaine"] = {
    Name = "10gcocaine",
    Label = "10g Cocaine",
    Image = "cocainebaggy.png",
    Description = "Smells like high quality cook.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 100,
    Craft = {
        { Item = "cocainebrick", Amount = 2 }
    },
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = { "ammonium-bicarbonate" },
}

Shared.Items["5gcocaine"] = {
    Name = "5gcocaine",
    Label = "Coke Baggy (5g)",
    Image = "cocainebaggy.png",
    Description = "I think you can make drywall with this.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 100,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["5gcrack"] = {
    Name = "5gcrack",
    Label = "5g Crack",
    Image = "crackbaggy.png",
    Description = "Pancakes Crackers.. craving?",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 100,
    Craft = {
        { Item = "bakingsoda", Amount = 2 },
        { Item = "5gcocaine", Amount = 2 },
    },
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = { "crackpipe" },
}

Shared.Items["bakingsoda"] = {
    Name = "bakingsoda",
    Label = "Baking Soda",
    Image = "bakingsoda.png",
    Description = "You're supposed to sprinkle this on pancakes, divine!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["ammonium-bicarbonate"] = {
    Name = "ammonium-bicarbonate",
    Label = "Ammonium Bicarbonate",
    Image = "ammonium-bicarbonate.png",
    Description = "Very good at breaking things down. This compound has many names, reflecting its long history",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 50,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["crackpipe"] = {
    Name = "crackpipe",
    Label = "Crack Pipe",
    Image = "crackpipe.png",
    Description = "HMMM YAAAASSS",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 0,
    Craft = {
        { Item = 'glass', Amount = 15 },
        { Item = '5gcrack', Amount = 2 },
    },
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["methusb"] = {
    Name = "methusb",
    Label = "USB Device",
    Image = "heist-usb-black.png",
    Description = "What could you possibly do with this?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["methtable"] = {
    Name = "methtable",
    Label = "A Table",
    Image = "methtable.png",
    Description = "Looks like a table you can place.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 50,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["methbatch"] = {
    Name = "methbatch",
    Label = "Batch of Raw Meth",
    Image = "methbatch.png",
    Description = "Crystalline. Needs to be stored somewhere cool and dry to harden.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 15,
    Price = 0,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["methcured"] = {
    Name = "methcured",
    Label = "Batch of Cured Meth",
    Image = "methcured.png",
    Description = "Ready for bagging!",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 15,
    Price = 0,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["1gmeth"] = {
    Name = "1gmeth",
    Label = "Meth (1g)",
    Image = "meth.png",
    Description = "",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = { "methpipe" },
}

Shared.Items["methpipe"] = {
    Name = "methpipe",
    Label = "Meth Pipe",
    Image = "methpipe.png",
    Description = "Good shit cuz",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 0,
    Craft = {
        { Item = 'glass', Amount = 113 },
        { Item = '1gmeth', Amount = 2 },
    },
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["floorcleaner"] = {
    Name = "floorcleaner",
    Label = "Floor Cleaner",
    Image = "floorcleaner.png",
    Description = "A bottle of floor cleaner with a large amount of hard drugs in it..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 5,
    Price = 0,
    Craft = {},
    DecayRate = 0.01,
    FullDecay = true,
    InsertInto = {},
}

-- Beehives
Shared.Items["bee-wax"] = {
    Name = "bee-wax",
    Label = "Beeswax",
    Image = "bee-wax.png",
    Description = "This is really sticky wtf..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.75,
    Price = 1,
    Craft = {},
    DecayRate = 0.2,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["bee-queen"] = {
    Name = "bee-queen",
    Label = "Queen Bee",
    Image = "bee-queen.png",
    Description = "Looks like this is the queen!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.15,
    Price = 125,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["beehive"] = {
    Name = "beehive",
    Label = "Beehive",
    Image = "beehive.png",
    Description = "ZZZzzzZZZZzzzzzzzz..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 11.5,
    Price = 450,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["carwax"] = {
    Name = "carwax",
    Label = "Car Wax Kit",
    Image = "carwax.png",
    Description = "Nice to spread beeswax over your car so it gets dirty less quickly..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {
        { Item = "bee-wax", Amount = 5 },
        { Item = "water_bottle", Amount = 1 },
        { Item = "plastic", Amount = 9 },
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

-- Stealing rims hehe
Shared.Items["screwdriver"] = {
    Name = "screwdriver",
    Label = "Screwdriver",
    Image = "screwdriver.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["stolen-vehicle-rim"] = {
    Name = "stolen-vehicle-rim",
    Label = "Vehicle Rim",
    Image = "stolen-vehicle-rim.png",
    Description = "Looks like a rim?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["evidence"] = {
    Name = "evidence",
    Label = "Evidence Marker",
    Image = "evidence-yellow.png",
    Description = "Use to mark evidence.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0.15,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = { 'dna-reader' },
}

Shared.Items["evidence-collected"] = {
    Name = "evidence-collected",
    Label = "Evidence Marker",
    Image = "evidence-yellow.png",
    Description = "Use to mark evidence.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0.15,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = { 'dna-reader' },
}

Shared.Items["dna-reader"] = {
    Name = "dna-reader",
    Label = "(PD) DNA Reader",
    Image = "dna-reader.png",
    Description = "Can be used to read DNA.<br/><br/>Government-issued equipment (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 15,
    Price = 150,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["tow-rope"] = {
    Name = "tow-rope",
    Label = "Tow Rope",
    Image = "tow-rope.png",
    Description = "Can be attached to a car, but maybe also to other things..?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 10,
    Craft = {},
    DecayRate = 0.2,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["atm-blackbox"] = {
    Name = "atm-blackbox",
    Label = "Black Box",
    Image = "atm-blackbox.png",
    Description = "How did you pull this thing out of the wall again..?",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 100,
    Price = 10,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Heists rework
Shared.Items["heist-loot"] = {
    Name = "heist-loot",
    Label = "Valuable Goods",
    Image = "valuable-goods.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-loot-usb"] = {
    Name = "heist-loot-usb",
    Label = "USB Device",
    Image = "h_usb_device.png",
    Description = "I think there's some illegal Crypto on this.. Marked for confiscation.",
    Weapon = false, Illegal = true,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-usb"] = {
    Name = "heist-usb",
    Label = "USB",
    Image = "heist-usb-green.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 10,
    Price = 1,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heist-laptop"] = {
    Name = "heist-laptop",
    Label = "Laptop",
    Image = "heist-laptop-green.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 1,
    Craft = {},
    DecayRate = 0.0075,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heist-decrypter-basic"] = {
    Name = "heist-decrypter-basic",
    Label = "Basic Decrypter",
    Image = "h_decrypter_basic.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-decrypter-adv"] = {
    Name = "heist-decrypter-adv",
    Label = "Advanced Decrypter",
    Image = "h_decrypter_adv.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-decrypter-hard"] = {
    Name = "heist-decrypter-hard",
    Label = "Hardened Decrypter",
    Image = "h_decrypter_hard.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-drill-basic"] = {
    Name = "heist-drill-basic",
    Label = "Basic Drill",
    Image = "h_drill_basic.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-drill-adv"] = {
    Name = "heist-drill-adv",
    Label = "Advanced Drill",
    Image = "h_drill_adv.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-drill-hard"] = {
    Name = "heist-drill-hard",
    Label = "Hardened Drill",
    Image = "h_drill_hard.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-electronic-kit-adv"] = {
    Name = "heist-electronic-kit-adv",
    Label = "Advanced Electronic Kit",
    Image = "h_electronickit_adv.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-electronic-kit-hard"] = {
    Name = "heist-electronic-kit-hard",
    Label = "Hardened Electronic Kit",
    Image = "h_electronickit_hard.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["jammingdevice"] = {
    Name = "jammingdevice",
    Label = "Jamming Device",
    Image = "radioscanner.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-entrykeycard"] = {
    Name = "heist-entrykeycard",
    Label = "Entry Keycard",
    Image = "h_entrykeycard.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 10,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-keycard-vault"] = {
    Name = "heist-keycard-vault",
    Label = "Keycard",
    Image = "h_keycard_vault.png",
    Description = "Keycard for certain safes.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 10,
    Craft = {},
    DecayRate = 0.1,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-box"] = {
    Name = "heist-box",
    Label = "Box",
    Image = "h_box.png",
    Description = "A box made from 6 planks.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 10,
    Craft = {},
    DecayRate = 0.0075,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["heist-safecracking"] = {
    Name = "heist-safecracking",
    Label = "Safe Cracking Tool",
    Image = "h_safecracking.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 0,
    Craft = {},
    DecayRate = 0.2,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heist-safe-codes"] = {
    Name = "heist-safe-codes",
    Label = "Private Note",
    Image = "business-ticket.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.07,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["gruppe6"] = {
    Name = "gruppe6",
    Label = "G6 Card",
    Image = "gruppe6.png",
    Description = "Looks useful..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Racing
Shared.Items["racing-usb"] = {
    Name = "racing-usb",
    Label = "Phone USB",
    Image = "c_racing_usb.png",
    Description = "Marked for confiscation.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["racing-usb-pd"] = {
    Name = "racing-usb-pd",
    Label = "(PD) Phone USB",
    Image = "c_racing_usb.png",
    Description = "Gives you access to the Time Trials app",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["adrenaline"] = {
    Name = "adrenaline",
    Label = "Adrenaline Pen",
    Image = "adrenaline.png",
    Description = "Not just any pen, but a pen full of adrenaline.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["ibuprofen"] = {
    Name = "ibuprofen",
    Label = "Ibuprofen 400mg",
    Image = "ibuprofen.png",
    Description = "A box of ibuprofen pills. Only available with a prescription from Crusade Medical Center.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["ketamine"] = {
    Name = "ketamine",
    Label = "Ketamine 200mg",
    Image = "ketamine.png",
    Description = "Good anesthetic, though for pussies.. Only available with a prescription from Crusade Medical Center.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["melatonin"] = {
    Name = "melatonin",
    Label = "Melatonin 299mcg",
    Image = "melatonin.png",
    Description = "Sleep tight, sausage.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["morphine"] = {
    Name = "morphine",
    Label = "Morphine 15mg",
    Image = "morphine.png",
    Description = "Time to get nice and drowsy, bring it on. Only available with a prescription from Crusade Medical Center.",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["painkillers"] = {
    Name = "painkillers",
    Label = "Paracetamol 500mg",
    Image = "painkillers.png",
    Description = "I heard if you take 20 you'll get some stomach pain and then sleep wonderfully..",
    Weapon = false, Illegal = true,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 3,
    Price = 1,
    Craft = {},
    DecayRate = 0.75,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["food-box"] = {
    Name = "food-box",
    Label = "Bag of Food",
    Image = "food-box.png",
    Description = "Ooh I'd sneak some if I were you!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true, HasProp = true,
    IsBag = false, Weight = 25,
    Price = 0,
    Craft = {},
    DecayRate = 0.002,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["metaldetector"] = {
    Name = "metaldetector",
    Label = "Metal Detector",
    Image = "metaldetector.png",
    Description = "If I believe the internet, you can find golddiggers with this..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 20,
    Price = 25000,
    Craft = {
        { Item = 'aluminum', Amount = 300 },
        { Item = 'copper', Amount = 300 },
        { Item = 'rubber', Amount = 300 },
        { Item = 'plastic', Amount = 300 },
    },
    DecayRate = 0.5,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["trowel"] = {
    Name = "trowel",
    Label = "Trowel",
    Image = "trowel.png",
    Description = "Handy for digging small holes..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 2,
    Price = 400,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["heavy-cutters"] = {
    Name = "heavy-cutters",
    Label = "Bolt Cutters",
    Image = "heavy-cutters.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 9,
    Price = 700,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

-- Polaroid
Shared.Items["polaroid-camera"] = {
    Name = "polaroid-camera",
    Label = "Polaroid Camera",
    Image = "m_polaroid_camera.png",
    Description = "Take some nice pictures..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 10,
    Price = 1300,
    Craft = {
        {Item = 'glass', Amount = 57},
        {Item = 'plastic', Amount = 57},
        {Item = 'aluminum', Amount = 32},
    },
    DecayRate = 1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["polaroid-paper"] = {
    Name = "polaroid-paper",
    Label = "Polaroid Film",
    Image = "m_polaroid_paper.png",
    Description = "You probably need this to take a picture..",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 10,
    Craft = {
        {Item = 'plastic', Amount = 6},
    },
    DecayRate = 1,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["polaroid-photo"] = {
    Name = "polaroid-photo",
    Label = "Polaroid Photo",
    Image = "m_polaroid_photo.png",
    Description = "A photo taken with a polaroid camera.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1,
    Price = 0,
    Craft = {},
    DecayRate = 1,
    FullDecay = false,
    InsertInto = {"polaroid-binder"},
}

Shared.Items["polaroid-binder"] = {
    Name = "polaroid-binder",
    Label = "Polaroid Photo Album",
    Image = "m_polaroid_binder.png",
    Description = "A photo album for polaroid photos",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 5,
    Price = 1500,
    Craft = {
        {Item = 'plastic', Amount = 111},
        {Item = 'aluminum', Amount = 9},
    },
    DecayRate = 0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["polaroid-battery"] = {
    Name = "polaroid-battery",
    Label = "Polaroid Battery Pack",
    Image = "m_polaroid_battery.png",
    Description = "A battery for a polaroid",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Price = 900,
    Craft = {
        {Item = 'aluminum', Amount = 35},
    },
    DecayRate = 0.1,
    FullDecay = true,
    InsertInto = {"polaroid-camera"},
}

Shared.Items["pdwatch"] = {
    Name = "pdwatch",
    Label = "PD Watch & Compass",
    Image = "m_watch.png",
    Description = "Equipment issued by the government (PD/EMS)",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0.0,
    Price = 50,
    Craft = {},
    DecayRate = 0.6,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["book"] = {
    Name = "book",
    Label = "Book",
    Image = "book.png",
    Description = "",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0.0,
    Price = 400,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["paper"] = {
    Name = "paper",
    Label = "Paper",
    Image = "paper.png",
    Description = "Paper to write a book with.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 1.0,
    Price = 25,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["walkman"] = {
    Name = "walkman",
    Label = "Walkman",
    Image = "walkman.png",
    Description = "This brings back nostalgia, an old device to listen to old fart music...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 1.0,
    Price = 100,
    Craft = {
        { Item = "plastic", Amount = 9 },
        { Item = "electronics", Amount = 9 }
    },
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["musictape"] = {
    Name = "musictape",
    Label = "Cassette Tape",
    Image = "musictape.png",
    Description = "An empty cassette tape...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = true,
    IsBag = false, Weight = 0.0,
    Price = 1,
    Craft = {
        { Item = "plastic", Amount = 2 },
        { Item = "electronics", Amount = 2 }
    },
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = { "walkman" },
}

Shared.Items["goldbanana"] = {
    Name = "goldbanana",
    Label = "Golden Banana",
    Image = "goldbanana.png",
    Description = "At least you can still suck on something...",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = true,
    IsBag = false, Weight = 4.5,
    Melee = true,
    Price = 1,
    Craft = {},
    DecayRate = 2.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["arcadetoken"] = {
    Name = "arcadetoken",
    Label = "Arcade Token",
    Image = "arcadetoken.png",
    Description = "You can use this to insert into the arcade machines at Coopers Arcade.",
    Weapon = false, Illegal = false,
    Metal = true, NonStack = false,
    IsBag = false, Weight = 1,
    Melee = false,
    Price = 1,
    Craft = {},
    DecayRate = 0.5,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["notepad"] = {
    Name = "notepad",
    Label = "Notepad",
    Image = "notepad.png",
    Description = "A notepad with 10 pages...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Melee = false,
    Price = 200,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["notepad-page"] = {
    Name = "notepad-page",
    Label = "A Note",
    Image = "notepad-page.png",
    Description = "A note with text?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Melee = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["antique-vase"] = {
    Name = "antique-vase",
    Label = "Antique Vase",
    Image = "antique-vase-1.png",
    Description = "An antique vase, I'd sell it!",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Melee = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["painting"] = {
    Name = "painting",
    Label = "Painting",
    Image = "painting-1.png",
    Description = "Is this finger paint?",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 2,
    Melee = false,
    Price = 0,
    Craft = {},
    DecayRate = 0.0,
    FullDecay = false,
    InsertInto = {},
}

Shared.Items["panicbutton"] = {
    Name = "panicbutton",
    Label = "Panic Button",
    Image = "panicbutton.png",
    Description = "Use to send a panic alert.",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 0,
    Melee = false,
    Price = 10,
    Craft = {},
    DecayRate = 1.0,
    FullDecay = true,
    InsertInto = {},
}

Shared.Items["radioscanner"] = {
    Name = "radioscanner",
    Label = "Radio Scanner",
    Image = "radioscanner.png",
    Description = "A device to pick up random radio communications...",
    Weapon = false, Illegal = false,
    Metal = false, NonStack = false,
    IsBag = false, Weight = 15.0,
    Price = 500,
    Craft = {
        { Item = 'aluminum', Amount = 2504 },
        { Item = 'plastic', Amount = 1168 },
        { Item = 'rubber', Amount = 1168 },
    },
    DecayRate = 1.0,
    FullDecay = false,
    InsertInto = {},
}
   