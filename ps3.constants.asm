; ---------------------------------------------------------------------------
; Offsets
; ---------------------------------------------------------------------------	

; Statistics

speed = $24
char_name = $27
level = $2D
max_hp = $2E
max_tp = $30
current_hp = $32
current_tp = $34
attack = $36
defense = $38
exp = $3A
char_id = $3E
luck = $52
skill = $53
exp_addr = $54
tech_power_addr = $58

; ---------------------------------------------------------------------------
; Pointers and ID's
; ---------------------------------------------------------------------------	

; function to determine the id in a table
; ptr = address of pointer in the table
; offset = start address of the table
; ptrsize = size of the pointer
; idstart = id start number
id function ptr, ((ptr-offset)/ptrsize+idstart)


; Characters
CharID_RhysNial =  0
CharID_AynSeanCrysAdanAron =  1
CharID_Mieu =  2
CharID_Wren =  3
CharID_TheaKara =  4
CharID_LyleRyan =  5
CharID_LenaSari =  6
CharID_LayaGwyn =  7
; Character masks
CharID_RhysNial_Mask =  1<<CharID_RhysNial	; $01
CharID_AynSeanCrysAdanAron_Mask =  1<<CharID_AynSeanCrysAdanAron	; $02
CharID_Mieu_Mask =  1<<CharID_Mieu	; $04
CharID_Wren_Mask =  1<<CharID_Wren	; $08
CharID_TheaKara_Mask =  1<<CharID_TheaKara	; $10
CharID_LyleRyan_Mask =  1<<CharID_LyleRyan	; $20
CharID_LenaSari_Mask =  1<<CharID_LenaSari	; $40
CharID_LayaGwyn_Mask =  1<<CharID_LayaGwyn	; $80

CharID_Heroes_Mask = CharID_RhysNial_Mask|CharID_AynSeanCrysAdanAron_Mask
CharID_Humans_Mask = CharID_RhysNial_Mask|CharID_AynSeanCrysAdanAron_Mask|CharID_TheaKara_Mask|CharID_LyleRyan_Mask|CharID_LenaSari_Mask|CharID_LayaGwyn_Mask
CharID_Cyborgs_Mask = CharID_Mieu_Mask|CharID_Wren_Mask
CharID_NonTechUsers_Mask = CharID_RhysNial_Mask|CharID_LenaSari_Mask
CharID_TechUsers_Mask = CharID_AynSeanCrysAdanAron_Mask|CharID_Mieu_Mask|CharID_Wren_Mask|CharID_TheaKara_Mask|CharID_LyleRyan_Mask|CharID_LayaGwyn_Mask
CharID_All_Mask = CharID_RhysNial_Mask|CharID_AynSeanCrysAdanAron_Mask|CharID_Mieu_Mask|CharID_Wren_Mask|CharID_TheaKara_Mask|CharID_LyleRyan_Mask|CharID_LenaSari_Mask|CharID_LayaGwyn_Mask



; Game Screens
offset	:=	GameScreenJmpTbl
ptrsize	:=	1
idstart	:=	0

ScreenID_Sega =  id(PtrScreen_Sega)	; 0
ScreenID_Title =  id(PtrScreen_Title)	; 4
ScreenID_Intro =  id(PtrScreen_Intro)	; 8
ScreenID_GameSel =  id(PtrScreen_GameSel)	; $C
ScreenID_MainGame =  id(PtrScreen_MainGame)	; $10
ScreenID_Null =  id(PtrScreen_Null)	; $14

; Techniques
offset	:=	TechniqueData
ptrsize	:=	8
idstart	:=	0

TechID_Foi =  id(Tech_Foi)	; 0
TechID_Zan =  id(Tech_Zan)	; 2
TechID_Gra =  id(Tech_Gra)	; 4
TechID_Tsu =  id(Tech_Tsu)	; 6

TechID_Res =  id(Tech_Res)	; 8
TechID_Gires =  id(Tech_Gires)	; $A
TechID_Rever =  id(Tech_Rever)	; $C
TechID_Anti =  id(Tech_Anti)	; $E

TechID_Ner =  id(Tech_Ner)	; $10
TechID_Rimit =  id(Tech_Rimit)	; $12
TechID_Shiza =  id(Tech_Shiza)	; $14
TechID_Deban =  id(Tech_Deban)	; $16

TechID_Fanbi =  id(Tech_Fanbi)	; $18
TechID_Forsa =  id(Tech_Forsa)	; $1A
TechID_Nasak =  id(Tech_Nasak)	; $1C
TechID_Shu =  id(Tech_Shu)	; $1E

TechID_Megido =  id(Tech_Megido)	; $20
TechID_Grantz =  id(Tech_Grantz)	; $22

TechID_FoiCopy =  id(Tech_FoiCopy)	; $24
TechID_ZanCopy =  id(Tech_ZanCopy)	; $26
TechID_GraCopy =  id(Tech_GraCopy)	; $28
TechID_TsuCopy =  id(Tech_TsuCopy)	; $2A

TechID_GiresCopy =  id(Tech_GiresCopy)	; $2C

TechID_Poison =  id(Tech_Poison)	; $2E

; Items
offset	:=	InventoryData
ptrsize	:=	1
idstart	:=	0

ItemID_Monomate =  id(Item_Monomate)	; 0
ItemID_Dimate =  id(Item_Dimate)	; $10
ItemID_Trimate =  id(Item_Trimate)	; $20
ItemID_Antidote =  id(Item_Antidote)	; $30
ItemID_StarMist =  id(Item_StarMist)	; $40
ItemID_MoonDew =  id(Item_MoonDew)	; $50
ItemID_Escapipe =  id(Item_Escapipe)	; $60
ItemID_Monitor =  id(Item_Monitor)	; $70
ItemID_ShortSwd =  id(Item_ShortSwd)	; $80
ItemID_Sword =  id(Item_Sword)	; $90
ItemID_SteelSwd =  id(Item_SteelSwd)	; $A0
ItemID_CeramSwd =  id(Item_CeramSwd)	; $B0
ItemID_LaserSwd =  id(Item_LaserSwd)	; $C0
ItemID_ForceSwd =  id(Item_ForceSwd)	; $D0
ItemID_LaconSwd =  id(Item_LaconSwd)	; $E0
ItemID_RoyalSwd =  id(Item_RoyalSwd)	; $F0
ItemID_PlanarSwd =  id(Item_PlanarSwd)	; $100
ItemID_OrakioSwd =  id(Item_OrakioSwd)	; $110
ItemID_NeiSword =  id(Item_NeiSword)	; $120
ItemID_Knife =  id(Item_Knife)	; $130
ItemID_HuntgKnf =  id(Item_HuntgKnf)	; $140
ItemID_SteelKnf =  id(Item_SteelKnf)	; $150
ItemID_CeramKnf =  id(Item_CeramKnf)	; $160
ItemID_LaserKnf =  id(Item_LaserKnf)	; $170
ItemID_ForceKnf =  id(Item_ForceKnf)	; $180
ItemID_LaconKnf =  id(Item_LaconKnf)	; $190
ItemID_RoyalKnf =  id(Item_RoyalKnf)	; $1A0
ItemID_Staff =  id(Item_Staff)	; $1B0
ItemID_HuntgStf =  id(Item_HuntgStf)	; $1C0
ItemID_SteelStf =  id(Item_SteelStf)	; $1D0
ItemID_CeramStf =  id(Item_CeramStf)	; $1E0
ItemID_LaserStf =  id(Item_LaserStf)	; $1F0
ItemID_ForceStf =  id(Item_ForceStf)	; $200
ItemID_LaconStf =  id(Item_LaconStf)	; $210
ItemID_Slicer =  id(Item_Slicer)	; $220
ItemID_CeramSlr =  id(Item_CeramSlr)	; $230
ItemID_LaserSlr =  id(Item_LaserSlr)	; $240
ItemID_ForceSlr =  id(Item_ForceSlr)	; $250
ItemID_LaconSlr =  id(Item_LaconSlr)	; $260
ItemID_RoyalSlr =  id(Item_RoyalSlr)	; $270
ItemID_PlanarSlr =  id(Item_PlanarSlr)	; $280
ItemID_LuneSlr =  id(Item_LuneSlr)	; $290
ItemID_NeiSlicr =  id(Item_NeiSlicr)	; $2A0
ItemID_Claw =  id(Item_Claw)	; $2B0
ItemID_HuntgClw =  id(Item_HuntgClw)	; $2C0
ItemID_SteelClw =  id(Item_SteelClw)	; $2D0
ItemID_CeramClw =  id(Item_CeramClw)	; $2E0
ItemID_LaserClw =  id(Item_LaserClw)	; $2F0
ItemID_ForceClw =  id(Item_ForceClw)	; $300
ItemID_LaconClw =  id(Item_LaconClw)	; $310
ItemID_RoyalClw =  id(Item_RoyalClw)	; $320
ItemID_PlanarClw =  id(Item_PlanarClw)	; $330
ItemID_MiunClw =  id(Item_MiunClw)	; $340
ItemID_NeiClaw =  id(Item_NeiClaw)	; $350
ItemID_HuntgBow =  id(Item_HuntgBow)	; $360
ItemID_CeramBow =  id(Item_CeramBow)	; $370
ItemID_LaserBow =  id(Item_LaserBow)	; $380
ItemID_ForceBow =  id(Item_ForceBow)	; $390
ItemID_LaconBow =  id(Item_LaconBow)	; $3A0
ItemID_RoyalBow =  id(Item_RoyalBow)	; $3B0
ItemID_LayaBow =  id(Item_LayaBow)	; $3C0
ItemID_NeiBow =  id(Item_NeiBow)	; $3D0
ItemID_HuntgShot =  id(Item_HuntgShot)	; $3E0
ItemID_CeramShot =  id(Item_CeramShot)	; $3F0
ItemID_LaserShot =  id(Item_LaserShot)	; $400
ItemID_LaconShot =  id(Item_LaconShot)	; $410
ItemID_Cannon =  id(Item_Cannon)	; $420
ItemID_PulseCann =  id(Item_PulseCann)	; $430
ItemID_Vulcan =  id(Item_Vulcan)	; $440
ItemID_PulseVlcn =  id(Item_PulseVlcn)	; $450
ItemID_SirenShot =  id(Item_SirenShot)	; $460
ItemID_NeiShot =  id(Item_NeiShot)	; $470
ItemID_HuntgHelm =  id(Item_HuntgHelm)	; $480
ItemID_SteelHelm =  id(Item_SteelHelm)	; $490
ItemID_CeramHelm =  id(Item_CeramHelm)	; $4A0
ItemID_ForceHelm =  id(Item_ForceHelm)	; $4B0
ItemID_LaconHelm =  id(Item_LaconHelm)	; $4C0
ItemID_RoyalHelm =  id(Item_RoyalHelm)	; $4D0
ItemID_Bandanna =  id(Item_Bandanna)	; $4E0
ItemID_HuntgBand =  id(Item_HuntgBand)	; $4F0
ItemID_SteelBand =  id(Item_SteelBand)	; $500
ItemID_CeramBand =  id(Item_CeramBand)	; $510
ItemID_ForceBand =  id(Item_ForceBand)	; $520
ItemID_LaconBand =  id(Item_LaconBand)	; $530
ItemID_RoyalBand =  id(Item_RoyalBand)	; $540
ItemID_Garment =  id(Item_Garment)	; $550
ItemID_CeramCrwn =  id(Item_CeramCrwn)	; $560
ItemID_ForceCrwn =  id(Item_ForceCrwn)	; $570
ItemID_LaconCrwn =  id(Item_LaconCrwn)	; $580
ItemID_RoyalCrwn =  id(Item_RoyalCrwn)	; $590
ItemID_Ribbon =  id(Item_Ribbon)	; $5A0
ItemID_HuntgRibn =  id(Item_HuntgRibn)	; $5B0
ItemID_CeramRibn =  id(Item_CeramRibn)	; $5C0
ItemID_ForceRibn =  id(Item_ForceRibn)	; $5D0
ItemID_LaconRibn =  id(Item_LaconRibn)	; $5E0
ItemID_RoyalRibn =  id(Item_RoyalRibn)	; $5F0
ItemID_HeadGear =  id(Item_HeadGear)	; $600
ItemID_SteelGear =  id(Item_SteelGear)	; $610
ItemID_CeramGear =  id(Item_CeramGear)	; $620
ItemID_ForceGear =  id(Item_ForceGear)	; $630
ItemID_LaconGear =  id(Item_LaconGear)	; $640
ItemID_RoyalGear =  id(Item_RoyalGear)	; $650
ItemID_HuntgArmr =  id(Item_HuntgArmr)	; $660
ItemID_SteelArmr =  id(Item_SteelArmr)	; $670
ItemID_CeramArmr =  id(Item_CeramArmr)	; $680
ItemID_ForceArmr =  id(Item_ForceArmr)	; $690
ItemID_LaconArmr =  id(Item_LaconArmr)	; $6A0
ItemID_RoyalArmr =  id(Item_RoyalArmr)	; $6B0
ItemID_PlanarArm =  id(Item_PlanarArm)	; $6C0
ItemID_Cape =  id(Item_Cape)	; $6D0
ItemID_SteelCape =  id(Item_SteelCape)	; $6E0
ItemID_LaconCape =  id(Item_LaconCape)	; $6F0
ItemID_RoyalCape =  id(Item_RoyalCape)	; $700
ItemID_Robe =  id(Item_Robe)	; $710
ItemID_SteelRobe =  id(Item_SteelRobe)	; $720
ItemID_LaconRobe =  id(Item_LaconRobe)	; $730
ItemID_RoyalRobe =  id(Item_RoyalRobe)	; $740
ItemID_HuntgChst =  id(Item_HuntgChst)	; $750
ItemID_SteelChst =  id(Item_SteelChst)	; $760
ItemID_LaconChst =  id(Item_LaconChst)	; $770
ItemID_RoyalChst =  id(Item_RoyalChst)	; $780
ItemID_Fiblira =  id(Item_Fiblira)	; $790
ItemID_SteelFib =  id(Item_SteelFib)	; $7A0
ItemID_LaconFib =  id(Item_LaconFib)	; $7B0
ItemID_RoyalFib =  id(Item_RoyalFib)	; $7C0
ItemID_Vest =  id(Item_Vest)	; $7D0
ItemID_HuntgVest =  id(Item_HuntgVest)	; $7E0
ItemID_SteelVest =  id(Item_SteelVest)	; $7F0
ItemID_CeramVest =  id(Item_CeramVest)	; $800
ItemID_ForceVest =  id(Item_ForceVest)	; $810
ItemID_LaconVest =  id(Item_LaconVest)	; $820
ItemID_RoyalVest =  id(Item_RoyalVest)	; $830
ItemID_Protector =  id(Item_Protector)	; $840
ItemID_SteelPrtc =  id(Item_SteelPrtc)	; $850
ItemID_CeramPrtc =  id(Item_CeramPrtc)	; $860
ItemID_ForcePrtc =  id(Item_ForcePrtc)	; $870
ItemID_LaconPrtc =  id(Item_LaconPrtc)	; $880
ItemID_RoyalPrtc =  id(Item_RoyalPrtc)	; $890
ItemID_Boots =  id(Item_Boots)	; $8A0
ItemID_ForceBoot =  id(Item_ForceBoot)	; $8B0
ItemID_RoyalBoot =  id(Item_RoyalBoot)	; $8C0
ItemID_Shield =  id(Item_Shield)	; $8D0
ItemID_SteelShld =  id(Item_SteelShld)	; $8E0
ItemID_CeramShld =  id(Item_CeramShld)	; $8F0
ItemID_ForceShld =  id(Item_ForceShld)	; $900
ItemID_LaconShld =  id(Item_LaconShld)	; $910
ItemID_RoyalShld =  id(Item_RoyalShld)	; $920
ItemID_Emel =  id(Item_Emel)	; $930
ItemID_SteelEmel =  id(Item_SteelEmel)	; $940
ItemID_CeramEmel =  id(Item_CeramEmel)	; $950
ItemID_ForceEmel =  id(Item_ForceEmel)	; $960
ItemID_LaconEmel =  id(Item_LaconEmel)	; $970
ItemID_RoyalEmel =  id(Item_RoyalEmel)	; $980
ItemID_Needle =  id(Item_Needle)	; $990
ItemID_HuntgNdl =  id(Item_HuntgNdl)	; $9A0
ItemID_SteelNdl =  id(Item_SteelNdl)	; $9B0
ItemID_CeramNdl =  id(Item_CeramNdl)	; $9C0
ItemID_LaserNdl =  id(Item_LaserNdl)	; $9D0
ItemID_ForceNdl =  id(Item_ForceNdl)	; $9E0
ItemID_LaconNdl =  id(Item_LaconNdl)	; $9F0
ItemID_RoyalNdl =  id(Item_RoyalNdl)	; $A00
ItemID_Sapphire =  id(Item_Sapphire)	; $A10
ItemID_MoonStone =  id(Item_MoonStone)	; $A20
ItemID_MoonTear =  id(Item_MoonTear)	; $A30
ItemID_DragnTear =  id(Item_DragnTear)	; $A40
ItemID_Snow =  id(Item_Snow)	; $A50
ItemID_TwinsRuby =  id(Item_TwinsRuby)	; $A60
ItemID_PowrTopaz =  id(Item_PowrTopaz)	; $A70
ItemID_MstryStar =  id(Item_MstryStar)	; $A80
ItemID_AquaParts =  id(Item_AquaParts)	; $A90
ItemID_SubParts =  id(Item_SubParts)	; $AA0
ItemID_AeroParts =  id(Item_AeroParts)	; $AB0
ItemID_LayaPndnt =  id(Item_LayaPndnt)	; $AC0

; Front row enemies
offset	:=	EnemyDataFrontRow
ptrsize	:=	30
idstart	:=	0

EnemyID_Glop =  id(Enemy_Glop)	; 0
EnemyID_Ooze =  id(Enemy_Ooze)	; 1
EnemyID_Slime =  id(Enemy_Slime)	; 2
EnemyID_Fire =  id(Enemy_Fire)	; 3
EnemyID_Murafire =  id(Enemy_Murafire)	; 4
EnemyID_Azufire =  id(Enemy_Azufire)	; 5
EnemyID_Nayl =  id(Enemy_Nayl)	; 6
EnemyID_Flayl =  id(Enemy_Flayl)	; 7
EnemyID_Slayl =  id(Enemy_Slayl)	; 8
EnemyID_Dryad =  id(Enemy_Dryad)	; 9
EnemyID_Nereid =  id(Enemy_Nereid)	; $A
EnemyID_Sylph =  id(Enemy_Sylph)	; $B
EnemyID_Buzzgull =  id(Enemy_Buzzgull)	; $C
EnemyID_Lashgull =  id(Enemy_Lashgull)	; $D
EnemyID_Hackgull =  id(Enemy_Hackgull)	; $E
EnemyID_Eindon =  id(Enemy_Eindon)	; $F
EnemyID_Tsveidon =  id(Enemy_Tsveidon)	; $10
EnemyID_Dreidon =  id(Enemy_Dreidon)	; $11
EnemyID_Clump =  id(Enemy_Clump)	; $12
EnemyID_Cluster =  id(Enemy_Cluster)	; $13
EnemyID_Clique =  id(Enemy_Clique)	; $14
EnemyID_Chirper =  id(Enemy_Chirper)	; $15
EnemyID_Warbler =  id(Enemy_Warbler)	; $16
EnemyID_Squawker =  id(Enemy_Squawker)	; $17
EnemyID_Lizrd =  id(Enemy_Lizrd)	; $18
EnemyID_Blizrd =  id(Enemy_Blizrd)	; $19
EnemyID_Grizrd =  id(Enemy_Grizrd)	; $1A
EnemyID_Spinner =  id(Enemy_Spinner)	; $1B
EnemyID_Twirler =  id(Enemy_Twirler)	; $1C
EnemyID_Wizzer =  id(Enemy_Wizzer)	; $1D
EnemyID_Imp =  id(Enemy_Imp)	; $1E
EnemyID_Impfoul =  id(Enemy_Impfoul)	; $1F
EnemyID_Impvile =  id(Enemy_Impvile)	; $20
EnemyID_Nova =  id(Enemy_Nova)	; $21
EnemyID_Pulsar =  id(Enemy_Pulsar)	; $22
EnemyID_Quasar =  id(Enemy_Quasar)	; $23
EnemyID_Chirpbot =  id(Enemy_Chirpbot)	; $24
EnemyID_Warblbot =  id(Enemy_Warblbot)	; $25
EnemyID_Squakbot =  id(Enemy_Squakbot)	; $26
EnemyID_Commsat =  id(Enemy_Commsat)	; $27
EnemyID_Spysat =  id(Enemy_Spysat)	; $28
EnemyID_Killsat =  id(Enemy_Killsat)	; $29
EnemyID_Arachne =  id(Enemy_Arachne)	; $2A
EnemyID_Darachne =  id(Enemy_Darachne)	; $2B
EnemyID_Zarachne =  id(Enemy_Zarachne)	; $2C
EnemyID_Blink =  id(Enemy_Blink)	; $2D
EnemyID_Flash =  id(Enemy_Flash)	; $2E
EnemyID_Strobe =  id(Enemy_Strobe)	; $2F
EnemyID_Minimech =  id(Enemy_Minimech)	; $30
EnemyID_Mech =  id(Enemy_Mech)	; $31
EnemyID_Maxmech =  id(Enemy_Maxmech)	; $32
EnemyID_Lazrbot =  id(Enemy_Lazrbot)	; $33
EnemyID_Mazrbot =  id(Enemy_Mazrbot)	; $34
EnemyID_Fazrbot =  id(Enemy_Fazrbot)	; $35

; Back row enemies
offset	:=	EnemyDataBackRow
ptrsize	:=	36
idstart	:=	0

EnemyID_Emir =  id(Enemy_Emir)	; 0
EnemyID_Sheik =  id(Enemy_Sheik)	; 1
EnemyID_Caliph =  id(Enemy_Caliph)	; 2
EnemyID_Harpy =  id(Enemy_Harpy)	; 3
EnemyID_Griffin =  id(Enemy_Griffin)	; 4
EnemyID_Gryphon =  id(Enemy_Gryphon)	; 5
EnemyID_Banshee =  id(Enemy_Banshee)	; 6
EnemyID_Ghost =  id(Enemy_Ghost)	; 7
EnemyID_Haunt =  id(Enemy_Haunt)	; 8
EnemyID_Beastess =  id(Enemy_Beastess)	; 9
EnemyID_Trogess =  id(Enemy_Trogess)	; $A
EnemyID_Demoness =  id(Enemy_Demoness)	; $B
EnemyID_Bushi =  id(Enemy_Bushi)	; $C
EnemyID_Kensai =  id(Enemy_Kensai)	; $D
EnemyID_Samurai =  id(Enemy_Samurai)	; $E
EnemyID_Irisa =  id(Enemy_Irisa)	; $F
EnemyID_Rosa =  id(Enemy_Rosa)	; $10
EnemyID_Viola =  id(Enemy_Viola)	; $11
EnemyID_Moos =  id(Enemy_Moos)	; $12
EnemyID_Fearmoos =  id(Enemy_Fearmoos)	; $13
EnemyID_Diremoos =  id(Enemy_Diremoos)	; $14
EnemyID_Blueroot =  id(Enemy_Blueroot)	; $15
EnemyID_Pinkroot =  id(Enemy_Pinkroot)	; $16
EnemyID_Goldroot =  id(Enemy_Goldroot)	; $17
EnemyID_Catwoman =  id(Enemy_Catwoman)	; $18
EnemyID_Tigress =  id(Enemy_Tigress)	; $19
EnemyID_Lioness =  id(Enemy_Lioness)	; $1A
EnemyID_Lobowing =  id(Enemy_Lobowing)	; $1B
EnemyID_Lobobat =  id(Enemy_Lobobat)	; $1C
EnemyID_Lobohawk =  id(Enemy_Lobohawk)	; $1D
EnemyID_Hopliz =  id(Enemy_Hopliz)	; $1E
EnemyID_Leapliz =  id(Enemy_Leapliz)	; $1F
EnemyID_Jumpliz =  id(Enemy_Jumpliz)	; $20
EnemyID_Glowtoad =  id(Enemy_Glowtoad)	; $21
EnemyID_Gilatoad =  id(Enemy_Gilatoad)	; $22
EnemyID_Megatoad =  id(Enemy_Megatoad)	; $23
EnemyID_Seeker =  id(Enemy_Seeker)	; $24
EnemyID_Hunter =  id(Enemy_Hunter)	; $25
EnemyID_Killer =  id(Enemy_Killer)	; $26
EnemyID_Roboman =  id(Enemy_Roboman)	; $27
EnemyID_Mechman =  id(Enemy_Mechman)	; $28
EnemyID_Droidman =  id(Enemy_Droidman)	; $29
EnemyID_Stix =  id(Enemy_Stix)	; $2A
EnemyID_Glazstix =  id(Enemy_Glazstix)	; $2B
EnemyID_Metlstix =  id(Enemy_Metlstix)	; $2C
EnemyID_Twistbot =  id(Enemy_Twistbot)	; $2D
EnemyID_Swivlbot =  id(Enemy_Swivlbot)	; $2E
EnemyID_Rotabot =  id(Enemy_Rotabot)	; $2F
EnemyID_Dragon =  id(Enemy_Dragon)	; $30
EnemyID_Drake =  id(Enemy_Drake)	; $31
EnemyID_Wyrm =  id(Enemy_Wyrm)	; $32
EnemyID_Skeleton =  id(Enemy_Skeleton)	; $33
EnemyID_Spectre =  id(Enemy_Spectre)	; $34
EnemyID_Wraith =  id(Enemy_Wraith)	; $35
EnemyID_Grinder =  id(Enemy_Grinder)	; $36
EnemyID_Smasher =  id(Enemy_Smasher)	; $37
EnemyID_Crusher =  id(Enemy_Crusher)	; $38
EnemyID_Clops =  id(Enemy_Clops)	; $39
EnemyID_Biclops =  id(Enemy_Biclops)	; $3A
EnemyID_Triclops =  id(Enemy_Triclops)	; $3B
EnemyID_Dogbot =  id(Enemy_Dogbot)	; $3C
EnemyID_Feralbot =  id(Enemy_Feralbot)	; $3D
EnemyID_Wolfbot =  id(Enemy_Wolfbot)	; $3E
EnemyID_Amazon =  id(Enemy_Amazon)	; $3F
EnemyID_Erinye =  id(Enemy_Erinye)	; $40
EnemyID_Valkyrie =  id(Enemy_Valkyrie)	; $41
EnemyID_Giant =  id(Enemy_Giant)	; $42
EnemyID_Titan =  id(Enemy_Titan)	; $43
EnemyID_Colossus =  id(Enemy_Colossus)	; $44
EnemyID_Primus =  id(Enemy_Primus)	; $45
EnemyID_Secundus =  id(Enemy_Secundus)	; $46
EnemyID_Tertius =  id(Enemy_Tertius)	; $47
EnemyID_Lasher =  id(Enemy_Lasher)	; $48
EnemyID_Slasher =  id(Enemy_Slasher)	; $49
EnemyID_Gnasher =  id(Enemy_Gnasher)	; $4A
EnemyID_Doomfly =  id(Enemy_Doomfly)	; $4B
EnemyID_Demonfly =  id(Enemy_Demonfly)	; $4C
EnemyID_Deathfly =  id(Enemy_Deathfly)	; $4D
EnemyID_Blotter =  id(Enemy_Blotter)	; $4E
EnemyID_Flutter =  id(Enemy_Flutter)	; $4F
EnemyID_Splatter =  id(Enemy_Splatter)	; $50
EnemyID_Polebot =  id(Enemy_Polebot)	; $51
EnemyID_Stickbot =  id(Enemy_Stickbot)	; $52
EnemyID_Wirebot =  id(Enemy_Wirebot)	; $53
EnemyID_Agribot =  id(Enemy_Agribot)	; $54
EnemyID_Guardbot =  id(Enemy_Guardbot)	; $55
EnemyID_Warbot =  id(Enemy_Warbot)	; $56
EnemyID_Flopper =  id(Enemy_Flopper)	; $57
EnemyID_Disker =  id(Enemy_Disker)	; $58
EnemyID_Carder =  id(Enemy_Carder)	; $59
EnemyID_Fatale =  id(Enemy_Fatale)	; $5A
EnemyID_Morte =  id(Enemy_Morte)	; $5B
EnemyID_Finis =  id(Enemy_Finis)	; $5C
EnemyID_Stickle =  id(Enemy_Stickle)	; $5D
EnemyID_Twig =  id(Enemy_Twig)	; $5E
EnemyID_Mantis =  id(Enemy_Mantis)	; $5F
EnemyID_Orb =  id(Enemy_Orb)	; $60
EnemyID_Globe =  id(Enemy_Globe)	; $61
EnemyID_Sphere =  id(Enemy_Sphere)	; $62
EnemyID_Dire =  id(Enemy_Dire)	; $63
EnemyID_Baneful =  id(Enemy_Baneful)	; $64
EnemyID_Malific =  id(Enemy_Malific)	; $65
EnemyID_Goatman =  id(Enemy_Goatman)	; $66
EnemyID_Goatduke =  id(Enemy_Goatduke)	; $67
EnemyID_Goatking =  id(Enemy_Goatking)	; $68
EnemyID_Punisher =  id(Enemy_Punisher)	; $69
EnemyID_Torturer =  id(Enemy_Torturer)	; $6A
EnemyID_Executer =  id(Enemy_Executer)	; $6B
EnemyID_Fatima =  id(Enemy_Fatima)	; $6C
EnemyID_Zafirah =  id(Enemy_Zafirah)	; $6D
EnemyID_Khalidah =  id(Enemy_Khalidah)	; $6E
EnemyID_Watcher =  id(Enemy_Watcher)	; $6F
EnemyID_Defender =  id(Enemy_Defender)	; $70
EnemyID_Guardian =  id(Enemy_Guardian)	; $71
EnemyID_Conjurer =  id(Enemy_Conjurer)	; $72
EnemyID_Wizard =  id(Enemy_Wizard)	; $73
EnemyID_Sorcerer =  id(Enemy_Sorcerer)	; $74
EnemyID_Lyle =  id(Enemy_Lyle)	; $75
EnemyID_Sari =  id(Enemy_Sari)	; $76
EnemyID_Lune =  id(Enemy_Lune)	; $77
EnemyID_Kara =  id(Enemy_Kara)	; $78
EnemyID_Siren =  id(Enemy_Siren)	; $79
EnemyID_Rulakir =  id(Enemy_Rulakir)	; $7A
EnemyID_KingCille =  id(Enemy_KingCille)	; $7B


; Maps
MapID_LandenWorld = 0
MapID_AridiaWorld = 2
MapID_AquaticaWorldFrozen = 4
MapID_DraconiaWorld = 6
MapID_TerminusWorld = 8
MapID_FrigidiaWorld = $A
MapID_ElysiumWorld = $C
MapID_AquaticaWorld = $E
MapID_AynLandenWorld = $10
MapID_NialDahlia = $12
MapID_AynAzura = $14
MapID_LandenAquaticaCave = $2C
MapID_AquaticaAridiaCave = $2E
MapID_LandenAridiaCave = $30
MapID_AridiaControlTower = $38
MapID_AridiaControlTower1F = $3A
MapID_LandenCastle = $3C
MapID_Satera = $3E
MapID_SunkenPalace = $40
MapID_AgoeCastle = $42
MapID_ShusoranCastle = $44
MapID_CilleCastle = $46
MapID_LensolCastle = $48
MapID_AynCilleCastle = $4A
MapID_AynCilleCastleEmpty = $4C
MapID_AynLensolCastle = $4E
MapID_AynLensolCastleGatesOpen = $50
MapID_TechnaCastle = $52
MapID_AynLandeCastleBeforeSari = $54
MapID_AynLandeCastleSariJoin = $56
MapID_ShusoranCastleLenaJoin = $58
MapID_Landen = $5A
MapID_Yaata = $5C
MapID_Ilan = $5E
MapID_RyselFrozen = $60
MapID_Hazatak = $62
MapID_Agoe = $64
MapID_Shusoran = $66
MapID_Cille = $68
MapID_AynLanden = $6A
MapID_AynLandenSariJoin = $6C
MapID_AynYaata = $6E
MapID_AynIlan = $70
MapID_ShusoranLenaJoin = $72
MapID_RyselNormal = $74
MapID_LandenAfterWedding = $76
MapID_LandenDungeon = $78
MapID_LandenIslandCave = $7A
MapID_AynLandenDungeon = $7C
MapID_AynLandenDungeonSariJoin = $7E
MapID_WrenCave = $80
MapID_NialLandenDungeon = $82
MapID_AynIslandCave = $84
MapID_ShusoranDungeon = $86
MapID_CilleDungeon = $88
MapID_NialIslandCave = $8A
MapID_AynLandenAquaticaCave = $8C
MapID_NialLandenAquaticaCave = $8E
MapID_AynAquaticaAridiaCave = $90
MapID_NialAquaticaAridiaCave = $92
MapID_Gen3WrenCave = $94
MapID_AynWrenCave = $96
MapID_NialWrenCave = $98
MapID_AynControlTower = $9A
MapID_NialControlTower = $9C
MapID_AynControlTower1F = $9E
MapID_NialControlTower1F = $A0
MapID_AynShusoranDungeon = $A2
MapID_AynCilleDungeon = $A4
MapID_LensolDungeon = $A8
MapID_LensolDungeonTheaJoin = $AA
MapID_TechnaDungeon = $AC
MapID_NialMystokeDungeon = $AE
MapID_DivisiaDungeon = $B0
MapID_ShusoranDungeonLenaJoin = $B2
MapID_LashuteEvil = $B4
MapID_LayaTemple = $B6
MapID_LayaWorld = $BA
MapID_LandenTechStore = $C0
MapID_LandenArmorStore = $C2
MapID_LandenWeaponStore = $C4
MapID_LandenInn = $C6
MapID_LandenSupplyStore = $C8
MapID_LandenChurch = $CA
MapID_LandenFortuneTeller = $CC
MapID_LandenTopRightHouse = $CE
MapID_LandenTopRightHouse2 = $D0
MapID_LandenTechStore1F = $D2
MapID_LandenArmorStore1F = $D4
MapID_LandenWeaponStore1F = $D6
MapID_LandenInn1F = $D8
MapID_LandenSupplyStore1F = $DA
MapID_LandenChurch1F = $DC
MapID_LandenFortuneTeller1F = $DE
MapID_LandenTopRightHouse1F = $E0
MapID_LandenTopRightHouse21F = $E2
MapID_YaataBottomLeftHouse = $E4
MapID_YaataInn = $E6
MapID_YaataSupplyStore = $E8
MapID_YaataWeaponStore = $EA
MapID_YaataTechStore = $EC
MapID_YaataChurch = $EE
MapID_YaataArmorStore = $F0
MapID_YaataBottomLeftHouse1F = $F2
MapID_YaataInn1F = $F4
MapID_YaataSupplyStore1F = $F6
MapID_YaataWeaponStore1F = $F8
MapID_YaataTechStore1F = $FA
MapID_YaataChurch1F = $FC
MapID_YaataArmorStore1F = $FE
MapID_IlanWeaponStore = $100
MapID_IlanArmorStore = $102
MapID_IlanInn = $104
MapID_IlanSupplyStore = $106
MapID_IlanChurch = $108
MapID_IlanTechStore = $10A
MapID_IlanTopRightHouse = $10C
MapID_IlanWeaponStore1F = $10E
MapID_IlanArmorStore1F = $110
MapID_IlanInn1F = $112
MapID_IlanSupplyStore1F = $114
MapID_IlanChurch1F = $116
MapID_IlanTechStore1F = $118
MapID_IlanTopRightHouse1F = $11A
MapID_RyselSupplyStore = $11C
MapID_RyselInn = $11E
MapID_RyselChurch = $120
MapID_RyselTechStore = $122
MapID_RyselWeaponStore = $124
MapID_RyselArmorStore = $126
MapID_RyselTopRightHouse = $128
MapID_RyselSupplyStore1F = $12A
MapID_RyselInn1F = $12C
MapID_RyselChurch1F = $12E
MapID_RyselTechStore1F = $130
MapID_RyselWeaponStore1F = $132
MapID_RyselArmorStore1F = $134
MapID_RyselTopRightHouse1F = $136
MapID_HazatakArmorStore = $138
MapID_HazatakSupplyStore = $13A
MapID_HazatakInn = $13C
MapID_HazatakTopLeftHouse = $13E
MapID_HazatakTechStore = $140
MapID_HazatakWeaponStore = $142
MapID_HazatakArmorStore1F = $144
MapID_HazatakSupplyStore1F = $146
MapID_HazatakInn1F = $148
MapID_HazatakTopLeftHouse1F = $14A
MapID_HazatakTechStore1F = $14C
MapID_HazatakWeaponStore1F = $14E
MapID_AgoeTechStore = $150
MapID_AgoeSupplyStore = $152
MapID_AgoeInn = $154
MapID_AgoeBottomRightHouse = $156
MapID_AgoeWeaponStore = $158
MapID_AgoeArmorStore = $15A
MapID_AgoeChurch = $15C
MapID_AgoeTechStore1F = $15E
MapID_AgoeSupplyStore1F = $160
MapID_AgoeInn1F = $162
MapID_AgoeBottomRightHouse1F = $164
MapID_AgoeWeaponStore1F = $166
MapID_AgoeArmorStore1F = $168
MapID_AgoeChurch1F = $16A
MapID_ShusoranTechStore = $16C
MapID_ShusoranChurch = $16E
MapID_ShusoranInn = $170
MapID_ShusoranWeaponStore = $172
MapID_ShusoranArmorStore = $174
MapID_ShusoranSupplyStore = $176
MapID_ShusoranTechStore1F = $178
MapID_ShusoranChurch1F = $17A
MapID_ShusoranInn1F = $17C
MapID_ShusoranWeaponStore1F = $17E
MapID_ShusoranArmorStore1F = $180
MapID_ShusoranSupplyStore1F = $182
MapID_CilleTechStore = $184
MapID_CilleChurch = $186
MapID_CilleInn = $188
MapID_CilleArmorStore = $18A
MapID_CilleSupplyStore = $18C
MapID_CilleWeaponStore = $18E
MapID_CilleTechStore1F = $190
MapID_CilleChurch1F = $192
MapID_CilleInn1F = $194
MapID_CilleArmorStore1F = $196
MapID_CilleSupplyStore1F = $198
MapID_CilleWeaponStore1F = $19A
MapID_AynAgoeCastle = $19C
MapID_AynShusoranCastle = $19E
MapID_AynShusoranCastleEmpty = $1A0
MapID_NialLandenCastle = $1A2
MapID_NialMystokeCastle = $1A4
MapID_DivisiaCastle = $1A6
MapID_SeanLandenCastle = $1A8
MapID_CrysLandenCastle = $1AA
MapID_AdanLandenCastle = $1AC
MapID_AronLandenCastle = $1AE
MapID_Gen3Satera = $1B0
MapID_Gen3AgoeCastle = $1B2
MapID_Gen3CilleCastle = $1B4
MapID_SeanCrysLensolCastle = $1B6
MapID_AdanAronLensolCastle = $1B8
MapID_Gen3TechnaCastle = $1BA
MapID_AynRysel = $1BC
MapID_AynHazatak = $1BE
MapID_AynAgoe = $1C0
MapID_AynShusoran = $1C2
MapID_AynCille = $1C4
MapID_AynTechna = $1C6
MapID_Endora = $1C8
MapID_Lensol = $1CA
MapID_AynLensolGatesOpen = $1CC
MapID_NialLanden = $1CE
MapID_NialYaata = $1D0
MapID_NialIlan = $1D2
MapID_NialHazatak = $1D4
MapID_AynShusoranEmpty = $1D6
MapID_AynCilleEmpty = $1D8
MapID_Gen3Techna = $1DA
MapID_Mystoke = $1DC
MapID_SouthDivisia = $1DE
MapID_Aerone = $1E0
MapID_NewMota = $1E2
MapID_AynAquaticaWorld = $1E4
MapID_AynAridiaWorld = $1E6
MapID_NialLandenWorld = $1E8
MapID_NialAridiaWorld = $1EA
MapID_RebelCave = $1EC
MapID_RebelCaveRyanJoin = $1EE
MapID_AeroneDungeon = $1F0
MapID_DahliaDungeon = $1F2
MapID_NialDahliaDungeon = $1F4
MapID_AzuraDungeon = $1F6
MapID_AridiaDraconiaCave = $1F8
MapID_AridiaFrigidiaCave = $1FA
MapID_NialLandenElysiumCave = $1FC
MapID_AynLandenAridiaCave = $1FE
MapID_NialLandenAridiaCave = $200
MapID_RhysMenu = $202
MapID_AynMenu = $204
MapID_NialMenu = $206
MapID_SeanMenu = $208
MapID_CrysMenu = $20A
MapID_GwynDialogue = $20C
MapID_AronMenu = $20E
MapID_Title = $210
MapID_Intro = $212
MapID_SeanEndGame = $214
MapID_NewMotaStory = $216
MapID_TwoMoons = $218
MapID_CrysEndGame = $21A
MapID_AdanEndGame = $21C
MapID_AronStartTwoWorlds = $21E
MapID_AronEndGame = $220
MapID_GameSelect = $222
MapID_WeaponStoreDialogue = $224
MapID_ArmorStoreDialogue = $226
MapID_NurseDialogue = $228
MapID_PriestDialogue = $22A
MapID_FortuneTellerDialogue = $22E
MapID_InnDialogue = $230
MapID_Battle = $232
MapID_Title2 = $236
MapID_WrenTransform = $238
MapID_TechnaSpaceship = $23A
MapID_DraconiaSpaceship = $23C
MapID_AzuraSpaceTravel = $23E
MapID_LashuteDungeon = $240
MapID_SkyhavenDungeon = $242
MapID_Gen3DivisiaDungeon = $244
MapID_Gen3RebelCave = $246
MapID_SageIsle = $248
MapID_SageIsleSirenGone = $24A
MapID_Gen3DahliaDungeon = $24C
MapID_Gen3AzuraDungeon = $24E
MapID_Gen3AridiaDraconiaCave = $250
MapID_Gen3Landen = $252
MapID_Gen3Yaata = $254
MapID_Gen3Ilan = $256
MapID_Gen3Rysel = $258
MapID_Gen3Agoe = $25A
MapID_Lashute = $25C
MapID_Skyhaven = $25E
MapID_SkyhavenNeiWeapons = $260
MapID_Gen3SouthDivisia = $262
MapID_Gen3Aerone = $264
MapID_Gen3Endora = $266
MapID_Gen3Lensol = $268
MapID_Gen3Azura = $26C
MapID_SeanCrysDahlia = $26E
MapID_AdanDahlia = $272
MapID_AronDahlia = $276
MapID_Gen3DivisiaCastle = $27A
MapID_TechnaWeaponStore = $27C
MapID_TechnaArmorStore = $27E
MapID_TechnaInn = $280
MapID_TechnaSupplyStore = $282
MapID_TechnaChurch = $284
MapID_TechnaTechStore = $286
MapID_TechnaTopRightHouse = $288
MapID_NorthDivisiaSupplyStore = $28A
MapID_NorthDivisiaChurch = $28C
MapID_TechnaWeaponStore1F = $28E
MapID_TechnaArmorStore1F = $290
MapID_TechnaInn1F = $292
MapID_TechnaSupplyStore1F = $294
MapID_TechnaChurch1F = $296
MapID_TechnaTechStore1F = $298
MapID_TechnaTopRightHouse1F = $29A
MapID_NorthDivisiaSupplyStore1F = $29C
MapID_NorthDivisiaChurch1F = $29E
MapID_MystokeSupplyStore = $2A0
MapID_MystokeInn = $2A2
MapID_MystokeChurch = $2A4
MapID_MystokeTechStore = $2A6
MapID_MystokeWeaponStore = $2A8
MapID_MystokeArmorStore = $2AA
MapID_MystokeTopRightHouse = $2AC
MapID_NorthDivisiaTopLeftHouse = $2AE
MapID_NorthDivisiaInn = $2B0
MapID_MystokeSupplyStore1F = $2B2
MapID_MystokeInn1F = $2B4
MapID_MystokeChurch1F = $2B6
MapID_MystokeTechStore1F = $2B8
MapID_MystokeWeaponStore1F = $2BA
MapID_MystokeArmorStore1F = $2BC
MapID_MystokeTopRightHouse1F = $2BE
MapID_NorthDivisiaTopLeftHouse1F = $2C0
MapID_NorthDivisiaInn1F = $2C2
MapID_SouthDivisiaSupplyStore = $2C4
MapID_SouthDivisiaInn = $2C6
MapID_SouthDivisiaChurch = $2C8
MapID_SouthDivisiaTopLeftHouse = $2CA
MapID_SouthDivisiaWeaponStore = $2CC
MapID_SouthDivisiaArmorStore = $2CE
MapID_SouthDivisiaTopRightHouse = $2D0
MapID_SouthDivisiaSupplyStore1F = $2D6
MapID_SouthDivisiaInn1F = $2D8
MapID_SouthDivisiaChurch1F = $2DA
MapID_SouthDivisiaTopLeftHouse1F = $2DC
MapID_SouthDivisiaWeaponStore1F = $2DE
MapID_SouthDivisiaArmorStore1F = $2E0
MapID_SouthDivisiaTopRightHouseStore1F = $2E2
MapID_AeroneWeaponStore = $2E8
MapID_AeroneArmorStore = $2EA
MapID_AeroneInn = $2EC
MapID_AeroneSupplyStore = $2EE
MapID_AeroneChurch = $2F0
MapID_AeroneTechStore = $2F2
MapID_AeroneTopRightHouse = $2F4
MapID_AeroneWeaponStore1F = $2FA
MapID_AeroneArmorStore1F = $2FC
MapID_AeroneInn1F = $2FE
MapID_AeroneSupplyStore1F = $300
MapID_AeroneChurch1F = $302
MapID_AeroneTechStore1F = $304
MapID_AeroneTopRightHouse1F = $306
MapID_NewMotaTechStore = $30C
MapID_NewMotaSupplyStore = $30E
MapID_NewMotaInn = $310
MapID_NewMotaBottomRightHouse = $312
MapID_NewMotaWeaponStore = $314
MapID_NewMotaArmorStore = $316
MapID_NewMotaChurch = $318
MapID_NewMotaTechStore1F = $31E
MapID_NewMotaSupplyStore1F = $320
MapID_NewMotaInn1F = $322
MapID_NewMotaBottomRightHouse1F = $324
MapID_NewMotaWeaponStore1F = $326
MapID_NewMotaArmorStore1F = $328
MapID_NewMotaChurch1F = $32A
MapID_EndoraBottomLeftHouse = $330
MapID_EndoraInn = $332
MapID_EndoraSupplyStore = $334
MapID_EndoraWeaponStore = $336
MapID_EndoraTechStore = $338
MapID_EndoraChurch = $33A
MapID_EndoraArmorStore = $33C
MapID_EndoraBottomLeftHouse1F = $342
MapID_EndoraInn1F = $344
MapID_EndoraSupplyStore1F = $346
MapID_EndoraWeaponStore1F = $348
MapID_EndoraTechStore1F = $34A
MapID_EndoraChurch1F = $34C
MapID_EndoraArmorStore1F = $34E
MapID_LensolArmorStore = $354
MapID_LensolChurch = $356
MapID_LensolInn = $358
MapID_LensolTechStore = $35A
MapID_LensolSupplyStore = $35C
MapID_LensolWeaponStore = $35E
MapID_LensolArmorStore1F = $366
MapID_LensolChurch1F = $368
MapID_LensolInn1F = $36A
MapID_LensolTechStore1F = $36C
MapID_LensolSupplyStore1F = $36E
MapID_LensolWeaponStore1F = $370
MapID_Monitor = $376
MapID_Gen3AquaticaWorld = $378
MapID_NorthDivisia = $37A
MapID_Gen3NorthDivisia = $37C
MapID_AeroneSpaceship = $37E
MapID_AeroneSpaceshipOut = $380
MapID_DahliaSpaceTravel = $382
MapID_NewGeneration = $38C
MapID_RhysMarriageDialogue = $392
MapID_AynDialogueRhysMaia = $394
MapID_AynDialogueLyleSiren = $396
MapID_RhysDialogue = $398
MapID_LuneDialogue = $39A
MapID_LayaAlairChoice = $39C
MapID_SeanDialogueAynThea = $39E
MapID_SeanFirstScreen = $3A0
MapID_SeanSecondScreen = $3A2
MapID_CrysFirstScreen = $3A4
MapID_AdanFirstScreen = $3A6
MapID_AdanSecondScreen = $3A8
MapID_AronFirstScreen = $3AA
MapID_SeanAzura = $3AC
MapID_GameStart = $3AE
MapID_Wedding = $3B0
MapID_DarkForceBattle = $3B2
MapID_EndGameMegido = $3B4
MapID_EndGameMieuWren = $3B6
MapID_EndGameGrantz = $3B8
MapID_EndGameLashuteCollapse = $3BA
MapID_CrysDialogueScreen = $3BE
MapID_AdanDialogueNialLaya = $3C0
MapID_AronDialogueNialAlair = $3C2
MapID_AdanDialogueAlair = $3C8
MapID_AronDialogueLune = $3CA

; ---------------------------------------------------------------------------
; Controller Buttons
;
; Buttons bit numbers
ButtonUp =  0
ButtonDown =  1
ButtonLeft =  2
ButtonRight =  3
Button_B =  4
Button_C =  5
Button_A =  6
ButtonStart =  7
; Buttons masks
ButtonUp_Mask = 1<<ButtonUp	; $01
ButtonDown_Mask =  1<<ButtonDown	; $02
ButtonLeft_Mask =  1<<ButtonLeft	; $04
ButtonRight_Mask =  1<<ButtonRight	; $08
Button_B_Mask =  1<<Button_B	; $10
Button_C_Mask =  1<<Button_C	; $20
Button_A_Mask =  1<<Button_A	; $40
ButtonStart_Mask =  1<<ButtonStart	; $80
; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------
; Addresses
; ---------------------------------------------------------------------------


; VDP
vdp_data_port =  $C00000
vdp_control_port =  $C00004
vdp_counter =  $C00008

psg_input =  $C00011

; Z80
z80_ram =  $A00000	; start of Z80 RAM
z80_ram_end =  $A02000	; end of non-reserved Z80 RAM
z80_bus_request =  $A11100
z80_reset =  $A11200

security_addr =  $A14000 

; I/O area
hw_version =  $A10001
hw_port_1_data =  $A10003
hw_port_2_data =  $A10005
hw_expansion_data =  $A10007
hw_port_1_control =  $A10009
hw_port_2_control =  $A1000B
hw_expansion_control =  $A1000D

; RAM
; Make sure RAM address constants work in both 16-bit and 32-bit addressing modes
ramaddr function x,-(-x)&$FFFFFFFF


ram_start =  ramaddr($FFFF0000)

nem_code_table = ramaddr($FFFFAA80)

treasure_chest_flags = ramaddr($FFFFBCA0)		; The offset of the items is the same as the index of the TreasureChestData table

event_flags =  ramaddr($FFFFBF00)

primary_obj_table = ramaddr($FFFFC000)
char_sprite_manager = ramaddr($FFFFC000)	; parent object of the character sprites on the map/level screen
money_owned =  ramaddr($FFFFC040)			; amount of money that you own at the moment

secondary_obj_table = ramaddr($FFFFC300)
tertiary_obj_table = ramaddr($FFFFC980)

char_stats =  ramaddr($FFFFC080)

joypad_held =  ramaddr($FFFFD000)		
joypad_pressed =  ramaddr($FFFFD001)

object_counter = ramaddr($FFFFD00B)

vdp_reg1_values = ramaddr($FFFFD00C)		; by reg1 I mean the 2nd register of the VDP

game_screen_index =  ramaddr($FFFFD012)
game_screen_routine = ramaddr($FFFFD014)

sprite_num = ramaddr($FFFFD01A)			; number of sprites whose index is multiple by 8 (so if there are 2 sprites, the value in this address is 16) 
sprite_num_saved = ramaddr($FFFFD01C)

generation_index =  ramaddr($FFFFD01E)		; 0 = Rhys ; 1 = Ayn ; 2 = Nial ; 3 = Sean ; 4 = Crys ; 5 = Adan ; 6 = Aron

map_id = ramaddr($FFFFD022)		; most of the values stored here are used for maps, but can also be transition screens, menus, etc.
map_id_saved = ramaddr($FFFFD024)

party_members_num =  ramaddr($FFFFD026)		; current number of party members

rng_seed =  ramaddr($FFFFD036)

primary_obj_size = ramaddr($FFFFD050)

script_offset =  ramaddr($FFFFD064)

shop_item_num = ramaddr($FFFFD066)		; number of items displayed at shops

battle_msg_timer_saved =  ramaddr($FFFFD11C)
battle_msg_timer =  ramaddr($FFFFD11D)		; determines how long text should be displayed before continuing

sound_queue = ramaddr($FFFFD11E)
sound_queue_saved = ramaddr($FFFFD11F)

generation_index_saved =  ramaddr($FFFFD136)	; writes to this value when starting a new generation and then sets this value in the generation_index RAM location

wren_transform_index = ramaddr($FFFFD138)	; 0 = Aquaskimmer ; 2 = Submersible ; 4 = Aerojet ; 6 = Original form from Aquaskimmer ; 8 = Original form from Submersible ; $A = Original form from Aerojet
									
x_scroll_value = ramaddr($FFFFD200)
y_scroll_value = ramaddr($FFFFD204)

game_general_routine =  ramaddr($FFFFD284)

obj_game_event = ramaddr($FFFFD380)
game_event_pointer = ramaddr($FFFFD384)

demo_joypad_input = ramaddr($FFFFD396)

sprite_table_buffer = ramaddr($FFFFD400)

char_name_saved =  ramaddr($FFFFD480)

sprite_table_input = ramaddr($FFFFD800)

palette_table_buffer = ramaddr($FFFFDC00)

char_inventory =  ramaddr($FFFFDE80)

ram_artnem_sega = ramaddr($FFFFE400)

system_stack =  ramaddr($FFFFFE00)

ram_end =  ramaddr($FFFFFFFF)