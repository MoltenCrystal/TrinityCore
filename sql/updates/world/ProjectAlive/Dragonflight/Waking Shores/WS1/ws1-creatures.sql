SET @CGUID := 60000000;
SET @NPCTEXTID := 60000000;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1251;

DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (195032,186593,186582,186584,191721,193362,191169));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(195032, 1, 192120, 0, 0, 0, 0, 0, 0, 0, 0, 65299), -- Qalashi Djaradin
(186593, 1, 56912, 0, 0, 0, 0, 0, 0, 0, 0, 65299), -- Ruby Watcher
(186582, 1, 94830, 0, 0, 0, 0, 0, 0, 0, 0, 65299), -- Ruby Warden
(186584, 1, 192151, 0, 0, 0, 0, 0, 0, 0, 0, 65299), -- Commander Lethanak
(191721, 1, 191415, 0, 0, 0, 0, 0, 0, 0, 0, 65299), -- Ruby Fallen
(193362, 1, 191706, 0, 0, 193841, 0, 0, 0, 0, 0, 65299), -- Sendrax
(191169, 1, 141653, 0, 0, 0, 0, 0, 140544, 0, 0, 65299); -- Expedition Guardian

DELETE FROM `creature_queststarter` WHERE (`id`=187257 AND `quest`=66101) OR (`id`=184449 AND `quest`=67053);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(187257, 66101, 65299), -- From Such Great Heights offered by Aster Cloudgaze
(184449, 67053, 65299); -- Give Peace a Chance offered by Captain Garrick

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1251;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+1, 194674, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3703.5703125, -1892.2867431640625, 4.738698482513427734, 5.315044403076171875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 273098 - 8.0 Carry Two Chest Stack) (possible waypoints or random movement)
(@CGUID+2, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3740.15185546875, -1902.904541015625, 6.081118583679199218, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+5, 194674, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3699.408203125, -1863.1094970703125, 4.324845314025878906, 1.816398262977600097, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 273097 - 8.0 Carry Large Chest) (possible waypoints or random movement)
(@CGUID+6, 194668, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3668.134521484375, -1888.5482177734375, 7.650743961334228515, 3.454401969909667968, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Engineer (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+10, 194671, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3693.38427734375, -1892.5384521484375, 6.015381336212158203, 0.950419127941131591, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Elsa Donovan (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+14, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3691.146484375, -1877.083984375, 6.189405441284179687, 4.712388992309570312, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+16, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3732.357666015625, -1899.1875, 6.110538959503173828, 1.550946712493896484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+20, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3690.540771484375, -1931.9344482421875, 10.57960700988769531, 5.383623123168945312, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+22, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3724.03076171875, -1831.84716796875, 2.209103584289550781, 4.247145652770996093, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+24, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3722.671630859375, -1822.9349365234375, 0.099611997604370117, 0.639502882957458496, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+25, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3611.40625, -1961.1910400390625, 15.78138160705566406, 2.299245357513427734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+26, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3616.743896484375, -1893.2725830078125, 13.65886306762695312, 2.665709257125854492, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+27, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3670.6025390625, -2003.361083984375, 53.89981842041015625, 1.087007045745849609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+30, 194674, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3694.55029296875, -1855.585205078125, 3.688969135284423828, 5.421200752258300781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 244867 - 8.0 Carry Sack New Anim) (possible waypoints or random movement)
(@CGUID+33, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3623.162353515625, -1967.69482421875, 73.8213348388671875, 0.972490370273590087, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+34, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3637.40966796875, -1905.7257080078125, 60.71698760986328125, 0.844878256320953369, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+38, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3633.8125, -1917.82470703125, 63.4625701904296875, 0.535947859287261962, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+39, 187120, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3788.5625, -1853.6097412109375, 79.98583984375, 5.43898773193359375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hungry Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+42, 184857, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3770.044189453125, -1846.6300048828125, -2.76504087448120117, 1.370880365371704101, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Rambunctious Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 365868 - Dolphin Swimming [DNT]) (possible waypoints or random movement)
(@CGUID+44, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3683.327392578125, -1811.9566650390625, 71.03366851806640625, 5.37351083755493164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+45, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3655.7431640625, -1860.1978759765625, 86.8563232421875, 4.97263956069946289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+46, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3686.701416015625, -1802.5711669921875, 72.5617828369140625, 5.780449867248535156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+47, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3697.453125, -1798.454833984375, 68.04221343994140625, 5.639866828918457031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+48, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3612.510498046875, -1904.279541015625, 30.26709365844726562, 2.279090642929077148, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+49, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3718.1962890625, -1840.060546875, -0.67270666360855102, 0.710744917392730712, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+51, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3649.9072265625, -1849.826416015625, 9.992984771728515625, 1.523734092712402343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+52, 187135, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3657.7587890625, -1847.287109375, 9.434231758117675781, 5.940360069274902343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+53, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3723.141357421875, -1835.7493896484375, 1.228144288063049316, 4.57588958740234375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+55, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3580.302978515625, -1849.0711669921875, 14.50408267974853515, 5.763886928558349609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+57, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3760.151123046875, -1793.59033203125, 1.833675861358642578, 1.574405908584594726, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+61, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3723.749755859375, -1833.761962890625, 2.209122419357299804, 4.427052497863769531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+65, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3838.28125, -1847.685791015625, 9.477425575256347656, 4.911208152770996093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+67, 198367, 2523, 13644, 13722, '0', '0', 0, 0, 0, -7.77942752838134765, -0.08349577337503433, 86.22345733642578125, 3.166154384613037109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Crow's Nest [DNT] (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+69, 197611, 2523, 13644, 13722, '0', '0', 0, 0, 0, 21.346771240234375, -0.52653843164443969, 4.566155433654785156, 3.041264533996582031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+71, 184807, 2523, 13644, 13722, '0', '0', 0, 0, 0, 2.593545198440551757, 0.269358307123184204, 6.095977783203125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- The Defiant Dragonscale (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+72, 197611, 2523, 13644, 13722, '0', '0', 0, 0, 0, 10.09525203704833984, -0.01989407092332839, 34.86106109619140625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+73, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3835.4638671875, -1913.048095703125, -19.34356689453125, 2.134054183959960937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+74, 190532, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3817.0244140625, -1824.34033203125, 7.144627094268798828, 1.11888134479522705, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kite (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+75, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3567.330322265625, -1919.5672607421875, 11.62531661987304687, 0.767626762390136718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+76, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3621.302978515625, -2024.8385009765625, 33.93164825439453125, 2.753242015838623046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+78, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.111083984375, -1770.0711669921875, 23.64236259460449218, 5.339839458465576171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+80, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3774.858154296875, -2022.2890625, -3.07453036308288574, 0.954260766506195068, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+81, 190526, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3821.815185546875, -1816.9478759765625, 0.680830419063568115, 3.689449548721313476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Jaffe Cloudwalker (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+82, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4149.5986328125, -2113.723876953125, 127.7166824340820312, 0.237684473395347595, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+83, 184286, 2523, 13644, 13722, '0', '0', 0, 0, 1, 13.5078125, -0.3338623046875, 35.135528564453125, 3.193636417388916015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Captain Caspartine (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 372498 - Channel: Look Through Spyglass (Nightborne Male) [DNT])
(@CGUID+84, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3756.053955078125, -2011.7200927734375, -30.5579071044921875, 0.198394641280174255, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+85, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3583.63720703125, -2012.171875, 9.817873001098632812, 5.584734916687011718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+86, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3788.423095703125, -2058.57177734375, -34.3094520568847656, 1.058031201362609863, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+87, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3599.86279296875, -2032.923583984375, 30.4581298828125, 2.367518186569213867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+88, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3829.009521484375, -1844.16845703125, 6.458776473999023437, 3.441416740417480468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+89, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3810.15625, -1800.1302490234375, 0.597702264785766601, 4.740420818328857421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+90, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3794.569580078125, -1782.3125, 0.944361031055450439, 2.983151674270629882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+91, 195795, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3946.856689453125, -2324.69091796875, 86.240997314453125, 2.629623651504516601, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+92, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3814.375, -1797.91845703125, 2.375699043273925781, 0.881894588470458984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+93, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3780.927001953125, -1770.1649169921875, 0.938874125480651855, 4.932070255279541015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+94, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3723.672119140625, -1718.7138671875, 61.91627120971679687, 0.13443613052368164, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+97, 184855, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3740.9140625, -1789.1771240234375, 1.233120441436767578, 6.22235870361328125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterfly (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+98, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3675.109375, -1708.9305419921875, 34.64369583129882812, 3.242873668670654296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+99, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3772.199951171875, -1800.846923828125, 3.354750871658325195, 4.42396402359008789, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+100, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3771.80908203125, -1802.8553466796875, 2.354750871658325195, 4.669826984405517578, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+101, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3776.939697265625, -1721.3204345703125, 0.217813372611999511, 3.841153383255004882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+102, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3771.430419921875, -1801.8800048828125, 3.354750871658325195, 4.545605659484863281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+103, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3603.29248046875, -1737.90625, 64.02957916259765625, 2.820609331130981445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+105, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3600.43310546875, -1907.0191650390625, 27.57249832153320312, 0.749908864498138427, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+107, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3582.246826171875, -1834.3131103515625, 15.69953250885009765, 5.953560829162597656, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+108, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3604.005126953125, -1798.26220703125, 45.00776290893554687, 5.048968791961669921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+114, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3611.6171875, -1798.8680419921875, 37.48488998413085937, 4.110224723815917968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+116, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3574.5634765625, -1916.3609619140625, 10.82620716094970703, 2.46853947639465332, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+120, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3608.162353515625, -1819.0660400390625, 16.97158241271972656, 1.215029835700988769, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+121, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3607.69873046875, -1813.6353759765625, 17.97916793823242187, 5.354629039764404296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+124, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3439.432373046875, -1863.3680419921875, 87.46677398681640625, 3.785783052444458007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+125, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3455.7509765625, -1841.990234375, 8.602060317993164062, 3.582349777221679687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+126, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3535.284912109375, -1889.4375, 1.712383866310119628, 0.868391871452331542, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+128, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3522.427001953125, -1803.98046875, 36.9648895263671875, 0.139756575226783752, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+129, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3553.55126953125, -1792.8524169921875, 34.76735305786132812, 5.671100616455078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+130, 190565, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3541.296142578125, -1917.01220703125, 3.490794181823730468, 2.529050111770629882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+131, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3469.3349609375, -1873.744140625, -0.36331653594970703, 5.617454051971435546, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+132, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3560.0703125, -1830.0521240234375, 18.35069465637207031, 3.498962163925170898, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+133, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3557.49560546875, -1830.8228759765625, 18.98090362548828125, 3.723549365997314453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT]) (possible waypoints or random movement)
(@CGUID+134, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3537.381103515625, -1718.5086669921875, 77.73291015625, 6.017306804656982421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+137, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3556.432373046875, -1859.77783203125, 22.94558334350585937, 0.241436317563056945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+138, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3447.599853515625, -1794.279541015625, 68.58807373046875, 5.804925441741943359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+139, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3517.161376953125, -1826.6822509765625, 21.069732666015625, 5.827846527099609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+140, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3587.20703125, -1754.96728515625, 37.88583755493164062, 6.236412525177001953, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+141, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3558.3134765625, -1833.4271240234375, 18.75220680236816406, 1.875095129013061523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+142, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3555.537353515625, -1828.736083984375, 19.48958396911621093, 5.431789875030517578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+144, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3488.126708984375, -1730.1649169921875, 73.83453369140625, 5.385205745697021484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+147, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3522.025390625, -1892.688232421875, 0.919131457805633544, 5.167280197143554687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+148, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3480.919921875, -1775.050537109375, 10.82045650482177734, 4.415325164794921875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+149, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3591.76611328125, -1753.7935791015625, 37.94733428955078125, 0.367896109819412231, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+151, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3513.31689453125, -2000.013916015625, 91.706085205078125, 1.677662014961242675, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+152, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3522.866455078125, -1814.017333984375, 36.82294464111328125, 5.827846527099609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+153, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3560.775390625, -1806.316650390625, 34.31988143920898437, 4.0966644287109375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+155, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3505.382080078125, -1891.69970703125, -0.37530872225761413, 5.877868175506591796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+157, 190741, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3453.901123046875, -1945.3958740234375, 19.84280014038085937, 2.236042261123657226, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+160, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3550.893310546875, -1887.4774169921875, 8.580926895141601562, 1.846503615379333496, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]) (possible waypoints or random movement)
(@CGUID+161, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3555.660888671875, -1805.50634765625, 34.32863235473632812, 2.999369382858276367, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+163, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3472.818603515625, -1959.2882080078125, 17.69244766235351562, 1.572132706642150878, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+165, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3553.33251953125, -1796.576416015625, 37.63593292236328125, 4.791472911834716796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+167, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3449.6181640625, -1802.71875, 70.9130096435546875, 5.999083518981933593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+168, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3550.52001953125, -1886.157958984375, 8.191934585571289062, 5.078502178192138671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+170, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3602.55810546875, -1973.21533203125, 33.69601058959960937, 1.867825984954833984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+171, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3590.90087890625, -1960.9033203125, 13.16144180297851562, 4.841442584991455078, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+173, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3612.02001953125, -1969.4930419921875, 37.84866714477539062, 1.867825984954833984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+174, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3491.9384765625, -1998.892333984375, 24.62283706665039062, 3.956132173538208007, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+175, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3513.799560546875, -1905.1353759765625, 19.2047119140625, 0.749908864498138427, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+176, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3423.877685546875, -1869.09033203125, 30.71888351440429687, 3.115732192993164062, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+178, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.517333984375, -2045.076416015625, 29.64805221557617187, 2.422667503356933593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+181, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3596.208251953125, -1738.3941650390625, 29.82649803161621093, 4.977447032928466796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+187, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3436.507080078125, -1947.3333740234375, 84.27816009521484375, 5.279580593109130859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+188, 191169, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3679.116455078125, -1907.65625, 7.97662210464477539, 1.960257649421691894, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+190, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3552.127685546875, -1692.796875, 34.91582107543945312, 4.551171779632568359, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+191, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3531.67626953125, -1815.46142578125, 36.96466827392578125, 4.543244361877441406, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+192, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3734.709228515625, -1706.6180419921875, 83.36859130859375, 5.540673732757568359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+193, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3647.646728515625, -1943.0103759765625, 43.48908233642578125, 0.570772409439086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+194, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3938.614990234375, -1670.3389892578125, 118.8309249877929687, 4.499585151672363281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+195, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3669.4765625, -1943.4896240234375, 30.09827804565429687, 0.649450182914733886, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+196, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3508.538330078125, -1909.423583984375, 24.37152099609375, 0.749908864498138427, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+199, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3508.41748046875, -1855.7916259765625, 81.54235076904296875, 3.887872695922851562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+200, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3614.00341796875, -1964.66845703125, 78.4869384765625, 0.427298873662948608, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+201, 190565, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3582.518310546875, -1987.5989990234375, 10.67141056060791015, 5.881349563598632812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+202, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3604.95751953125, -2061.50341796875, 64.96966552734375, 1.768551945686340332, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+204, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3555.493896484375, -2069.67529296875, 19.2245330810546875, 0.870460569858551025, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+206, 190741, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3434.537353515625, -1949.6302490234375, 22.33937835693359375, 3.299943208694458007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+207, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3537.538330078125, -1966.3392333984375, 14.72700881958007812, 5.60930490493774414, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+208, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3556.53125, -2081.96728515625, 47.43483352661132812, 5.148438930511474609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+209, 195795, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3821.746337890625, -2347.509521484375, 156.6016845703125, 0.436023622751235961, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+210, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3561.510009765625, -1995.367919921875, 10.58781242370605468, 2.721067428588867187, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+211, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3460.70654296875, -2005.6875, 105.8239212036132812, 2.625646114349365234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+212, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3507.287353515625, -2070.838623046875, 101.789459228515625, 5.655092239379882812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+213, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3488.138916015625, -2022.1492919921875, 100.72894287109375, 4.080657005310058593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+214, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3569.032958984375, -2064.84375, 95.68813323974609375, 1.362700581550598144, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+215, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3537.4423828125, -1998.8709716796875, 19.49970245361328125, 0.239719718694686889, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+216, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3483.473876953125, -2028.5242919921875, 102.3237991333007812, 0.939064323902130126, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+217, 190741, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3416.861083984375, -1914.140625, 30.34342575073242187, 0.961092233657836914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+221, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3597.9765625, -2020.3836669921875, 20.11022758483886718, 3.697334527969360351, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+222, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3609.26318359375, -2020.7801513671875, 29.88350677490234375, 0.161584079265594482, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+223, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3492.3095703125, -1947.2509765625, 16.236968994140625, 1.035172939300537109, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+224, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3586.60498046875, -2121.1923828125, 52.3808441162109375, 3.035135984420776367, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+225, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3515.7431640625, -2002.77783203125, 40.40871810913085937, 0.652263522148132324, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+226, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3518.8916015625, -2006.52783203125, 41.48740386962890625, 1.134410738945007324, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+227, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.77783203125, -2046.53125, 20.83162498474121093, 1.445032238960266113, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+228, 193026, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3530.742431640625, -2040.27392578125, 21.47407913208007812, 3.463652372360229492, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+229, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3513.541015625, -2029.166015625, 22.25883102416992187, 0.35757523775100708, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+230, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3541.6669921875, -2059.375, 21.7510223388671875, 1.892640590667724609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+232, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3669.6484375, -2152.29345703125, -11.6138086318969726, 5.838323593139648437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+233, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3500, -2043.75, 21.18591690063476562, 1.607754230499267578, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+234, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3530.72998046875, -2091.94970703125, 44.52767562866210937, 1.81619119644165039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+238, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3618.5703125, -2199.8837890625, 24.74658584594726562, 2.276219129562377929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+239, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3472.567626953125, -2084.7392578125, 27.73917007446289062, 5.188268661499023437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+240, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3473.30517578125, -2194.607666015625, 40.590606689453125, 2.302043437957763671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+241, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3353.828369140625, -2128.267578125, -24.2602291107177734, 0.247039631009101867, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+242, 193024, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3446.2705078125, -2075.30810546875, 28.22585487365722656, 4.655686855316162109, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+243, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3458.499755859375, -2067.984375, 26.31909370422363281, 5.639879703521728515, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+244, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3458.000244140625, -2007.769287109375, 19.09698104858398437, 1.59049379825592041, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+245, 193024, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3452.33544921875, -2095.110595703125, 34.7615966796875, 2.733420610427856445, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+246, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3446.90283203125, -2067.786376953125, 30.33417320251464843, 4.85930490493774414, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+247, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3462.12841796875, -2089.15283203125, 33.86081695556640625, 1.445032238960266113, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+251, 190565, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3463.348876953125, -1988.234375, 20.32552337646484375, 5.881349563598632812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+252, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3428.458251953125, -2034.0555419921875, 45.22754669189453125, 0.006240318994969129, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+253, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3334.5, -2087.517333984375, 44.946441650390625, 2.126696109771728515, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+254, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3499.460693359375, -2217.904052734375, -19.0053558349609375, 0.734181523323059082, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+255, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3498.171875, -2208.968017578125, -5.0685124397277832, 1.352437734603881835, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+256, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3368.960205078125, -2138.11865234375, -6.14011812210083007, 0.064017459750175476, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+257, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3462.47265625, -1988.94140625, 19.94740104675292968, 1.79048168659210205, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+258, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3463.8134765625, -1986.96875, 20.30001068115234375, 3.623390674591064453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+259, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3460.796142578125, -1988.32470703125, 19.62516212463378906, 0.941101491451263427, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+260, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3395.1728515625, -1973.328125, 1.157944679260253906, 4.075687885284423828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+261, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3358.382568359375, -2030.5277099609375, -2.5955810546875, 5.242923736572265625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+262, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3618.79345703125, -1966.84375, 76.330078125, 0.649450182914733886, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+263, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3410.630126953125, -1951.2274169921875, 0.288933277130126953, 1.005801320075988769, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+264, 195795, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3884.443603515625, -2304.40869140625, 116.60797119140625, 2.786638736724853515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+265, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3354.98828125, -2018.7803955078125, -1.24398636817932128, 4.198332786560058593, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+266, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3398.4453125, -1951.5628662109375, -1.70819509029388427, 5.010960102081298828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+267, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3405.145263671875, -1937.11962890625, -1.20321130752563476, 0.67680448293685913, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+268, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3494.780517578125, -2099.78466796875, 27.35254096984863281, 1.451596975326538085, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+269, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3438.192626953125, -2033.5416259765625, 24.32904243469238281, 0.784732341766357421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+271, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3421.643310546875, -1910.3350830078125, 30.15438270568847656, 3.534715652465820312, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+272, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3534.294189453125, -1869.251708984375, 1.235027074813842773, 2.739295482635498046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+274, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3407.980712890625, -1949.9361572265625, 0.179741770029067993, 4.803317070007324218, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+276, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3355.552978515625, -1913.173583984375, 90.9276275634765625, 0.338569790124893188, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+277, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3350.703125, -1896.998291015625, 92.55762481689453125, 6.173580169677734375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+278, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3395.718994140625, -1975.399169921875, 1.390893936157226562, 6.204990863800048828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+281, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3481.39794921875, -1901.5848388671875, 0.571262836456298828, 4.856356620788574218, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+282, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3452.903564453125, -1843.3333740234375, 10.4456329345703125, 0.766383171081542968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+283, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3460.388916015625, -1894.720458984375, -0.48002982139587402, 4.250451087951660156, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+284, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3404.407470703125, -1893.7283935546875, 33.14029312133789062, 6.235126972198486328, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+285, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3391.651123046875, -1859.404052734375, 39.7615966796875, 2.372755289077758789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+286, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3312.451416015625, -1975.998291015625, 1.237680315971374511, 1.043763160705566406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+287, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3366.6416015625, -1837.875, 38.15750885009765625, 2.184295892715454101, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+288, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3451.476806640625, -1885.4281005859375, -0.41491901874542236, 2.475351810455322265, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+289, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3314.749267578125, -1992.48095703125, 0.462127149105072021, 1.751039624214172363, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+291, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3499.62109375, -1831.369140625, 0.114716202020645141, 1.76130068302154541, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+292, 193000, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3464.44970703125, -1786.15283203125, 6.5053558349609375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kindlet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+293, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3514.939208984375, -1780.1805419921875, 13.47222232818603515, 0.87235260009765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+295, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3476.138916015625, -1765.7222900390625, 23.97711181640625, 4.07895517349243164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+296, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3494.53271484375, -1772.6302490234375, 11.30913734436035156, 3.208031177520751953, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+297, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3479.04736328125, -1760.082275390625, 24.47075843811035156, 3.616531848907470703, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+298, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3475.8369140625, -1762.5775146484375, 25.40060997009277343, 4.07575225830078125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+299, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3480.416748046875, -1759.8572998046875, 26.15675544738769531, 3.603877067565917968, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+300, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3516.335205078125, -1706.6961669921875, 77.95780181884765625, 1.259960651397705078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+301, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3516.029541015625, -1778.8819580078125, 13.36483192443847656, 4.122437000274658203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+302, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3483.786376953125, -1754.1475830078125, 15.88499069213867187, 0.040823064744472503, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+303, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3535.859375, -1771.282958984375, 17.01215362548828125, 1.062179446220397949, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+304, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3504.04296875, -1741.8643798828125, 19.94888114929199218, 4.009316921234130859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+305, 194695, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3382.8916015625, -1318.892333984375, 177.0308837890625, 0.95704740285873413, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 384378 - Visual)
(@CGUID+306, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3545.93994140625, -1753.1109619140625, 22.19977569580078125, 0.307254642248153686, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+307, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3477.618408203125, -1721.315673828125, 25.28610420227050781, 4.88536691665649414, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+308, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3494.666748046875, -1742.4097900390625, 19.59880447387695312, 1.4781571626663208, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+309, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.41748046875, -1681.138916015625, 89.47711181640625, 0.088440380990505218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+310, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3528.025634765625, -1662.7193603515625, 36.85469436645507812, 5.617658138275146484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+311, 198622, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3382.8916015625, -1318.892333984375, 177.0308837890625, 0.95704740285873413, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+313, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3552.62158203125, -1732.8367919921875, 49.63078689575195312, 3.067852973937988281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+314, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3462.471435546875, -1709.154541015625, 43.454193115234375, 1.445032238960266113, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+315, 193026, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3474.826171875, -1704.0606689453125, 29.07119560241699218, 1.959430336952209472, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+316, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.241455078125, -1862.0555419921875, -0.32600456476211547, 5.60751962661743164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+317, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3292.3291015625, -1963.0504150390625, 1.237680315971374511, 1.751039624214172363, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+318, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3307.99267578125, -1981.18017578125, -0.11851914227008819, 3.332244873046875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+319, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3306.429931640625, -2064.156494140625, -6.03680086135864257, 4.815970420837402343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+320, 184853, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3354.33154296875, -1819.857666015625, 40.73095703125, 5.58860635757446289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid Queen (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+321, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3319.0224609375, -2052.74609375, -5.79416751861572265, 2.424885749816894531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+322, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3295.990478515625, -1972.2655029296875, -0.19677165150642395, 2.026404380798339843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+323, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3312.523193359375, -1956.399169921875, -0.19777740538120269, 5.454534530639648437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+324, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3313.52490234375, -2004.175537109375, 0.074417859315872192, 4.215127944946289062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+325, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3291.721923828125, -2042.283203125, -26.77490234375, 2.685407161712646484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+326, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3316.819580078125, -2090.967041015625, 2.089955568313598632, 4.930325031280517578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+327, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3292.5546875, -2002.68408203125, -0.1910620629787445, 0.143206685781478881, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+328, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3198.7646484375, -2007.55322265625, -21.597970962524414, 4.4282684326171875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+329, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3311.12841796875, -2084.223876953125, 2.166785240173339843, 0.143206685781478881, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+330, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3333.7138671875, -2032.2537841796875, -1.57857263088226318, 6.181467533111572265, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+331, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3347.50732421875, -2152.560546875, -3.71572422981262207, 2.212036609649658203, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+332, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3218.426513671875, -2046.81298828125, -37.1710472106933593, 2.198903560638427734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+333, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3295.150146484375, -2090.364501953125, 3.0841064453125, 5.531620979309082031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+334, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3303.12158203125, -2087.729248046875, 3.199755191802978515, 1.129003405570983886, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+335, 192153, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3299.368896484375, -2049.806884765625, -23.7734508514404296, 2.853507041931152343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+336, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3192.20849609375, -2085.397216796875, -37.3460693359375, 1.86107945442199707, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+337, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3198.72216796875, -2068.365478515625, -25.296875, 3.711173057556152343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+338, 192142, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3276.37548828125, -2068.173095703125, -28.8427696228027343, 3.196885347366333007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+339, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3305.68310546875, -2075.95751953125, -44.3154754638671875, 1.07038736343383789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+340, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3156.11083984375, -2106.269287109375, -24.731149673461914, 5.560297966003417968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+341, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3194.75048828125, -2059.08642578125, -34.4132118225097656, 2.212586164474487304, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+342, 192142, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3353.66943359375, -2134.240478515625, -16.3200016021728515, 2.799103021621704101, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+343, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3354.33447265625, -2253.76025390625, -46.3042068481445312, 3.922987222671508789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+344, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3249.57958984375, -2120.317138671875, -40.2446250915527343, 2.946352005004882812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+345, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3230.5869140625, -2109.453125, -4.67682218551635742, 4.033475399017333984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+346, 192153, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3359.388427734375, -2119.9130859375, -16.7859554290771484, 2.546407938003540039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+347, 192143, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3279.29150390625, -2085.42724609375, -47.5424995422363281, 2.901196479797363281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+348, 192143, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3246.02197265625, -1998.2203369140625, -15.9431781768798828, 4.66242837905883789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+349, 192143, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3357.11474609375, -2176.312255859375, -15.088043212890625, 0.755716919898986816, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+350, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3295.8994140625, -2285.808349609375, -59.1488571166992187, 4.063570022583007812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+351, 192132, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3357.4912109375, -2215.323974609375, -50.3834075927734375, 0.642308056354522705, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+352, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3207.60888671875, -2151.582275390625, -43.954437255859375, 5.265442848205566406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+353, 192153, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3225.503662109375, -2117.931640625, -40.0455856323242187, 4.723653793334960937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+355, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3938.56787109375, -1670.5628662109375, 118.8708267211914062, 4.508548259735107421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+358, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3511.21435546875, -1840.171875, -0.87657678127288818, 0.829479336738586425, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+359, 189801, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3680.013916015625, -1659.617919921875, 165.244720458984375, 2.026992321014404296, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+360, 189801, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3705.7490234375, -1634.903076171875, 158.0642547607421875, 2.076983928680419921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+361, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3743.57373046875, -1736.763671875, -0.02823196351528167, 1.764586210250854492, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+362, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3653.158935546875, -1747.1129150390625, 34.37410736083984375, 3.301840066909790039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+363, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3654.990478515625, -1745.4305419921875, 33.79383468627929687, 4.604473590850830078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+364, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3652.90966796875, -1743.9739990234375, 33.87673568725585937, 2.694083452224731445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+366, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3865.907470703125, -1737.3902587890625, 12.61056232452392578, 4.296696662902832031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 377133 - Damage Taken Reduced by 97% [DNT])
(@CGUID+367, 184855, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3782.147705078125, -1776.1129150390625, 4.396602630615234375, 5.162665367126464843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterfly (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+369, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3774.24658203125, -1723.5867919921875, -0.25040864944458007, 0.699560582637786865, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+370, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3876.943603515625, -1753.515625, 31.62350273132324218, 3.542609214782714843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+371, 195639, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3823.072021484375, -1692.1163330078125, 10.61870098114013671, 5.115200042724609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+374, 196954, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3906.619873046875, -1828.1875, 3.790756940841674804, 5.41165924072265625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Guff Runetotem (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+375, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3809.7890625, -1802.779296875, 0.285055547952651977, 2.159580707550048828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+376, 184855, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3786.236083984375, -1779.90283203125, 2.769423484802246093, 2.694983720779418945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterfly (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+377, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3687.407958984375, -1910.5538330078125, 9.406007766723632812, 4.425681591033935546, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+379, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3845.48095703125, -1835.4478759765625, 2.242226600646972656, 6.160776615142822265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+380, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3857.998291015625, -1703.454833984375, 12.31948280334472656, 3.873741865158081054, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+381, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3885.353271484375, -1758.5364990234375, 29.70767593383789062, 4.080625057220458984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+382, 190524, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3823.993896484375, -1817.6666259765625, 0.612940549850463867, 4.515106201171875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mora Cloudwalker (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374191 - Fishing (Tuskarr Pole + Highmountain Bobber) [DNT])
(@CGUID+383, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3765.877685546875, -1685.423583984375, 0.125620663166046142, 6.237067699432373046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+384, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3922.663330078125, -1805.1944580078125, 14.43950176239013671, 3.196870088577270507, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT]) (possible waypoints or random movement)
(@CGUID+385, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3843.3828125, -1832.27783203125, 1.178677558898925781, 1.061001181602478027, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+387, 189554, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3838.78125, -1793.12158203125, 2.89029860496520996, 4.561023235321044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+389, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3838.468017578125, -1797.173583984375, 4.439786434173583984, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374107 - Channel: SitChairMed + Read (Reliquary) [DNT])
(@CGUID+390, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3784.775390625, -1728.373046875, 1.160684466361999511, 0.390660136938095092, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+392, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3836.39404296875, -1836.3211669921875, 4.271450042724609375, 2.585139989852905273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+393, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3766.187744140625, -1698.0347900390625, -0.26714968681335449, 3.777875900268554687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+394, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3788.710205078125, -1657.3975830078125, 6.809028148651123046, 2.2793121337890625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+395, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3793.374267578125, -1701.3685302734375, 3.702303171157836914, 1.907565832138061523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+396, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3732.578857421875, -1659.782958984375, 4.000398635864257812, 5.566997528076171875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+397, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3790.8056640625, -1698.7899169921875, 3.372921943664550781, 5.338684558868408203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+398, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3794.319580078125, -1699.029541015625, 3.740328073501586914, 4.32830667495727539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+399, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3825.948486328125, -1675.51611328125, 15.90242958068847656, 0.063932344317436218, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+400, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3752.903564453125, -1666.404541015625, 2.874796390533447265, 0.303339362144470214, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+401, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3789.807373046875, -1654.7882080078125, 7.069444656372070312, 4.957721710205078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+403, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3786.9619140625, -1656.451416015625, 6.746528148651123046, 1.054030656814575195, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+404, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3725.140869140625, -1657.4219970703125, 5.000398635864257812, 0.421180188655853271, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+405, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3822.66455078125, -1732.884521484375, 7.104544639587402343, 1.635567188262939453, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+406, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3765.257080078125, -1576.3228759765625, 43.12239456176757812, 0.210440322756767272, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+407, 188028, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3789.146728515625, -1656.7882080078125, 6.907099723815917968, 4.902134418487548828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+408, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3754.9375, -1590.6666259765625, 58.42047119140625, 0.736949384212493896, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+409, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3751.280517578125, -1665.5677490234375, 2.874796390533447265, 0.258557796478271484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+411, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3731.96875, -1692.49658203125, 3.90439009666442871, 0.258557796478271484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+412, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3723.1513671875, -1657.2158203125, 5.000398635864257812, 0.614769697189331054, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+413, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3732.5400390625, -1691.25, 3.90488290786743164, 0.220567256212234497, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+414, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3733.592041015625, -1693.3333740234375, 3.904444694519042968, 0.303339362144470214, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+415, 184855, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3706.026123046875, -1659.470458984375, 1.013051986694335937, 1.255776286125183105, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterfly (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+416, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3751.8515625, -1664.3211669921875, 2.874796390533447265, 0.220567256212234497, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+417, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3765.250244140625, -1662.18701171875, 1.160629034042358398, 3.488737344741821289, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+418, 187061, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3857.18115234375, -1744.4599609375, 7.23287057876586914, 3.82457280158996582, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+419, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3602.48876953125, -1626.71533203125, 68.47650146484375, 2.022416353225708007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+420, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3658.571044921875, -1692.1392822265625, 32.0288848876953125, 5.294345378875732421, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+423, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3734.85302734375, -1632.173828125, 4.269127368927001953, 6.067514419555664062, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+424, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3730.534912109375, -1646.977294921875, 3.269127130508422851, 3.650775432586669921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+426, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3629.82763671875, -1689.1107177734375, 33.35860824584960937, 5.464630126953125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+427, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3792.838623046875, -1538.2291259765625, 36.91873550415039062, 4.371787548065185546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+428, 184856, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3735.265625, -1634.130859375, 4.269127368927001953, 5.886668682098388671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterbug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+429, 193917, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3688.357666015625, -1602.204833984375, 62.81134796142578125, 3.866030454635620117, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Drakonid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369391 - Channel: Work With Hammer [DNT])
(@CGUID+430, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3777.407958984375, -1608.923583984375, 49.24500656127929687, 2.014935970306396484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+431, 184855, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3695.59716796875, -1624.77783203125, 1.562130451202392578, 6.255539417266845703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Skitterfly (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+432, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3781.479248046875, -1620.2210693359375, 52.6832275390625, 3.969246387481689453, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+433, 189798, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3644.9296875, -1551.515625, 62.22186279296875, 2.20497894287109375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 125467 - Root Self (Permanent))
(@CGUID+434, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3782.28515625, -1617.5960693359375, 52.6832275390625, 3.96539306640625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+435, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3776.607666015625, -1621.341796875, 52.6832275390625, 3.096338272094726562, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+436, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3792.723876953125, -1604.80908203125, 37.54513931274414062, 2.904994726181030273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+437, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3790.09716796875, -1603.6978759765625, 37.68958663940429687, 3.242016315460205078, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT]) (possible waypoints or random movement)
(@CGUID+439, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3847.283935546875, -1624.53125, 48.15973663330078125, 2.588972330093383789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+440, 188057, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3850.4775390625, -1691.611083984375, 25.05029296875, 3.35132908821105957, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Curious Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+441, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3810.09619140625, -1606.1156005859375, 34.01493072509765625, 5.088811874389648437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+442, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3919.921875, -1640.6632080078125, 72.59653472900390625, 2.849583387374877929, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT]) (possible waypoints or random movement)
(@CGUID+443, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3790.9130859375, -1575.058837890625, 36.20084762573242187, 3.466840028762817382, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+444, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3831.31103515625, -1624.513916015625, 46.24705123901367187, 1.99684762954711914, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+445, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3830.3134765625, -1619.8704833984375, 45.87766647338867187, 1.41420602798461914, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+446, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3827.646728515625, -1610.6396484375, 31.56000328063964843, 2.643162250518798828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+447, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3914.76220703125, -1638.27783203125, 72.17740631103515625, 6.07666015625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+448, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3927.39501953125, -1647.02783203125, 20.65050315856933593, 4.050824642181396484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+449, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3860.998291015625, -1537.951416015625, 43.20030975341796875, 2.490555286407470703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+450, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3830.77392578125, -1622.6444091796875, 44.73772430419921875, 1.962208986282348632, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+451, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3788.225830078125, -1601.7603759765625, 37.60498809814453125, 5.502552509307861328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+452, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3791.740478515625, -1601.576416015625, 37.63249588012695312, 4.053320884704589843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+454, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3992.088623046875, -1771.185791015625, 30.085235595703125, 1.671066999435424804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+455, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3886.758544921875, -1762.6663818359375, 5.414926528930664062, 4.414812088012695312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+456, 187061, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3864.529296875, -1751.275390625, 8.123809814453125, 1.549493193626403808, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+457, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3959.979248046875, -1581.4635009765625, 59.13085174560546875, 0.54541325569152832, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+459, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3963.02783203125, -1663.953125, 92.35105133056640625, 5.40731048583984375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+463, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3895.994873046875, -1677.7291259765625, 36.19290542602539062, 4.417202472686767578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+464, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3893.000244140625, -1667.93408203125, 17.86264228820800781, 5.485378742218017578, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+465, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3951.552001953125, -1711.045166015625, 19.53502655029296875, 3.152348995208740234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+467, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3942.400146484375, -1764.329833984375, 42.35956573486328125, 3.371781826019287109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+470, 187403, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3892.62060546875, -1760.59033203125, 5.498260021209716796, 4.810380935668945312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sil'nori Crestshade (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+472, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3941.78125, -1611.9635009765625, 25.0577545166015625, 5.833385944366455078, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+473, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3918.591064453125, -1730.765625, 46.67679214477539062, 0.585333526134490966, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+474, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3939.264892578125, -1751.513916015625, 59.31874465942382812, 3.900519609451293945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+475, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3998.4921875, -1743.626708984375, 31.36978530883789062, 2.839391946792602539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+477, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3881.072998046875, -1770.6978759765625, 5.498218536376953125, 4.03099822998046875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374151 - Channel: Read Floating Book (Reliquary) [DNT])
(@CGUID+478, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3898.427734375, -1710.8125, 13.05365371704101562, 1.004741430282592773, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+479, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3873.2138671875, -1725.544189453125, 10.35773658752441406, 5.032742500305175781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+480, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3957.974853515625, -1764.3021240234375, 40.52228546142578125, 0.847737431526184082, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+481, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3937.76904296875, -1831.298583984375, 11.0062103271484375, 4.049298286437988281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+482, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3966.225830078125, -1634.04345703125, 23.79051589965820312, 1.099465847015380859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+483, 184812, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3873.483642578125, -1768.388916015625, 8.209902763366699218, 2.145088911056518554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374128 - Channel: Hold Compass + TalkQuestion (Reliquary) [DNT])
(@CGUID+484, 184814, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3893.33251953125, -1765.84033203125, 5.498260021209716796, 4.72139596939086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374209 - Channel: Hold Jewelry Box(Dragon) + TalkQuestion [DNT])
(@CGUID+485, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3978.28125, -1640.9739990234375, 93.34738922119140625, 4.870823383331298828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+487, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3914.021728515625, -1730.22900390625, 28.93700218200683593, 0.275426864624023437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+488, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3951.1171875, -1780.3646240234375, 54.00173568725585937, 3.506142139434814453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+489, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3978.07470703125, -1645.2257080078125, 92.5167694091796875, 1.643746733665466308, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT])
(@CGUID+490, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3898.186767578125, -1761.923583984375, 5.414926528930664062, 4.414812088012695312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+491, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3914.068603515625, -1716.6614990234375, 36.65327835083007812, 3.445386886596679687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+492, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3934.756103515625, -1712.638916015625, 18.71875, 2.271064996719360351, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+494, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3930.072509765625, -1712.319580078125, 18.46100425720214843, 0.870068848133087158, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+495, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3932.1650390625, -1710.4722900390625, 18.277099609375, 4.783217430114746093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+496, 189554, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3896.616455078125, -1820.263916015625, 2.558466434478759765, 4.027144432067871093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+497, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3923.1259765625, -1771.0711669921875, 21.6830596923828125, 4.594560146331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+498, 189554, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3871.11376953125, -1830.5867919921875, 2.566622734069824218, 4.326073169708251953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+499, 189554, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3872.96533203125, -1837.4722900390625, 3.07660079002380371, 3.482258796691894531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299),-- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+500, 184812, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.7119140625, -1800.5555419921875, 3.658634185791015625, 4.53849029541015625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 367234 - Channel: Look Through Right Eye [DNT])
(@CGUID+501, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3910.921142578125, -1775.5572509765625, 4.005980491638183593, 6.168770313262939453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+502, 184814, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3911.5869140625, -1767.5504150390625, 4.224271297454833984, 5.204865932464599609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT])
(@CGUID+503, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3857.284423828125, -1821.178466796875, -0.7535783052444458, 5.030282497406005859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+504, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3912.809814453125, -1775.7742919921875, 3.974918842315673828, 3.027177333831787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+505, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3912.08154296875, -1761.951416015625, 31.89394950866699218, 3.033165693283081054, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+506, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3941.09375, -1729.15283203125, 47.17839813232421875, 2.009806632995605468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+507, 189554, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3899.68310546875, -1815.828125, 2.638236045837402343, 5.494930267333984375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Provisioner (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+508, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4015.916748046875, -1758.9375, 41.64405059814453125, 2.386521577835083007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+509, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3989.98291015625, -1821.7158203125, 54.84385299682617187, 1.314284682273864746, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+510, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4026.142333984375, -1763.6302490234375, 46.2513275146484375, 2.770256280899047851, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+511, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3987.165771484375, -1780.1978759765625, 91.23203277587890625, 1.804701209068298339, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+512, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4016.4072265625, -1748.1353759765625, 97.9593048095703125, 0.54541325569152832, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+513, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4002.87060546875, -1707.7552490234375, 71.46436309814453125, 2.548068761825561523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+514, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3985.560791015625, -1773.4617919921875, 90.94573974609375, 5.330966472625732421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+515, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3914.671875, -1846.3941650390625, 1.518091201782226562, 4.985894680023193359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+516, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3878.556396484375, -1846.890625, 4.488237380981445312, 1.772937655448913574, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+517, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3885.608642578125, -1845.52783203125, 4.741055011749267578, 1.628589034080505371, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+518, 190516, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3887.091064453125, -1858.7430419921875, 5.52932596206665039, 5.013500213623046875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ephra Breezewood (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374171 - Channel: Hold Lantern (Reliquary) (Undead Female Only) [DNT])
(@CGUID+519, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3882.69970703125, -1848.3333740234375, 5.63561105728149414, 1.550946712493896484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+520, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3876.52001953125, -1845.8831787109375, 4.403139591217041015, 5.485677719116210937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+521, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3882.626220703125, -1904.343994140625, -3.3120436668395996, 0.750972092151641845, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+522, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.19189453125, -1906.90234375, -20.357421875, 2.909093379974365234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+523, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3918.7109375, -1837.8646240234375, 1.632550954818725585, 2.712994098663330078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+524, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3897.253662109375, -1831.0079345703125, 0.931640148162841796, 4.55045318603515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+525, 192142, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3868.408203125, -1900.3916015625, -20.992837905883789, 3.999910354614257812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+526, 192153, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3871.04443359375, -1906.873046875, -20.513671875, 1.182725429534912109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+527, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3937.58447265625, -1993.6396484375, -17.2087268829345703, 5.544775962829589843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+528, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4046.084228515625, -1762.5833740234375, 43.8955841064453125, 0.818090081214904785, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+529, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3890.682373046875, -1650.001708984375, 18.70988845825195312, 5.056462287902832031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+530, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4042.625, -1757.8194580078125, 43.66303253173828125, 0.301674902439117431, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+531, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3972.018310546875, -1752.3958740234375, 22.88329315185546875, 4.606062889099121093, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+532, 192143, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3868.20556640625, -1917.40185546875, -27.9457015991210937, 0.143321976065635681, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Sea Turtle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+533, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3973.712158203125, -1754.2900390625, 23.61600303649902343, 3.40588545799255371, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+534, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3975.79541015625, -1753.6846923828125, 23.5506439208984375, 4.673108577728271484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+535, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3979.072509765625, -1755.9462890625, 23.36696434020996093, 3.484081983566284179, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+536, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3954.439208984375, -1733.3819580078125, 46.96078109741210937, 0.534141719341278076, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+537, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3976.737548828125, -1753.7083740234375, 23.44120216369628906, 4.409729480743408203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+538, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3977.37060546875, -1753.9595947265625, 23.40090560913085937, 4.22165679931640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+539, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3956.3984375, -1721.88720703125, 37.596710205078125, 1.809020280838012695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+540, 184857, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4005.4013671875, -1877.573974609375, -2.85730957984924316, 2.428818225860595703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rambunctious Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 365868 - Dolphin Swimming [DNT])
(@CGUID+541, 195639, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4011.080810546875, -1673.57470703125, 16.47395896911621093, 4.6481781005859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+542, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3794.907958984375, -1702.3524169921875, 3.927083253860473632, 2.349879026412963867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+544, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3961.001708984375, -1672.920166015625, 34.42122268676757812, 4.594560146331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+546, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3923.713134765625, -1653.117431640625, 19.43319511413574218, 1.41995096206665039, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+547, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4031.4384765625, -1638.517333984375, 12.86409759521484375, 4.210964202880859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+548, 190565, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3938.268310546875, -1673.782958984375, 17.53173637390136718, 3.486248254776000976, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+549, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3983.45654296875, -1651.798583984375, 18.644378662109375, 1.639726877212524414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+551, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3984.776123046875, -1646.52783203125, 19.421875, 3.933219432830810546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+552, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3982.692138671875, -1648.637939453125, 19.0607147216796875, 4.530384540557861328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+553, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4072.984375, -1677.189208984375, 115.7201385498046875, 4.368320465087890625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+554, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4072.033935546875, -1683.0972900390625, 113.3249588012695312, 1.312210798263549804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+555, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4075.333251953125, -1647.044921875, 5.271440982818603515, 5.691100234985351562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+556, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4010.908935546875, -1678.407958984375, 17.33506965637207031, 1.873157858848571777, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+557, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3974.45654296875, -1526.1041259765625, 22.28928375244140625, 0.942602396011352539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+559, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3953.90234375, -1623.966064453125, 23.3611297607421875, 2.575816154479980468, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+560, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3980.447265625, -1713.312255859375, 20.57762527465820312, 2.082690715789794921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+561, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4068.813232421875, -1690.66845703125, 13.135345458984375, 3.396565914154052734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+563, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3986.154541015625, -1649.767333984375, 18.9482574462890625, 2.881378412246704101, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+564, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3979.12060546875, -1714.5438232421875, 20.39019203186035156, 4.103218555450439453, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+565, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3993.35595703125, -1768.7916259765625, 53.3876190185546875, 2.03154158592224121, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+566, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3979.29150390625, -1679.653076171875, 16.615234375, 2.564534664154052734, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+567, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3979.1953125, -1713.541259765625, 20.52467155456542968, 1.408841609954833984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+568, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3978.013916015625, -1712.8477783203125, 20.42685890197753906, 0.681348860263824462, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+569, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4009.641357421875, -1771.758544921875, 52.043548583984375, 4.460240364074707031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+570, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3997.065185546875, -1613.2135009765625, 25.36643028259277343, 6.27581024169921875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+571, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3993.022705078125, -1584.8021240234375, 25.32790184020996093, 1.955505967140197753, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+572, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3994.24658203125, -1582.3228759765625, 26.74652862548828125, 4.393434047698974609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+573, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4031.24951171875, -1764.2281494140625, 46.11009979248046875, 3.591426610946655273, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+574, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4030.3857421875, -1763.426513671875, 46.16411209106445312, 1.150362491607666015, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+575, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3964.215087890625, -1599.992431640625, 23.27593994140625, 3.147882938385009765, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+576, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3995.579833984375, -1584.3055419921875, 26.2899322509765625, 2.659882068634033203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+577, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4044.53466796875, -1613.5694580078125, 13.82351493835449218, 0.404452145099639892, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+578, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4046.032958984375, -1612.6180419921875, 13.55633735656738281, 4.393434047698974609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+579, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4033.3330078125, -1760.416015625, 46.229034423828125, 1.880076766014099121, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+580, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4046.290771484375, -1613.890625, 13.48465347290039062, 2.659882068634033203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+581, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4018.85546875, -1660.126953125, 14.872283935546875, 5.911384105682373046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+582, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4053.58251953125, -1672.464111328125, 10.6459808349609375, 1.229648232460021972, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+583, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4044.626953125, -1640.21875, 11.07076263427734375, 3.607423782348632812, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+584, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3992.7021484375, -1617.2117919921875, 24.63289833068847656, 1.231449604034423828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+585, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4027.677978515625, -1673.96533203125, 35.63686752319335937, 1.342070221900939941, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+586, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4052.213623046875, -1670.201171875, 10.28683948516845703, 0.034254934638738632, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+587, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4052.598876953125, -1670.251708984375, 10.27951335906982421, 0.494147688150405883, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+588, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4050.955322265625, -1671.7225341796875, 10.60695075988769531, 0.287008315324783325, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+590, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4031.2294921875, -1762.367919921875, 46.14368438720703125, 1.179242968559265136, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+592, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4031.382568359375, -1760.994140625, 46.17332839965820312, 0.257498413324356079, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+593, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3994.1728515625, -1609.2222900390625, 25.02996063232421875, 4.393434047698974609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+594, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4007.655029296875, -1777.4853515625, 52.34312057495117187, 4.036224365234375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+595, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4033.1015625, -1764.53662109375, 45.8295135498046875, 4.560077190399169921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+596, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4009.35595703125, -1774.139404296875, 51.67420196533203125, 4.453683376312255859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+597, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4030.371826171875, -1520.7420654296875, 62.5304107666015625, 5.560366630554199218, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT]) (possible waypoints or random movement)
(@CGUID+598, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4060.939208984375, -1544.8856201171875, -0.2979285717010498, 5.936521053314208984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+599, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4118.00146484375, -1663.51513671875, -0.88561034202575683, 2.807176828384399414, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+600, 188028, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4081.765625, -1651.8038330078125, 4.152947425842285156, 0.961092233657836914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+602, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4131.60791015625, -1655.9114990234375, 121.9207382202148437, 1.701645970344543457, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+603, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3953.062744140625, -1582.1583251953125, 26.00942420959472656, 1.809516668319702148, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+604, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4078.464111328125, -1687.0361328125, 14.47640800476074218, 2.248307228088378906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+605, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4076.393310546875, -1599.4940185546875, 1.555305123329162597, 4.040843009948730468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+606, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3951.611083984375, -1583.91845703125, 26.05902862548828125, 0.881147980690002441, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+609, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3972.909423828125, -1506.2161865234375, 9.348567962646484375, 0.050787176936864852, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+610, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4078.48779296875, -1685.5625, 14.13031482696533203, 2.635887622833251953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+611, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4006.428955078125, -1760.7239990234375, 55.42193603515625, 0.249377340078353881, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+612, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4141.7109375, -1763.298583984375, -6.05945968627929687, 5.324562549591064453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+613, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4112.58837890625, -1758.2083740234375, 118.0020828247070312, 1.690182089805603027, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+614, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3954.943115234375, -1580.145751953125, 25.8326873779296875, 4.877075672149658203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+615, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3954.971435546875, -1584.2569580078125, 25.60416793823242187, 2.308831453323364257, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+616, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4115.21875, -1609.3367919921875, 0.647400200366973876, 4.985894680023193359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+617, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3921.875, -1551.041015625, 32.61246871948242187, 0.519002676010131835, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT]) (possible waypoints or random movement)
(@CGUID+618, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4012.1748046875, -1520.104248046875, 4.642455101013183593, 5.454936504364013671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+619, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4086.23779296875, -1537.6597900390625, 124.5107574462890625, 5.700275897979736328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+620, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4090.29345703125, -1490.763916015625, 136.12298583984375, 5.359460353851318359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+621, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4095.7587890625, -1561.7708740234375, 2.676211833953857421, 2.46614837646484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+622, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4139.041015625, -1553.798583984375, 118.4444427490234375, 4.444447994232177734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+623, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4140.87353515625, -1556.1771240234375, 3.694000244140625, 4.332131385803222656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+624, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4091.848876953125, -1541.359375, 122.7986221313476562, 2.390866756439208984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+625, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3850.132080078125, -1495.3350830078125, 38.49451446533203125, 4.911411762237548828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+626, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4051.086181640625, -1584.3824462890625, 7.973102092742919921, 4.214013576507568359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+628, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4002.322021484375, -1489.454833984375, 3.561173200607299804, 4.473337173461914062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+629, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.42529296875, -1568.6910400390625, 48.557586669921875, 3.656681537628173828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+630, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3918.959228515625, -1551.3524169921875, 32.77777862548828125, 0.146952167153358459, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+631, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3920.7900390625, -1548.345458984375, 31.7176666259765625, 5.141668319702148437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+632, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4026.9921875, -1572.4373779296875, 13.3734140396118164, 1.569856643676757812, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+633, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4011.957763671875, -1529.6756591796875, 5.435577392578125, 2.663846254348754882, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+635, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3924.014892578125, -1549.359375, 31.85458755493164062, 3.807647705078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+637, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4064.384521484375, -1546.1302490234375, -0.48606500029563903, 2.794928312301635742, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+638, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3983.106689453125, -1545.038818359375, 21.47240257263183593, 4.223408699035644531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+639, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4154.6640625, -1622.8697509765625, -0.28238296508789062, 2.915438175201416015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+640, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3883.9453125, -1543.1016845703125, 52.47775650024414062, 5.594472885131835937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+641, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3889.2890625, -1558.6441650390625, 37.99704360961914062, 2.2793121337890625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+642, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3885.771484375, -1545.5660400390625, 53.00006484985351562, 4.934602260589599609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+643, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3883.699951171875, -1541.8717041015625, 52.32168197631835937, 5.662075042724609375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+644, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3867.3134765625, -1590.80224609375, 53.08549880981445312, 4.485643863677978515, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+645, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3886.05908203125, -1547.6458740234375, 50.01873397827148437, 2.556100368499755859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+646, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3957.958984375, -1506.2379150390625, 15.2238616943359375, 2.892822504043579101, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+647, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3887.835205078125, -1561.5833740234375, 57.9186859130859375, 4.171077251434326171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+648, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4061.5400390625, -1563.9993896484375, 2.123951673507690429, 4.749253749847412109, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+649, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3998.234130859375, -1496.6109619140625, 3.053239345550537109, 5.292996406555175781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+650, 190587, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3820.57373046875, -1490.673583984375, 118.6682586669921875, 5.40731048583984375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374315 - Channel: Sleep (With Aggro Change) [DNT])
(@CGUID+651, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3917.1845703125, -1537.6812744140625, 33.2258148193359375, 6.062609672546386718, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+652, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3887.96533203125, -1555.7274169921875, 37.50131988525390625, 5.353322029113769531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+653, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3887.7744140625, -1557.265625, 37.76275253295898437, 6.108285903930664062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+654, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3834.866455078125, -1472.7916259765625, 124.8410491943359375, 5.25134134292602539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+655, 202585, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4282.25439453125, -1187.27783203125, 843.8157958984375, 2.400738954544067382, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+656, 194982, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4282.25439453125, -1187.27783203125, 843.8157958984375, 2.400738954544067382, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385044 - Visual)
(@CGUID+657, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3883.986083984375, -1490.279541015625, 27.96497154235839843, 0.503636360168457031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+658, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3863.2978515625, -1593.33935546875, 52.544708251953125, 3.887875080108642578, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+659, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3859.29931640625, -1596.1181640625, 52.67859268188476562, 3.353726863861083984, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+660, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3864.43408203125, -1592.3350830078125, 55.69815444946289062, 3.553620815277099609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+661, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3853.279541015625, -1573.0504150390625, 58.01871490478515625, 3.730582714080810546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+662, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3834.864501953125, -1488.7708740234375, 73.121124267578125, 4.594560146331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+663, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3850.827392578125, -1575.34375, 35.96701431274414062, 4.055036544799804687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+664, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3855.4072265625, -1593.642333984375, 56.04962921142578125, 2.465929985046386718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+665, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3849.643310546875, -1576.5728759765625, 35.68271636962890625, 0.804061591625213623, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+666, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3867.416748046875, -1505.933349609375, 34.66641998291015625, 0.195895120501518249, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+667, 190753, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3567.443603515625, -1185.7708740234375, 214.8105010986328125, 4.499518394470214843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bronze Timekeeper (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 370243 - Cosmetic Race Flag Overhead)
(@CGUID+668, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3861.7734375, -1580.8941650390625, 60.88324737548828125, 2.465929985046386718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+669, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3882.319580078125, -1489.474365234375, 28.06114006042480468, 3.161087751388549804, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+670, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3883.3330078125, -1489.583984375, 27.9430999755859375, 2.18597412109375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+671, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3802.75439453125, -1514.857666015625, 23.35924720764160156, 3.000347852706909179, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+672, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3816.341796875, -1486.3746337890625, 62.95312881469726562, 0.957751989364624023, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+673, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3820.518310546875, -1482.6641845703125, 62.95405197143554687, 0.487604469060897827, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+674, 184867, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3779.84375, -1515.375, 22.26105308532714843, 0.332513779401779174, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+675, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3804.356689453125, -1507.8482666015625, 33.25191879272460937, 3.582814216613769531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+676, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3785.552001953125, -1516.6632080078125, 34.74057388305664062, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+677, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3822.739501953125, -1484.6353759765625, 67.13924407958984375, 4.594560146331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+678, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3816.92578125, -1549.532958984375, 34.68975448608398437, 2.890953779220581054, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+679, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3811.078125, -1494.3194580078125, 41.8506927490234375, 0.670159220695495605, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+680, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3791.088623046875, -1543.4722900390625, 38.52625274658203125, 1.227268815040588378, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+681, 184867, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3786.75439453125, -1503.1771240234375, 24.65632820129394531, 4.130194664001464843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+682, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3815.968017578125, -1491.9478759765625, 41.93904876708984375, 3.364284038543701171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+683, 184867, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3788.416748046875, -1520.7552490234375, 22.51683425903320312, 2.526789188385009765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+684, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3814.368896484375, -1495.0833740234375, 41.60951995849609375, 1.907512545585632324, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+685, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3781.563232421875, -1502.54833984375, 34.35185623168945312, 2.96324467658996582, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+686, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3800.02783203125, -1509.314208984375, 33.57724761962890625, 5.143967628479003906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+687, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3801.041015625, -1533.333984375, 34.183563232421875, 0.021481070667505264, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+688, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3813.0966796875, -1492.7197265625, 41.96162796020507812, 1.742542505264282226, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT]) (possible waypoints or random movement)
(@CGUID+689, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3818.229248046875, -1486.0760498046875, 62.95492935180664062, 0.825549900531768798, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+690, 197503, 2524, 13644, 13722, '0', '0', 0, 0, 0, 1.879366517066955566, 1.662567138671875, 8.805849075317382812, 0, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- The Rugged Dragonscale (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+691, 197611, 2524, 13644, 13722, '0', '0', 0, 0, 0, -0.2512407898902893, 4.58125162124633789, 6.183543205261230468, 0, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+692, 197611, 2524, 13644, 13722, '0', '0', 0, 0, 0, 3.40557098388671875, 0.131810501217842102, 8.272027015686035156, 0, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+693, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4138.7177734375, -1704.4010009765625, 123.0076828002929687, 4.664079189300537109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+694, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4138.51220703125, -1708.65283203125, 123.0845870971679687, 1.643746733665466308, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT])
(@CGUID+695, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3988.7431640625, -1736.875, 23.3313140869140625, 0.312558174133300781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+696, 180538, 2524, 13644, 13722, '0', '0', 0, 0, 0, 3.34904026985168457, -0.16133457422256469, 37.34839630126953125, 0, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Large AOI (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+697, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4121.07275390625, -1808.4444580078125, 103.7632293701171875, 5.24628305435180664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+698, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4147.533203125, -1775, 105.131805419921875, 5.589993000030517578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+699, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3986.75341796875, -1736.5416259765625, 23.08004188537597656, 1.735628366470336914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+700, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4094.83154296875, -1821.3663330078125, 102.1712646484375, 4.590428829193115234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+701, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4136.65380859375, -1787.3228759765625, 107.19244384765625, 5.589993000030517578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+702, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3987.627685546875, -1738.467041015625, 23.48455810546875, 5.296384334564208984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+704, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4005.7265625, -1781.6180419921875, 50.6283111572265625, 4.594560146331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+705, 192151, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4220.8017578125, -1762.625732421875, -12.3625507354736328, 4.467630863189697265, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+706, 187140, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4166.10693359375, -1576.701416015625, 4.535578727722167968, 3.416866779327392578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cantankerous Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+707, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4157.13330078125, -1706.91796875, -2.94560742378234863, 4.035268783569335937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+708, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4173.9072265625, -1501.3125, 137.886566162109375, 1.643746733665466308, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT])
(@CGUID+709, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4174.11376953125, -1497.0625, 138.5162200927734375, 4.870823383331298828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+710, 187111, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4200.22314453125, -1512.6146240234375, 5.70783090591430664, 4.174265861511230468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Hornswog (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+711, 184869, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3895.1328125, -1579.078125, 40.0736236572265625, 2.250811576843261718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+713, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4099.970703125, -1581.1458740234375, 0.274686217308044433, 5.946044921875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+714, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4096.87109375, -1529.4595947265625, 1.774965524673461914, 5.94630289077758789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+715, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4184.51953125, -1507.6470947265625, 6.05538797378540039, 4.607499122619628906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+716, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4179.4287109375, -1579.545166015625, 6.949162483215332031, 4.985894680023193359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+717, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4188.9970703125, -1549.4403076171875, 5.560875415802001953, 2.800365924835205078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+718, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4113.021484375, -1645.833984375, 1.658315658569335937, 4.712388992309570312, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+719, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4151.5029296875, -1561.053955078125, 4.466990470886230468, 4.31889963150024414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+720, 60761, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4120.64208984375, -1586.98779296875, -0.3636745810508728, 0.696147084236145019, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+721, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4172.24609375, -1535.526123046875, 6.094079971313476562, 4.027234554290771484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+722, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4179.30224609375, -1582.623291015625, 7.125406742095947265, 0.850363850593566894, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+723, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4183.41650390625, -1580.907958984375, 7.155388355255126953, 3.176764249801635742, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+724, 184857, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4189.40234375, -1683.7310791015625, -2.36823225021362304, 3.922532558441162109, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Rambunctious Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 365868 - Dolphin Swimming [DNT]) (possible waypoints or random movement)
(@CGUID+725, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4166.65087890625, -1623.8004150390625, -0.2791454792022705, 1.404120206832885742, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+726, 191060, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4180.66650390625, -1617.4722900390625, 1.544695496559143066, 5.078191757202148437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+727, 195260, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4216.28857421875, -1525.207275390625, 4.956546306610107421, 1.26247262954711914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fire Beetle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+728, 61158, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4175.119140625, -1616.517333984375, -0.19486171007156372, 0.806486368179321289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+729, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4188.83154296875, -1667.471923828125, -0.96215945482254028, 2.232817649841308593, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+730, 195796, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3746.88232421875, -1721.501220703125, 73.9186248779296875, 5.189944744110107421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+731, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4183.62451171875, -1705.31787109375, -25.3905754089355468, 2.820056676864624023, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+732, 192149, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4210.3994140625, -1698.839111328125, -4.31464958190917968, 2.535629987716674804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+733, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3947.60595703125, -1648.1319580078125, 109.8160629272460937, 4.536995887756347656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+734, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4081.080810546875, -1527.24658203125, 51.80241775512695312, 5.932696342468261718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+735, 192153, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4198.77783203125, -1670.1376953125, -8.15824699401855468, 1.13784182071685791, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+736, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4222.646484375, -1710.104736328125, -0.88232755661010742, 5.623084545135498046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+737, 192148, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4175.97998046875, -1735.717529296875, -3.56543397903442382, 5.589552879333496093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+738, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4068.4951171875, -1685.2672119140625, 11.54233551025390625, 5.15592193603515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+739, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4069.56787109375, -1687.284423828125, 11.89490222930908203, 2.365456819534301757, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+741, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.275146484375, -1674.02783203125, 24.1905517578125, 4.299658775329589843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+742, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.0400390625, -1675.779541015625, 24.63330841064453125, 1.205594897270202636, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+744, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3618.837646484375, -1707.671875, 35.49826431274414062, 3.445585012435913085, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+746, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3632.124267578125, -1706.3177490234375, 49.50702285766601562, 3.226660966873168945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+747, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3610.07421875, -1707.2052001953125, 36.16019439697265625, 0.457583606243133544, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+748, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3630.068603515625, -1701.0069580078125, 47.46204757690429687, 3.392941713333129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+749, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3436.507080078125, -1947.3333740234375, 84.27816009521484375, 5.279580593109130859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+750, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3594.772705078125, -1745.40625, 43.58996200561523437, 5.616390228271484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+752, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3595.512939453125, -1679.0052490234375, 53.70128250122070312, 4.07895517349243164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+753, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3598.173583984375, -1743.685791015625, 30.109375, 2.20242929458618164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+754, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3603.78759765625, -1679.5496826171875, 36.45276641845703125, 0.802872180938720703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+755, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3585.1259765625, -1748.8836669921875, 38.0066986083984375, 4.124592781066894531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+756, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3549.521728515625, -1687.037109375, 35.1553802490234375, 4.714694976806640625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+757, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3595.8330078125, -1681.25, 37.4832611083984375, 3.794739961624145507, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+758, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3599.459228515625, -1678.7396240234375, 37.18645858764648437, 1.464092969894409179, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+759, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3561.684814453125, -1707.232666015625, 56.05242919921875, 2.466992139816284179, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+760, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3565.968017578125, -1713.26220703125, 56.95498275756835937, 4.07895517349243164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+762, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3567.4169921875, -1677.2462158203125, 36.97974777221679687, 5.981316566467285156, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+763, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3591.78125, -1673.4254150390625, 56.2489776611328125, 3.779084205627441406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+764, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3618.7509765625, -1610.298828125, 57.01945114135742187, 1.561085820198059082, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+765, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3517.49072265625, -1659.4093017578125, 35.75145339965820312, 3.249628782272338867, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+766, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3561.718017578125, -1737.7066650390625, 27.11870002746582031, 0.993757486343383789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+770, 184861, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3550.61279296875, -1640.1353759765625, 45.95868682861328125, 4.790771007537841796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374094 - Hanging [DNT])
(@CGUID+771, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3581.25, -1595.833984375, 54.8805999755859375, 3.735508203506469726, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+772, 189094, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3506.586181640625, -1675.1619873046875, 26.37900543212890625, 2.692669630050659179, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+773, 187120, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3601.890625, -1694.5555419921875, 77.51955413818359375, 3.899120807647705078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hungry Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+774, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3479.412353515625, -1687.390625, 27.15485954284667968, 5.002787113189697265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+775, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3490.657958984375, -1694.5711669921875, 12.93546199798583984, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+776, 193026, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3490.1953125, -1663.16845703125, 13.90649986267089843, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+777, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3501.478271484375, -1687.62158203125, 12.13723564147949218, 5.002787113189697265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+778, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3486.82275390625, -1695.7076416015625, 12.28000545501708984, 5.002787113189697265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+779, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3492.421142578125, -1663.74658203125, 13.16000556945800781, 5.002787113189697265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+780, 193026, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3487.622314453125, -1679.107666015625, 13.18189907073974609, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+781, 180701, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3492.09814453125, -1687.5694580078125, 24.5672454833984375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+782, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3484.37548828125, -1705.0633544921875, 28.14077377319335937, 2.20176863670349121, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+783, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3500.74560546875, -1674.201416015625, 12.64631175994873046, 3.158402442932128906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2))
(@CGUID+784, 187414, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3252.70849609375, -1712.658935546875, 45.24943923950195312, 2.817526817321777343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Typhoon (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+785, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3416.9462890625, -1866.5347900390625, 34.27967453002929687, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+786, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3442.208251953125, -1939.6319580078125, 21.88320159912109375, 2.126892566680908203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+787, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3488.89404296875, -1755.8697509765625, 16.10069465637207031, 2.815841197967529296, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+788, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3485.452392578125, -1805.3289794921875, 2.188255071640014648, 4.208830833435058593, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+789, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3539.999267578125, -1767.828125, 18.44791793823242187, 3.837195396423339843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+790, 187120, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3599.18798828125, -1596.6427001953125, 93.860260009765625, 4.03368234634399414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hungry Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+795, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3566.0390625, -1734.19970703125, 27.11543655395507812, 3.76877450942993164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+796, 184639, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3669.017333984375, -1835.704833984375, 2.740231037139892578, 3.577924966812133789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Eager Acquisitionist (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+797, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3652.40625, -1982.4097900390625, 54.3827362060546875, 0.649450182914733886, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+798, 193816, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3624.790771484375, -1973.375, 73.4622802734375, 0.714058458805084228, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 385801 - Channel: FlySitGround [DNT])
(@CGUID+799, 187196, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3675.507080078125, -1841.2708740234375, 2.903811931610107421, 1.59292912483215332, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+800, 187193, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3684.799560546875, -1851.7760009765625, 3.554524660110473632, 2.861146926879882812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+801, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3660.6416015625, -1991.407958984375, 55.12940216064453125, 0.812468647956848144, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+803, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3581.6171875, -1938.685791015625, 14.58973312377929687, 4.877953529357910156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+804, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.75, -1941.59375, 14.97916603088378906, 3.452663421630859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+805, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3485.794189453125, -1902.3489990234375, 0.257908016443252563, 5.60751962661743164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+807, 193811, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3666.7265625, -1997.9722900390625, 54.85145950317382812, 1.182744979858398437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+808, 198363, 2524, 13644, 13722, '0', '0', 0, 0, 0, 1.114111781120300292, -1.10485804080963134, 62.03670883178710937, 3.210008859634399414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Crow's Nest [DNT] (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+809, 187194, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3707.014892578125, -1871.7603759765625, 5.74783182144165039, 3.298672199249267578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+810, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3583.24560546875, -1944.4444580078125, 15.63090324401855468, 2.028955936431884765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+811, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3582.238037109375, -1942.4013671875, 15.25188636779785156, 3.475243568420410156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+812, 195795, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3861.3662109375, -2295.48291015625, 127.145965576171875, 2.769487857818603515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+813, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3521.5703125, -1833.970458984375, 0.691210091114044189, 3.920188188552856445, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+814, 187414, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3233.371337890625, -1704.5762939453125, 45.60326766967773437, 2.852196216583251953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Typhoon (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+815, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3541.77783203125, -2001.8228759765625, 19.5741119384765625, 1.865918278694152832, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+816, 188027, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3471.724853515625, -1879.967041015625, -0.53035920858383178, 1.594599604606628417, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Salty Salamander (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+817, 184807, 2523, 13644, 13722, '0', '0', 0, 0, 0, 2.593545198440551757, 0.269358307123184204, 6.095977783203125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- The Defiant Dragonscale (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+818, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3518.947021484375, -1967.93408203125, 18.54388618469238281, 0.588552713394165039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+819, 197611, 2523, 13644, 13722, '0', '0', 0, 0, 0, 10.09525203704833984, -0.01989407092332839, 34.86106109619140625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+820, 184286, 2523, 13644, 13722, '0', '0', 0, 0, 1, 13.50634765625, -0.334228515625, 35.135711669921875, 3.080444812774658203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Captain Caspartine (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 372498 - Channel: Look Through Spyglass (Nightborne Male) [DNT])
(@CGUID+821, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3489.0712890625, -1905.765625, 1.587053537368774414, 1.528558611869812011, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+822, 195795, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3715.762939453125, -2271.654296875, 179.346405029296875, 3.287173986434936523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+823, 191104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3442.077392578125, -1934.74658203125, 23.18675804138183593, 5.248965263366699218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Scythid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+824, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3509.272705078125, -1895.920166015625, -0.01812924444675445, 2.739295482635498046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%) (possible waypoints or random movement)
(@CGUID+826, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3522.83935546875, -2075.935791015625, 22.88064765930175781, 4.897677421569824218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+827, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3483.223876953125, -2080.68408203125, 25.73145484924316406, 3.539508819580078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+828, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3523.00439453125, -2078.66162109375, 23.19730758666992187, 0.735207021236419677, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+829, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3471.0166015625, -2052.09033203125, 22.11111259460449218, 5.377099990844726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+830, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3482.83154296875, -2083.385498046875, 26.46354293823242187, 1.142228126525878906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+831, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3475.712646484375, -2054.177001953125, 21.53153038024902343, 2.946641445159912109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+832, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3482.3681640625, -2077.954833984375, 25.23874282836914062, 4.982372760772705078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+833, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3471.63623046875, -2055.84375, 22.12847328186035156, 1.001231908798217773, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+834, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3473.233642578125, -2053.6875, 21.87821006774902343, 2.209980487823486328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+835, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3485.876708984375, -2081.111083984375, 25.61473655700683593, 2.98200082778930664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+836, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3525.862060546875, -2078.239501953125, 23.57986259460449218, 2.990359067916870117, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+837, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3520.764892578125, -2080.173583984375, 23.42881965637207031, 0.593841373920440673, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+844, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.600830078125, -1842.8975830078125, 0.217013895511627197, 0.050564374774694442, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+845, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3530.921875, -1845.3975830078125, -0.0121527761220932, 2.701723575592041015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+846, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3531.439208984375, -1842.1336669921875, 0.255208343267440795, 5.081218242645263671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+848, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3532.428955078125, -1656.138916015625, 39.15208816528320312, 4.080657005310058593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+849, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3489.02001953125, -1706.4930419921875, 11.87146759033203125, 3.282118558883666992, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+850, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.1728515625, -1703.2083740234375, 32.15972137451171875, 4.982372760772705078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+851, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3612.9775390625, -1731.8125, 35.26215362548828125, 5.403483390808105468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+852, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3586.494873046875, -1773.7396240234375, 23.67462158203125, 2.564822196960449218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+853, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3587.682373046875, -1706.3646240234375, 31.79513931274414062, 2.981955766677856445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+854, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3585.029541015625, -1705.9375, 31.69965362548828125, 5.488298892974853515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT]) (possible waypoints or random movement)
(@CGUID+856, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3613.90625, -1733.2291259765625, 35.35763931274414062, 2.151083946228027343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+857, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.63623046875, -1708.638916015625, 31.30463027954101562, 1.142228126525878906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+858, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3611.20751953125, -1816.7916259765625, 17.94097328186035156, 2.727625846862792968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+859, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3609.373779296875, -1815.9859619140625, 17.64469337463378906, 4.810931205749511718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+863, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3540.9931640625, -1917.0052490234375, 3.484375, 0.023314377292990684, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+864, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3542.218017578125, -1918.767333984375, 3.309429645538330078, 1.730862975120544433, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+865, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3542.83154296875, -1916.2413330078125, 3.512152671813964843, 5.081218242645263671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT]) (possible waypoints or random movement)
(@CGUID+868, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3631.092041015625, -1669.9166259765625, 39.09722137451171875, 5.616267204284667968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+869, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3636.15966796875, -1671.9305419921875, 38.88483428955078125, 2.948457956314086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+870, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3631.768310546875, -1673.6597900390625, 38.59722137451171875, 0.997966587543487548, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+871, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3632.977783203125, -1671.7845458984375, 38.83649063110351562, 0.999493181705474853, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+872, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3770.75, -1686.0989990234375, 1.543671846389770507, 3.115732192993164062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+873, 195639, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3811.4140625, -1667.5538330078125, 17.15277862548828125, 4.991486549377441406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+874, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4087.822509765625, -1528.40869140625, 51.22261810302734375, 6.225403785705566406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+875, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3737.353271484375, -1568.09375, 50.33037185668945312, 2.973183870315551757, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+876, 195502, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3734.561767578125, -1567.619140625, 51.6421966552734375, 1.364901542663574218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386221 - Tormented [DNT])
(@CGUID+877, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3732.7109375, -1565.267333984375, 52.68576431274414062, 5.29737091064453125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+878, 195597, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3736.21435546875, -1564.9132080078125, 50.98263931274414062, 4.206521987915039062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+879, 187061, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3640.00341796875, -1543.1910400390625, 62.22186279296875, 6.159180164337158203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+880, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3594.201171875, -1574.3408203125, 60.38926315307617187, 4.276998519897460937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+881, 187123, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3639.272705078125, -1543.82470703125, 62.22186279296875, 4.51594400405883789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+882, 187125, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3601.05029296875, -1525.859375, 72.5751953125, 5.152955055236816406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+883, 187061, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3656.4736328125, -1523.259765625, 63.478546142578125, 5.951264858245849609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+886, 187125, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3612.520751953125, -1518.861083984375, 72.724639892578125, 5.108240127563476562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+887, 187121, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3626.02685546875, -1508.99658203125, 72.64532470703125, 5.399322509765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369812 - Channel: Arcane (MagReadySpellCast) [DNT])
(@CGUID+888, 193362, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3581.513916015625, -1455.51220703125, 91.41146087646484375, 5.369129180908203125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sendrax (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+889, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3669.696533203125, -1504.8106689453125, 66.2336578369140625, 4.97811126708984375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+891, 187121, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3612.710205078125, -1488.013916015625, 86.5487213134765625, 5.399322509765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369812 - Channel: Arcane (MagReadySpellCast) [DNT])
(@CGUID+892, 187135, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3579.065185546875, -1495.5364990234375, 91.91607666015625, 5.108240127563476562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+893, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3603.975830078125, -1477.3975830078125, 91.85549163818359375, 5.355236053466796875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+894, 187125, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3599.098876953125, -1498.578125, 85.7869873046875, 5.533734321594238281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+895, 187121, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3623.423583984375, -1480.8194580078125, 86.5487213134765625, 5.732470035552978515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369812 - Channel: Arcane (MagReadySpellCast) [DNT])
(@CGUID+896, 187121, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3636.740478515625, -1501.8004150390625, 72.64532470703125, 5.732470035552978515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369812 - Channel: Arcane (MagReadySpellCast) [DNT])
(@CGUID+897, 187135, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3592.118896484375, -1486.7691650390625, 91.95461273193359375, 5.580093860626220703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+898, 187125, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3587.97216796875, -1506.54345703125, 85.92707061767578125, 5.108240127563476562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+899, 187062, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3615.59033203125, -1469.204833984375, 91.91225433349609375, 5.20188760757446289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+900, 199336, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3548.4853515625, -1450.1597900390625, 92.91759490966796875, 4.547221183776855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kerazal (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+901, 189093, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3736.1591796875, -1516.252197265625, 53.58908843994140625, 2.962719917297363281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+902, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3756.654541015625, -1570.3829345703125, 44.58770751953125, 5.56410980224609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+903, 189094, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3763.77099609375, -1518.1126708984375, 36.543731689453125, 3.044986724853515625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+904, 184867, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3757.169189453125, -1523.5086669921875, 22.71667861938476562, 1.195987343788146972, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+905, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3772.056396484375, -1519.3385009765625, 22.39665412902832031, 4.939078807830810546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+906, 184867, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3759.210205078125, -1506.767333984375, 23.2592620849609375, 4.90654754638671875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fussy Swoglet (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+907, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3784.63525390625, -1507.520263671875, 19.45029830932617187, 2.416593074798583984, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+908, 192104, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3756.814208984375, -1520.75, 23.0316925048828125, 4.939078807830810546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Magma Slug (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+909, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3947.60595703125, -1648.1319580078125, 109.8160629272460937, 4.536995887756347656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+912, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4073.171142578125, -1610.095458984375, 3.479570865631103515, 0.857399404048919677, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+914, 187194, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3609.650146484375, -1457.16845703125, 91.6649322509765625, 5.244863033294677734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+917, 184812, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3611.3134765625, -1458.1319580078125, 91.45833587646484375, 2.616562604904174804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+918, 187254, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3589.4609375, -1422.1771240234375, 95.4940643310546875, 0.922156810760498046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Archivist Spearblossom (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+919, 187194, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3571.507080078125, -1475.5347900390625, 91.47650146484375, 1.501176834106445312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+920, 184812, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3571.625, -1473.84375, 91.47314453125, 4.748072147369384765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+921, 194236, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3582.165771484375, -1414.703125, 96.63195037841796875, 0.091790109872817993, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 383207 - Conversation Aura: Talk/Exclamation [DNT])
(@CGUID+922, 192549, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3561.5234375, -1478.44970703125, 94.37607574462890625, 5.690785408020019531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Feilin Kuan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+923, 193707, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3586.474853515625, -1402.5323330078125, 98.27001953125, 3.281219005584716796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Surveyor's Disc (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+924, 184452, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3612.697998046875, -1438.439208984375, 95.5745849609375, 2.857669830322265625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Warlord Breka Grimaxe (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+925, 184451, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3610.538330078125, -1439.0225830078125, 95.56537628173828125, 0.263243347406387329, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shuja Grimaxe (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+926, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3586.145751953125, -1444.513916015625, 91.81945037841796875, 3.0483245849609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+927, 184814, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3572.1328125, -1455.6336669921875, 91.59896087646484375, 2.76707768440246582, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+928, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3558.4453125, -1472.84375, 94.728271484375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+929, 187196, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3570.62939453125, -1454.8472900390625, 91.51389312744140625, 5.801260948181152343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+930, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3591.759521484375, -1434.513916015625, 95.80889892578125, 5.488927364349365234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374107 - Channel: SitChairMed + Read (Reliquary) [DNT])
(@CGUID+931, 187193, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.482666015625, -1444.170166015625, 91.70139312744140625, 6.079361915588378906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+932, 193858, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3601.88232421875, -1432.4554443359375, 94.9317169189453125, 2.14201664924621582, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Expedition Surveyor (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 396292 - Spyglass) (possible waypoints or random movement)
(@CGUID+933, 185773, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3533.150146484375, -1476.861083984375, 93.7208099365234375, 6.277778148651123046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Elia Bladeleaf (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 228928 - Stealth)
(@CGUID+934, 194236, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3510.35595703125, -1439.1978759765625, 95.22080230712890625, 6.006723403930664062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 383207 - Conversation Aura: Talk/Exclamation [DNT])
(@CGUID+935, 184449, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3534.291748046875, -1467.71533203125, 93.71736907958984375, 1.512264847755432128, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Captain Garrick (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+936, 184450, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3533.248291015625, -1465.998291015625, 93.6490020751953125, 5.743871688842773437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Henry Garrick (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+937, 198386, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3551.647705078125, -1450.5382080078125, 93.8797607421875, 0.477288544178009033, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Scouting Map (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+938, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3609.509521484375, -1414.951416015625, 98.71886444091796875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+939, 198398, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.079833984375, -1420.9913330078125, 96.79944610595703125, 3.530550479888916015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Misty Catseye (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+940, 192563, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3541.2509765625, -1444.9132080078125, 93.89902496337890625, 1.584240436553955078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kholmar Sunrunner (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 386924 - Channel: Work on Molten Ore (Dwarf Male) [DNT])
(@CGUID+941, 187196, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.06787109375, -1464.2374267578125, 93.58438873291015625, 0.210627391934394836, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 244867 - 8.0 Carry Sack New Anim) (possible waypoints or random movement)
(@CGUID+942, 187253, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3592.131103515625, -1422.4444580078125, 95.4635467529296875, 2.166835308074951171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Spelunker Lazee (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+943, 184813, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3513.3056640625, -1440.0347900390625, 95.32672119140625, 2.865130424499511718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+944, 185774, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3535.0166015625, -1476.8177490234375, 93.7173614501953125, 3.305989027023315429, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dallio Morelli (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 228928 - Stealth)
(@CGUID+945, 187255, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3591.5009765625, -1420.1353759765625, 95.5205230712890625, 3.749132156372070312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pathfinder Poppy (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+946, 192048, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3518.5166015625, -1459.6944580078125, 93.7173614501953125, 0.236967533826828002, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Deirdre Flemmin (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+947, 192565, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3604.577392578125, -1396.7396240234375, 99.11859893798828125, 2.216430425643920898, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Zayn Starmaker (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+948, 190577, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3525.30029296875, -1462.7569580078125, 94.79058837890625, 0.844359457492828369, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tellywin Sharpfizzle (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+949, 187196, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3520.315185546875, -1451.1805419921875, 93.6884307861328125, 3.266601324081420898, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+950, 193838, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3543.711181640625, -1434.590087890625, 91.809967041015625, 1.539981007575988769, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Vish the Sneak (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 286996 - Stealth, 372485 - Carrying Crate) (possible waypoints or random movement)
(@CGUID+951, 187196, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3517.112060546875, -1451.032958984375, 93.6925201416015625, 0.143173664808273315, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+952, 190535, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3605.951416015625, -1404.1336669921875, 99.35736083984375, 4.161099910736083984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Quizla Blastcaps (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374211 - Channel: Make Explosive Duck [DNT])
(@CGUID+953, 192558, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3521.981689453125, -1464.8055419921875, 93.7261199951171875, 1.112327814102172851, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Toninaar (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+954, 187194, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3524.722412109375, -1454.588623046875, 93.6478729248046875, 2.508435964584350585, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wild Coast - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+955, 192407, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3531.228271484375, -1436.21875, 93.85146331787109375, 6.151883125305175781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cracked Elemental (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+956, 184814, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3585.22998046875, -1414.7379150390625, 96.38233184814453125, 3.130239486694335937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rugged Artisan (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+957, 193913, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3562.257080078125, -1380.60595703125, 97.5908203125, 3.7850799560546875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 382660 - Channel: Hold Dragon Tablet (+Broom) [DNT])
(@CGUID+958, 192210, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3515.126708984375, -1456.60595703125, 93.7173614501953125, 0.596488416194915771, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mia Pyke (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+959, 187261, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3529.677001953125, -1437.71875, 92.90277862548828125, 3.46657419204711914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Grun Ashbeard (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374319 - Channel: Hold Blacksmith Hammer [DNT])
(@CGUID+960, 194236, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3481.8369140625, -1420.9114990234375, 93.5443878173828125, 6.12877511978149414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 383210 - Channel: Read Floating Book (Dragon) (RedFX) [DNT])
(@CGUID+961, 187257, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3590.98095703125, -1397.142333984375, 99.116302490234375, 5.382963180541992187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Aster Cloudgaze (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+962, 194238, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3547.6103515625, -1365.060791015625, 98.07820892333984375, 6.127313613891601562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Drakonid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 369391 - Channel: Work With Hammer [DNT])
(@CGUID+963, 192207, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3598.434814453125, -1395.595458984375, 99.11859893798828125, 0.259305596351623535, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sihua (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+964, 192055, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3602.611083984375, -1395.8194580078125, 100.3914794921875, 1.276420116424560546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Veeno (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 177766 - Levitate, 376969 - Cosmetic - Spell Hands [DNT])
(@CGUID+965, 190571, 2444, 13644, 13722, '0', '0', 0, 0, 1, 3594.407958984375, -1392.8802490234375, 99.12609100341796875, 0.595166444778442382, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Xelendus Felwatcher (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT])
(@CGUID+966, 193393, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3477.77001953125, -1436.0035400390625, 93.44858551025390625, 0.226643532514572143, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ambassador Fastrasz (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+967, 194236, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3465.84033203125, -1441.592041015625, 93.4485321044921875, 5.532708168029785156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+968, 194238, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3547.71435546875, -1359.951416015625, 98.47779083251953125, 4.67026376724243164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Drakonid (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 383215 - Channel: Hold Planter [DNT])
(@CGUID+969, 194236, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3466.0556640625, -1425.7291259765625, 93.32596588134765625, 0.367375612258911132, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Dragonspawn (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 383207 - Conversation Aura: Talk/Exclamation [DNT])
(@CGUID+970, 192103, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3510.0478515625, -1408.0035400390625, 92.79571533203125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+971, 187194, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3502.772705078125, -1419.4410400390625, 94.38195037841796875, 4.864512920379638671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+972, 184812, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3503.029541015625, -1421.1163330078125, 94.3202362060546875, 1.829480290412902832, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Explorer (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+973, 193928, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3560.494873046875, -1382.7222900390625, 97.40399169921875, 0.89816063642501831, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 382661 - Channel: Control Magical Tools (Arcane) [DNT])
(@CGUID+974, 192490, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3507.98876953125, -1411.6007080078125, 93.66728973388671875, 0.16056092083454132, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tixxa Mixxa (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+975, 198380, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3481.06591796875, -1423.1788330078125, 93.4485321044921875, 0.592519223690032958, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Journalist Jessamine Spitz (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+976, 198094, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3469.530517578125, -1445.46533203125, 94.1824493408203125, 0.948304235935211181, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Head Chef Stacks (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+977, 198095, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3467.91064453125, -1443.5225830078125, 93.44854736328125, 2.391115427017211914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sous-Chef Butterfingers (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 383207 - Conversation Aura: Talk/Exclamation [DNT])
(@CGUID+978, 187193, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3576.7197265625, -1374.7916259765625, 99.06182861328125, 2.381631374359130859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT])
(@CGUID+979, 198392, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3469.013916015625, -1424.9305419921875, 93.4485321044921875, 3.405259370803833007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- An'timon (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+980, 187062, 2444, 13644, 13939, '0', '0', 0, 0, 1, 3498.199951171875, -1383.6851806640625, 93.71628570556640625, 2.683935880661010742, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guarantor (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+981, 191946, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3430.541748046875, -1362.05908203125, 100.5038223266601562, 6.151883602142333984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cracked Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune), 376838 - Burning [DNT])
(@CGUID+983, 193914, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3564.1572265625, -1365.49658203125, 103.6281280517578125, 0.819178760051727294, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Toht Twofingers (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+984, 193915, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3565.302001953125, -1363.5972900390625, 103.8322372436523437, 3.839724302291870117, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emilia Bellocq (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+985, 187135, 2444, 13644, 13939, '0', '0', 0, 0, 1, 3490.2392578125, -1397.21484375, 94.544342041015625, 2.384007692337036132, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Expedition Guardian (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+986, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3418.22802734375, -1382.1632080078125, 104.1815338134765625, 0.195197343826293945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+988, 184813, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3575.4921875, -1373.625, 99.12326812744140625, 5.629904747009277343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Brave Researcher (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT])
(@CGUID+990, 193026, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3473.32470703125, -1391.4461669921875, 97.32464599609375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+992, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3424.616943359375, -1380.9000244140625, 102.304779052734375, 3.336790084838867187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+995, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3452.832763671875, -1336.466064453125, 100.98236083984375, 3.98175811767578125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+998, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3332.614501953125, -1429.3975830078125, 87.8597869873046875, 3.861361980438232421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+999, 195796, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3487.657470703125, -1873.8966064453125, 81.73691558837890625, 3.935154676437377929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1000, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3345.116455078125, -1394.0711669921875, 83.64144134521484375, 1.280156493186950683, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375029 - Channel: Earthquake Tremors [DNT])
(@CGUID+1001, 192227, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3477.3564453125, -1341.5577392578125, 103.9107742309570312, 2.198100566864013671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1002, 192227, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3473.744384765625, -1336.782470703125, 104.3384857177734375, 0.367348641157150268, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1003, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3383.9775390625, -1434.57470703125, 102.5292129516601562, 5.337365150451660156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+1005, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3439.466552734375, -1358.1119384765625, 99.90309906005859375, 1.616429686546325683, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1006, 202415, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3408.927001953125, -1386.4305419921875, 104.5935745239257812, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Invisible Bunny - Cave Entrance (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1009, 180701, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3382.6025390625, -1412.01220703125, 118.5208587646484375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1010, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3317.545166015625, -1355.0081787109375, 79.4657440185546875, 4.687915802001953125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1012, 192227, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3471.30712890625, -1338.6219482421875, 103.4363250732421875, 4.093502044677734375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1013, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3299.19189453125, -1388.3211669921875, 74.35298919677734375, 5.48111581802368164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+1015, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3492.767822265625, -1325.918701171875, 103.912322998046875, 2.271134138107299804, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1016, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3290.140625, -1386.7882080078125, 74.592254638671875, 3.040808916091918945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+1018, 197611, 2524, 13644, 13939, '0', '0', 0, 0, 0, -0.2512407898902893, 4.58125162124633789, 6.183543205261230468, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1019, 197503, 2524, 13644, 13939, '0', '0', 0, 0, 0, 1.879366517066955566, 1.662567138671875, 8.805849075317382812, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- The Rugged Dragonscale (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1020, 197611, 2524, 13644, 13939, '0', '0', 0, 0, 0, 3.40557098388671875, 0.131810501217842102, 8.272027015686035156, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile + Gigantic AOI (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1023, 193001, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3517.915771484375, -1313.204833984375, 104.1019287109375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kindlet (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1024, 193026, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3545.85498046875, -1309.2291259765625, 111.0910186767578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1025, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3494.1328125, -1251.986083984375, 111.175262451171875, 2.740616559982299804, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 376861 - Channel: Lava (ChannelCastOmni) [DNT]) (possible waypoints or random movement)
(@CGUID+1026, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3583.179931640625, -1298.6015625, 117.4522705078125, 1.483709096908569335, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1027, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3587.575439453125, -1298.4869384765625, 118.8860702514648437, 4.140111923217773437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1028, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3580.043212890625, -1289.5596923828125, 116.9678802490234375, 3.417848825454711914, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1029, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3587.81005859375, -1295.2691650390625, 118.94122314453125, 5.2898712158203125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1030, 193026, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3578.7197265625, -1281.5052490234375, 117.2051239013671875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1032, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3563.79052734375, -1234.1046142578125, 119.727569580078125, 0.592900276184082031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1033, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3523.047119140625, -1265.26220703125, 107.8204345703125, 5.652379035949707031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1034, 192274, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3618.57470703125, -1162.921875, 138.7349395751953125, 4.434918880462646484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baron Ashflow (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 376765 - Channel: Lavastorm [DNT])
(@CGUID+1036, 187120, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3599.0849609375, -1596.770751953125, 93.5910491943359375, 4.038075447082519531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hungry Proto-Dragon (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1037, 195796, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3938.810302734375, -1669.50244140625, 118.6599807739257812, 4.466160774230957031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1042, 189801, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3665.186279296875, -1629.407958984375, 150.6721649169921875, 2.02756810188293457, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1043, 189801, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3687.858154296875, -1602.03759765625, 143.05242919921875, 2.048259496688842773, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Proto-Dragon (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1046, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3564.0625, -1308.333984375, 113.325164794921875, 5.910697460174560546, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1047, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3650.392333984375, -1269.9024658203125, 167.7415771484375, 0.938364923000335693, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1048, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3556.52978515625, -1307.3670654296875, 113.0030364990234375, 2.749997138977050781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1049, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3556.27294921875, -1303.345947265625, 112.6033172607421875, 2.898467540740966796, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1050, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3615.57666015625, -1241.8927001953125, 133.5001220703125, 1.400193691253662109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1051, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3624.443603515625, -1212.4583740234375, 136.4838714599609375, 3.506260633468627929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 376861 - Channel: Lava (ChannelCastOmni) [DNT])
(@CGUID+1052, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3620.169189453125, -1236.890380859375, 136.48394775390625, 4.936743736267089843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1053, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3628.623779296875, -1234.519775390625, 138.92498779296875, 2.280800580978393554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1054, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3577.14306640625, -1200.2528076171875, 130.655853271484375, 2.313234806060791015, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1055, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3577.482421875, -1202.55859375, 130.304107666015625, 0.113459542393684387, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1056, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3547.16845703125, -1242.180908203125, 115.6475448608398437, 2.536789417266845703, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1057, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3549.66015625, -1235.57373046875, 118.441131591796875, 1.937339067459106445, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1058, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3645.89208984375, -1209.3968505859375, 142.250152587890625, 5.975640296936035156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1059, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3616.83251953125, -1195.3604736328125, 135.5787506103515625, 2.400025367736816406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1060, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3540.970947265625, -1239.852783203125, 116.987548828125, 3.814198493957519531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1061, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3653.671142578125, -1203.54345703125, 144.68621826171875, 1.983723044395446777, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1062, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3648.103759765625, -1197.3948974609375, 141.736297607421875, 2.925042390823364257, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1063, 193026, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3584.098876953125, -1189.982666015625, 134.228912353515625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Emberling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1064, 198191, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3554.826416015625, -1181.3333740234375, 211.124053955078125, 3.68105316162109375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bronze Timekeeper Assistant (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1065, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3591.9365234375, -1230.843994140625, 125.087982177734375, 3.515125274658203125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1066, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3585.474365234375, -1168.38037109375, 218.5035400390625, 3.473376750946044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1067, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3655.08251953125, -1206.8260498046875, 145.7839202880859375, 1.030062198638916015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1068, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3582.9619140625, -1202.9017333984375, 130.6412353515625, 0.416159361600875854, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1069, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3575.493896484375, -1169.7720947265625, 143.106903076171875, 2.550879955291748046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1070, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3581.48486328125, -1165.4105224609375, 144.6177520751953125, 1.010128498077392578, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1071, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3548.861328125, -1175.1466064453125, 138.833984375, 2.866339921951293945, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1072, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3569.323486328125, -1170.6749267578125, 141.7104949951171875, 0.608822226524353027, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1073, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3520.68603515625, -1191.8359375, 165.386016845703125, 5.505805492401123046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1074, 193001, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3519.23095703125, -1252.4722900390625, 111.2212677001953125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kindlet (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1075, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3412.90625, -1317.6402587890625, 107.8117141723632812, 1.750387907028198242, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1076, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3410.60546875, -1305.068359375, 106.1814346313476562, 1.841847777366638183, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1077, 192137, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3420.46533203125, -1271.899658203125, 104.9944000244140625, 1.39702153205871582, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Flick (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1078, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3302.75, -1329.75, 90.95298004150390625, 5.337365150451660156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+1079, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3296.12744140625, -1326.4971923828125, 90.806671142578125, 0.865382552146911621, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1080, 193001, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3420.67529296875, -1320.84375, 106.5682449340820312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kindlet (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1081, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3416.737060546875, -1374.1041259765625, 103.3792724609375, 4.267159938812255859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+1082, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3416.37744140625, -1312.5228271484375, 106.9322662353515625, 2.342753887176513671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1083, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3411.74755859375, -1312.7015380859375, 107.4818572998046875, 4.541786670684814453, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool) (possible waypoints or random movement)
(@CGUID+1084, 192266, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3281.100830078125, -1319.8941650390625, 73.01239013671875, 4.597472667694091796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baron Crustcore (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375412 - Channel: Earth Spikes [DNT])
(@CGUID+1086, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3268.0322265625, -1339.6510009765625, 91.08709716796875, 3.492854833602905273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT])
(@CGUID+1087, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3265.236083984375, -1291.4722900390625, 91.75008392333984375, 5.121929168701171875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375029 - Channel: Earthquake Tremors [DNT])
(@CGUID+1089, 187322, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3252.6025390625, -1380.1666259765625, 73.09549713134765625, 1.280156493186950683, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 375029 - Channel: Earthquake Tremors [DNT])
(@CGUID+1090, 180701, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3329.140625, -1416.9896240234375, 107.8465194702148437, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1091, 180701, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3315.7900390625, -1342.6285400390625, 102.9238128662109375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1092, 180701, 2444, 13644, 14099, '0', '0', 0, 0, 0, 3288.397705078125, -1351.5694580078125, 106.6089248657226562, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Quaking Cavern - Difficulty: 0) CreateObject1
(@CGUID+1093, 180701, 2444, 13644, 14099, '0', '0', 0, 0, 0, 3288.23095703125, -1350.798583984375, 73.32804107666015625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Quaking Cavern - Difficulty: 0) CreateObject1
(@CGUID+1094, 180701, 2444, 13644, 14099, '0', '0', 0, 0, 0, 3261.98876953125, -1376.3004150390625, 104.2913742065429687, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Quaking Cavern - Difficulty: 0) CreateObject1
(@CGUID+1095, 180701, 2444, 13644, 14099, '0', '0', 0, 0, 0, 3281.192626953125, -1304.1666259765625, 112.6171875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: Quaking Cavern - Difficulty: 0) CreateObject1
(@CGUID+1096, 195796, 2444, 13644, 14099, '0', '0', 0, 0, 0, 3743.9912109375, -1716.0289306640625, 78.49842071533203125, 5.21056985855102539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Quaking Cavern - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1103, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3538.65625, -1263.1075439453125, 110.2721328735351562, 3.247062444686889648, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1104, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3509.55029296875, -1274.157958984375, 105.6137466430664062, 1.148201346397399902, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1105, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3506.760498046875, -1271.9791259765625, 106.7952346801757812, 5.63505411148071289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1106, 187326, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3505.7978515625, -1276.671875, 105.1121444702148437, 4.437575817108154296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Encroaching Lava (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 370034 - Lava Pool)
(@CGUID+1107, 191830, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3394.254638671875, -1055.995361328125, 191.500030517578125, 0.06922297179698944, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1108, 191830, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3517.426025390625, -997.406005859375, 257.68951416015625, 0.462295383214950561, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Wingrest Embassy - Difficulty: 0) CreateObject1
(@CGUID+1109, 191818, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3451.7265625, -1035.0052490234375, 121.7499313354492187, 2.675883769989013671, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1110, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3448.05517578125, -1020.4495849609375, 123.505462646484375, 3.724721431732177734, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1111, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3436.6171875, -1013.73870849609375, 122.2547988891601562, 1.977145671844482421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1112, 191553, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3424.73388671875, -993.7088623046875, 123.4352951049804687, 4.837713241577148437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1113, 191818, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3407.039794921875, -963.17120361328125, 123.0749359130859375, 1.194229960441589355, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1114, 192103, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3405.38671875, -986.2178955078125, 119.9942474365234375, 5.290297508239746093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1115, 191830, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3337.056884765625, -1019.43145751953125, 123.1956710815429687, 0.6104888916015625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1116, 191830, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3368.78466796875, -1055.989013671875, 108.7578125, 0.580882668495178222, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1117, 191830, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3345.98095703125, -1048.7376708984375, 101.5815505981445312, 4.584904193878173828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1118, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3366.74853515625, -958.46435546875, 109.8448867797851562, 3.253327846527099609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1119, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3394.857421875, -1047.5958251953125, 98.1182403564453125, 5.812987804412841796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1120, 191818, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3459.664306640625, -1097.461669921875, 115.8265228271484375, 0.369149118661880493, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1121, 192103, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3361.30078125, -1027.439453125, 81.43828582763671875, 1.907378911972045898, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1122, 191818, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3385.5146484375, -1024.751708984375, 93.17026519775390625, 1.948764562606811523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1123, 191553, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3399.848388671875, -1050.2325439453125, 99.71471405029296875, 5.727176189422607421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1124, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3396.225830078125, -1051.748779296875, 98.1815338134765625, 5.773242473602294921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1125, 191830, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3260.5087890625, -1043.0177001953125, 94.81463623046875, 3.97731781005859375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Dreadsquall Hatchling (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1126, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3400.1748046875, -1134.3221435546875, 107.3377151489257812, 4.887398242950439453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1127, 191818, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3355.98291015625, -1128.090087890625, 96.7049102783203125, 3.844692707061767578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1128, 191553, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3405.19091796875, -1132.6961669921875, 107.75457763671875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1
(@CGUID+1129, 191554, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3358.11083984375, -953.00970458984375, 107.9636077880859375, 4.584802150726318359, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1130, 191553, 2444, 13644, 13721, '0', '0', 0, 0, 0, 3323.469970703125, -1116.5806884765625, 75.7915191650390625, 6.253767013549804687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Scalecracker Peaks - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1131, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3468.0869140625, -1279.60595703125, 104.3428421020507812, 5.359500885009765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 376861 - Channel: Lava (ChannelCastOmni) [DNT])
(@CGUID+1132, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3322.0087890625, -974.379638671875, 63.17920303344726562, 6.201261520385742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1133, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3300, -1105.208984375, 66.87262725830078125, 1.010955333709716796, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1134, 194972, 2444, 13644, 0, '0', '0', 0, 0, 0, 2915.40283203125, -870.6961669921875, 258.470855712890625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 385038 - Visual)
(@CGUID+1135, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3278.28271484375, -1007.27978515625, 50.79643630981445312, 3.238923072814941406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1136, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3279.467041015625, -1014.26739501953125, 50.9534912109375, 2.792786598205566406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1137, 198618, 2444, 13644, 0, '0', '0', 0, 0, 0, 2915.40283203125, -870.6961669921875, 258.470855712890625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1138, 191553, 2444, 13644, 0, '0', '0', 0, 0, 0, 3279.750732421875, -1018.974609375, 50.53662109375, 2.215470075607299804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1139, 191721, 2444, 13644, 0, '0', '0', 0, 0, 0, 3235.4921875, -1027.7291259765625, 35.96997833251953125, 2.217237710952758789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Fallen (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 160868 - Set Health (Uses Override Points) - Emote State: Dead)
(@CGUID+1140, 195303, 2444, 13644, 0, '0', '0', 0, 0, 0, 3233.49658203125, -1032.09375, 35.32426834106445312, 1.053403735160827636, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mender Eskros (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1141, 191721, 2444, 13644, 0, '0', '0', 0, 0, 0, 3223.194580078125, -1023.44451904296875, 35.96973419189453125, 6.254292964935302734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Fallen (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 160868 - Set Health (Uses Override Points) - Emote State: Dead)
(@CGUID+1142, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3283.580078125, -975.2890625, 51.63286972045898437, 4.05365753173828125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1143, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3271.386474609375, -1017.66241455078125, 47.71990203857421875, 5.060635089874267578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1144, 191721, 2444, 13644, 0, '0', '0', 0, 0, 0, 3222.1171875, -1017.8125, 35.96298599243164062, 6.009374141693115234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Fallen (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 160868 - Set Health (Uses Override Points) - Emote State: Dead)
(@CGUID+1145, 186584, 2444, 13644, 0, '0', '0', 0, 0, 0, 3203.280517578125, -1026.3785400390625, 35.61992263793945312, 5.79253387451171875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Commander Lethanak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1146, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3259.63720703125, -994.1165771484375, 44.57553863525390625, 1.466072797775268554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1147, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3288.862548828125, -1133.6845703125, 91.67258453369140625, 0.739786684513092041, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1148, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3252.355712890625, -1092.0406494140625, 55.55059814453125, 1.307242870330810546, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1149, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3283.11328125, -1139.2919921875, 90.369384765625, 4.655698776245117187, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1150, 191553, 2444, 13644, 0, '0', '0', 0, 0, 0, 3254.27294921875, -1088.7626953125, 53.31574630737304687, 1.041597247123718261, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1151, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3256.4599609375, -1090.965576171875, 54.63238143920898437, 1.180065631866455078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1152, 191553, 2444, 13644, 0, '0', '0', 0, 0, 0, 3269.822998046875, -1134.6475830078125, 82.44207000732421875, 0.036120984703302383, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1153, 191721, 2444, 13644, 0, '0', '0', 0, 0, 0, 3202.14404296875, -1077.5035400390625, 42.93360137939453125, 2.877400636672973632, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Fallen (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 160868 - Set Health (Uses Override Points) - Emote State: Dead)
(@CGUID+1154, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3249.5166015625, -1131.027587890625, 67.194427490234375, 3.143054723739624023, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1155, 191553, 2444, 13644, 0, '0', '0', 0, 0, 0, 3228.155517578125, -1104.4635009765625, 49.91913986206054687, 3.562168598175048828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1156, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 3230.0419921875, -1016.00042724609375, 36.63357162475585937, 4.527017116546630859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1157, 186582, 2444, 13644, 0, '0', '0', 0, 0, 0, 3177.4541015625, -1028.0555419921875, 35.62598419189453125, 3.390656948089599609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Warden (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1158, 186582, 2444, 13644, 0, '0', '0', 0, 0, 0, 3170.919189453125, -1049.453125, 35.62270736694335937, 2.432904720306396484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Warden (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1159, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3218.70849609375, -1093.79736328125, 45.87641143798828125, 3.55956435203552246, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1160, 186577, 2444, 13644, 0, '0', '0', 0, 0, 0, 3176.966064453125, -1063.98095703125, 37.02269363403320312, 4.008654594421386718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Searer (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1161, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3222.278564453125, -1128.6910400390625, 56.37886428833007812, 6.253331184387207031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1162, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3186.017822265625, -1091.834228515625, 42.4530029296875, 4.118646621704101562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1163, 191809, 2444, 13644, 0, '0', '0', 0, 0, 0, 3155.858642578125, -1073.3155517578125, 36.407623291015625, 1.679385304450988769, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1164, 191809, 2444, 13644, 0, '0', '0', 0, 0, 0, 3175.724609375, -984.04998779296875, 45.1222686767578125, 3.88629317283630371, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1165, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3161.92822265625, -1063.9339599609375, 35.57370758056640625, 3.45506453514099121, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1166, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3185.17236328125, -981.36029052734375, 37.240509033203125, 5.818137645721435546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1167, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 3175.25439453125, -1006.42279052734375, 40.22451019287109375, 5.652190685272216796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1168, 186593, 2444, 13644, 0, '0', '0', 0, 0, 0, 3112.778564453125, -1001.52947998046875, 36.31367111206054687, 5.4474639892578125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Watcher (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 70628 - Permanent Feign Death)
(@CGUID+1169, 191554, 2444, 13644, 0, '0', '0', 0, 0, 0, 3258.11865234375, -937.52569580078125, 62.13593292236328125, 6.192644119262695312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Argali Lamb (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1170, 191553, 2444, 13644, 0, '0', '0', 0, 0, 0, 3254.990234375, -929.376953125, 64.764739990234375, 1.798774480819702148, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1171, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3212.8466796875, -920.6953125, 35.98669052124023437, 2.842088222503662109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1172, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 3120.936279296875, -1008.26470947265625, 3.201077222824096679, 2.203852653503417968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1173, 195037, 2444, 13644, 0, '0', '0', 0, 0, 0, 3070.037353515625, -989.71875, 36.099212646484375, 3.530026435852050781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Watcher (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1174, 190144, 2444, 13644, 0, '0', '0', 0, 0, 0, 3054.743896484375, -1120.7742919921875, -2.50023221969604492, 4.339985847473144531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fretful Riverbeast Elder (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1175, 195032, 2444, 13644, 0, '0', '0', 0, 0, 0, 3065.911376953125, -994.4288330078125, 36.099212646484375, 0.277835339307785034, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+1176, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3157.21826171875, -1129.1744384765625, 20.42344093322753906, 5.297684669494628906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1177, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3132.8544921875, -1102.066162109375, 16.03459548950195312, 3.391911983489990234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1178, 191818, 2444, 13644, 0, '0', '0', 0, 0, 0, 3189.706787109375, -1176.3155517578125, 41.9940338134765625, 1.739821314811706542, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+1179, 187322, 2444, 13644, 0, '0', '0', 0, 0, 0, 3418.22802734375, -1382.1632080078125, 104.1815338134765625, 1.705383658409118652, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 151597 - No NPC Damage Below 45-90%)
(@CGUID+1181, 187321, 2444, 13644, 13939, '0', '0', 0, 0, 0, 3396.13623046875, -1276.8958740234375, 105.6142959594726562, 5.706338405609130859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Lava Elemental (Area: Wingrest Embassy - Difficulty: 0) CreateObject1 (Auras: 376861 - Channel: Lava (ChannelCastOmni) [DNT])
(@CGUID+1183, 187414, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3252.794189453125, -1711.3697509765625, 45.24289703369140625, 2.97872018814086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Typhoon (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+1188, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3471.975830078125, -1804.740234375, 2.640949964523315429, 1.529036879539489746, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1189, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3546.43017578125, -1795.242919921875, 34.32799148559570312, 1.615026473999023437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1190, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3548.55859375, -1794.0369873046875, 34.329345703125, 1.552321672439575195, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1191, 193876, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3549.943359375, -1788.39892578125, 34.32863235473632812, 0.789969503879547119, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1192, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3478.116455078125, -1701.99658203125, 28.93435478210449218, 5.763886928558349609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1193, 193806, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3624.50439453125, -1840.8836669921875, 16.79961585998535156, 3.235166549682617187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1204, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3564.150390625, -1887.9140625, 7.84593057632446289, 0.270663440227508544, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1207, 184851, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3475.55712890625, -1790.62890625, 7.081787586212158203, 3.291506290435791015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Snail (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1208, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3598.173583984375, -1743.685791015625, 30.109375, 2.20242929458618164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1211, 195241, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3613.303955078125, -1889.7447509765625, 12.64756965637207031, 5.440729618072509765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1213, 192103, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3567.666259765625, -1701.90185546875, 32.57979965209960937, 6.099866390228271484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1214, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3581.6171875, -1938.685791015625, 14.58973312377929687, 4.836793899536132812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1217, 195577, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3584.75, -1941.59375, 14.97916603088378906, 3.516864776611328125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1218, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3938.58642578125, -1670.47314453125, 118.8551254272460937, 4.504949569702148437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1220, 192132, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3832.271728515625, -1934.0689697265625, -45.9947357177734375, 4.644976615905761718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Depths Eel (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1221, 195796, 2444, 13644, 13722, '0', '0', 0, 0, 0, 4134.6005859375, -1580.0528564453125, 42.1401214599609375, 5.217069625854492187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT])
(@CGUID+1222, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3897.684814453125, -1730.529541015625, 27.62055206298828125, 3.266798257827758789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+1224, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3813.02685546875, -1671.673583984375, 15.07291603088378906, 2.21646738052368164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1228, 190056, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3914.661376953125, -1729.7899169921875, 29.37816810607910156, 4.537978172302246093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373366 - Channel: Perch [DNT])
(@CGUID+1233, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.0400390625, -1675.779541015625, 24.63330841064453125, 1.205594897270202636, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1234, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3894.114013671875, -1665.3631591796875, 18.1583251953125, 0.27192506194114685, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1237, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3904.275146484375, -1674.02783203125, 24.1905517578125, 4.299658775329589843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT])
(@CGUID+1238, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3891.06201171875, -1669.064208984375, 17.64735031127929687, 2.807031869888305664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1239, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3892.673828125, -1666.80859375, 17.89087104797363281, 1.325344324111938476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1240, 195639, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3962.96533203125, -1680.1007080078125, 17.266571044921875, 2.234366655349731445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1244, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3938.341064453125, -1673.704833984375, 17.5743560791015625, 6.108285903930664062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+1245, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3940.08935546875, -1674.65283203125, 17.68247222900390625, 2.2793121337890625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+1246, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3940.544189453125, -1672.4132080078125, 18.107391357421875, 5.353322029113769531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1 (Auras: 373312 - Channel: Whelp Eating [DNT])
(@CGUID+1247, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3954.122802734375, -1730.7384033203125, 24.17205810546875, 5.306894302368164062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1248, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3955.640380859375, -1733.267822265625, 23.53170013427734375, 5.931432723999023437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1249, 184862, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3954.33251953125, -1733.84716796875, 24.28940200805664062, 0.300881862640380859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Whelp (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1250, 184869, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3949.4951171875, -1508.6806640625, 15.53676509857177734, 3.039423227310180664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Wild Coast - Difficulty: 0) CreateObject1
(@CGUID+1251, 195242, 2444, 13644, 13722, '0', '0', 0, 0, 0, 3959.436767578125, -1675.8853759765625, 17.51842689514160156, 5.742532730102539062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299); -- Distressed Marmoni (Area: Wild Coast - Difficulty: 0) CreateObject1

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+1251;
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '273098'), -- Expedition Provisioner - 273098 - 8.0 Carry Two Chest Stack
(@CGUID+5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '273097'), -- Expedition Provisioner - 273097 - 8.0 Carry Large Chest
(@CGUID+10, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Elsa Donovan
(@CGUID+15, 0, 89712, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Expedition Scout
(@CGUID+18, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+21, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+22, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+26, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+27, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+30, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '244867'), -- Expedition Provisioner - 244867 - 8.0 Carry Sack New Anim
(@CGUID+33, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+34, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+38, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+39, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Hungry Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+42, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '365868'), -- Rambunctious Tideskipper - 365868 - Dolphin Swimming [DNT]
(@CGUID+44, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+46, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+47, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+48, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+50, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+52, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+53, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+54, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+57, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+58, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+59, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+60, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+61, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+62, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+64, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+69, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+71, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- The Defiant Dragonscale
(@CGUID+72, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+74, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Kite
(@CGUID+76, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+82, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+83, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 4, '372498'), -- Captain Caspartine - 372498 - Channel: Look Through Spyglass (Nightborne Male) [DNT]
(@CGUID+87, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+89, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+91, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Ancient Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+92, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+94, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+96, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+97, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterfly
(@CGUID+99, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+100, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+101, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+102, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+103, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+108, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+114, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+119, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+122, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+125, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+127, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+128, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+129, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+130, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Distressed Marmoni - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+131, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+132, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+134, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+135, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+136, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+137, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+138, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+139, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+140, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+141, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+142, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+143, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+144, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+145, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+146, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+148, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+149, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+150, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+151, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+153, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+154, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+156, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+157, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Primal Proto-Dragon - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+158, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+159, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+160, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+161, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+165, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+166, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+167, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+168, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+170, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+173, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+175, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+176, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+177, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+179, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+180, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+182, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+183, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+184, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+185, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+186, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Drake - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+187, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+188, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+189, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+191, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+192, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+194, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+195, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+196, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+199, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+201, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Distressed Marmoni - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+203, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+206, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Primal Proto-Dragon - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+208, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+209, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Ancient Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+211, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+212, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+213, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Drake - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+214, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+216, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+217, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Primal Proto-Dragon - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+218, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+219, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+220, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+221, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+224, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+225, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+226, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+227, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+234, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+235, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+236, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+237, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+240, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+247, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+248, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+249, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+250, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+251, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Distressed Marmoni - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+252, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+253, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+257, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+259, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+260, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+263, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+264, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Ancient Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+272, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+277, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+282, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Scythid - 151597 - No NPC Damage Below 45-90%
(@CGUID+286, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+289, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+293, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+294, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+295, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+297, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+298, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+299, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+301, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+302, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+303, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+305, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '384378'), -- Dragon Glyph - 384378 - Visual
(@CGUID+309, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+311, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph
(@CGUID+313, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+314, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+316, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Salty Salamander
(@CGUID+317, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+326, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+327, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+329, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+333, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+334, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+354, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Drake - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+355, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+356, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+357, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+359, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Ancient Proto-Dragon
(@CGUID+360, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Ancient Proto-Dragon
(@CGUID+362, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+363, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+364, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+365, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+367, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterfly
(@CGUID+369, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Salty Salamander - 151597 - No NPC Damage Below 45-90%
(@CGUID+370, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+376, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterfly
(@CGUID+378, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+381, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+382, 0, 0, 0, 0, 0, 1, 0, 0, 24592, 0, 0, 0, '374191'), -- Mora Cloudwalker - 374191 - Fishing (Tuskarr Pole + Highmountain Bobber) [DNT]
(@CGUID+383, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '151597'), -- Salty Salamander - 151597 - No NPC Damage Below 45-90%
(@CGUID+384, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+387, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Expedition Provisioner
(@CGUID+388, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+389, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374107'), -- Brave Researcher - 374107 - Channel: SitChairMed + Read (Reliquary) [DNT]
(@CGUID+391, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+394, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+395, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+396, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+397, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+398, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+400, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+401, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+402, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+404, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+407, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Salty Salamander - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+408, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+409, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+410, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+411, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''); -- Salty Skitterbug

INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+412, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+413, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+414, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+415, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterfly
(@CGUID+416, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+418, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+421, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+422, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+423, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+424, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+425, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+428, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterbug
(@CGUID+429, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369391'), -- Ruby Drakonid - 369391 - Channel: Work With Hammer [DNT]
(@CGUID+430, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+431, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Salty Skitterfly
(@CGUID+432, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+433, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '125467'), -- Ancient Proto-Dragon - 125467 - Root Self (Permanent)
(@CGUID+434, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+435, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+436, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+437, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+438, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+439, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+440, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Curious Marmoni - 374094 - Hanging [DNT]
(@CGUID+442, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373345'), -- Primal Proto-Drake - 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT]
(@CGUID+444, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+445, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+447, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+449, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+450, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+451, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+452, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+453, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+454, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+455, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+456, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+457, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+458, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+459, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+460, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+462, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+466, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+468, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+473, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+474, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+475, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+476, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+477, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374151'), -- Brave Researcher - 374151 - Channel: Read Floating Book (Reliquary) [DNT]
(@CGUID+480, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+481, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+483, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374128'), -- Restless Explorer - 374128 - Channel: Hold Compass + TalkQuestion (Reliquary) [DNT]
(@CGUID+484, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374209'), -- Rugged Artisan - 374209 - Channel: Hold Jewelry Box(Dragon) + TalkQuestion [DNT]
(@CGUID+485, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+487, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+488, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+489, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373345'), -- Primal Proto-Drake - 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT]
(@CGUID+490, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+491, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+496, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Expedition Provisioner
(@CGUID+497, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+498, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Expedition Provisioner
(@CGUID+499, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Expedition Provisioner
(@CGUID+500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '367234'), -- Restless Explorer - 367234 - Channel: Look Through Right Eye [DNT]
(@CGUID+501, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Brave Researcher - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+502, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374127'), -- Rugged Artisan - 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT]
(@CGUID+505, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+506, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+507, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Expedition Provisioner
(@CGUID+508, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+509, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+511, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+513, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+514, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Drake - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+516, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+517, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+518, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374171'), -- Ephra Breezewood - 374171 - Channel: Hold Lantern (Reliquary) (Undead Female Only) [DNT]
(@CGUID+528, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+530, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+533, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+534, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+536, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+537, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+539, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+540, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '365868'), -- Rambunctious Tideskipper - 365868 - Dolphin Swimming [DNT]
(@CGUID+542, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+543, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+545, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+548, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Distressed Marmoni - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+549, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+550, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+551, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+552, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+553, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Drake - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+554, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+556, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+561, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+562, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+563, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+565, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+569, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+571, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+572, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+577, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+580, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+584, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+589, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+591, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+594, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+596, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+597, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+600, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Salty Salamander - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+602, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+607, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+609, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+611, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+613, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+617, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+619, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Drake - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+620, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+621, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Salty Salamander - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+622, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+624, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+627, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+629, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+630, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+631, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+635, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+637, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Salty Salamander - 151597 - No NPC Damage Below 45-90%
(@CGUID+640, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+641, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+642, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+643, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+644, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+647, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+650, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- Ancient Proto-Dragon - 374315 - Channel: Sleep (With Aggro Change) [DNT]
(@CGUID+652, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+653, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+654, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+655, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph
(@CGUID+656, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '385044'), -- Dragon Glyph - 385044 - Visual
(@CGUID+658, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+659, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+660, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+661, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+662, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+663, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+664, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+665, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+667, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, '370243'), -- Bronze Timekeeper - 370243 - Cosmetic Race Flag Overhead
(@CGUID+668, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+672, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+673, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+677, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+679, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+680, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+682, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+684, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+686, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+688, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+689, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+690, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- The Rugged Dragonscale
(@CGUID+691, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+692, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+693, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+694, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373345'), -- Primal Proto-Drake - 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT]
(@CGUID+695, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+696, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 3, ''), -- (Bunny) Sessile + Large AOI
(@CGUID+697, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+698, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+699, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+701, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+702, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+703, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+704, 0, 0, 0, 0, 0, 1, 0, 601, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+708, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373345'), -- Primal Proto-Drake - 373345 - Conversation Aura: Talk/Roar/Laugh/Threaten [DNT]
(@CGUID+709, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+724, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '365868'), -- Rambunctious Tideskipper - 365868 - Dolphin Swimming [DNT]
(@CGUID+730, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+733, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+734, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+740, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+741, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+742, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+743, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+746, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+748, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+749, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+750, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+752, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+753, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+755, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+759, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+760, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+761, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+763, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+766, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+767, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+768, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+769, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- Distressed Marmoni - 374094 - Hanging [DNT]
(@CGUID+773, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Hungry Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+777, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+778, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+779, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+783, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- Lava Snail - 374310 - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(@CGUID+785, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Scythid - 151597 - No NPC Damage Below 45-90%
(@CGUID+786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+790, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Hungry Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+791, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+792, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+793, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Whelp - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+794, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+796, 0, 0, 0, 0, 0, 1, 0, 569, 0, 0, 0, 0, ''), -- Eager Acquisitionist
(@CGUID+797, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+800, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Brave Researcher
(@CGUID+801, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+802, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- Primal Proto-Drake - 385801 - Channel: FlySitGround [DNT]
(@CGUID+807, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+809, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Restless Explorer
(@CGUID+812, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Ancient Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+813, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+816, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Salty Salamander
(@CGUID+817, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- The Defiant Dragonscale
(@CGUID+819, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+820, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 4, '372498'), -- Captain Caspartine - 372498 - Channel: Look Through Spyglass (Nightborne Male) [DNT]
(@CGUID+821, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+822, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Ancient Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+823, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Scythid - 151597 - No NPC Damage Below 45-90%
(@CGUID+824, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+825, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+826, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+827, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+828, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+829, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+830, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+831, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''); -- Primal Proto-Whelp

INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+832, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+833, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+834, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+835, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+836, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+837, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+838, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+839, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+841, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+842, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+843, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+844, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+845, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+846, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+847, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+848, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Drake - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+850, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+851, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+852, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+853, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+854, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+855, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+856, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'), -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]
(@CGUID+857, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+858, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+859, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+863, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+866, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+867, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+868, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+869, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+870, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+871, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+872, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+874, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+875, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+877, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+878, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+879, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+881, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+882, 0, 0, 0, 0, 0, 1, 0, 385, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+883, 0, 0, 0, 0, 0, 1, 1, 375, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+886, 0, 0, 0, 0, 0, 1, 0, 385, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+887, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369812'), -- Expedition Guarantor - 369812 - Channel: Arcane (MagReadySpellCast) [DNT]
(@CGUID+888, 0, 0, 0, 0, 0, 0, 0, 716, 0, 0, 0, 0, ''), -- Sendrax
(@CGUID+891, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369812'), -- Expedition Guarantor - 369812 - Channel: Arcane (MagReadySpellCast) [DNT]
(@CGUID+892, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+893, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+894, 0, 0, 0, 0, 0, 1, 0, 385, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+895, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369812'), -- Expedition Guarantor - 369812 - Channel: Arcane (MagReadySpellCast) [DNT]
(@CGUID+896, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369812'), -- Expedition Guarantor - 369812 - Channel: Arcane (MagReadySpellCast) [DNT]
(@CGUID+897, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+898, 0, 0, 0, 0, 0, 1, 0, 385, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+899, 0, 0, 0, 0, 0, 1, 1, 718, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+909, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+910, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Drake - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+912, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+914, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Restless Explorer - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+919, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Restless Explorer - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+921, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- Ruby Dragonspawn - 383207 - Conversation Aura: Talk/Exclamation [DNT]
(@CGUID+922, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Feilin Kuan
(@CGUID+929, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Rugged Artisan - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+930, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374107'), -- Brave Researcher - 374107 - Channel: SitChairMed + Read (Reliquary) [DNT]
(@CGUID+931, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Brave Researcher - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+932, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '396292'), -- Expedition Surveyor - 396292 - Spyglass
(@CGUID+933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '228928'), -- Elia Bladeleaf - 228928 - Stealth
(@CGUID+934, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- Ruby Dragonspawn - 383207 - Conversation Aura: Talk/Exclamation [DNT]
(@CGUID+939, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Misty Catseye
(@CGUID+940, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386924'), -- Kholmar Sunrunner - 386924 - Channel: Work on Molten Ore (Dwarf Male) [DNT]
(@CGUID+941, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '244867'), -- Rugged Artisan - 244867 - 8.0 Carry Sack New Anim
(@CGUID+944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '228928'), -- Dallio Morelli - 228928 - Stealth
(@CGUID+948, 0, 0, 0, 0, 0, 0, 0, 616, 0, 0, 0, 0, ''), -- Tellywin Sharpfizzle
(@CGUID+950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '286996 372485'), -- Vish the Sneak - 286996 - Stealth, 372485 - Carrying Crate
(@CGUID+952, 0, 0, 0, 0, 0, 1, 0, 0, 14000, 0, 0, 0, '374211'), -- Quizla Blastcaps - 374211 - Channel: Make Explosive Duck [DNT]
(@CGUID+955, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Cracked Elemental - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+957, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '382660'), -- Ruby Dragonspawn - 382660 - Channel: Hold Dragon Tablet (+Broom) [DNT]
(@CGUID+959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374319'), -- Grun Ashbeard - 374319 - Channel: Hold Blacksmith Hammer [DNT]
(@CGUID+960, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383210'), -- Ruby Dragonspawn - 383210 - Channel: Read Floating Book (Dragon) (RedFX) [DNT]
(@CGUID+962, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369391'), -- Ruby Drakonid - 369391 - Channel: Work With Hammer [DNT]
(@CGUID+964, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '177766 376969'), -- Veeno - 177766 - Levitate, 376969 - Cosmetic - Spell Hands [DNT]
(@CGUID+965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '374127'), -- Xelendus Felwatcher - 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT]
(@CGUID+968, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383215'), -- Ruby Drakonid - 383215 - Channel: Hold Planter [DNT]
(@CGUID+969, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- Ruby Dragonspawn - 383207 - Conversation Aura: Talk/Exclamation [DNT]
(@CGUID+971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Restless Explorer - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+973, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '382661'), -- Brave Researcher - 382661 - Channel: Control Magical Tools (Arcane) [DNT]
(@CGUID+976, 0, 0, 0, 0, 0, 1, 0, 0, 15056, 0, 0, 0, ''), -- Head Chef Stacks
(@CGUID+977, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- Sous-Chef Butterfingers - 383207 - Conversation Aura: Talk/Exclamation [DNT]
(@CGUID+978, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- Brave Researcher - 371815 - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(@CGUID+980, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guarantor
(@CGUID+981, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474 376838'), -- Cracked Elemental - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune), 376838 - Burning [DNT]
(@CGUID+982, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+983, 0, 0, 0, 0, 0, 0, 0, 887, 15430, 0, 0, 0, ''), -- Toht Twofingers
(@CGUID+984, 0, 0, 0, 0, 0, 0, 0, 887, 15430, 0, 0, 0, ''), -- Emilia Bellocq
(@CGUID+985, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- Expedition Guardian
(@CGUID+986, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Earth Elemental - 151597 - No NPC Damage Below 45-90%
(@CGUID+988, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374127'), -- Brave Researcher - 374127 - Channel: Inspect Artifact (Dragon Tablet) [DNT]
(@CGUID+989, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+991, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+992, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Lava Elemental - 151597 - No NPC Damage Below 45-90%
(@CGUID+993, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+996, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+997, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+998, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+999, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375029'), -- Primal Earth Elemental - 375029 - Channel: Earthquake Tremors [DNT]
(@CGUID+1001, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1002, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1003, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+1004, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1011, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+1012, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1013, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+1014, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1016, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+1017, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+1018, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+1019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- The Rugged Dragonscale
(@CGUID+1020, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- (Bunny) Sessile + Gigantic AOI
(@CGUID+1021, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1025, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376861'), -- Primal Lava Elemental - 376861 - Channel: Lava (ChannelCastOmni) [DNT]
(@CGUID+1026, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1027, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1028, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1034, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376765'), -- Baron Ashflow - 376765 - Channel: Lavastorm [DNT]
(@CGUID+1035, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1036, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- Hungry Proto-Dragon - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1037, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1040, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1041, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '125467'), -- Ancient Proto-Dragon - 125467 - Root Self (Permanent)
(@CGUID+1042, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Ancient Proto-Dragon
(@CGUID+1043, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Ancient Proto-Dragon
(@CGUID+1046, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1048, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1050, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1051, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376861'), -- Primal Lava Elemental - 376861 - Channel: Lava (ChannelCastOmni) [DNT]
(@CGUID+1052, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1053, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1054, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1055, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1056, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1057, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1058, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1061, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1064, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bronze Timekeeper Assistant
(@CGUID+1068, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1069, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1070, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1072, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1075, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+1081, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Lava Elemental - 151597 - No NPC Damage Below 45-90%
(@CGUID+1082, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1083, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1084, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375412'), -- Baron Crustcore - 375412 - Channel: Earth Spikes [DNT]
(@CGUID+1085, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1086, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT]
(@CGUID+1087, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375029'), -- Primal Earth Elemental - 375029 - Channel: Earthquake Tremors [DNT]
(@CGUID+1088, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1089, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375029'), -- Primal Earth Elemental - 375029 - Channel: Earthquake Tremors [DNT]
(@CGUID+1096, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1097, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1098, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133 370034'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT], 370034 - Lava Pool
(@CGUID+1100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1101, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1102, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Encroaching Lava - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+1104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1106, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- Encroaching Lava - 370034 - Lava Pool
(@CGUID+1107, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Dreadsquall Hatchling
(@CGUID+1108, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Dreadsquall Hatchling
(@CGUID+1115, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Dreadsquall Hatchling
(@CGUID+1125, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Dreadsquall Hatchling
(@CGUID+1128, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Wild Argali
(@CGUID+1131, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376861'), -- Primal Lava Elemental - 376861 - Channel: Lava (ChannelCastOmni) [DNT]
(@CGUID+1134, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '385038'), -- Dragon Glyph - 385038 - Visual
(@CGUID+1136, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Argali Lamb
(@CGUID+1137, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph
(@CGUID+1139, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '160868'), -- Ruby Fallen - 160868 - Set Health (Uses Override Points) - Emote State: Dead
(@CGUID+1141, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '160868'), -- Ruby Fallen - 160868 - Set Health (Uses Override Points) - Emote State: Dead
(@CGUID+1144, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '160868'), -- Ruby Fallen - 160868 - Set Health (Uses Override Points) - Emote State: Dead
(@CGUID+1152, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Wild Argali
(@CGUID+1153, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '160868'), -- Ruby Fallen - 160868 - Set Health (Uses Override Points) - Emote State: Dead
(@CGUID+1155, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Wild Argali
(@CGUID+1157, 0, 0, 0, 0, 0, 1, 0, 375, 0, 0, 0, 0, ''), -- Ruby Warden
(@CGUID+1158, 0, 0, 0, 0, 0, 1, 0, 375, 0, 0, 0, 0, ''), -- Ruby Warden
(@CGUID+1163, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+1164, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+1168, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '70628'), -- Ruby Watcher - 70628 - Permanent Feign Death
(@CGUID+1172, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+1179, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Earth Elemental - 151597 - No NPC Damage Below 45-90%
(@CGUID+1181, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376861'), -- Primal Lava Elemental - 376861 - Channel: Lava (ChannelCastOmni) [DNT]
(@CGUID+1183, 0, 0, 0, 0, 0, 1, 0, 469, 0, 0, 0, 0, ''), -- Summoned Typhoon
(@CGUID+1188, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+1189, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1190, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1191, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1194, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- Primal Proto-Drake - 151597 - No NPC Damage Below 45-90%
(@CGUID+1197, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1198, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1199, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1200, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1201, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1202, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1206, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- Pricklefury Hare - 386221 - Tormented [DNT]
(@CGUID+1208, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+1209, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+1212, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+1218, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1221, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+1222, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+1223, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '377133'), -- Primal Proto-Drake - 377133 - Damage Taken Reduced by 97% [DNT]
(@CGUID+1224, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''), -- Distressed Marmoni
(@CGUID+1225, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1226, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1227, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1228, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- Primal Proto-Drake - 373366 - Channel: Perch [DNT]
(@CGUID+1229, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1230, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1231, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1232, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1233, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1235, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1236, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1237, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, '373362'); -- Primal Proto-Whelp - 373362 - Sparring Aura: AttackUnarmed/DragonSpit [DNT]

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+1244 AND @CGUID+1251;
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+1244, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+1245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+1246, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- Primal Proto-Whelp - 373312 - Channel: Whelp Eating [DNT]
(@CGUID+1247, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1248, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1249, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Primal Proto-Whelp
(@CGUID+1250, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5001, 0, 0, ''), -- Primal Proto-Drake
(@CGUID+1251, 0, 0, 0, 0, 0, 1, 0, 431, 0, 0, 0, 0, ''); -- Distressed Marmoni

DELETE FROM `creature_template_addon` WHERE `entry` IN (171719 /*171719 (Spirited Skyfoal) - Battle Pet Periodic*/, 26125 /*26125 (Risen Ghoul) - Avoidance, Enfeeble, Death Knight Unholy Class Set 4pc*/, 188860 /*188860 (Whirglgurgl) - Ride Vehicle Hardcoded*/, 189307 /*189307 (Skitterfly)*/, 186593 /*186593 (Ruby Watcher) - Permanent Feign Death*/, 191809 /*191809 (Tiny Butterfly)*/, 191721 /*191721 (Ruby Fallen) - Set Health (Uses Override Points) - Emote State: Dead*/, 198618 /*198618 (Tracker Dragon Glyph)*/, 194972 /*194972 (Dragon Glyph) - Visual*/, 191830 /*191830 (Dreadsquall Hatchling)*/, 192266 /*192266 (Baron Crustcore) - Channel: Earth Spikes [DNT]*/, 198191 /*198191 (Bronze Timekeeper Assistant)*/, 192274 /*192274 (Baron Ashflow) - Channel: Lavastorm [DNT]*/, 187326 /*187326 (Encroaching Lava) - Lava Pool*/, 187321 /*187321 (Primal Lava Elemental) - No NPC Damage Below 45-90%*/, 187322 /*187322 (Primal Earth Elemental) - No NPC Damage Below 45-90%*/, 193915 /*193915 (Emilia Bellocq)*/, 193914 /*193914 (Toht Twofingers)*/, 192227 /*192227 (Encroaching Lava) - Lava Pool*/, 191946 /*191946 (Cracked Elemental) - Permanent Feign Death (NO Stun, Untrackable, Immune), Burning [DNT]*/, 198095 /*198095 (Sous-Chef Butterfingers) - Conversation Aura: Talk/Exclamation [DNT]*/, 198094 /*198094 (Head Chef Stacks)*/, 193928 /*193928 (Brave Researcher) - Channel: Control Magical Tools (Arcane) [DNT]*/, 190571 /*190571 (Xelendus Felwatcher) - Channel: Inspect Artifact (Dragon Tablet) [DNT]*/, 192055 /*192055 (Veeno) - Levitate, Cosmetic - Spell Hands [DNT]*/, 194238 /*194238 (Ruby Drakonid) - Channel: Work With Hammer [DNT]*/, 187261 /*187261 (Grun Ashbeard) - Channel: Hold Blacksmith Hammer [DNT]*/, 193913 /*193913 (Ruby Dragonspawn) - Channel: Hold Dragon Tablet (+Broom) [DNT]*/, 192407 /*192407 (Cracked Elemental) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 190535 /*190535 (Quizla Blastcaps) - Channel: Make Explosive Duck [DNT]*/, 193838 /*193838 (Vish the Sneak) - Stealth, Carrying Crate*/, 190577 /*190577 (Tellywin Sharpfizzle)*/, 185774 /*185774 (Dallio Morelli) - Stealth*/, 192563 /*192563 (Kholmar Sunrunner) - Channel: Work on Molten Ore (Dwarf Male) [DNT]*/, 198398 /*198398 (Misty Catseye)*/, 185773 /*185773 (Elia Bladeleaf) - Stealth*/, 193858 /*193858 (Expedition Surveyor) - Spyglass*/, 187193 /*187193 (Brave Researcher) - Conversation Aura: Talk/Question/Flex/Laugh [DNT]*/, 187196 /*187196 (Rugged Artisan) - Conversation Aura: Talk/Question/Flex/Laugh [DNT]*/, 192549 /*192549 (Feilin Kuan)*/, 194236 /*194236 (Ruby Dragonspawn) - Conversation Aura: Talk/Exclamation [DNT]*/, 416 /*416 (Imp) - Override Command Demon, Avoidance, Soul Link*/, 193362 /*193362 (Sendrax)*/, 187121 /*187121 (Expedition Guarantor) - Channel: Arcane (MagReadySpellCast) [DNT]*/, 187194 /*187194 (Restless Explorer)*/, 180538 /*180538 ((Bunny) Sessile + Large AOI)*/, 197503 /*197503 (The Rugged Dragonscale)*/, 190753 /*190753 (Bronze Timekeeper) - Cosmetic Race Flag Overhead*/, 194982 /*194982 (Dragon Glyph) - Visual*/, 202585 /*202585 (Tracker Dragon Glyph)*/, 190516 /*190516 (Ephra Breezewood) - Channel: Hold Lantern (Reliquary) (Undead Female Only) [DNT]*/, 184814 /*184814 (Rugged Artisan) - Channel: Hold Jewelry Box(Dragon) + TalkQuestion [DNT]*/, 184812 /*184812 (Restless Explorer) - Channel: Hold Compass + TalkQuestion (Reliquary) [DNT]*/, 187062 /*187062 (Expedition Guarantor)*/, 188057 /*188057 (Curious Marmoni) - Hanging [DNT]*/, 189798 /*189798 (Ancient Proto-Dragon) - Root Self (Permanent)*/, 193917 /*193917 (Ruby Drakonid) - Channel: Work With Hammer [DNT]*/, 187061 /*187061 (Expedition Guarantor)*/, 188028 /*188028 (Salty Salamander) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 184862 /*184862 (Primal Proto-Whelp) - Channel: Whelp Eating [DNT]*/, 184813 /*184813 (Brave Researcher) - Channel: SitChairMed + Read (Reliquary) [DNT]*/, 190524 /*190524 (Mora Cloudwalker) - Fishing (Tuskarr Pole + Highmountain Bobber) [DNT]*/, 198299 /*198299 (Happy Swoglet) - Ride Vehicle Hardcoded, Happy Hornswog [DNT]*/, 190056 /*190056 (Primal Proto-Drake) - Channel: Perch [DNT]*/, 189801 /*189801 (Ancient Proto-Dragon)*/, 198622 /*198622 (Tracker Dragon Glyph)*/, 194695 /*194695 (Dragon Glyph) - Visual*/, 191104 /*191104 (Primal Scythid) - No NPC Damage Below 45-90%*/, 184851 /*184851 (Lava Snail) - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)*/, 191169 /*191169 (Expedition Guardian)*/, 190741 /*190741 (Primal Proto-Dragon) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 195502 /*195502 (Pricklefury Hare) - Tormented [DNT]*/, 190565 /*190565 (Distressed Marmoni) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 184869 /*184869 (Primal Proto-Drake) - No NPC Damage Below 45-90%*/, 184855 /*184855 (Salty Skitterfly)*/, 195795 /*195795 (Ancient Proto-Dragon) - Dragonriding: Anim Replacements [DNT]*/, 184286 /*184286 (Captain Caspartine) - Channel: Look Through Spyglass (Nightborne Male) [DNT]*/, 195796 /*195796 (Primal Proto-Drake) - Dragonriding: Anim Replacements [DNT]*/, 190532 /*190532 (Kite)*/, 184807 /*184807 (The Defiant Dragonscale)*/, 197611 /*197611 ((Bunny) Sessile + Gigantic AOI)*/, 165189 /*165189 (Generic Hunter Pet) - Pet Active, Pet Damage, Pet Health, Hunter Pet, Avoidance, Kindred Spirits, Predator's Thirst*/, 193876 /*193876 (Primal Proto-Whelp)*/, 193806 /*193806 (Primal Proto-Drake)*/, 187123 /*187123 (Expedition Guardian)*/, 184861 /*184861 (Distressed Marmoni) - Hanging [DNT]*/, 190587 /*190587 (Ancient Proto-Dragon) - Channel: Sleep (With Aggro Change) [DNT]*/, 184857 /*184857 (Rambunctious Tideskipper) - Dolphin Swimming [DNT]*/, 189554 /*189554 (Expedition Provisioner) - Channel: Carry Reliquary Supplies (Crate,Barrel,Jar,Books) [DNT], Ride Vehicle (Bypass Immunities)*/, 187120 /*187120 (Hungry Proto-Dragon) - Dragonriding: Anim Replacements [DNT]*/, 191148 /*191148 (Kite)*/, 193811 /*193811 (Primal Proto-Drake)*/, 188027 /*188027 (Salty Salamander) - Channel: Sleep Zzz (With Aggro Change) - Breath*/, 187412 /*187412 (Happy Hal)*/, 193816 /*193816 (Primal Proto-Drake) - Channel: FlySitGround [DNT]*/, 184856 /*184856 (Salty Skitterbug)*/, 187135 /*187135 (Expedition Guardian)*/, 1860 /*1860 (Voidwalker) - Override Command Demon, Avoidance*/, 194671 /*194671 (Elsa Donovan)*/, 195830 /*195830 (Expedition Provisioner) - Channel: Carry Explorers League Supplies (Crate,Barrel,Jug,Scrolls) [DNT], Ride Vehicle (Bypass Immunities)*/, 194674 /*194674 (Expedition Provisioner) - 8.0 Carry Two Chest Stack*/);
INSERT INTO `creature_template_addon` (`entry`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(188860, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- 188860 (Whirglgurgl) - Ride Vehicle Hardcoded
(189307, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 189307 (Skitterfly)
(186593, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '70628'), -- 186593 (Ruby Watcher) - Permanent Feign Death
(191809, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 191809 (Tiny Butterfly)
(191721, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '160868'), -- 191721 (Ruby Fallen) - Set Health (Uses Override Points) - Emote State: Dead
(198618, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 198618 (Tracker Dragon Glyph)
(194972, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '385038'), -- 194972 (Dragon Glyph) - Visual
(191830, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 191830 (Dreadsquall Hatchling)
(192266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375412'), -- 192266 (Baron Crustcore) - Channel: Earth Spikes [DNT]
(198191, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 198191 (Bronze Timekeeper Assistant)
(192274, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '376765'), -- 192274 (Baron Ashflow) - Channel: Lavastorm [DNT]
(187326, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- 187326 (Encroaching Lava) - Lava Pool
(187321, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- 187321 (Primal Lava Elemental) - No NPC Damage Below 45-90%
(187322, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- 187322 (Primal Earth Elemental) - No NPC Damage Below 45-90%
(193915, 0, 0, 0, 0, 0, 0, 0, 0, 15430, 0, 0, 0, ''), -- 193915 (Emilia Bellocq)
(193914, 0, 0, 0, 0, 0, 0, 0, 0, 15430, 0, 0, 0, ''), -- 193914 (Toht Twofingers)
(192227, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370034'), -- 192227 (Encroaching Lava) - Lava Pool
(191946, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474 376838'), -- 191946 (Cracked Elemental) - Permanent Feign Death (NO Stun, Untrackable, Immune), Burning [DNT]
(198095, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- 198095 (Sous-Chef Butterfingers) - Conversation Aura: Talk/Exclamation [DNT]
(198094, 0, 0, 0, 0, 0, 1, 0, 0, 15056, 0, 0, 0, ''), -- 198094 (Head Chef Stacks)
(193928, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '382661'), -- 193928 (Brave Researcher) - Channel: Control Magical Tools (Arcane) [DNT]
(190571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '374127'), -- 190571 (Xelendus Felwatcher) - Channel: Inspect Artifact (Dragon Tablet) [DNT]
(192055, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '177766 376969'), -- 192055 (Veeno) - Levitate, Cosmetic - Spell Hands [DNT]
(194238, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369391'), -- 194238 (Ruby Drakonid) - Channel: Work With Hammer [DNT]
(187261, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374319'), -- 187261 (Grun Ashbeard) - Channel: Hold Blacksmith Hammer [DNT]
(193913, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '382660'), -- 193913 (Ruby Dragonspawn) - Channel: Hold Dragon Tablet (+Broom) [DNT]
(192407, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 192407 (Cracked Elemental) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(190535, 0, 0, 0, 0, 0, 1, 0, 0, 14000, 0, 0, 0, '374211'), -- 190535 (Quizla Blastcaps) - Channel: Make Explosive Duck [DNT]
(193838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '286996 372485'), -- 193838 (Vish the Sneak) - Stealth, Carrying Crate
(190577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 190577 (Tellywin Sharpfizzle)
(185774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '228928'), -- 185774 (Dallio Morelli) - Stealth
(192563, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386924'), -- 192563 (Kholmar Sunrunner) - Channel: Work on Molten Ore (Dwarf Male) [DNT]
(198398, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 198398 (Misty Catseye)
(185773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '228928'), -- 185773 (Elia Bladeleaf) - Stealth
(193858, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '396292'), -- 193858 (Expedition Surveyor) - Spyglass
(187193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- 187193 (Brave Researcher) - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(187196, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371815'), -- 187196 (Rugged Artisan) - Conversation Aura: Talk/Question/Flex/Laugh [DNT]
(192549, 0, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 192549 (Feilin Kuan)
(194236, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383207'), -- 194236 (Ruby Dragonspawn) - Conversation Aura: Talk/Exclamation [DNT]
(193362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- 193362 (Sendrax)
(187121, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369812'), -- 187121 (Expedition Guarantor) - Channel: Arcane (MagReadySpellCast) [DNT]
(187194, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 187194 (Restless Explorer)
(180538, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 3, ''), -- 180538 ((Bunny) Sessile + Large AOI)
(197503, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 197503 (The Rugged Dragonscale)
(190753, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, '370243'), -- 190753 (Bronze Timekeeper) - Cosmetic Race Flag Overhead
(194982, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '385044'), -- 194982 (Dragon Glyph) - Visual
(202585, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 202585 (Tracker Dragon Glyph)
(190516, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374171'), -- 190516 (Ephra Breezewood) - Channel: Hold Lantern (Reliquary) (Undead Female Only) [DNT]
(184814, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374209'), -- 184814 (Rugged Artisan) - Channel: Hold Jewelry Box(Dragon) + TalkQuestion [DNT]
(184812, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374128'), -- 184812 (Restless Explorer) - Channel: Hold Compass + TalkQuestion (Reliquary) [DNT]
(187062, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 187062 (Expedition Guarantor)
(188057, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- 188057 (Curious Marmoni) - Hanging [DNT]
(189798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '125467'), -- 189798 (Ancient Proto-Dragon) - Root Self (Permanent)
(193917, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '369391'), -- 193917 (Ruby Drakonid) - Channel: Work With Hammer [DNT]
(187061, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 187061 (Expedition Guarantor)
(188028, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 188028 (Salty Salamander) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(184862, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373312'), -- 184862 (Primal Proto-Whelp) - Channel: Whelp Eating [DNT]
(184813, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374107'), -- 184813 (Brave Researcher) - Channel: SitChairMed + Read (Reliquary) [DNT]
(190524, 0, 0, 0, 0, 0, 1, 0, 0, 24592, 0, 0, 0, '374191'), -- 190524 (Mora Cloudwalker) - Fishing (Tuskarr Pole + Highmountain Bobber) [DNT]
(198299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598 393269'), -- 198299 (Happy Swoglet) - Ride Vehicle Hardcoded, Happy Hornswog [DNT]
(190056, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373366'), -- 190056 (Primal Proto-Drake) - Channel: Perch [DNT]
(189801, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 189801 (Ancient Proto-Dragon)
(198622, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 198622 (Tracker Dragon Glyph)
(194695, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '384378'), -- 194695 (Dragon Glyph) - Visual
(191104, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- 191104 (Primal Scythid) - No NPC Damage Below 45-90%
(184851, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374310'), -- 184851 (Lava Snail) - Channel: Sleep Zzz (With Aggro Change) - Submerged (Scale 2, Up 2)
(191169, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 191169 (Expedition Guardian)
(190741, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 190741 (Primal Proto-Dragon) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(195502, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386221'), -- 195502 (Pricklefury Hare) - Tormented [DNT]
(190565, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 190565 (Distressed Marmoni) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(184869, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '151597'), -- 184869 (Primal Proto-Drake) - No NPC Damage Below 45-90%
(184855, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 184855 (Salty Skitterfly)
(195795, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- 195795 (Ancient Proto-Dragon) - Dragonriding: Anim Replacements [DNT]
(184286, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 4, '372498'), -- 184286 (Captain Caspartine) - Channel: Look Through Spyglass (Nightborne Male) [DNT]
(195796, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- 195796 (Primal Proto-Drake) - Dragonriding: Anim Replacements [DNT]
(190532, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 190532 (Kite)
(184807, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 184807 (The Defiant Dragonscale)
(197611, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 197611 ((Bunny) Sessile + Gigantic AOI)
(193876, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 193876 (Primal Proto-Whelp)
(193806, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 193806 (Primal Proto-Drake)
(187123, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 187123 (Expedition Guardian)
(184861, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374094'), -- 184861 (Distressed Marmoni) - Hanging [DNT]
(190587, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374315'), -- 190587 (Ancient Proto-Dragon) - Channel: Sleep (With Aggro Change) [DNT]
(184857, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '365868'), -- 184857 (Rambunctious Tideskipper) - Dolphin Swimming [DNT]
(189554, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '372741 98251'), -- 189554 (Expedition Provisioner) - Channel: Carry Reliquary Supplies (Crate,Barrel,Jar,Books) [DNT], Ride Vehicle (Bypass Immunities)
(187120, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373750'), -- 187120 (Hungry Proto-Dragon) - Dragonriding: Anim Replacements [DNT]
(191148, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 191148 (Kite)
(193811, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 193811 (Primal Proto-Drake)
(188027, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- 188027 (Salty Salamander) - Channel: Sleep Zzz (With Aggro Change) - Breath
(187412, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 187412 (Happy Hal)
(193816, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '385801'), -- 193816 (Primal Proto-Drake) - Channel: FlySitGround [DNT]
(184856, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 184856 (Salty Skitterbug)
(187135, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 187135 (Expedition Guardian)
(194671, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 194671 (Elsa Donovan)
(195830, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '386797 98251'), -- 195830 (Expedition Provisioner) - Channel: Carry Explorers League Supplies (Crate,Barrel,Jug,Scrolls) [DNT], Ride Vehicle (Bypass Immunities)
(194674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '273098'); -- 194674 (Expedition Provisioner) - 8.0 Carry Two Chest Stack

UPDATE `creature_template_difficulty` SET `ContentTuningID`=371, `VerifiedBuild`=65299 WHERE (`Entry`=171719 AND `DifficultyID`=0); -- 171719 (Spirited Skyfoal) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=188860 AND `DifficultyID`=0); -- 188860 (Whirglgurgl) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195032 AND `DifficultyID`=0); -- 195032 (Qalashi Djaradin) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190144 AND `DifficultyID`=0); -- 190144 (Fretful Riverbeast Elder) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=195037 AND `DifficultyID`=0); -- 195037 (Ruby Watcher) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=189307 AND `DifficultyID`=0); -- 189307 (Skitterfly) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000100, `VerifiedBuild`=65299 WHERE (`Entry`=186593 AND `DifficultyID`=0); -- 186593 (Ruby Watcher) - Sessile, CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=191809 AND `DifficultyID`=0); -- 191809 (Tiny Butterfly) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186577 AND `DifficultyID`=0); -- 186577 (Ruby Searer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186582 AND `DifficultyID`=0); -- 186582 (Ruby Warden) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187442 AND `DifficultyID`=0); -- 187442 (Waking Duck) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186584 AND `DifficultyID`=0); -- 186584 (Commander Lethanak) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195303 AND `DifficultyID`=0); -- 195303 (Mender Eskros) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191721 AND `DifficultyID`=0); -- 191721 (Ruby Fallen) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198618 AND `DifficultyID`=0); -- 198618 (Tracker Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=194972 AND `DifficultyID`=0); -- 194972 (Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191553 AND `DifficultyID`=0); -- 191553 (Wild Argali) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191554 AND `DifficultyID`=0); -- 191554 (Argali Lamb) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191818 AND `DifficultyID`=0); -- 191818 (Shaggy Rabbit) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=191830 AND `DifficultyID`=0); -- 191830 (Dreadsquall Hatchling) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192266 AND `DifficultyID`=0); -- 192266 (Baron Crustcore) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=198191 AND `DifficultyID`=0); -- 198191 (Bronze Timekeeper Assistant) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192274 AND `DifficultyID`=0); -- 192274 (Baron Ashflow) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=371, `VerifiedBuild`=65299 WHERE (`Entry`=83594 AND `DifficultyID`=0); -- 83594 (Nightshade Sproutling) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187326 AND `DifficultyID`=0); -- 187326 (Encroaching Lava) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193001 AND `DifficultyID`=0); -- 193001 (Kindlet) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2151, `VerifiedBuild`=65299 WHERE (`Entry`=202415 AND `DifficultyID`=0); -- 202415 (Invisible Bunny - Cave Entrance) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192137 AND `DifficultyID`=0); -- 192137 (Lava Flick) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187321 AND `DifficultyID`=0); -- 187321 (Primal Lava Elemental) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187322 AND `DifficultyID`=0); -- 187322 (Primal Earth Elemental) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193915 AND `DifficultyID`=0); -- 193915 (Emilia Bellocq) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193914 AND `DifficultyID`=0); -- 193914 (Toht Twofingers) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192227 AND `DifficultyID`=0); -- 192227 (Encroaching Lava) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191946 AND `DifficultyID`=0); -- 191946 (Cracked Elemental) - CanSwim
UPDATE `creature_template_difficulty` SET `VerifiedBuild`=65299 WHERE (`DifficultyID`=0 AND `Entry` IN (198392,198380,192558,193838,192565,185774,198398,184450,184449,185773,192549,62822,62821,197503,190753,43499,195260,184807,191148,194652,194688));
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=198095 AND `DifficultyID`=0); -- 198095 (Sous-Chef Butterfingers) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=198094 AND `DifficultyID`=0); -- 198094 (Head Chef Stacks) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192490 AND `DifficultyID`=0); -- 192490 (Tixxa Mixxa) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193928 AND `DifficultyID`=0); -- 193928 (Brave Researcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193393 AND `DifficultyID`=0); -- 193393 (Ambassador Fastrasz) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190571 AND `DifficultyID`=0); -- 190571 (Xelendus Felwatcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=192055 AND `DifficultyID`=0); -- 192055 (Veeno) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192207 AND `DifficultyID`=0); -- 192207 (Sihua) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194238 AND `DifficultyID`=0); -- 194238 (Ruby Drakonid) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187257 AND `DifficultyID`=0); -- 187257 (Aster Cloudgaze) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187261 AND `DifficultyID`=0); -- 187261 (Grun Ashbeard) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192210 AND `DifficultyID`=0); -- 192210 (Mia Pyke) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193913 AND `DifficultyID`=0); -- 193913 (Ruby Dragonspawn) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192407 AND `DifficultyID`=0); -- 192407 (Cracked Elemental) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=190535 AND `DifficultyID`=0); -- 190535 (Quizla Blastcaps) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190577 AND `DifficultyID`=0); -- 190577 (Tellywin Sharpfizzle) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192048 AND `DifficultyID`=0); -- 192048 (Deirdre Flemmin) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187255 AND `DifficultyID`=0); -- 187255 (Pathfinder Poppy) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187253 AND `DifficultyID`=0); -- 187253 (Spelunker Lazee) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=192563 AND `DifficultyID`=0); -- 192563 (Kholmar Sunrunner) - Sessile, Floating - CannotTurn
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2309, `StaticFlags1`=0x20000100, `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=198386 AND `DifficultyID`=0); -- 198386 (Scouting Map) - Sessile, Floating - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193858 AND `DifficultyID`=0); -- 193858 (Expedition Surveyor) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184451 AND `DifficultyID`=0); -- 184451 (Shuja Grimaxe) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184452 AND `DifficultyID`=0); -- 184452 (Warlord Breka Grimaxe) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=193707 AND `DifficultyID`=0); -- 193707 (Surveyor's Disc) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194236 AND `DifficultyID`=0); -- 194236 (Ruby Dragonspawn) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187254 AND `DifficultyID`=0); -- 187254 (Archivist Spearblossom) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=199336 AND `DifficultyID`=0); -- 199336 (Kerazal) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193362 AND `DifficultyID`=0); -- 193362 (Sendrax) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187121 AND `DifficultyID`=0); -- 187121 (Expedition Guarantor) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187125 AND `DifficultyID`=0); -- 187125 (Expedition Guardian) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187194 AND `DifficultyID`=0); -- 187194 (Restless Explorer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198363 AND `DifficultyID`=0); -- 198363 ((Bunny) Crow's Nest [DNT]) - Sessile, Floating - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187193 AND `DifficultyID`=0); -- 187193 (Brave Researcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187196 AND `DifficultyID`=0); -- 187196 (Rugged Artisan) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184639 AND `DifficultyID`=0); -- 184639 (Eager Acquisitionist) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187414 AND `DifficultyID`=0); -- 187414 (Summoned Typhoon) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189094 AND `DifficultyID`=0); -- 189094 (Magma Slug) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2151, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187111 AND `DifficultyID`=0); -- 187111 (Ancient Hornswog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=180538 AND `DifficultyID`=0); -- 180538 ((Bunny) Sessile + Large AOI) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184867 AND `DifficultyID`=0); -- 184867 (Fussy Swoglet) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=194982 AND `DifficultyID`=0); -- 194982 (Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2078, `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=202585 AND `DifficultyID`=0); -- 202585 (Tracker Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2151, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190516 AND `DifficultyID`=0); -- 190516 (Ephra Breezewood) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184814 AND `DifficultyID`=0); -- 184814 (Rugged Artisan) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184812 AND `DifficultyID`=0); -- 184812 (Restless Explorer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187403 AND `DifficultyID`=0); -- 187403 (Sil'nori Crestshade) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187062 AND `DifficultyID`=0); -- 187062 (Expedition Guarantor) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=188057 AND `DifficultyID`=0); -- 188057 (Curious Marmoni) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000100, `VerifiedBuild`=65299 WHERE (`Entry`=189798 AND `DifficultyID`=0); -- 189798 (Ancient Proto-Dragon) - Sessile, CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193917 AND `DifficultyID`=0); -- 193917 (Ruby Drakonid) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187061 AND `DifficultyID`=0); -- 187061 (Expedition Guarantor) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188028 AND `DifficultyID`=0); -- 188028 (Salty Salamander) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195597 AND `DifficultyID`=0); -- 195597 (Primal Proto-Whelp) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184862 AND `DifficultyID`=0); -- 184862 (Primal Proto-Whelp) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184813 AND `DifficultyID`=0); -- 184813 (Brave Researcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190524 AND `DifficultyID`=0); -- 190524 (Mora Cloudwalker) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191060 AND `DifficultyID`=0); -- 191060 (Fussy Swoglet) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=196954 AND `DifficultyID`=0); -- 196954 (Guff Runetotem) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=198299 AND `DifficultyID`=0); -- 198299 (Happy Swoglet) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195639 AND `DifficultyID`=0); -- 195639 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190056 AND `DifficultyID`=0); -- 190056 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=189801 AND `DifficultyID`=0); -- 189801 (Ancient Proto-Dragon) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192143 AND `DifficultyID`=0); -- 192143 (Baby Sea Turtle) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192142 AND `DifficultyID`=0); -- 192142 (Sea Turtle) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192153 AND `DifficultyID`=0); -- 192153 (Baby Octopus) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192132 AND `DifficultyID`=0); -- 192132 (Depths Eel) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x0, `VerifiedBuild`=65299 WHERE (`Entry`=61158 AND `DifficultyID`=0); -- 61158 (Shore Crab) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184853 AND `DifficultyID`=0); -- 184853 (Primal Scythid Queen) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198622 AND `DifficultyID`=0); -- 198622 (Tracker Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=194695 AND `DifficultyID`=0); -- 194695 (Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193000 AND `DifficultyID`=0); -- 193000 (Kindlet) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191104 AND `DifficultyID`=0); -- 191104 (Primal Scythid) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193024 AND `DifficultyID`=0); -- 193024 (Emberling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193026 AND `DifficultyID`=0); -- 193026 (Emberling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192104 AND `DifficultyID`=0); -- 192104 (Magma Slug) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184851 AND `DifficultyID`=0); -- 184851 (Lava Snail) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=883, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191169 AND `DifficultyID`=0); -- 191169 (Expedition Guardian) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190741 AND `DifficultyID`=0); -- 190741 (Primal Proto-Dragon) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195502 AND `DifficultyID`=0); -- 195502 (Pricklefury Hare) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190565 AND `DifficultyID`=0); -- 190565 (Distressed Marmoni) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195577 AND `DifficultyID`=0); -- 195577 (Primal Proto-Whelp) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184869 AND `DifficultyID`=0); -- 184869 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=184855 AND `DifficultyID`=0); -- 184855 (Salty Skitterfly) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=195795 AND `DifficultyID`=0); -- 195795 (Ancient Proto-Dragon) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192149 AND `DifficultyID`=0); -- 192149 (River Frillfish) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184286 AND `DifficultyID`=0); -- 184286 (Captain Caspartine) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=195796 AND `DifficultyID`=0); -- 195796 (Primal Proto-Drake) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190526 AND `DifficultyID`=0); -- 190526 (Jaffe Cloudwalker) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192148 AND `DifficultyID`=0); -- 192148 (Tranquil Tideskipper) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195241 AND `DifficultyID`=0); -- 195241 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=190532 AND `DifficultyID`=0); -- 190532 (Kite) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192151 AND `DifficultyID`=0); -- 192151 (Smoothfin Mantacorn) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=197611 AND `DifficultyID`=0); -- 197611 ((Bunny) Sessile + Gigantic AOI) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=198367 AND `DifficultyID`=0); -- 198367 ((Bunny) Crow's Nest [DNT]) - Sessile, Floating - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187140 AND `DifficultyID`=0); -- 187140 (Cantankerous Hornswog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188904 AND `DifficultyID`=0); -- 188904 (John Stelle III) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193876 AND `DifficultyID`=0); -- 193876 (Primal Proto-Whelp) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187123 AND `DifficultyID`=0); -- 187123 (Expedition Guardian) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=184861 AND `DifficultyID`=0); -- 184861 (Distressed Marmoni) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190587 AND `DifficultyID`=0); -- 190587 (Ancient Proto-Dragon) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=197743 AND `DifficultyID`=0); -- 197743 (Xingief) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=184857 AND `DifficultyID`=0); -- 184857 (Rambunctious Tideskipper) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=189554 AND `DifficultyID`=0); -- 189554 (Expedition Provisioner) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187120 AND `DifficultyID`=0); -- 187120 (Hungry Proto-Dragon) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191150 AND `DifficultyID`=0); -- 191150 (Danielle Anglers) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193811 AND `DifficultyID`=0); -- 193811 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194681 AND `DifficultyID`=0); -- 194681 (Maoli) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191161 AND `DifficultyID`=0); -- 191161 (Waren Gearhart) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188027 AND `DifficultyID`=0); -- 188027 (Salty Salamander) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187412 AND `DifficultyID`=0); -- 187412 (Happy Hal) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193816 AND `DifficultyID`=0); -- 193816 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195242 AND `DifficultyID`=0); -- 195242 (Distressed Marmoni) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x0, `VerifiedBuild`=65299 WHERE (`Entry`=60761 AND `DifficultyID`=0); -- 60761 (Shore Crab) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193806 AND `DifficultyID`=0); -- 193806 (Primal Proto-Drake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=184856 AND `DifficultyID`=0); -- 184856 (Salty Skitterbug) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189093 AND `DifficultyID`=0); -- 189093 (Pricklefury Hare) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=198146 AND `DifficultyID`=0); -- 198146 (Liza Breezewood) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187135 AND `DifficultyID`=0); -- 187135 (Expedition Guardian) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=194650 AND `DifficultyID`=0); -- 194650 (Expedition Scout) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192103 AND `DifficultyID`=0); -- 192103 (Pricklefury Hare) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194671 AND `DifficultyID`=0); -- 194671 (Elsa Donovan) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194685 AND `DifficultyID`=0); -- 194685 (Anaeli) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190575 AND `DifficultyID`=0); -- 190575 (Cariel Roame) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194668 AND `DifficultyID`=0); -- 194668 (Expedition Engineer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195830 AND `DifficultyID`=0); -- 195830 (Expedition Provisioner) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=180701 AND `DifficultyID`=0); -- 180701 ((Bunny) Sessile) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194674 AND `DifficultyID`=0); -- 194674 (Expedition Provisioner) - CanSwim

UPDATE `creature_model_info` SET `VerifiedBuild`=65299 WHERE `DisplayID` IN (95584, 110337, 109524, 101807, 103543, 102776, 103843, 102664, 104045, 104044, 102647, 110464, 104678, 107112, 102654, 104133, 104135, 104138, 104136, 104134, 104137, 100271, 104581, 107777, 102137, 107780, 104527, 104526, 102503, 85039, 85065, 104039, 102508, 110232, 108077, 47711, 108456, 107880, 64313, 108811, 108182, 107162, 107697, 107714, 102749, 90051, 102656, 108264, 107717, 108339, 108858, 102580, 108808, 107915, 89548, 108852, 34635, 107167, 107922, 107696, 106742, 105506, 108868, 107033, 108842, 107918, 110051, 110045, 109009, 109008, 102669, 105505, 108321, 110248, 108846, 110179, 110227, 109011, 109010, 108269, 107909, 102666, 108801, 108810, 107011, 108779, 103508, 106060, 83025, 105917, 81919, 83031, 105918, 42722, 42720, 106061, 110338, 110327, 108813, 110233, 108856, 108455, 102550, 107176, 104496, 103584, 103519, 103954, 107151, 108862, 108869, 108791, 110272, 83049, 110194, 108780, 110229, 109962, 105871, 83042, 106361, 108340, 105842, 108867, 110307, 82141, 106919, 107171, 103999, 103967, 104012, 104009, 104011, 104002, 103932, 103973, 104502, 103930, 103998, 104504, 103968, 32791, 32790, 105190, 104035, 23767, 108033, 104700, 103956, 103969, 104033, 103974, 108050, 108234, 104034, 107173, 8971, 107172, 103529, 103970, 103966, 106884, 82142, 107182, 107152, 103971, 107187, 11686, 27823, 103564, 106703, 103575, 104139, 107179, 105878, 104140, 107174, 107184, 109695, 103955, 110304, 104142, 107183, 89173, 91147, 107350, 107180, 107186, 77686, 90797, 88547, 103366, 35215, 104465, 107181, 45880, 107185, 103576, 106594, 109925, 105870, 108658, 106595, 3432, 110326, 88306, 110330, 58781, 107165, 90672, 80857, 110339, 110325, 105247, 84092, 62588);
UPDATE `creature_model_info` SET `CombatReach`=3.300000190734863281, `VerifiedBuild`=65299 WHERE `DisplayID` IN (110467, 102732, 102739, 102740, 102743);
UPDATE `creature_model_info` SET `BoundingRadius`=0.169745013117790222, `CombatReach`=1.049999952316284179, `VerifiedBuild`=65299 WHERE `DisplayID`=57824;
UPDATE `creature_model_info` SET `CombatReach`=0.5, `VerifiedBuild`=65299 WHERE `DisplayID`=108034;
UPDATE `creature_model_info` SET `CombatReach`=2.40000009536743164, `VerifiedBuild`=65299 WHERE `DisplayID`=107673;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=3.019999980926513671, `VerifiedBuild`=65299 WHERE `DisplayID`=107175;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=3.77500009536743164, `VerifiedBuild`=65299 WHERE `DisplayID`=106997;
UPDATE `creature_model_info` SET `BoundingRadius`=3.025304317474365234, `CombatReach`=4, `VerifiedBuild`=65299 WHERE `DisplayID`=103583;

UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=171719; -- Spirited Skyfoal
UPDATE `creature_template` SET `faction`=35, `speed_walk`=1, `speed_run`=1.142857193946838378, `BaseAttackTime`=1751, `unit_flags2`=0x820 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=188860; -- Whirglgurgl
UPDATE `creature_template` SET `faction`=3295, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=195032; -- Qalashi Djaradin
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=190144; -- Fretful Riverbeast Elder
UPDATE `creature_template` SET `faction`=3277, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x40000000 WHERE `entry`=195037; -- Ruby Watcher
UPDATE `creature_template` SET `faction`=2575, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=189307; -- Skitterfly
UPDATE `creature_template` SET `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=0x2000000, `unit_flags2`=0x800 WHERE `entry`=186593; -- Ruby Watcher
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191809; -- Tiny Butterfly
UPDATE `creature_template` SET `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=186577; -- Ruby Searer
UPDATE `creature_template` SET `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=0x240, `unit_flags2`=0x800 WHERE `entry`=186582; -- Ruby Warden
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=187442; -- Waking Duck
UPDATE `creature_template` SET `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=186584; -- Commander Lethanak
UPDATE `creature_template` SET `faction`=3277, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=195303; -- Mender Eskros
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=0x240, `unit_flags2`=0x800 WHERE `entry`=191721; -- Ruby Fallen
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry` IN (198618, 202585, 198622); -- Tracker Dragon Glyph
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry` IN (194972, 194982, 194695); -- Dragon Glyph
UPDATE `creature_template` SET `faction`=2575, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191553; -- Wild Argali
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191554; -- Argali Lamb
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191818; -- Shaggy Rabbit
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191830; -- Dreadsquall Hatchling
UPDATE `creature_template` SET `faction`=3306, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192266; -- Baron Crustcore
UPDATE `creature_template` SET `faction`=35, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198191; -- Bronze Timekeeper Assistant
UPDATE `creature_template` SET `faction`=3307, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192274; -- Baron Ashflow
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=83594; -- Nightshade Sproutling
UPDATE `creature_template` SET `faction`=3307, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry` IN (187326, 192227); -- Encroaching Lava
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=193001; -- Kindlet
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x1000000 WHERE `entry`=202415; -- Invisible Bunny - Cave Entrance
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192137; -- Lava Flick
UPDATE `creature_template` SET `faction`=3307, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187321; -- Primal Lava Elemental
UPDATE `creature_template` SET `faction`=3309, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=187322; -- Primal Earth Elemental
UPDATE `creature_template` SET `faction`=3270, `npcflag`=131, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193915; -- Emilia Bellocq
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193914; -- Toht Twofingers
UPDATE `creature_template` SET `faction`=3309, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry` IN (191946, 192407); -- Cracked Elemental
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198392; -- An'timon
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198095; -- Sous-Chef Butterfingers
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198094; -- Head Chef Stacks
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198380; -- Journalist Jessamine Spitz
UPDATE `creature_template` SET `faction`=3270, `npcflag`=8193, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192490; -- Tixxa Mixxa
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry` IN (193928, 184813); -- Brave Researcher
UPDATE `creature_template` SET `faction`=3276, `npcflag`=65537, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193393; -- Ambassador Fastrasz
UPDATE `creature_template` SET `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190571; -- Xelendus Felwatcher
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192055; -- Veeno
UPDATE `creature_template` SET `faction`=3270, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192207; -- Sihua
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=194238; -- Ruby Drakonid
UPDATE `creature_template` SET `faction`=3270, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4800 WHERE `entry`=187257; -- Aster Cloudgaze
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4800 WHERE `entry`=187261; -- Grun Ashbeard
UPDATE `creature_template` SET `faction`=3270, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192210; -- Mia Pyke
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193913; -- Ruby Dragonspawn
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192558; -- Toninaar
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `unit_flags3`=0x40000000 WHERE `entry`=190535; -- Quizla Blastcaps
UPDATE `creature_template` SET `faction`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4800 WHERE `entry`=193838; -- Vish the Sneak
UPDATE `creature_template` SET `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190577; -- Tellywin Sharpfizzle
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192565; -- Zayn Starmaker
UPDATE `creature_template` SET `faction`=3270, `npcflag`=82, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192048; -- Deirdre Flemmin
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187255; -- Pathfinder Poppy
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=185774; -- Dallio Morelli
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187253; -- Spelunker Lazee
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `unit_flags3`=0x40000000 WHERE `entry`=192563; -- Kholmar Sunrunner
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198398; -- Misty Catseye
UPDATE `creature_template` SET `faction`=190, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=198386; -- Scouting Map
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=184450; -- Henry Garrick
UPDATE `creature_template` SET `faction`=3270, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4800 WHERE `entry`=184449; -- Captain Garrick
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=185773; -- Elia Bladeleaf
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193858; -- Expedition Surveyor
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=184451; -- Shuja Grimaxe
UPDATE `creature_template` SET `faction`=3270, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=184452; -- Warlord Breka Grimaxe
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=193707; -- Surveyor's Disc
UPDATE `creature_template` SET `faction`=3270, `npcflag`=82, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=192549; -- Feilin Kuan
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=194236; -- Ruby Dragonspawn
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187254; -- Archivist Spearblossom
UPDATE `creature_template` SET `faction`=3276, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=199336; -- Kerazal
UPDATE `creature_template` SET `BaseAttackTime`=1796 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x340, `unit_flags2`=0x800 WHERE `entry`=193362; -- Sendrax
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187121; -- Expedition Guarantor

UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187125; -- Expedition Guardian
UPDATE `creature_template` SET `unit_flags3`=0x40000000 WHERE `entry`=198363; -- (Bunny) Crow's Nest [DNT]
UPDATE `creature_template` SET `faction`=3305, `BaseAttackTime`=2000, `unit_flags2`=0x800, `VehicleId`=7636 WHERE `entry`=187414; -- Summoned Typhoon
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=189094; -- Magma Slug
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=187111; -- Ancient Hornswog
UPDATE `creature_template` SET `unit_flags2`=0x4000800, `unit_flags3`=0x40000001 WHERE `entry`=180538; -- (Bunny) Sessile + Large AOI
UPDATE `creature_template` SET `unit_flags2`=0x4000800 WHERE `entry`=197503; -- The Rugged Dragonscale
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=184867; -- Fussy Swoglet
UPDATE `creature_template` SET `faction`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190753; -- Bronze Timekeeper
UPDATE `creature_template` SET `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190516; -- Ephra Breezewood
UPDATE `creature_template` SET `unit_flags3`=0x40000001 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=184814; -- Rugged Artisan
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=184812; -- Restless Explorer
UPDATE `creature_template` SET `faction`=2031, `npcflag`=65665, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187403; -- Sil'nori Crestshade
UPDATE `creature_template` SET `faction`=3272, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x800000 WHERE `entry` IN (187062, 187061); -- Expedition Guarantor
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `unit_flags3`=0x40000000 WHERE `entry`=188057; -- Curious Marmoni
UPDATE `creature_template` SET `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry` IN (189798, 189801, 190587); -- Ancient Proto-Dragon
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=193917; -- Ruby Drakonid
UPDATE `creature_template` SET `faction`=14, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=188028; -- Salty Salamander
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry` IN (195597, 184862, 195577, 193876); -- Primal Proto-Whelp
UPDATE `creature_template` SET `faction`=3270, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190524; -- Mora Cloudwalker
UPDATE `creature_template` SET `faction`=2575, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191060; -- Fussy Swoglet
UPDATE `creature_template` SET `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `VehicleId`=8012 WHERE `entry`=196954; -- Guff Runetotem
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `unit_flags3`=0x1000000 WHERE `entry`=198299; -- Happy Swoglet
UPDATE `creature_template` SET `faction`=2358, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry` IN (195639, 190056, 184869, 195241, 193811, 193816, 193806); -- Primal Proto-Drake
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192143; -- Baby Sea Turtle
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192142; -- Sea Turtle
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192153; -- Baby Octopus
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192132; -- Depths Eel

UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=184853; -- Primal Scythid Queen
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=193000; -- Kindlet
UPDATE `creature_template` SET `faction`=1712, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191104; -- Primal Scythid
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=193024; -- Emberling
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=193026; -- Emberling
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=192104; -- Magma Slug
UPDATE `creature_template` SET `faction`=190, `speed_walk`=0.400000005960464477, `speed_run`=0.214285716414451599, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x8000000 WHERE `entry`=184851; -- Lava Snail
UPDATE `creature_template` SET `faction`=3272, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x800000 WHERE `entry`=191169; -- Expedition Guardian
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.714285731315612792, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=195260; -- Fire Beetle
UPDATE `creature_template` SET `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190741; -- Primal Proto-Dragon
UPDATE `creature_template` SET `faction`=35, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=195502; -- Pricklefury Hare
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190565; -- Distressed Marmoni
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x8000000 WHERE `entry`=184855; -- Salty Skitterfly
UPDATE `creature_template` SET `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x1 WHERE `entry`=195795; -- Ancient Proto-Dragon
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192149; -- River Frillfish
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=184286; -- Captain Caspartine
UPDATE `creature_template` SET `faction`=2358, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x1 WHERE `entry`=195796; -- Primal Proto-Drake
UPDATE `creature_template` SET `faction`=3270, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190526; -- Jaffe Cloudwalker
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192148; -- Tranquil Tideskipper
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192151; -- Smoothfin Mantacorn
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000000, `unit_flags2`=0x4000800, `unit_flags3`=0x1 WHERE `entry`=184807; -- The Defiant Dragonscale
UPDATE `creature_template` SET `unit_flags2`=0x4000800, `unit_flags3`=0x40000001 WHERE `entry`=197611; -- (Bunny) Sessile + Gigantic AOI
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x800, `unit_flags3`=0x40000000, `VehicleId`=8014 WHERE `entry`=198367; -- (Bunny) Crow's Nest [DNT]
UPDATE `creature_template` SET `BaseAttackTime`=1860, `unit_flags3`=0x14000000 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `faction`=2575, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=187140; -- Cantankerous Hornswog
UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=187123; -- Expedition Guardian
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800, `unit_flags3`=0x40000000 WHERE `entry`=184861; -- Distressed Marmoni
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=184857; -- Rambunctious Tideskipper
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=189554; -- Expedition Provisioner
UPDATE `creature_template` SET `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x1, `VehicleId`=7695 WHERE `entry`=187120; -- Hungry Proto-Dragon
UPDATE `creature_template` SET `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194681; -- Maoli
UPDATE `creature_template` SET `unit_flags3`=0x4000000 WHERE `entry`=188027; -- Salty Salamander
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=195242; -- Distressed Marmoni
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x8000000 WHERE `entry`=184856; -- Salty Skitterbug
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=189093; -- Pricklefury Hare
UPDATE `creature_template` SET `BaseAttackTime`=1967 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `unit_flags2`=0x4000800, `unit_flags3`=0x40000001 WHERE `entry`=180701; -- (Bunny) Sessile

DELETE FROM `creature_template_gossip` WHERE (`CreatureID`=186584 AND `MenuID`=29347) OR (`CreatureID`=193362 AND `MenuID`=28679) OR (`CreatureID`=193838 AND `MenuID`=28691) OR (`CreatureID`=198398 AND `MenuID`=30043) OR (`CreatureID`=190535 AND `MenuID`=30030) OR (`CreatureID`=192055 AND `MenuID`=8518) OR (`CreatureID`=192565 AND `MenuID`=29959) OR (`CreatureID`=190571 AND `MenuID`=28174) OR (`CreatureID`=193915 AND `MenuID`=28711) OR (`CreatureID`=192490 AND `MenuID`=6944) OR (`CreatureID`=192563 AND `MenuID`=28856) OR (`CreatureID`=187261 AND `MenuID`=29958) OR (`CreatureID`=198380 AND `MenuID`=30034) OR (`CreatureID`=198392 AND `MenuID`=30038) OR (`CreatureID`=198094 AND `MenuID`=30046) OR (`CreatureID`=193393 AND `MenuID`=28697) OR (`CreatureID`=192558 AND `MenuID`=28862) OR (`CreatureID`=190577 AND `MenuID`=28177) OR (`CreatureID`=192558 AND `MenuID`=28862);
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(186584, 29347, 65299), -- Commander Lethanak
(193362, 28679, 65299), -- Sendrax
(193838, 28691, 65299), -- Vish the Sneak
(198398, 30043, 65299), -- Misty Catseye
(190535, 30030, 65299), -- Quizla Blastcaps
(192055, 8518, 65299), -- Veeno
(192565, 29959, 65299), -- Zayn Starmaker
(190571, 28174, 65299), -- Xelendus Felwatcher
(193915, 28711, 65299), -- Emilia Bellocq
(192490, 6944, 65299), -- Tixxa Mixxa
(192563, 28856, 65299), -- Kholmar Sunrunner
(187261, 29958, 65299), -- Grun Ashbeard
(198380, 30034, 65299), -- Journalist Jessamine Spitz
(198392, 30038, 65299), -- An'timon
(198094, 30046, 65299), -- Head Chef Stacks
(193393, 28697, 65299), -- Ambassador Fastrasz
(192558, 28862, 65299), -- Toninaar
(190577, 28177, 65299); -- Tellywin Sharpfizzle


DELETE FROM `trainer` WHERE `Id` IN (1077, 1081, 1075, 1082, 1086, 1084);
INSERT INTO `trainer` (`Id`, `Type`, `Greeting`, `VerifiedBuild`) VALUES
(1077, 2, 'Hello, friend!', 65299),
(1081, 2, 'Hello, friend!', 65299),
(1075, 2, 'Hello, friend!', 65299),
(1082, 2, 'Hello, friend!', 65299),
(1086, 2, 'Hello, friend!', 65299),
(1084, 2, 'Greetings!', 65299);

UPDATE `trainer` SET `VerifiedBuild`=65299 WHERE `Id` IN (1080, 1078, 1083, 1076, 1085, 1087);

DELETE FROM `trainer_spell` WHERE (`TrainerId`=1077 AND `SpellId` IN (366240,1259386,1259384,1259369,376233,389194,374553,374550,374537,374532,374531,374530,374506,374494,374475,374480,374478,374477,374463,374462,374461,374460,374441,374440,374439,374438,374437,264533)) OR (`TrainerId`=1080 AND `SpellId` IN (1263237,1259404)) OR (`TrainerId`=1081 AND `SpellId` IN (1261933,1261919,391811,391810,391809,391806,391197,389542,389543,389537,389540,389546,390951,389295,389294,389293,389292,390823,389400,389398,389397,389300,389298,389297,389136,389135,388930,391176,389191,366245,264457)) OR (`TrainerId`=1075 AND `SpellId` IN (1261940,1259247,395815,395814,395807,395813,395809,392396,389196,376545,376553,376551,376549,376547,376555,376528,376543,376558,376538,376560,376506,376508,376507,376509,376535,376533,366262,264617)) OR (`TrainerId`=1082 AND `SpellId` IN (1261896,1261892,367600,371395,393416,367611,395880,395881,395883,395879,371674,371650,393404,385304,367597,371394,371302,371304,371309,371338,371343,371360,371364,367712,365735,367598,367595,367599,367596,395886,367610,365699,264435)) OR (`TrainerId`=1086 AND `SpellId` IN (366264,265838)) OR (`TrainerId`=1078 AND `SpellId` IN (1272572,1259461,1259451,1259441,1259433,1259429,1259422)) OR (`TrainerId`=1083 AND `SpellId` IN (1261885,1261882)) OR (`TrainerId`=1084 AND `SpellId` IN (366246,1266555,1260333,1260331,381381,381382,381368,381386,381411,381389,381371,381370,381369,381367,381365,264633)) OR (`TrainerId`=1076 AND `SpellId` IN (1259233,1259195));
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(1077, 366240, 10, 755, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 1259386, 500, 2829, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 1259384, 500, 2829, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 1259369, 500, 2829, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 376233, 50, 2829, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 389194, 50, 2829, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374553, 150, 2829, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374550, 100, 2829, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374537, 75, 2829, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374532, 75, 2829, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374531, 75, 2829, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374530, 75, 2829, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374506, 100, 2829, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374494, 50, 2829, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374475, 25, 2829, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374480, 25, 2829, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374478, 40, 2829, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374477, 75, 2829, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374463, 115, 2829, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374462, 115, 2829, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374461, 115, 2829, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374460, 115, 2829, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374441, 10, 2829, 1, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374440, 50, 2829, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374439, 40, 2829, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374438, 40, 2829, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 374437, 50, 2829, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1077, 264533, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1080, 1263237, 500, 2827, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1080, 1259404, 500, 2827, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 1261933, 500, 2825, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 1261919, 500, 2825, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391811, 150, 2825, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391810, 150, 2825, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391809, 150, 2825, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391806, 75, 2825, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391197, 75, 2825, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389542, 200, 2825, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389543, 200, 2825, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389537, 200, 2825, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389540, 200, 2825, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389546, 200, 2825, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 390951, 150, 2825, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389295, 115, 2825, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389294, 130, 2825, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389293, 130, 2825, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389292, 130, 2825, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 390823, 40, 2825, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389400, 100, 2825, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389398, 100, 2825, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389397, 100, 2825, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389300, 50, 2825, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389298, 50, 2825, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389297, 50, 2825, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389136, 25, 2825, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389135, 25, 2825, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 388930, 25, 2825, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 391176, 25, 2825, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 389191, 50, 2825, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 366245, 10, 333, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1081, 264457, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 1261940, 500, 2831, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 1259247, 500, 2831, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 395815, 150, 2831, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 395814, 175, 2831, 45, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 395807, 200, 2831, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 395813, 130, 2831, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 395809, 115, 2831, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 392396, 10, 2831, 1, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 389196, 50, 2831, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376545, 25, 2831, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376553, 50, 2831, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376551, 100, 2831, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376549, 130, 2831, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376547, 75, 2831, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376555, 40, 2831, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376528, 150, 2831, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376543, 115, 2831, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376558, 100, 2831, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376538, 200, 2831, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376560, 40, 2831, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376506, 75, 2831, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376508, 40, 2831, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376507, 50, 2831, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376509, 25, 2831, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376535, 100, 2831, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 376533, 175, 2831, 45, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 366262, 10, 197, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1075, 264617, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 1261896, 500, 2822, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 1261892, 500, 2822, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367600, 100, 2822, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371395, 50, 2822, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 393416, 150, 2822, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367611, 115, 2822, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 395880, 175, 2822, 45, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 395881, 130, 2822, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 395883, 200, 2822, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 395879, 150, 2822, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371674, 115, 2822, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371650, 130, 2822, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 393404, 75, 2822, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 385304, 50, 2822, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367597, 175, 2822, 45, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371394, 25, 2822, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371302, 115, 2822, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371304, 50, 2822, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371309, 25, 2822, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371338, 75, 2822, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371343, 40, 2822, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371360, 100, 2822, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 371364, 50, 2822, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367712, 100, 2822, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 365735, 100, 2822, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367598, 200, 2822, 50, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367595, 115, 2822, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367599, 115, 2822, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367596, 75, 2822, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 395886, 40, 2822, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 367610, 25, 2822, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 365699, 10, 164, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1082, 264435, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1086, 366264, 10, 186, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1086, 265838, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1272572, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259461, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259451, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259441, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259433, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259429, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1078, 1259422, 500, 2828, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1083, 1261885, 500, 2823, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1083, 1261882, 500, 2823, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 366246, 10, 185, 1, 0, 0, 0, 10, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 1266555, 200, 2824, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 1260333, 200, 2824, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 1260331, 200, 2824, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381381, 40, 2824, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381382, 100, 2824, 25, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381368, 50, 2824, 15, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381386, 115, 2824, 30, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381411, 150, 2824, 40, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381389, 75, 2824, 20, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381371, 175, 2824, 45, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381370, 130, 2824, 35, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381369, 25, 2824, 5, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381367, 40, 2824, 10, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 381365, 10, 2824, 1, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1084, 264633, 10, 0, 0, 0, 0, 0, 5, 65299), -- No Faction found! MoneyCost not recalculated!
(1076, 1259233, 500, 2830, 80, 0, 0, 0, 0, 65299), -- No Faction found! MoneyCost not recalculated!
(1076, 1259195, 500, 2830, 80, 0, 0, 0, 0, 65299); -- No Faction found! MoneyCost not recalculated!

UPDATE `trainer_spell` SET `MoneyCost`=150, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId` IN (396777,382348)) OR (`TrainerId`=1076 AND `SpellId` IN (395851,395868)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=50, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId` IN (384314,382407,389192,382386,382385,382384,382383,382377)) OR (`TrainerId`=1078 AND `SpellId` IN (383539,389193,383530,383544,383543)) OR (`TrainerId`=1083 AND `SpellId`=370711) OR (`TrainerId`=1076 AND `SpellId` IN (389195,375182,375168)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=100, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId` IN (382346,382401,382330,382398,382396)) OR (`TrainerId`=1078 AND `SpellId` IN (383529,383572,383547,383525,383551,383527,383549)) OR (`TrainerId`=1083 AND `SpellId` IN (389190,370465)) OR (`TrainerId`=1076 AND `SpellId` IN (409555,409557,395845,395865,375179,375178,375174,375173)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=175, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382387) OR (`TrainerId`=1078 AND `SpellId` IN (383562,383561,383560,383556,383555,383554)) OR (`TrainerId`=1076 AND `SpellId` IN (395847,395867)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=115, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382402) OR (`TrainerId`=1076 AND `SpellId` IN (375184,375185)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=75, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId` IN (382397,382395,382393,382392,382380,382379)) OR (`TrainerId`=1078 AND `SpellId`=383791) OR (`TrainerId`=1083 AND `SpellId`=370717) OR (`TrainerId`=1076 AND `SpellId` IN (395844,395863)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=130, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382394) OR (`TrainerId`=1078 AND `SpellId`=383790) OR (`TrainerId`=1083 AND `SpellId`=370731) OR (`TrainerId`=1076 AND `SpellId` IN (375188,375187,375102)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=200, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId` IN (382391,382390,382389,382388)) OR (`TrainerId`=1078 AND `SpellId`=383546) OR (`TrainerId`=1083 AND `SpellId`=370551) OR (`TrainerId`=1076 AND `SpellId` IN (395839,395864)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=40, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382378) OR (`TrainerId`=1078 AND `SpellId` IN (384949,384948,383563)) OR (`TrainerId`=1083 AND `SpellId` IN (370748,370746,370743,370722)) OR (`TrainerId`=1076 AND `SpellId` IN (375181,375164,375108,375105)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=25, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382376) OR (`TrainerId`=1083 AND `SpellId`=370547) OR (`TrainerId`=1076 AND `SpellId` IN (375183,375106,375103)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=10, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=382375); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=10, `ReqLevel`=10, `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=366244) OR (`TrainerId`=1078 AND `SpellId`=366241) OR (`TrainerId`=1083 AND `SpellId`=366248) OR (`TrainerId`=1076 AND `SpellId`=366239) OR (`TrainerId`=1085 AND `SpellId`=366263) OR (`TrainerId`=1087 AND `SpellId`=366242); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `VerifiedBuild`=65299 WHERE (`TrainerId`=1080 AND `SpellId`=264478) OR (`TrainerId`=1078 AND `SpellId`=264495) OR (`TrainerId`=1083 AND `SpellId`=264212) OR (`TrainerId`=1076 AND `SpellId`=264578) OR (`TrainerId`=1085 AND `SpellId`=265856) OR (`TrainerId`=1087 AND `SpellId`=265820);

DELETE FROM `creature_trainer` WHERE (`CreatureID`=198398 AND `MenuID`=30043 AND `OptionID`=0) OR (`CreatureID`=192558 AND `MenuID`=28862 AND `OptionID`=0) OR (`CreatureID`=190535 AND `MenuID`=30030 AND `OptionID`=0) OR (`CreatureID`=192055 AND `MenuID`=8518 AND `OptionID`=0) OR (`CreatureID`=192565 AND `MenuID`=29959 AND `OptionID`=0) OR (`CreatureID`=192563 AND `MenuID`=28856 AND `OptionID`=0) OR (`CreatureID`=187261 AND `MenuID`=29958 AND `OptionID`=0) OR (`CreatureID`=198380 AND `MenuID`=30034 AND `OptionID`=0) OR (`CreatureID`=198392 AND `MenuID`=30038 AND `OptionID`=0) OR (`CreatureID`=198094 AND `MenuID`=30046 AND `OptionID`=0) OR (`CreatureID`=192048 AND `MenuID`=0 AND `OptionID`=0) OR (`CreatureID`=192549 AND `MenuID`=0 AND `OptionID`=0);
INSERT INTO `creature_trainer` (`CreatureID`, `TrainerID`, `MenuID`, `OptionID`) VALUES
(198398, 1077, 30043, 0),
(190535, 1080, 30030, 0),
(192055, 1081, 8518, 0),
(192558, 1085, 28862, 0),
(192565, 1075, 29959, 0),
(192563, 1082, 28856, 0),
(187261, 1086, 29958, 0),
(198380, 1078, 30034, 0),
(198392, 1083, 30038, 0),
(198094, 1084, 30046, 0),
(192048, 1076, 0, 0),
(192549, 1087, 0, 0);

DELETE FROM `npc_vendor` WHERE (`entry`=192207 AND `item`=188152 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=10498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=6219 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=6218 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=197753 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=197752 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=197751 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=197750 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=197749 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=200860 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=191474 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=192833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=198487 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=194784 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=190452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=228368 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=180060 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=180059 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=180058 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=180057 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=180055 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=30747 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=30748 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=30745 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=30746 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=60335 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=4499 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=4497 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192207 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=193915 AND `item`=199900 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=188152 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=10498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=6219 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=6218 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=197753 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=197752 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=197751 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=197750 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=197749 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=200860 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=191474 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=192833 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=198487 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=194784 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=190452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=228368 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=180060 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=180059 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=180058 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=180057 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=180055 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=30747 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=30748 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=30745 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=30746 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=60335 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=4499 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=4497 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=4498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=192210 AND `item`=4496 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(192207, 40, 188152, 0, 0, 1, 0, 0, 65299), -- Gateway Control Shard
(192207, 39, 64670, 0, 0, 1, 0, 0, 65299), -- Vanishing Powder
(192207, 38, 138293, 0, 0, 1, 0, 0, 65299), -- Explorer's Pack
(192207, 37, 85663, 0, 0, 1, 0, 0, 65299), -- Herbalist's Spade
(192207, 36, 2901, 0, 0, 1, 0, 0, 65299), -- Mining Pick
(192207, 35, 7005, 0, 0, 1, 0, 0, 65299), -- Skinning Knife
(192207, 34, 39505, 0, 0, 1, 0, 0, 65299), -- Virtuoso Inking Set
(192207, 33, 6256, 0, 0, 1, 0, 0, 65299), -- Fishing Pole
(192207, 32, 10498, 0, 0, 1, 0, 0, 65299), -- Gyromatic Micro-Adjustor
(192207, 31, 6219, 0, 0, 1, 0, 0, 65299), -- Arclight Spanner
(192207, 30, 20815, 0, 0, 1, 0, 0, 65299), -- Jeweler's Toolset
(192207, 29, 6218, 0, 0, 1, 0, 0, 65299), -- Runed Copper Rod
(192207, 28, 5956, 0, 0, 1, 0, 0, 65299), -- Blacksmith Hammer
(192207, 27, 197753, 0, 0, 1, 0, 0, 65299), -- Thaldraszian Cocoa Powder
(192207, 26, 197752, 0, 0, 1, 0, 0, 65299), -- Conveniently Packaged Ingredients
(192207, 25, 197751, 0, 0, 1, 0, 0, 65299), -- Pastry Packets
(192207, 24, 197750, 0, 0, 1, 0, 0, 65299), -- Three-Cheese Blend
(192207, 23, 197749, 0, 0, 1, 0, 0, 65299), -- Ohn'ahran Potato
(192207, 22, 38682, 0, 0, 1, 0, 0, 65299), -- Enchanting Vellum
(192207, 21, 200860, 0, 0, 1, 0, 0, 65299), -- Draconic Stopper
(192207, 20, 191474, 0, 0, 1, 0, 0, 65299), -- Draconic Vial
(192207, 19, 192833, 0, 0, 1, 0, 0, 65299), -- Misshapen Filigree
(192207, 18, 198487, 0, 0, 1, 0, 0, 65299), -- Iridescent Water
(192207, 17, 194784, 0, 0, 1, 0, 0, 65299), -- Glittering Parchment
(192207, 16, 190452, 0, 0, 1, 0, 0, 65299), -- Primal Flux
(192207, 15, 228368, 0, 0, 1, 0, 0, 65299), -- Relic of the Past VI
(192207, 14, 180060, 0, 0, 1, 0, 0, 65299), -- Relic of the Past V
(192207, 13, 180059, 0, 0, 1, 0, 0, 65299), -- Relic of the Past IV
(192207, 12, 180058, 0, 0, 1, 0, 0, 65299), -- Relic of the Past III
(192207, 11, 180057, 0, 0, 1, 0, 0, 65299), -- Relic of the Past II
(192207, 10, 180055, 0, 0, 1, 0, 0, 65299), -- Relic of the Past I
(192207, 9, 30747, 0, 0, 1, 0, 0, 65299), -- Gem Pouch
(192207, 8, 30748, 0, 0, 1, 0, 0, 65299), -- Enchanter's Satchel
(192207, 7, 30745, 0, 0, 1, 0, 0, 65299), -- Heavy Toolbox
(192207, 6, 30746, 0, 0, 1, 0, 0, 65299), -- Mining Sack
(192207, 5, 60335, 0, 0, 1, 0, 0, 65299), -- Thick Hide Pack
(192207, 4, 4499, 0, 0, 1, 0, 0, 65299), -- Huge Brown Sack
(192207, 3, 4497, 0, 0, 1, 0, 0, 65299), -- Heavy Brown Bag
(192207, 2, 4498, 0, 0, 1, 0, 0, 65299), -- Brown Leather Satchel
(192207, 1, 4496, 0, 0, 1, 0, 0, 65299), -- Small Brown Pouch
(193915, 2, 199900, 0, 0, 1, 0, 0, 65299), -- Secondhand Survey Tools
(192210, 40, 188152, 0, 0, 1, 0, 0, 65299), -- Gateway Control Shard
(192210, 39, 64670, 0, 0, 1, 0, 0, 65299), -- Vanishing Powder
(192210, 38, 138293, 0, 0, 1, 0, 0, 65299), -- Explorer's Pack
(192210, 37, 85663, 0, 0, 1, 0, 0, 65299), -- Herbalist's Spade
(192210, 36, 2901, 0, 0, 1, 0, 0, 65299), -- Mining Pick
(192210, 35, 7005, 0, 0, 1, 0, 0, 65299), -- Skinning Knife
(192210, 34, 39505, 0, 0, 1, 0, 0, 65299), -- Virtuoso Inking Set
(192210, 33, 6256, 0, 0, 1, 0, 0, 65299), -- Fishing Pole
(192210, 32, 10498, 0, 0, 1, 0, 0, 65299), -- Gyromatic Micro-Adjustor
(192210, 31, 6219, 0, 0, 1, 0, 0, 65299), -- Arclight Spanner
(192210, 30, 20815, 0, 0, 1, 0, 0, 65299), -- Jeweler's Toolset
(192210, 29, 6218, 0, 0, 1, 0, 0, 65299), -- Runed Copper Rod
(192210, 28, 5956, 0, 0, 1, 0, 0, 65299), -- Blacksmith Hammer
(192210, 27, 197753, 0, 0, 1, 0, 0, 65299), -- Thaldraszian Cocoa Powder
(192210, 26, 197752, 0, 0, 1, 0, 0, 65299), -- Conveniently Packaged Ingredients
(192210, 25, 197751, 0, 0, 1, 0, 0, 65299), -- Pastry Packets
(192210, 24, 197750, 0, 0, 1, 0, 0, 65299), -- Three-Cheese Blend
(192210, 23, 197749, 0, 0, 1, 0, 0, 65299), -- Ohn'ahran Potato
(192210, 22, 38682, 0, 0, 1, 0, 0, 65299), -- Enchanting Vellum
(192210, 21, 200860, 0, 0, 1, 0, 0, 65299), -- Draconic Stopper
(192210, 20, 191474, 0, 0, 1, 0, 0, 65299), -- Draconic Vial
(192210, 19, 192833, 0, 0, 1, 0, 0, 65299), -- Misshapen Filigree
(192210, 18, 198487, 0, 0, 1, 0, 0, 65299), -- Iridescent Water
(192210, 17, 194784, 0, 0, 1, 0, 0, 65299), -- Glittering Parchment
(192210, 16, 190452, 0, 0, 1, 0, 0, 65299), -- Primal Flux
(192210, 15, 228368, 0, 0, 1, 0, 0, 65299), -- Relic of the Past VI
(192210, 14, 180060, 0, 0, 1, 0, 0, 65299), -- Relic of the Past V
(192210, 13, 180059, 0, 0, 1, 0, 0, 65299), -- Relic of the Past IV
(192210, 12, 180058, 0, 0, 1, 0, 0, 65299), -- Relic of the Past III
(192210, 11, 180057, 0, 0, 1, 0, 0, 65299), -- Relic of the Past II
(192210, 10, 180055, 0, 0, 1, 0, 0, 65299), -- Relic of the Past I
(192210, 9, 30747, 0, 0, 1, 0, 0, 65299), -- Gem Pouch
(192210, 8, 30748, 0, 0, 1, 0, 0, 65299), -- Enchanter's Satchel
(192210, 7, 30745, 0, 0, 1, 0, 0, 65299), -- Heavy Toolbox
(192210, 6, 30746, 0, 0, 1, 0, 0, 65299), -- Mining Sack
(192210, 5, 60335, 0, 0, 1, 0, 0, 65299), -- Thick Hide Pack
(192210, 4, 4499, 0, 0, 1, 0, 0, 65299), -- Huge Brown Sack
(192210, 3, 4497, 0, 0, 1, 0, 0, 65299), -- Heavy Brown Bag
(192210, 2, 4498, 0, 0, 1, 0, 0, 65299), -- Brown Leather Satchel
(192210, 1, 4496, 0, 0, 1, 0, 0, 65299); -- Small Brown Pouch

DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+23;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 225102, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193393 (Ambassador Fastrasz)
(@NPCTEXTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 232395, 0, 0, 0, 0, 0, 0, 0, 65299), -- 198094 (Head Chef Stacks)
(@NPCTEXTID+2, 1, 0, 0, 0, 0, 0, 0, 0, 231798, 0, 0, 0, 0, 0, 0, 0, 65299), -- 192558 (Toninaar)
(@NPCTEXTID+3, 1, 0, 0, 0, 0, 0, 0, 0, 224976, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193362 (Sendrax)
(@NPCTEXTID+4, 1, 0, 0, 0, 0, 0, 0, 0, 228842, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186584 (Commander Lethanak)
(@NPCTEXTID+5, 1, 0, 0, 0, 0, 0, 0, 0, 224990, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193362 (Sendrax)
(@NPCTEXTID+6, 1, 0, 0, 0, 0, 0, 0, 0, 225157, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193915 (Emilia Bellocq)
(@NPCTEXTID+7, 1, 0, 0, 0, 0, 0, 0, 0, 224994, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193362 (Sendrax)
(@NPCTEXTID+8, 1, 0, 0, 0, 0, 0, 0, 0, 228863, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186584 (Commander Lethanak)
(@NPCTEXTID+9, 1, 0, 0, 0, 0, 0, 0, 0, 225020, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193838 (Vish the Sneak)
(@NPCTEXTID+10, 1, 0, 0, 0, 0, 0, 0, 0, 219260, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190571 (Xelendus Felwatcher)
(@NPCTEXTID+11, 1, 0, 0, 0, 0, 0, 0, 0, 219263, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190571 (Xelendus Felwatcher)
(@NPCTEXTID+12, 1, 0, 0, 0, 0, 0, 0, 0, 219275, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190577 (Tellywin Sharpfizzle)
(@NPCTEXTID+13, 1, 0, 0, 0, 0, 0, 0, 0, 219272, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190577 (Tellywin Sharpfizzle)
(@NPCTEXTID+14, 1, 0, 0, 0, 0, 0, 0, 0, 225040, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193393 (Ambassador Fastrasz)
(@NPCTEXTID+15, 1, 0, 0, 0, 0, 0, 0, 0, 232343, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190535 (Quizla Blastcaps)
(@NPCTEXTID+16, 1, 0, 0, 0, 0, 0, 0, 0, 225041, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193393 (Ambassador Fastrasz)
(@NPCTEXTID+17, 1, 0, 0, 0, 0, 0, 0, 0, 231968, 0, 0, 0, 0, 0, 0, 0, 65299), -- 187261 (Grun Ashbeard)
(@NPCTEXTID+18, 1, 0, 0, 0, 0, 0, 0, 0, 231971, 0, 0, 0, 0, 0, 0, 0, 65299), -- 192565 (Zayn Starmaker)
(@NPCTEXTID+19, 1, 0, 0, 0, 0, 0, 0, 0, 232351, 0, 0, 0, 0, 0, 0, 0, 65299), -- 198380 (Journalist Jessamine Spitz)
(@NPCTEXTID+20, 1, 0, 0, 0, 0, 0, 0, 0, 232366, 0, 0, 0, 0, 0, 0, 0, 65299), -- 198392 (An'timon)
(@NPCTEXTID+21, 1, 0, 0, 0, 0, 0, 0, 0, 231799, 0, 0, 0, 0, 0, 0, 0, 65299), -- 192563 (Kholmar Sunrunner)
(@NPCTEXTID+22, 1, 0, 0, 0, 0, 0, 0, 0, 232370, 0, 0, 0, 0, 0, 0, 0, 65299), -- 198398 (Misty Catseye)
(@NPCTEXTID+23, 1, 0, 0, 0, 0, 0, 0, 0, 225087, 0, 0, 0, 0, 0, 0, 0, 65299); -- 193915 (Emilia Bellocq)

DELETE FROM `gossip_menu` WHERE (`MenuID`=28712 AND `TextID`=@NPCTEXTID+0) OR (`MenuID`=30046 AND `TextID`=@NPCTEXTID+1) OR (`MenuID`=28862 AND `TextID`=@NPCTEXTID+2) OR (`MenuID`=28679 AND `TextID`=@NPCTEXTID+3) OR (`MenuID`=29347 AND `TextID`=@NPCTEXTID+4) OR (`MenuID`=28682 AND `TextID`=@NPCTEXTID+5) OR (`MenuID`=28719 AND `TextID`=@NPCTEXTID+6) OR (`MenuID`=28683 AND `TextID`=@NPCTEXTID+7) OR (`MenuID`=29351 AND `TextID`=@NPCTEXTID+8) OR (`MenuID`=28691 AND `TextID`=@NPCTEXTID+9) OR (`MenuID`=28174 AND `TextID`=@NPCTEXTID+10) OR (`MenuID`=28175 AND `TextID`=@NPCTEXTID+11) OR (`MenuID`=28176 AND `TextID`=@NPCTEXTID+12) OR (`MenuID`=28177 AND `TextID`=@NPCTEXTID+13) OR (`MenuID`=28697 AND `TextID`=@NPCTEXTID+14) OR (`MenuID`=30030 AND `TextID`=@NPCTEXTID+15) OR (`MenuID`=28698 AND `TextID`=@NPCTEXTID+16) OR (`MenuID`=29958 AND `TextID`=@NPCTEXTID+17) OR (`MenuID`=29959 AND `TextID`=@NPCTEXTID+18) OR (`MenuID`=30034 AND `TextID`=@NPCTEXTID+19) OR (`MenuID`=30038 AND `TextID`=@NPCTEXTID+20) OR (`MenuID`=28856 AND `TextID`=@NPCTEXTID+21) OR (`MenuID`=30043 AND `TextID`=@NPCTEXTID+22) OR (`MenuID`=28711 AND `TextID`=@NPCTEXTID+23);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28712, @NPCTEXTID+0, 65299), -- 193393 (Ambassador Fastrasz)
(30046, @NPCTEXTID+1, 65299), -- 198094 (Head Chef Stacks)
(28862, @NPCTEXTID+2, 65299), -- 192558 (Toninaar)
(28679, @NPCTEXTID+3, 65299), -- 193362 (Sendrax)
(29347, @NPCTEXTID+4, 65299), -- 186584 (Commander Lethanak)
(28682, @NPCTEXTID+5, 65299), -- 193362 (Sendrax)
(28719, @NPCTEXTID+6, 65299), -- 193915 (Emilia Bellocq)
(28683, @NPCTEXTID+7, 65299), -- 193362 (Sendrax)
(29351, @NPCTEXTID+8, 65299), -- 186584 (Commander Lethanak)
(28691, @NPCTEXTID+9, 65299), -- 193838 (Vish the Sneak)
(28174, @NPCTEXTID+10, 65299), -- 190571 (Xelendus Felwatcher)
(28175, @NPCTEXTID+11, 65299), -- 190571 (Xelendus Felwatcher)
(28176, @NPCTEXTID+12, 65299), -- 190577 (Tellywin Sharpfizzle)
(28177, @NPCTEXTID+13, 65299), -- 190577 (Tellywin Sharpfizzle)
(28697, @NPCTEXTID+14, 65299), -- 193393 (Ambassador Fastrasz)
(30030, @NPCTEXTID+15, 65299), -- 190535 (Quizla Blastcaps)
(28698, @NPCTEXTID+16, 65299), -- 193393 (Ambassador Fastrasz)
(29958, @NPCTEXTID+17, 65299), -- 187261 (Grun Ashbeard)
(29959, @NPCTEXTID+18, 65299), -- 192565 (Zayn Starmaker)
(30034, @NPCTEXTID+19, 65299), -- 198380 (Journalist Jessamine Spitz)
(30038, @NPCTEXTID+20, 65299), -- 198392 (An'timon)
(28856, @NPCTEXTID+21, 65299), -- 192563 (Kholmar Sunrunner)
(30043, @NPCTEXTID+22, 65299), -- 198398 (Misty Catseye)
(28711, @NPCTEXTID+23, 65299); -- 193915 (Emilia Bellocq)

DELETE FROM `gossip_menu` WHERE (`MenuID`=8518 AND `TextID`=10651);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(8518, 10651, 65299); -- 192055 (Veeno)

UPDATE `gossip_menu` SET `VerifiedBuild`=65299 WHERE (`MenuID`=6944 AND `TextID`=7778);
DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (29959,28698,28683,28174,28862,28711,30038,28682,30030,29347,30034,30043,28697,28177,30046,29958,28712,28856,8518)) OR (`OptionID`=1 AND `MenuID` IN (28682,28711,28683,28712,28698)) OR (`OptionID`=3 AND `MenuID` IN (28679,28697)) OR (`OptionID`=4 AND `MenuID`=28697) OR (`OptionID`=2 AND `MenuID`=28679);
INSERT INTO `gossip_menu_option` (`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`, `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `SpellID`, `OverrideIconID`, `VerifiedBuild`) VALUES
(29959, 107294, 0, 3, 'Train me in Tailoring.', 47118, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28698, 55741, 0, 0, 'I want to ask about something else.', 149761, 0, 0, 28697, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28683, 64029, 0, 0, 'I want to ask about something else.', 149761, 0, 0, 28679, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28174, 54817, 0, 0, 'Why are you wearing sunglasses if you\'re blindfolded?', 0, 0, 0, 28175, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28682, 55640, 1, 0, 'I want to ask about something else.', 149761, 0, 0, 28679, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28862, 56062, 0, 3, 'Train me.', 3266, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28711, 56499, 0, 1, 'Show me what you have for sale.', 20225, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 20225 - 20232 - 21280 - 21294 - 29959 - 160603
(30038, 107407, 0, 3, 'Teach me about alchemy.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28682, 55639, 0, 0, 'So this used to be an Embassy for mortals?', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(30030, 107401, 0, 3, 'Train me in engineering.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28711, 55782, 1, 0, 'What are you doing here?', 35775, 0, 0, 28719, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 35775 - 38471 - 57803 - 57891 - 66486 - 81341 - 86824 - 123345 - 136428 - 149757 - 156063 - 260587 - 269145 - 269154
(29347, 64045, 0, 0, 'What can you tell me about the djaradin?', 0, 0, 0, 29351, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(30034, 107402, 0, 3, 'Teach me about inscription.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28679, 64028, 3, 0, 'So this used to be an Embassy for mortals?', 0, 0, 0, 28683, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(30043, 107413, 0, 3, 'Teach me about jewelcrafting.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28697, 55672, 0, 5, 'Bind your hearthstone to this inn.', 0, 0, 0, 0, 0, 32503, 0, 0, NULL, 0, NULL, NULL, 65299),
(28683, 55641, 1, 0, 'So you have never seen |5$pr before?', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28697, 55740, 4, 0, 'Why do dragons have an embassy for mortals?', 0, 0, 0, 28712, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28177, 54818, 0, 0, 'Why are you wearing reading glasses if you have bionic eyes...?', 0, 0, 0, 28176, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(30046, 107418, 0, 3, 'Can you, um... teach me how to cook?', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28712, 55745, 1, 0, 'Why is the embassy in ruins?', 0, 0, 0, 28698, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(29958, 107293, 0, 3, 'Train me in Mining.', 47116, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28712, 55744, 0, 0, 'I want to ask about something else.', 149761, 0, 0, 28697, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28856, 56059, 0, 3, 'Train me.', 3266, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28697, 55675, 3, 0, 'Why is the embassy in ruins?', 0, 0, 0, 28698, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28679, 55638, 2, 0, 'Have you not seen |5$pr before?', 0, 0, 0, 28682, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(8518, 35961, 0, 3, 'Train me.', 3266, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28698, 55676, 1, 0, 'Why do dragons have an embassy for mortals?', 0, 0, 0, 28712, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=65299 WHERE (`MenuID`=6944 AND `OptionID`=0);