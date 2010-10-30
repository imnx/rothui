
  -- // rFilter3
  -- // zork - 2010

  --get the addon namespace
  local addon, ns = ...
  
  --object container
  local cfg = CreateFrame("Frame") 
  
  cfg.rf3_BuffList, cfg.rf3_DebuffList, cfg.rf3_CooldownList = {}, {}, {}
  
  local player_name, _ = UnitName("player")
  local _, player_class = UnitClass("player")
  
  local spec = GetActiveTalentGroup()
  
  cfg.spec = spec
  
  -----------------------------
  -- CONFIG
  -----------------------------  
  
  cfg.highlightPlayerSpells = true

  --now with spec possible.
  -- 1 is your first spec
  -- 2 is your second spec
  
  if player_name == "Rothar" and player_class == "WARRIOR" and (spec == 1 or spec == 2) then
  
    --Rothars Buff List
  
    cfg.rf3_BuffList = {
      [1] = {
        spellid = 469, --commanding shout
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 130, y = 110 },
        unit = "player",
        ismine = false,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [2] = {
        spellid = 6673, --battle shout
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 95, y = 110 },
        unit = "player",
        ismine = false,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [3] = {
        spellid = 18499, --berserker rage
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 130, y = 145 },
        unit = "player",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0,
            icon = 0.6,          
          },
        },
      },
      [4] = {
        spellid = 2565, --shield block
        size = 42,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 0, y = 150 },
        unit = "player",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0,
            icon = 0.6,          
          },
        },
      },
    }
    
    --Rothars Debuff List
    
    cfg.rf3_DebuffList = {
      [1] = {
        spellid = 58567, --sunder armor
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -130, y = 110},
        unit = "target",
        ismine = false,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [2] = {
        spellid = 6343, --thunderclap
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -95, y = 110 },
        unit = "target",
        ismine = false,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [3] = {
        spellid = 1160, --demo shout
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -60, y = 110 },
        unit = "target",
        ismine = false,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [4] = {
        spellid = 772, --rend
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -25, y = 110 },
        unit = "target",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
    }
  
  --Rothars Cooldown List
    cfg.rf3_CooldownList = {
      [1] = {
        spellid = 100, --charge
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 25, y = 110 },
        size = 28,
        unit = "target",
        desaturate = true,
        alpha = {
          cooldown = {
            frame = 1,
            icon = 0.6,
          },
          no_cooldown = {
            frame = 1,
            icon = 1,          
          },
        },
      },
      [2] = {
        spellid = 20252, --intercept
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = 60, y = 110 },
        size = 28,
        unit = "target",
        desaturate = true,
        alpha = {
          cooldown = {
            frame = 1,
            icon = 0.6,
          },
          no_cooldown = {
            frame = 1,
            icon = 1,          
          },
        },
      },
    }
    
  end

  if player_name == "Astone" and player_class == "WARLOCK" and (spec == 1 or spec == 2) then
    
    --Rothars Debuff List
    
    cfg.rf3_DebuffList = {
      [1] = {
        spellid = 348, --feuerbrand
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -130, y = 110},
        unit = "target",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [2] = {
        spellid = 172, --verderbnis
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -95, y = 110 },
        unit = "target",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
      [3] = {
        spellid = 980, --omen der pein
        size = 28,
        pos = { a1 = "BOTTOM", a2 = "BOTTOM", af = "UIParent", x = -60, y = 110 },
        unit = "target",
        ismine = true,
        desaturate = true,
        alpha = {
          found = {
            frame = 1,
            icon = 1,
          },
          not_found = {
            frame = 0.4,
            icon = 0.6,          
          },
        },
      },
    }
  end
  
  -----------------------------
  -- HANDOVER
  -----------------------------
  
  --object container to addon namespace
  ns.cfg = cfg