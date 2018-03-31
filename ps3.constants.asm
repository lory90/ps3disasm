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
attack_mod = $6C	; word ; affected by Fanbi
defense_mod = $6E	; word ; affected by Shu
speed_mod = $70	; byte ; affected by Ner


; ---------------------------------------------------------------------------
; Properties and constants applicable to all objects
render_flags = 0	; byte
subtype = 1			; byte
routine = 2			; word
update_addr = 4		; longword
x_pos = 8			; word
y_pos = $A			; word
mappings = $10		; longword
art_tile = $14		; word
sprite_type = $18	; word
sprite_x_pos = $1A	; word
sprite_y_pos = $1C	; word

obj_size = $40
next_obj = $40
prev_obj = -$40
; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
; Properties and constants applicable to characters and NPCs
facing_dir = $E	; byte	; 0 = up; 1 = right; 2 = down; left = 3
; ---------------------------------------------------------------------------

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


; Scenes
SceneID_LandenWorld = 0
SceneID_AridiaWorld = 2
SceneID_AquaticaWorldFrozen = 4
SceneID_DraconiaWorld = 6
SceneID_TerminusWorld = 8
SceneID_FrigidiaWorld = $A
SceneID_ElysiumWorld = $C
SceneID_AquaticaWorld = $E
SceneID_AynLandenWorld = $10
SceneID_NialDahlia = $12
SceneID_AynAzura = $14
SceneID_LandenAquaticaCave = $2C
SceneID_AquaticaAridiaCave = $2E
SceneID_LandenAridiaCave = $30
SceneID_AridiaControlTower = $38
SceneID_AridiaControlTower1F = $3A
SceneID_LandenCastle = $3C
SceneID_Satera = $3E
SceneID_SunkenPalace = $40
SceneID_AgoeCastle = $42
SceneID_ShusoranCastle = $44
SceneID_CilleCastle = $46
SceneID_LensolCastle = $48
SceneID_AynCilleCastle = $4A
SceneID_AynCilleCastleEmpty = $4C
SceneID_AynLensolCastle = $4E
SceneID_AynLensolCastleGatesOpen = $50
SceneID_TechnaCastle = $52
SceneID_AynLandeCastleBeforeSari = $54
SceneID_AynLandeCastleSariJoin = $56
SceneID_ShusoranCastleLenaJoin = $58
SceneID_Landen = $5A
SceneID_Yaata = $5C
SceneID_Ilan = $5E
SceneID_RyselFrozen = $60
SceneID_Hazatak = $62
SceneID_Agoe = $64
SceneID_Shusoran = $66
SceneID_Cille = $68
SceneID_AynLanden = $6A
SceneID_AynLandenSariJoin = $6C
SceneID_AynYaata = $6E
SceneID_AynIlan = $70
SceneID_ShusoranLenaJoin = $72
SceneID_RyselNormal = $74
SceneID_LandenAfterWedding = $76
SceneID_LandenDungeon = $78
SceneID_LandenIslandCave = $7A
SceneID_AynLandenDungeon = $7C
SceneID_AynLandenDungeonSariJoin = $7E
SceneID_WrenCave = $80
SceneID_NialLandenDungeon = $82
SceneID_AynIslandCave = $84
SceneID_ShusoranDungeon = $86
SceneID_CilleDungeon = $88
SceneID_NialIslandCave = $8A
SceneID_AynLandenAquaticaCave = $8C
SceneID_NialLandenAquaticaCave = $8E
SceneID_AynAquaticaAridiaCave = $90
SceneID_NialAquaticaAridiaCave = $92
SceneID_Gen3WrenCave = $94
SceneID_AynWrenCave = $96
SceneID_NialWrenCave = $98
SceneID_AynControlTower = $9A
SceneID_NialControlTower = $9C
SceneID_AynControlTower1F = $9E
SceneID_NialControlTower1F = $A0
SceneID_AynShusoranDungeon = $A2
SceneID_AynCilleDungeon = $A4
SceneID_LensolDungeon = $A8
SceneID_LensolDungeonTheaJoin = $AA
SceneID_TechnaDungeon = $AC
SceneID_NialMystokeDungeon = $AE
SceneID_DivisiaDungeon = $B0
SceneID_ShusoranDungeonLenaJoin = $B2
SceneID_LashuteEvil = $B4
SceneID_LayaTemple = $B6
SceneID_LayaWorld = $BA
SceneID_LandenTechStore = $C0
SceneID_LandenArmorStore = $C2
SceneID_LandenWeaponStore = $C4
SceneID_LandenInn = $C6
SceneID_LandenSupplyStore = $C8
SceneID_LandenChurch = $CA
SceneID_LandenFortuneTeller = $CC
SceneID_LandenTopRightHouse = $CE
SceneID_LandenTopRightHouse2 = $D0
SceneID_LandenTechStore1F = $D2
SceneID_LandenArmorStore1F = $D4
SceneID_LandenWeaponStore1F = $D6
SceneID_LandenInn1F = $D8
SceneID_LandenSupplyStore1F = $DA
SceneID_LandenChurch1F = $DC
SceneID_LandenFortuneTeller1F = $DE
SceneID_LandenTopRightHouse1F = $E0
SceneID_LandenTopRightHouse21F = $E2
SceneID_YaataBottomLeftHouse = $E4
SceneID_YaataInn = $E6
SceneID_YaataSupplyStore = $E8
SceneID_YaataWeaponStore = $EA
SceneID_YaataTechStore = $EC
SceneID_YaataChurch = $EE
SceneID_YaataArmorStore = $F0
SceneID_YaataBottomLeftHouse1F = $F2
SceneID_YaataInn1F = $F4
SceneID_YaataSupplyStore1F = $F6
SceneID_YaataWeaponStore1F = $F8
SceneID_YaataTechStore1F = $FA
SceneID_YaataChurch1F = $FC
SceneID_YaataArmorStore1F = $FE
SceneID_IlanWeaponStore = $100
SceneID_IlanArmorStore = $102
SceneID_IlanInn = $104
SceneID_IlanSupplyStore = $106
SceneID_IlanChurch = $108
SceneID_IlanTechStore = $10A
SceneID_IlanTopRightHouse = $10C
SceneID_IlanWeaponStore1F = $10E
SceneID_IlanArmorStore1F = $110
SceneID_IlanInn1F = $112
SceneID_IlanSupplyStore1F = $114
SceneID_IlanChurch1F = $116
SceneID_IlanTechStore1F = $118
SceneID_IlanTopRightHouse1F = $11A
SceneID_RyselSupplyStore = $11C
SceneID_RyselInn = $11E
SceneID_RyselChurch = $120
SceneID_RyselTechStore = $122
SceneID_RyselWeaponStore = $124
SceneID_RyselArmorStore = $126
SceneID_RyselTopRightHouse = $128
SceneID_RyselSupplyStore1F = $12A
SceneID_RyselInn1F = $12C
SceneID_RyselChurch1F = $12E
SceneID_RyselTechStore1F = $130
SceneID_RyselWeaponStore1F = $132
SceneID_RyselArmorStore1F = $134
SceneID_RyselTopRightHouse1F = $136
SceneID_HazatakArmorStore = $138
SceneID_HazatakSupplyStore = $13A
SceneID_HazatakInn = $13C
SceneID_HazatakTopLeftHouse = $13E
SceneID_HazatakTechStore = $140
SceneID_HazatakWeaponStore = $142
SceneID_HazatakArmorStore1F = $144
SceneID_HazatakSupplyStore1F = $146
SceneID_HazatakInn1F = $148
SceneID_HazatakTopLeftHouse1F = $14A
SceneID_HazatakTechStore1F = $14C
SceneID_HazatakWeaponStore1F = $14E
SceneID_AgoeTechStore = $150
SceneID_AgoeSupplyStore = $152
SceneID_AgoeInn = $154
SceneID_AgoeBottomRightHouse = $156
SceneID_AgoeWeaponStore = $158
SceneID_AgoeArmorStore = $15A
SceneID_AgoeChurch = $15C
SceneID_AgoeTechStore1F = $15E
SceneID_AgoeSupplyStore1F = $160
SceneID_AgoeInn1F = $162
SceneID_AgoeBottomRightHouse1F = $164
SceneID_AgoeWeaponStore1F = $166
SceneID_AgoeArmorStore1F = $168
SceneID_AgoeChurch1F = $16A
SceneID_ShusoranTechStore = $16C
SceneID_ShusoranChurch = $16E
SceneID_ShusoranInn = $170
SceneID_ShusoranWeaponStore = $172
SceneID_ShusoranArmorStore = $174
SceneID_ShusoranSupplyStore = $176
SceneID_ShusoranTechStore1F = $178
SceneID_ShusoranChurch1F = $17A
SceneID_ShusoranInn1F = $17C
SceneID_ShusoranWeaponStore1F = $17E
SceneID_ShusoranArmorStore1F = $180
SceneID_ShusoranSupplyStore1F = $182
SceneID_CilleTechStore = $184
SceneID_CilleChurch = $186
SceneID_CilleInn = $188
SceneID_CilleArmorStore = $18A
SceneID_CilleSupplyStore = $18C
SceneID_CilleWeaponStore = $18E
SceneID_CilleTechStore1F = $190
SceneID_CilleChurch1F = $192
SceneID_CilleInn1F = $194
SceneID_CilleArmorStore1F = $196
SceneID_CilleSupplyStore1F = $198
SceneID_CilleWeaponStore1F = $19A
SceneID_AynAgoeCastle = $19C
SceneID_AynShusoranCastle = $19E
SceneID_AynShusoranCastleEmpty = $1A0
SceneID_NialLandenCastle = $1A2
SceneID_NialMystokeCastle = $1A4
SceneID_DivisiaCastle = $1A6
SceneID_SeanLandenCastle = $1A8
SceneID_CrysLandenCastle = $1AA
SceneID_AdanLandenCastle = $1AC
SceneID_AronLandenCastle = $1AE
SceneID_Gen3Satera = $1B0
SceneID_Gen3AgoeCastle = $1B2
SceneID_Gen3CilleCastle = $1B4
SceneID_SeanCrysLensolCastle = $1B6
SceneID_AdanAronLensolCastle = $1B8
SceneID_Gen3TechnaCastle = $1BA
SceneID_AynRysel = $1BC
SceneID_AynHazatak = $1BE
SceneID_AynAgoe = $1C0
SceneID_AynShusoran = $1C2
SceneID_AynCille = $1C4
SceneID_AynTechna = $1C6
SceneID_Endora = $1C8
SceneID_Lensol = $1CA
SceneID_AynLensolGatesOpen = $1CC
SceneID_NialLanden = $1CE
SceneID_NialYaata = $1D0
SceneID_NialIlan = $1D2
SceneID_NialHazatak = $1D4
SceneID_AynShusoranEmpty = $1D6
SceneID_AynCilleEmpty = $1D8
SceneID_Gen3Techna = $1DA
SceneID_Mystoke = $1DC
SceneID_SouthDivisia = $1DE
SceneID_Aerone = $1E0
SceneID_NewMota = $1E2
SceneID_AynAquaticaWorld = $1E4
SceneID_AynAridiaWorld = $1E6
SceneID_NialLandenWorld = $1E8
SceneID_NialAridiaWorld = $1EA
SceneID_RebelCave = $1EC
SceneID_RebelCaveRyanJoin = $1EE
SceneID_AeroneDungeon = $1F0
SceneID_DahliaDungeon = $1F2
SceneID_NialDahliaDungeon = $1F4
SceneID_AzuraDungeon = $1F6
SceneID_AridiaDraconiaCave = $1F8
SceneID_AridiaFrigidiaCave = $1FA
SceneID_NialLandenElysiumCave = $1FC
SceneID_AynLandenAridiaCave = $1FE
SceneID_NialLandenAridiaCave = $200
SceneID_RhysMenu = $202
SceneID_AynMenu = $204
SceneID_NialMenu = $206
SceneID_SeanMenu = $208
SceneID_CrysMenu = $20A
SceneID_AdanMenu = $20C
SceneID_AronMenu = $20E
SceneID_Title = $210
SceneID_Intro = $212
SceneID_SeanEndGame = $214
SceneID_NewMotaStory = $216
SceneID_TwoMoons = $218
SceneID_CrysEndGame = $21A
SceneID_AdanEndGame = $21C
SceneID_AronStartTwoWorlds = $21E
SceneID_AronEndGame = $220
SceneID_GameSelect = $222
SceneID_WeaponStoreDialogue = $224
SceneID_ArmorStoreDialogue = $226
SceneID_NurseDialogue = $228
SceneID_PriestDialogue = $22A
SceneID_FortuneTellerDialogue = $22E
SceneID_InnDialogue = $230
SceneID_Battle = $232
SceneID_Title2 = $236
SceneID_WrenTransform = $238
SceneID_TechnaSpaceship = $23A
SceneID_DraconiaSpaceship = $23C
SceneID_AzuraSpaceTravel = $23E
SceneID_LashuteDungeon = $240
SceneID_SkyhavenDungeon = $242
SceneID_Gen3DivisiaDungeon = $244
SceneID_Gen3RebelCave = $246
SceneID_SageIsle = $248
SceneID_SageIsleSirenGone = $24A
SceneID_Gen3DahliaDungeon = $24C
SceneID_Gen3AzuraDungeon = $24E
SceneID_Gen3AridiaDraconiaCave = $250
SceneID_Gen3Landen = $252
SceneID_Gen3Yaata = $254
SceneID_Gen3Ilan = $256
SceneID_Gen3Rysel = $258
SceneID_Gen3Agoe = $25A
SceneID_Lashute = $25C
SceneID_Skyhaven = $25E
SceneID_SkyhavenNeiWeapons = $260
SceneID_Gen3SouthDivisia = $262
SceneID_Gen3Aerone = $264
SceneID_Gen3Endora = $266
SceneID_Gen3Lensol = $268
SceneID_NialStart = $26A
SceneID_Gen3Azura = $26C
SceneID_SeanCrysDahlia = $26E
SceneID_AdanDahlia = $272
SceneID_AronDahlia = $276
SceneID_Gen3DivisiaCastle = $27A
SceneID_TechnaWeaponStore = $27C
SceneID_TechnaArmorStore = $27E
SceneID_TechnaInn = $280
SceneID_TechnaSupplyStore = $282
SceneID_TechnaChurch = $284
SceneID_TechnaTechStore = $286
SceneID_TechnaTopRightHouse = $288
SceneID_NorthDivisiaSupplyStore = $28A
SceneID_NorthDivisiaChurch = $28C
SceneID_TechnaWeaponStore1F = $28E
SceneID_TechnaArmorStore1F = $290
SceneID_TechnaInn1F = $292
SceneID_TechnaSupplyStore1F = $294
SceneID_TechnaChurch1F = $296
SceneID_TechnaTechStore1F = $298
SceneID_TechnaTopRightHouse1F = $29A
SceneID_NorthDivisiaSupplyStore1F = $29C
SceneID_NorthDivisiaChurch1F = $29E
SceneID_MystokeSupplyStore = $2A0
SceneID_MystokeInn = $2A2
SceneID_MystokeChurch = $2A4
SceneID_MystokeTechStore = $2A6
SceneID_MystokeWeaponStore = $2A8
SceneID_MystokeArmorStore = $2AA
SceneID_MystokeTopRightHouse = $2AC
SceneID_NorthDivisiaTopLeftHouse = $2AE
SceneID_NorthDivisiaInn = $2B0
SceneID_MystokeSupplyStore1F = $2B2
SceneID_MystokeInn1F = $2B4
SceneID_MystokeChurch1F = $2B6
SceneID_MystokeTechStore1F = $2B8
SceneID_MystokeWeaponStore1F = $2BA
SceneID_MystokeArmorStore1F = $2BC
SceneID_MystokeTopRightHouse1F = $2BE
SceneID_NorthDivisiaTopLeftHouse1F = $2C0
SceneID_NorthDivisiaInn1F = $2C2
SceneID_SouthDivisiaSupplyStore = $2C4
SceneID_SouthDivisiaInn = $2C6
SceneID_SouthDivisiaChurch = $2C8
SceneID_SouthDivisiaTopLeftHouse = $2CA
SceneID_SouthDivisiaWeaponStore = $2CC
SceneID_SouthDivisiaArmorStore = $2CE
SceneID_SouthDivisiaTopRightHouse = $2D0
SceneID_SouthDivisiaSupplyStore1F = $2D6
SceneID_SouthDivisiaInn1F = $2D8
SceneID_SouthDivisiaChurch1F = $2DA
SceneID_SouthDivisiaTopLeftHouse1F = $2DC
SceneID_SouthDivisiaWeaponStore1F = $2DE
SceneID_SouthDivisiaArmorStore1F = $2E0
SceneID_SouthDivisiaTopRightHouseStore1F = $2E2
SceneID_AeroneWeaponStore = $2E8
SceneID_AeroneArmorStore = $2EA
SceneID_AeroneInn = $2EC
SceneID_AeroneSupplyStore = $2EE
SceneID_AeroneChurch = $2F0
SceneID_AeroneTechStore = $2F2
SceneID_AeroneTopRightHouse = $2F4
SceneID_AeroneWeaponStore1F = $2FA
SceneID_AeroneArmorStore1F = $2FC
SceneID_AeroneInn1F = $2FE
SceneID_AeroneSupplyStore1F = $300
SceneID_AeroneChurch1F = $302
SceneID_AeroneTechStore1F = $304
SceneID_AeroneTopRightHouse1F = $306
SceneID_NewMotaTechStore = $30C
SceneID_NewMotaSupplyStore = $30E
SceneID_NewMotaInn = $310
SceneID_NewMotaBottomRightHouse = $312
SceneID_NewMotaWeaponStore = $314
SceneID_NewMotaArmorStore = $316
SceneID_NewMotaChurch = $318
SceneID_NewMotaTechStore1F = $31E
SceneID_NewMotaSupplyStore1F = $320
SceneID_NewMotaInn1F = $322
SceneID_NewMotaBottomRightHouse1F = $324
SceneID_NewMotaWeaponStore1F = $326
SceneID_NewMotaArmorStore1F = $328
SceneID_NewMotaChurch1F = $32A
SceneID_EndoraBottomLeftHouse = $330
SceneID_EndoraInn = $332
SceneID_EndoraSupplyStore = $334
SceneID_EndoraWeaponStore = $336
SceneID_EndoraTechStore = $338
SceneID_EndoraChurch = $33A
SceneID_EndoraArmorStore = $33C
SceneID_EndoraBottomLeftHouse1F = $342
SceneID_EndoraInn1F = $344
SceneID_EndoraSupplyStore1F = $346
SceneID_EndoraWeaponStore1F = $348
SceneID_EndoraTechStore1F = $34A
SceneID_EndoraChurch1F = $34C
SceneID_EndoraArmorStore1F = $34E
SceneID_LensolArmorStore = $354
SceneID_LensolChurch = $356
SceneID_LensolInn = $358
SceneID_LensolTechStore = $35A
SceneID_LensolSupplyStore = $35C
SceneID_LensolWeaponStore = $35E
SceneID_LensolArmorStore1F = $366
SceneID_LensolChurch1F = $368
SceneID_LensolInn1F = $36A
SceneID_LensolTechStore1F = $36C
SceneID_LensolSupplyStore1F = $36E
SceneID_LensolWeaponStore1F = $370
SceneID_Monitor = $376
SceneID_Gen3AquaticaWorld = $378
SceneID_NorthDivisia = $37A
SceneID_Gen3NorthDivisia = $37C
SceneID_AeroneSpaceship = $37E
SceneID_ElysiumSpaceship = $380
SceneID_DahliaSpaceTravel = $382
SceneID_GenerationTransition = $384
SceneID_RhysAynGenTransition = $386
SceneID_RhysNialGenTransition = $388
SceneID_AynSeanGenTransition = $38A
SceneID_AynCrysGenTransition = $38C
SceneID_NialAdanGenTransition = $38E
SceneID_NialAronGenTransition = $390
SceneID_RhysMarriageDialogue = $392
SceneID_AynDialogueRhysMaia = $394
SceneID_AynDialogueLyleSiren = $396
SceneID_NialDialogueScreen = $398
SceneID_LuneDialogue = $39A
SceneID_LayaAlairChoice = $39C
SceneID_SeanDialogueAynThea = $39E
SceneID_SeanFirstScreen = $3A0
SceneID_SeanSecondScreen = $3A2
SceneID_CrysFirstScreen = $3A4
SceneID_AdanFirstScreen = $3A6
SceneID_AdanSecondScreen = $3A8
SceneID_AronFirstScreen = $3AA
SceneID_SeanAzura = $3AC
SceneID_GameStart = $3AE
SceneID_Wedding = $3B0
SceneID_DarkForceBattle = $3B2
SceneID_EndGameMegido = $3B4
SceneID_EndGameMieuWren = $3B6
SceneID_EndGameGrantz = $3B8
SceneID_EndGameLashuteCollapse = $3BA
SceneID_CrysDialogueScreen = $3BE
SceneID_AdanDialogueNialLaya = $3C0
SceneID_AronDialogueNialAlair = $3C2
SceneID_AdanDialogueAlair = $3C8
SceneID_AronDialogueLune = $3CA


; Event Flags
EventFlag_GameStart = 0
EventFlag_DemoSteps = 2
EventFlag_MaiaKidnapped = 3
EventFlag_LandenPrison = 4
EventFlag_MeetingLena = 5
EventFlag_LandenPrisonDoor = 6
EventFlag_PrisonBreakout = 7
EventFlag_MieuTrigger = 8
EventFlag_MieuJoined = 9
EventFlag_YaataBoat = $A
EventFlag_YaataBoatTrips = $B
EventFlag_MeetingLyle = $C
EventFlag_WrenTrigger = $D	; set, but never used
EventFlag_WrenJoined = $E
EventFlag_LyleJoined = $F
EventFlag_WeatherFixed = $10
EventFlag_RyselBoatTrips = $11
EventFlag_LenaJoined = $12
EventFlag_TwoMoons = $13
EventFlag_CilleKingDefeated = $14
EventFlag_MaiaWedding = $15
EventFlag_LenaWedding = $16
EventFlag_RhysGeneration = $18	; cleared during Rhys's generation
EventFlag_AynGeneration = $19	; cleared during Ayn's generation
EventFlag_NialGeneration = $1A	; cleared during Nial's generation
EventFlag_SeanGeneration = $1B	; cleared during Sean's generation
EventFlag_CrysGeneration = $1C	; cleared during Crys's generation
EventFlag_AdanGeneration = $1D	; cleared during Adan's generation
EventFlag_AronGeneration = $1E	; cleared during Aron's generation
EventFlag_TitleScreen = $1F
EventFlag_AynQuestStart = $20
EventFlag_AynTalkingToRhys = $21
EventFlag_AynQuestStart2 = $22
EventFlag_AynShusoranBoat = $23
EventFlag_AynShusoranBoat2 = $24
EventFlag_LensolGateOpen = $25
EventFlag_LensolPrisonBottomDoor = $26
EventFlag_LensolPrisonTopDoor = $27
EventFlag_TheaJoined = $28
EventFlag_SariJoined = $29
EventFlag_LyleDead = $2A
EventFlag_AzuraSpaceshipBoard = $30
EventFlag_Azura = $31
EventFlag_AynQuestEnd = $34
EventFlag_TheaWedding = $35
EventFlag_SariWedding = $36
EventFlag_NialQuestStart = $40
EventFlag_NialTalkingToRhys = $41
EventFlag_NialQuestStart2 = $42
EventFlag_DivisiaPrisonTopDoor = $47
EventFlag_DivisiaPrisonBottomDoor = $48
EventFlag_AlairRescue = $49
EventFlag_RebelCaveLune = $4A
EventFlag_RyanTalkingToLune = $4B
EventFlag_RebelCaveLuneGone = $4C
EventFlag_RyanDialogueAfterLune = $4D
EventFlag_RyanJoined = $4E
EventFlag_LayaJoined = $4F
EventFlag_DahliaSpaceshipBoard = $50
EventFlag_Dahlia = $51
EventFlag_LayaWedding = $55
EventFlag_AlairWedding = $56
EventFlag_SeanQuestStart = $60
EventFlag_AzuraEscape = $61
EventFlag_SeanQuestStart2 = $62
EventFlag_KaraUnused = $68
EventFlag_CrysQuestStart = $80
EventFlag_CrysQuestStart2 = $81
EventFlag_WarriorKaraJoined = $88
EventFlag_AdanQuestStart = $A0
EventFlag_AdanQuestStart2 = $A1
EventFlag_PrincessKaraJoined = $A8
EventFlag_AronQuestStart = $C0
EventFlag_AronQuestStart2 = $C1
EventFlag_OrakioSword = $E3
EventFlag_Miun = $E4
EventFlag_SirenSageIsle = $E5
EventFlag_AncientWordRevealed = $E6
EventFlag_NeiWeapons = $E7
EventFlag_RulakirDefeated = $E8
EventFlag_SirenSageIsle2 = $E9
EventFlag_DarkForce = $EA

; Generations
GenerationID_Rhys = 0
GenerationID_Ayn = 1
GenerationID_Nial = 2
GenerationID_Sean = 3
GenerationID_Crys = 4
GenerationID_Adan = 5
GenerationID_Aron = 6

; Music
MusicID_Church = $81
MusicID_Shusoran = $82
MusicID_Title = $83
MusicID_Shop = $84
MusicID_Town = $85
MusicID_Boat = $86
MusicID_GameOver = $87
MusicID_Victory = $89
MusicID_Fortune = $8A
MusicID_World5 = $8B	; party full
MusicID_World4 = $8C
MusicID_World3 = $8D
MusicID_World2 = $8E
MusicID_World1 = $8F
MusicID_LayaWorld = $90
MusicID_Wedding = $91
MusicID_WorldDeadLeader = $92
MusicID_Dungeon1 = $93	; caves
MusicID_Dungeon2 = $94	; advanced
MusicID_Castle = $95
MusicID_BattleStart = $97
MusicID_BattleLosing = $98
MusicID_BattleWinning = $99
MusicID_BattleNormal = $9A
MusicID_Megido = $9B
MusicID_Lashute = $9C
MusicID_LayanTemple = $9D
MusicID_Wren = $9E
MusicID_RoyalWaltz = $9F
MusicID_Anger = $A0
MusicID_DarkForce = $A1
MusicID_Skyhaven = $A2
MusicID_Satellite = $A3
MusicID_Ending1 = $A4	; (Crys & Aron)
MusicID_Ending2 = $A5	; (Sean & Adan)
MusicID_Credits = $A8

; SFX
SFXID_Decision = $B0
SFXID_Slicer = $B1
SFXID_Staff = $B2
SFXID_Claw = $B3
SFXID_Sword = $B4
SFXID_Shot = $B5
SFXID_ChestOpen = $B7
SFXID_Bow = $B8
SFXID_PrisonDoor = $BB
SFXID_Escapipe = $BC
SFXID_Wave = $BE
SFXID_Forsa = $BF
SFXID_Foi = $C0
SFXID_Tsu = $C1
SFXID_Gra = $C2
SFXID_Zan = $C3
SFXID_Grantz = $C4
SFXID_Megido = $C5
SFXID_Ner = $C6
SFXID_Needler = $C7
SFXID_Laser = $C8
SFXID_Res = $C9
SFXID_Earthquake = $CB
SFXID_LevelUp = $CC
SFXID_Disabled = $CF
SFXID_WrenTransform = $D3
SFXID_Destruction = $D4
SFXID_LashuteCollapse = $D5
SFXID_Explosion = $D6
SFXID_Worldship = $D7
SFXID_Aquaskimmer = $DA
SFXID_Submersible = $DB
SFXID_Shuttle = $DD

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
char_sprite_manager = ramaddr($FFFFC000)	; parent object of the character sprites on scenes
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

scene_id = ramaddr($FFFFD022)		; maps, menus, dialogue screens, etc....
scene_id_saved = ramaddr($FFFFD024)

party_members_num =  ramaddr($FFFFD026)		; current number of party members

rng_seed =  ramaddr($FFFFD036)

scene_x_pos =  ramaddr($FFFFD04A)
scene_y_pos =  ramaddr($FFFFD04C)
screen_x_pos =  ramaddr($FFFFD04E)
screen_y_pos =  ramaddr($FFFFD04F)

primary_obj_size = ramaddr($FFFFD050)

script_offset =  ramaddr($FFFFD064)

shop_item_num = ramaddr($FFFFD066)		; number of items displayed at shops

battle_char_list =  ramaddr($FFFFD09C)	; list of character stats addresses (Hero, Mieu and Wren)
battle_char_list_2 =  ramaddr($FFFFD0A4)	; list of character stats addresses (4th and 5th characters)
battle_turn_data =  ramaddr($FFFFD0AA)	; data holding fighter stats addresses and agility for the current turn

battle_msg_timer_saved =  ramaddr($FFFFD11C)
battle_msg_timer =  ramaddr($FFFFD11D)		; determines how long text should be displayed before continuing

sound_queue = ramaddr($FFFFD11E)
sound_queue_saved = ramaddr($FFFFD11F)
sound_queue_saved_2 = ramaddr($FFFFD120)

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
char_techs =  ramaddr($FFFFDF20)

ram_artnem_sega = ramaddr($FFFFE400)

system_stack =  ramaddr($FFFFFE00)

ram_end =  ramaddr($FFFFFFFF)