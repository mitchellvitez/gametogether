module Games exposing (allGames)

allGames = [ { title = "Oregon Trail", year = 1971, genre = "Role-playing", platforms = ["PC"], hours = 2 }
    , { title = "Space Invaders", year = 1978, genre = "Shoot 'em up", platforms = ["Arcade"], hours = 3 }
    , { title = "Pac-Man", year = 1980, genre = "Maze", platforms = ["Arcade"], hours = 1 }
    , { title = "Donkey Kong", year = 1981, genre = "Platform", platforms = ["Arcade"], hours = 1 }
    , { title = "Galaga", year = 1981, genre = "Shoot 'em up", platforms = ["Arcade"], hours = 1 }
    , { title = "Ms. Pac-Man", year = 1982, genre = "Maze", platforms = ["Arcade"], hours = 1 }
    , { title = "Robotron", year = 1982, genre = "Shoot 'em up", platforms = ["Arcade"], hours = 2 }
    , { title = "Punch-Out!!", year = 1984, genre = "Sports", platforms = ["Arcade"], hours = 3 }
    , { title = "Elite", year = 1984, genre = "Space simulation", platforms = ["BBC Micro"], hours = 3 }
    , { title = "Super Mario Bros.", year = 1985, genre = "Platform", platforms = ["NES"], hours = 2 }
    , { title = "The Legend of Zelda", year = 1986, genre = "Action-adventure", platforms = ["NES"], hours = 9 }
    , { title = "Metroid", year = 1986, genre = "Platform-adventure", platforms = ["NES"], hours = 8 }
    , { title = "OutRun", year = 1986, genre = "Racing", platforms = ["Arcade"], hours = 1 }
    , { title = "Contra", year = 1987, genre = "Run and gun", platforms = ["Arcade"], hours = 1 }
    , { title = "Double Dragon", year = 1987, genre = "Beat 'em up", platforms = ["Arcade"], hours = 2 }
    , { title = "R-Type", year = 1987, genre = "Shoot 'em up", platforms = ["Arcade"], hours = 2 }
    , { title = "Tecmo Bowl", year = 1987, genre = "Sports", platforms = ["Arcade"], hours = 5 }
    , { title = "Super Mario Bros. 3", year = 1988, genre = "Platform", platforms = ["NES"], hours = 5 }
    , { title = "Mega Man 2", year = 1988, genre = "Platform", platforms = ["NES"], hours = 3 }
    , { title = "Super Mario World", year = 1990, genre = "Platform", platforms = ["Super NES"], hours = 6 }
    , { title = "The Legend of Zelda: A Link to the Past", year = 1991, genre = "Action-adventure", platforms = ["Super NES"], hours = 16 }
    , { title = "Street Fighter II: The World Warrior", year = 1991, genre = "Fighting", platforms = ["Arcade"], hours = 2 }
    , { title = "Sonic the Hedgehog", year = 1991, genre = "Platform", platforms = ["Genesis/Mega Drive"], hours = 2 }
    , { title = "Final Fantasy IV", year = 1991, genre = "Role-playing", platforms = ["Super NES"], hours = 25 }
    , { title = "Super Mario Kart", year = 1992, genre = "Kart racing", platforms = ["Super NES"], hours = 3 }
    , { title = "Sonic the Hedgehog 2", year = 1992, genre = "Platform", platforms = ["Genesis/Mega Drive"], hours = 3 }
    , { title = "Doom", year = 1993, genre = "First-person shooter", platforms = ["PC"], hours = 4 }
    , { title = "Secret of Mana", year = 1993, genre = "Action role-playing", platforms = ["Super NES"], hours = 23 }
    , { title = "The Legend of Zelda: Link's Awakening", year = 1993, genre = "Action-adventure", platforms = ["Game Boy"], hours = 15 }
    , { title = "Gunstar Heroes", year = 1993, genre = "Run and gun", platforms = ["Genesis/Mega Drive"], hours = 2 }
    , { title = "Daytona USA", year = 1993, genre = "Racing", platforms = ["Arcade"], hours = 1 }
    , { title = "Super Metroid", year = 1994, genre = "Platform-adventure", platforms = ["Super NES"], hours = 8 }
    , { title = "Final Fantasy VI", year = 1994, genre = "Role-playing", platforms = ["Super NES"], hours = 35 }
    , { title = "EarthBound", year = 1994, genre = "Role-playing", platforms = ["Super NES"], hours = 28 }
    , { title = "Star Wars: TIE Fighter", year = 1994, genre = "Space simulation", platforms = ["PC"], hours = 17 }
    , { title = "Chrono Trigger", year = 1995, genre = "Role-playing", platforms = ["Super NES"], hours = 23 }
    , { title = "Super Mario World 2: Yoshi's Island", year = 1995, genre = "Platform", platforms = ["Super NES"], hours = 8 }
    , { title = "Super Mario 64", year = 1996, genre = "Platform", platforms = ["Nintendo 64"], hours = 14 }
    , { title = "Resident Evil", year = 1996, genre = "Survival horror", platforms = ["PlayStation"], hours = 7 }
    , { title = "Tomb Raider", year = 1996, genre = "Action-adventure", platforms = ["Saturn"], hours = 12 }
    , { title = "Nights into Dreams...", year = 1996, genre = "Action", platforms = ["Saturn"], hours = 3 }
    , { title = "Final Fantasy VII", year = 1997, genre = "Role-playing", platforms = ["PlayStation"], hours = 40 }
    , { title = "GoldenEye 007", year = 1997, genre = "First-person shooter", platforms = ["Nintendo 64"], hours = 10 }
    , { title = "Castlevania: Symphony of the Night", year = 1997, genre = "Platform-adventure", platforms = ["PlayStation"], hours = 9 }
    , { title = "Star Fox 64", year = 1997, genre = "Shoot 'em up", platforms = ["Nintendo 64"], hours = 2 }
    , { title = "Final Fantasy Tactics", year = 1997, genre = "Tactical role-playing", platforms = ["PlayStation"], hours = 38 }
    , { title = "The Legend of Zelda: Ocarina of Time", year = 1998, genre = "Action-adventure", platforms = ["Nintendo 64"], hours = 27 }
    , { title = "Metal Gear Solid", year = 1998, genre = "Stealth", platforms = ["PlayStation"], hours = 11 }
    , { title = "Pokémon Red and Blue", year = 1998, genre = "Role-playing", platforms = ["Game Boy"], hours = 27 }
    , { title = "SoulCalibur", year = 1998, genre = "Fighting", platforms = ["Dreamcast"], hours = 1 }
    , { title = "StarCraft", year = 1998, genre = "Real-time strategy", platforms = ["PC"], hours = 25 }
    , { title = "Half-Life", year = 1998, genre = "First-person shooter", platforms = ["PC"], hours = 12 }
    , { title = "Resident Evil 2", year = 1998, genre = "Survival horror", platforms = ["PlayStation"], hours = 6 }
    , { title = "Xenogears", year = 1998, genre = "Role-playing", platforms = ["PlayStation"], hours = 56 }
    , { title = "Shenmue", year = 1999, genre = "Adventure", platforms = ["Dreamcast"], hours = 21 }
    , { title = "Diablo II", year = 2000, genre = "Action role-playing", platforms = ["PC"], hours = 34 }
    , { title = "The Legend of Zelda: Majora's Mask", year = 2000, genre = "Action-adventure", platforms = ["Nintendo 64"], hours = 20 }
    , { title = "Deus Ex", year = 2000, genre = "Role-playing shooter", platforms = ["PC"], hours = 24 }
    , { title = "Counter-Strike", year = 2000, genre = "First-person shooter", platforms = ["PC"], hours = 50 }
    , { title = "Perfect Dark", year = 2000, genre = "First-person shooter", platforms = ["Nintendo 64"], hours = 9 }
    , { title = "Skies of Arcadia", year = 2000, genre = "Role-playing", platforms = ["Dreamcast"], hours = 47 }
    , { title = "Super Smash Bros. Melee", year = 2001, genre = "Fighting", platforms = ["GameCube"], hours = 9 }
    , { title = "Halo: Combat Evolved", year = 2001, genre = "First-person shooter", platforms = ["Xbox"], hours = 10 }
    , { title = "Metal Gear Solid 2: Sons of Liberty", year = 2001, genre = "Stealth", platforms = ["PlayStation 2"], hours = 13 }
    , { title = "Advance Wars", year = 2001, genre = "Turn-based tactics", platforms = ["Game Boy Advance"], hours = 14 }
    , { title = "Ico", year = 2001, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 7 }
    , { title = "Silent Hill 2", year = 2001, genre = "Survival horror", platforms = ["PlayStation 2"], hours = 8 }
    , { title = "Final Fantasy X", year = 2001, genre = "Role-playing", platforms = ["PlayStation 2"], hours = 49 }
    , { title = "Grand Theft Auto III", year = 2001, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 17 }
    , { title = "Metroid Prime", year = 2002, genre = "Action-adventure", platforms = ["GameCube"], hours = 14 }
    , { title = "The Legend of Zelda: The Wind Waker", year = 2002, genre = "Action-adventure", platforms = ["GameCube"], hours = 29 }
    , { title = "Kingdom Hearts", year = 2002, genre = "Action role-playing", platforms = ["PlayStation 2"], hours = 28 }
    , { title = "Star Wars: Knights of the Old Republic", year = 2003, genre = "Role-playing", platforms = ["Xbox"], hours = 29 }
    , { title = "Prince of Persia: The Sands of Time", year = 2003, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 9 }
    , { title = "Half-Life 2", year = 2004, genre = "First-person shooter", platforms = ["PC"], hours = 13 }
    , { title = "World of Warcraft", year = 2004, genre = "MMORPG", platforms = ["PC"], hours = 50 }
    , { title = "Metal Gear Solid 3: Snake Eater", year = 2004, genre = "Stealth", platforms = ["PlayStation 2"], hours = 16 }
    , { title = "Grand Theft Auto: San Andreas", year = 2004, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 34 }
    , { title = "Resident Evil 4", year = 2005, genre = "Survival horror", platforms = ["GameCube"], hours = 16 }
    , { title = "Shadow of the Colossus", year = 2005, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 10 }
    , { title = "Ōkami", year = 2006, genre = "Action-adventure", platforms = ["PlayStation 2"], hours = 37 }
    , { title = "BioShock", year = 2007, genre = "First-person shooter", platforms = ["PC", "Xbox 360"], hours = 12 }
    , { title = "Super Mario Galaxy", year = 2007, genre = "Platform", platforms = ["Wii"], hours = 15 }
    , { title = "Call of Duty 4: Modern Warfare", year = 2007, genre = "First-person shooter", platforms = ["PC", "PlayStation 3", "Xbox 360"], hours = 7 }
    , { title = "Fallout 3", year = 2008, genre = "Role-playing shooter", platforms = ["PC", "PlayStation 3", "Xbox 360"], hours = 23 }
    , { title = "Grand Theft Auto IV", year = 2008, genre = "Action-adventure", platforms = ["PlayStation 3", "Xbox 360"], hours = 28 }
    , { title = "Uncharted 2: Among Thieves", year = 2009, genre = "Action-adventure", platforms = ["PlayStation 3"], hours = 11 }
    , { title = "Mass Effect 2", year = 2010, genre = "Role-playing shooter", platforms = ["PC", "Xbox 360"], hours = 25 }
    , { title = "Red Dead Redemption", year = 2010, genre = "Action-adventure", platforms = ["PlayStation 3", "Xbox 360"], hours = 18 }
    , { title = "Super Mario Galaxy 2", year = 2010, genre = "Platform", platforms = ["Wii"], hours = 14 }
    , { title = "Portal 2", year = 2011, genre = "Puzzle platformer", platforms = ["PC", "PlayStation 3", "Xbox 360"], hours = 9 }
    , { title = "Dark Souls", year = 2011, genre = "Action role-playing", platforms = ["PlayStation 3", "Xbox 360"], hours = 49 }
    , { title = "The Elder Scrolls V: Skyrim", year = 2011, genre = "Action role-playing", platforms = ["PC", "PlayStation 3", "Xbox 360"], hours = 32 }
    , { title = "Batman: Arkham City", year = 2011, genre = "Action-adventure", platforms = ["PlayStation 3", "Xbox 360"], hours = 13 }
    , { title = "Journey", year = 2012, genre = "Adventure", platforms = ["PlayStation 3"], hours = 2 }
    , { title = "The Last of Us", year = 2013, genre = "Survival horror", platforms = ["PlayStation 3"], hours = 15 }
    , { title = "Dragon Age Inquisition", year = 2014, genre = "Action role-playing", platforms = ["PC", "PlayStation 4", "Xbox One"], hours = 45 }
    , { title = "Grand Theft Auto V", year = 2013, genre = "Action-adventure", platforms = ["PC", "PlayStation 3", "Xbox 360"], hours = 31 }
    , { title = "The Witcher 3", year = 2015, genre = "Role-playing", platforms = ["PC", "PlayStation 4", "Xbox One"], hours = 47 }
    , { title = "Uncharted 4: A Thief's End", year = 2016, genre = "Action-adventure", platforms = ["PlayStation 4"], hours = 15 }
    ]
