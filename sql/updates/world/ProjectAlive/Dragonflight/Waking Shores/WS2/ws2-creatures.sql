SET @CGUID := 61000000;
SET @NPCTEXTID := 61000000;

DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (193226,195853));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(193226, 1, 0, 0, 0, 0, 0, 0, 156850, 0, 0, 65299), -- Gorjo the Crab Shackler
(195853, 1, 192049, 0, 0, 0, 0, 0, 0, 0, 0, 65299); -- Qalashi Trainee

UPDATE `creature_equip_template` SET `VerifiedBuild`=65299 WHERE (`ID`=1 AND `CreatureID` IN (191833,188296));

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+980;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2233.818359375, -1264.2364501953125, 347.507080078125, 2.823865652084350585, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+1, 187442, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2342.013916015625, -1217.388916015625, 340.383544921875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+2, 189093, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2187.39404296875, -1147.0242919921875, 338.22509765625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+3, 190839, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2290.538330078125, -1258.4600830078125, 349.62744140625, 6.260059356689453125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glensera (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+4, 194196, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2154.657958984375, -1188.640625, 344.90545654296875, 4.559894084930419921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cautious Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383247 - Conversation Aura: Talk/Roar/Laugh [DNT])
(@CGUID+5, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2323.321044921875, -1295.3524169921875, 354.47381591796875, 5.529400825500488281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+6, 194288, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2385.656494140625, -1163.7969970703125, 406.574554443359375, 2.919177055358886718, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Swashbuckling Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383348 - Swashbuckling Dragonrider Rider) (possible waypoints or random movement)
(@CGUID+7, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2239.772705078125, -1156.8646240234375, 333.559326171875, 5.77200937271118164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+8, 198624, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2309.3681640625, -1276.201416015625, 367.282318115234375, 0.462450981140136718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+9, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2213.349365234375, -1205.4609375, 340.632232666015625, 2.774219036102294921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+10, 194288, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2172.53955078125, -1180.19873046875, 400.43463134765625, 4.654965877532958984, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Swashbuckling Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383348 - Swashbuckling Dragonrider Rider) (possible waypoints or random movement)
(@CGUID+11, 196583, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2601.087646484375, -1193.888916015625, 322.199066162109375, 2.681076765060424804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bronze Timekeeper (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+12, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2247.684814453125, -1199.0474853515625, 337.418121337890625, 4.100639820098876953, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+13, 189093, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2248.520751953125, -1171.1666259765625, 330.915283203125, 5.021914958953857421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+14, 198623, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2338.5087890625, -1351.873291015625, 629.6827392578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+15, 194274, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2369.65771484375, -1176.739013671875, 406.234710693359375, 2.912349224090576171, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cavalier Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383319 - Cavalier Dragonrider Rider) (possible waypoints or random movement)
(@CGUID+16, 198464, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2278.041748046875, -1251.8125, 350.54248046875, 0.3277168869972229, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rostrum of Transformation (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+17, 199684, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2414.689208984375, -1331.0103759765625, 359.783355712890625, 2.954483270645141601, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Relastrasza (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+18, 192103, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2234.713623046875, -1165.59033203125, 333.669281005859375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+19, 198454, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2309.3681640625, -1276.201416015625, 367.224456787109375, 0.462450981140136718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 393906 - Visual)
(@CGUID+20, 194246, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2308.098876953125, -1221.638916015625, 348.38836669921875, 4.92221832275390625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+21, 194244, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2291.817626953125, -1223.7379150390625, 348.388458251953125, 5.385156631469726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+22, 194247, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2272.576416015625, -1292.2725830078125, 374.9444580078125, 0.692866086959838867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+23, 194247, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2155.835205078125, -1193.857666015625, 345.14227294921875, 2.37149810791015625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383247 - Conversation Aura: Talk/Roar/Laugh [DNT])
(@CGUID+24, 194243, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2285.7119140625, -1276.4166259765625, 351.051605224609375, 0.413819015026092529, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+25, 194248, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2298.77783203125, -1312.013916015625, 378.508575439453125, 0.873207926750183105, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+26, 191989, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2338.5087890625, -1351.873291015625, 629.6827392578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 376874 - Visual)
(@CGUID+27, 192103, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2271.529541015625, -1199.6875, 337.28900146484375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+28, 192103, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2212.39404296875, -1264.579833984375, 339.44171142578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+29, 194279, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2363.633544921875, -1147.7803955078125, 359.601806640625, 3.913079023361206054, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Reckless Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383326 - Reckless Dragonrider Rider) (possible waypoints or random movement)
(@CGUID+30, 193364, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2341.598876953125, -1295.076416015625, 348.277740478515625, 1.209475636482238769, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lithragosa (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+31, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2356.9677734375, -1227.533203125, 348.577362060546875, 1.596273183822631835, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+33, 194202, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2392.73779296875, -1206.46533203125, 345.04168701171875, 3.76481938362121582, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Inventive Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+34, 187442, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2362.640625, -1241.5364990234375, 340.54638671875, 2.244356155395507812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+35, 194196, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2390.52783203125, -1208.0538330078125, 345.076416015625, 0.623226642608642578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cautious Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+36, 194247, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2453.1875, -1172.3055419921875, 334.961822509765625, 4.103388786315917968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383247 - Conversation Aura: Talk/Roar/Laugh [DNT])
(@CGUID+37, 189093, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2372.31591796875, -1285.736083984375, 347.5361328125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+38, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2398.479248046875, -1192.986083984375, 349.258544921875, 2.20873260498046875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+39, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2363.366943359375, -1335.7205810546875, 374.09893798828125, 2.480439424514770507, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+40, 192103, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2413.729248046875, -1252.25, 344.95947265625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+41, 194201, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2409.9931640625, -1257.357666015625, 345.184051513671875, 3.764767169952392578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Touring Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+42, 194203, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2407.782958984375, -1258.9461669921875, 345.201446533203125, 0.623174309730529785, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Reckless Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+43, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2430.432373046875, -1257.9566650390625, 342.94183349609375, 0.855472862720489501, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+44, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2412.80810546875, -1281.8245849609375, 350.478424072265625, 4.717324733734130859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+45, 4075, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2383.435791015625, -1325.3021240234375, 359.722412109375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+46, 194606, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2386.2275390625, -1311.357666015625, 360.266357421875, 5.673665523529052734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Matthias Darkwall (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+47, 198060, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2414.007080078125, -1174.529541015625, 349.08544921875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skytop Observatory (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+48, 194196, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2448.225830078125, -1174.298583984375, 335.53472900390625, 0.008599880151450634, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cautious Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383247 - Conversation Aura: Talk/Roar/Laugh [DNT])
-- (@CGUID+49, 194607, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2477.3701171875, -1239.489990234375, 327.313995361328125, 1.146216511726379394, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wind Eagle (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+50, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2446.0625, -1229.890625, 333.3642578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+51, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2481.84033203125, -1239.0528564453125, 329.112945556640625, 1.547683000564575195, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+52, 198100, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2535.411376953125, -1160.37158203125, 393.954833984375, 5.772128105163574218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hope Kite (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+53, 4075, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2438.236083984375, -1315.795166015625, 359.721527099609375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+54, 194605, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2479.0400390625, -1238.7291259765625, 325.24664306640625, 1.146216511726379394, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bron (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+55, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2402.031005859375, -1367.746337890625, 363.26220703125, 3.53869938850402832, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+56, 194288, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2426.50439453125, -1363.4520263671875, 476.203125, 0.919254064559936523, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Swashbuckling Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383348 - Swashbuckling Dragonrider Rider) (possible waypoints or random movement)
(@CGUID+57, 194204, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2426.557373046875, -1371.44970703125, 360.883819580078125, 3.764767169952392578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Swashbuckling Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+58, 194203, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2424.34716796875, -1373.0382080078125, 361.092041015625, 0.623174309730529785, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Reckless Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+59, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2503.53466796875, -1303.875, 332.392425537109375, 0.855472862720489501, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+60, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2506.375244140625, -1264.8983154296875, 328.8360595703125, 1.534128069877624511, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+61, 187442, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2494.022705078125, -1250.763916015625, 320.978515625, 4.415902614593505859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+62, 4075, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2441.3681640625, -1359.8975830078125, 359.77142333984375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+63, 194196, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2481.3212890625, -1199.6336669921875, 329.43487548828125, 0.407562702894210815, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cautious Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+64, 194201, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2483.53125, -1198.045166015625, 329.283782958984375, 3.76481938362121582, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Touring Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+65, 194293, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2568.618896484375, -1167.1771240234375, 386.015380859375, 0.559526920318603515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+66, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2493.3828125, -1191.443115234375, 333.465606689453125, 2.737719297409057617, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+67, 194248, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2599.3369140625, -1212.4375, 386.0079345703125, 1.173266291618347167, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Saddled Proto-Drake (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+68, 191809, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2547.45263671875, -1184.75537109375, 329.56866455078125, 1.523447155952453613, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+69, 192103, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2528, -1191.09033203125, 326.952423095703125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+70, 198115, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2557.145751953125, -1172.55908203125, 386.020477294921875, 2.936239480972290039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Hope Kite (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+71, 194972, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2915.40283203125, -870.6961669921875, 258.470855712890625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 385038 - Visual) - !!! already present in database !!!
-- (@CGUID+72, 198618, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2915.40283203125, -870.6961669921875, 258.470855712890625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Skytop Observatory - Difficulty: 0) CreateObject1 - !!! already present in database !!!
(@CGUID+73, 193411, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2602.654541015625, -1190.1805419921875, 321.739501953125, 3.188044309616088867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Celormu (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+74, 193477, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2611.18310546875, -1152.0521240234375, 322.46112060546875, 4.357970237731933593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Azerastrasz (Area: Skytop Observatory - Difficulty: 0) CreateObject1
-- (@CGUID+75, 194274, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2459.227294921875, -1273.158935546875, 404.4886474609375, 0.57021111249923706, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cavalier Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383319 - Cavalier Dragonrider Rider) - !!! might be temporary spawn !!!
(@CGUID+76, 194274, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2363.298583984375, -1367.095458984375, 527.21075439453125, 0.776809990406036376, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cavalier Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383319 - Cavalier Dragonrider Rider)
-- (@CGUID+77, 194274, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2474.2255859375, -1263.551025390625, 401.182220458984375, 0.569483160972595214, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cavalier Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 383319 - Cavalier Dragonrider Rider) - !!! might be temporary spawn !!!
(@CGUID+78, 194201, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2472.015625, -1366.6475830078125, 341.61090087890625, 3.76481938362121582, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Touring Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+79, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2508.66845703125, -1374.3316650390625, 323.335601806640625, 0.855472862720489501, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+80, 194204, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2469.8056640625, -1368.236083984375, 342.430572509765625, 0.407562702894210815, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Swashbuckling Drakerider (Area: Skytop Observatory - Difficulty: 0) CreateObject1 (Auras: 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT])
(@CGUID+81, 4075, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2477.866455078125, -1401.12158203125, 342.495361328125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+82, 194432, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2461.939208984375, -1415.2396240234375, 346.918212890625, 1.116560101509094238, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Meehran Highlock (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+83, 189703, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2417.21533203125, -1385.625, 372.899688720703125, 4.706891059875488281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+84, 4075, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2352.62841796875, -1417.5555419921875, 366.90875244140625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+85, 189578, 2444, 13644, 13724, '0', '0', 0, 0, 0, 2339.229248046875, -1351.9600830078125, 585.8175048828125, 2.927952766418457031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Waygate (Area: Skytop Observatory - Difficulty: 0) CreateObject1
(@CGUID+86, 192148, 2444, 13644, 0, '0', '0', 0, 0, 0, 2133.97802734375, -1543.86767578125, -3.44045186042785644, 1.492011785507202148, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+87, 191696, 2444, 13644, 0, '0', '0', 0, 0, 0, 2003.548583984375, -1393.204833984375, 3.375647783279418945, 4.552174091339111328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mature Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 257448 - Cosmetic - Sleep Zzz)
(@CGUID+88, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2038.5086669921875, -1392.8541259765625, 2.40007328987121582, 4.844028472900390625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 257448 - Cosmetic - Sleep Zzz)
(@CGUID+89, 192151, 2444, 13644, 0, '0', '0', 0, 0, 0, 2058.37255859375, -1607.103515625, -21.6231689453125, 2.196266651153564453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+90, 192142, 2444, 13644, 0, '0', '0', 0, 0, 0, 2127.49365234375, -1501.0758056640625, -12.8766050338745117, 0.699924767017364501, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sea Turtle (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+91, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2018.125, -1373.3785400390625, 0.317382574081420898, 4.135156631469726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 257448 - Cosmetic - Sleep Zzz)
(@CGUID+92, 192149, 2444, 13644, 0, '0', '0', 0, 0, 0, 2038.5084228515625, -1565.2183837890625, -24.767953872680664, 2.318728446960449218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+93, 192151, 2444, 13644, 0, '0', '0', 0, 0, 0, 1952.2830810546875, -1585.666015625, -39.1462593078613281, 4.300436973571777343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+94, 182646, 2444, 13644, 0, '0', '0', 0, 0, 0, 1946.30859375, -1414.87060546875, 57.62146759033203125, 4.388634681701660156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Seagull (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+95, 182646, 2444, 13644, 0, '0', '0', 0, 0, 0, 1981.6396484375, -1381.39306640625, 57.62146759033203125, 5.049918174743652343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Seagull (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+96, 192126, 2444, 13644, 0, '0', '0', 0, 0, 0, 1923.6141357421875, -1335.7060546875, -2.18717837333679199, 0.013210322707891464, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Hydra (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+97, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2046.6767578125, -1320.453125, 16.95963096618652343, 2.927158832550048828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+98, 61158, 2444, 13644, 0, '0', '0', 0, 0, 0, 1978.7421875, -1318.2918701171875, 0.447260737419128417, 4.321356773376464843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+99, 189093, 2444, 13644, 0, '0', '0', 0, 0, 0, 1990.8590087890625, -1248.847412109375, 21.08452606201171875, 5.412772178649902343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+100, 60761, 2444, 13644, 0, '0', '0', 0, 0, 0, 1949.8033447265625, -1304.6824951171875, 0.64732980728149414, 2.44996809959411621, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+101, 182646, 2444, 13644, 0, '0', '0', 0, 0, 0, 1955.9207763671875, -1257.9051513671875, 73.58913421630859375, 4.846505165100097656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Seagull (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+102, 192133, 2444, 13644, 0, '0', '0', 0, 0, 0, 1826.8564453125, -1284.417236328125, -15.29541015625, 0.390511393547058105, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Coastal Eel (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+103, 182646, 2444, 13644, 0, '0', '0', 0, 0, 0, 1919.1549072265625, -1263.4312744140625, 73.5891265869140625, 4.726328849792480468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Seagull (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+104, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 1943.7987060546875, -1191.469970703125, 34.2891693115234375, 4.90130615234375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+105, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2007.4239501953125, -1121.98193359375, 130.0848846435546875, 3.735676288604736328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+106, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2002.5970458984375, -1095.2696533203125, 53.1648712158203125, 2.252621173858642578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+107, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 1989.6380615234375, -1045.3262939453125, 51.1667633056640625, 1.582836747169494628, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+108, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 1965.799560546875, -985.2667236328125, 50.51795196533203125, 6.123202323913574218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+109, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2047.1678466796875, -1081.266357421875, 132.72119140625, 1.166438698768615722, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+110, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 1982.058837890625, -1047.1988525390625, 132.2151031494140625, 5.658313751220703125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+111, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2016.907958984375, -1004.34722900390625, 61.46018600463867187, 3.710436105728149414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+112, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 1945.9581298828125, -1056.9520263671875, 133.0467376708984375, 5.046172142028808593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+113, 189093, 2444, 13644, 0, '0', '0', 0, 0, 0, 1950, -975, 51.14560317993164062, 3.566353559494018554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+114, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 1992.6893310546875, -947.4014892578125, 44.6926727294921875, 5.42214059829711914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+115, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 1959.2724609375, -975.42510986328125, 50.84311294555664062, 5.858262538909912109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+116, 188174, 2444, 13644, 0, '0', '0', 0, 0, 0, 1967.2413330078125, -910.388916015625, 10.66302871704101562, 3.82031869888305664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Destructive Flames (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+117, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2072.396484375, -1028.646484375, 133.8775482177734375, 3.558450937271118164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+118, 189093, 2444, 13644, 0, '0', '0', 0, 0, 0, 1911.6339111328125, -972.14501953125, 50.6791229248046875, 0.644867300987243652, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+119, 190608, 2444, 13644, 0, '0', '0', 0, 0, 0, 1966.685791015625, -877.64581298828125, -34.3633041381835937, 0.616413116455078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Carefree Hornswog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+120, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2100.3046875, -950.173095703125, 60.43680572509765625, 5.766545295715332031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+121, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2137.5, -987.5, 78.65496826171875, 4.247991561889648437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+122, 190608, 2444, 13644, 0, '0', '0', 0, 0, 0, 1959.859375, -868.3194580078125, -34.4143829345703125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Carefree Hornswog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+123, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2065.0751953125, -921.21282958984375, 74.39592742919921875, 4.955683231353759765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+124, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2156.383056640625, -976.334716796875, 76.28868865966796875, 4.937499523162841796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+125, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2171.76318359375, -956.79876708984375, 74.8500213623046875, 5.00841522216796875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+126, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2082.9990234375, -867.849853515625, 46.98225784301757812, 0.268575578927993774, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+127, 190608, 2444, 13644, 0, '0', '0', 0, 0, 0, 2065.100830078125, -807.44793701171875, -7.61459779739379882, 3.418981075286865234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Carefree Hornswog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+128, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2142.2685546875, -888.1953125, 13.10335445404052734, 4.914759635925292968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+129, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2112.90478515625, -871.04290771484375, 14.6435556411743164, 3.15126800537109375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+130, 189093, 2444, 13644, 0, '0', '0', 0, 0, 0, 2144.234375, -887.03564453125, 13.03172683715820312, 0.465883910655975341, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+131, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2177.960693359375, -958.0223388671875, 74.41953277587890625, 0.084860786795616149, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+132, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2141.821533203125, -879.128662109375, 11.69049739837646484, 5.26731729507446289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+133, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2226.12060546875, -975.74737548828125, 64.6124114990234375, 1.980405330657958984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+134, 191798, 2444, 13644, 0, '0', '0', 0, 0, 0, 2216.50048828125, -941.4429931640625, 46.93399429321289062, 5.764192104339599609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stray Gust (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+135, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2204.15283203125, -892.89093017578125, 5.520083904266357421, 1.174501776695251464, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+136, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2144.751708984375, -884.00518798828125, 12.51041603088378906, 2.379091739654541015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath)
(@CGUID+137, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2238.42138671875, -894.2857666015625, 3.833432912826538085, 6.010251998901367187, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+138, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2175.977783203125, -891.82855224609375, 8.430722236633300781, 3.892123222351074218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+139, 197582, 2444, 13644, 0, '0', '0', 0, 0, 0, 2183.482666015625, -1029.1510009765625, 148.246978759765625, 5.143532276153564453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Adventurous Argali (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+140, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2226.4677734375, -863.3055419921875, 4.052475929260253906, 0.107515864074230194, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+141, 192186, 2444, 13644, 0, '0', '0', 0, 0, 0, 2240.069091796875, -910.251220703125, 35.94501113891601562, 1.61840832233428955, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Territorial Axebeak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+142, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2194.881103515625, -893.8243408203125, 5.83493804931640625, 5.689154624938964843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+143, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2163.944580078125, -878.0555419921875, 7.919913291931152343, 5.883997440338134765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+144, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2173.525146484375, -876.39898681640625, 7.169803619384765625, 2.420773029327392578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+145, 192186, 2444, 13644, 0, '0', '0', 0, 0, 0, 2151.13232421875, -865.93603515625, 44.45870208740234375, 4.142806529998779296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Territorial Axebeak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+146, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2245.004150390625, -894.7996826171875, 7.589253902435302734, 6.078765392303466796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+147, 192103, 2444, 13644, 0, '0', '0', 0, 0, 0, 2153.97021484375, -862.7784423828125, 6.999291419982910156, 6.171800136566162109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+148, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2326.78759765625, -961.6058349609375, 20.83941841125488281, 2.459211587905883789, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+149, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2273.025146484375, -861.80523681640625, 3.80964207649230957, 2.053328990936279296, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+150, 192047, 2444, 13644, 0, '0', '0', 0, 0, 0, 2196.353515625, -823.958984375, 6.485757350921630859, 0.914929389953613281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Scruffy Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+151, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2317.0751953125, -859.5390625, 4.344693660736083984, 4.901935100555419921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+152, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2291.724853515625, -891.58294677734375, 4.037903308868408203, 1.175370573997497558, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+153, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2245.99951171875, -849.793212890625, 8.732052803039550781, 5.055855274200439453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+154, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2235.494384765625, -854.68890380859375, 4.316357135772705078, 4.760756492614746093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+155, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2242.87158203125, -830.248291015625, 13.92709922790527343, 2.379091739654541015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+156, 192059, 2444, 13644, 0, '0', '0', 0, 0, 0, 2268.286376953125, -850.42535400390625, 6.253293991088867187, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Palamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+157, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2239.520263671875, -831.53399658203125, 13.44783973693847656, 5.949816226959228515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+158, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2323.1279296875, -898.3643798828125, 4.045641422271728515, 0.325131803750991821, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+159, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2237.6572265625, -829.5372314453125, 14.05504226684570312, 2.493304967880249023, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+160, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2250.064697265625, -847.12646484375, 5.525152206420898437, 0.932125091552734375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+161, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2222.193359375, -834.9891357421875, 12.22952461242675781, 3.649509668350219726, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+162, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2167.68212890625, -846.14093017578125, 3.887851476669311523, 2.825935840606689453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+163, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2176.345458984375, -809.1781005859375, 5.10810708999633789, 5.664591789245605468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+164, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2185.392578125, -804.109375, 4.75984954833984375, 2.840222358703613281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+165, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2354.68115234375, -874.35919189453125, 5.269356250762939453, 5.725517749786376953, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+166, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2289.01953125, -851.8983154296875, 4.18657684326171875, 5.732106208801269531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+167, 192059, 2444, 13644, 0, '0', '0', 0, 0, 0, 2306.5693359375, -903.041259765625, 5.164260387420654296, 5.115742683410644531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Palamanther (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+168, 191817, 2444, 13644, 0, '0', '0', 0, 0, 0, 2324.243408203125, -842.521240234375, 6.307490825653076171, 0.293979942798614501, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shores Snake (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+169, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2306.117431640625, -955.7977294921875, 23.09247207641601562, 6.186298847198486328, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+170, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2326.960205078125, -987.888916015625, 27.63709259033203125, 0.429583847522735595, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 367419 - Channel: Push Water Current [DNT])
(@CGUID+171, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2364.265625, -953.82464599609375, 20.61556243896484375, 1.128715276718139648, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 367419 - Channel: Push Water Current [DNT])
(@CGUID+172, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2373.054931640625, -857.37835693359375, 4.139475822448730468, 3.294430732727050781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+173, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2341.87548828125, -919.663818359375, 7.881449222564697265, 4.792718887329101562, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+174, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2357.857421875, -987.81201171875, 20.85203361511230468, 1.943456768989562988, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+175, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2359.674072265625, -875.3546142578125, 5.284531593322753906, 3.875713348388671875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+176, 196820, 2444, 13644, 0, '0', '0', 0, 0, 0, 2348.366455078125, -970.75518798828125, 21.37348556518554687, 5.043906688690185546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Zikkori (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+177, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2357.6103515625, -972.7987060546875, 20.89096450805664062, 2.93825531005859375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+178, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2414.71923828125, -892.10614013671875, 4.04318094253540039, 0.359861046075820922, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+179, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2370.364501953125, -1054.0521240234375, 20.08554649353027343, 2.576331853866577148, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+180, 187617, 2444, 13644, 0, '0', '0', 0, 0, 0, 2355.44091796875, -1106.1129150390625, 22.6224365234375, 1.125521063804626464, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Acequian (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+181, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2367.62158203125, -1071.3367919921875, 27.16386985778808593, 5.2327423095703125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+182, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2339.229248046875, -1080.6146240234375, 34.59579849243164062, 5.527222156524658203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+183, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2330.3369140625, -1093.1649169921875, 17.61662673950195312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+184, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2339.43359375, -1089.9765625, 21.04785728454589843, 2.318783044815063476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+185, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2364.12451171875, -1086.44873046875, 21.92486190795898437, 1.165940284729003906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+186, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2361.843017578125, -1036.8614501953125, 22.59672355651855468, 1.803552746772766113, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+187, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2383.23095703125, -1101.798583984375, 27.0370330810546875, 5.488179683685302734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+188, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2322.114501953125, -1104.90625, 25.55224609375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+189, 192186, 2444, 13644, 0, '0', '0', 0, 0, 0, 2389.69580078125, -885.207763671875, 34.50432968139648437, 3.035160303115844726, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Territorial Axebeak (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+190, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2340.36962890625, -1133.9207763671875, 22.17037582397460937, 1.614363074302673339, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+191, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2337.822021484375, -1084.4002685546875, 20.76086997985839843, 4.392525672912597656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+192, 190363, 2444, 13644, 0, '0', '0', 0, 0, 0, 2371.326416015625, -1075.392333984375, 27.69219017028808593, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+193, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2376.72802734375, -1120.793212890625, 25.57015609741210937, 3.615133285522460937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+194, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2323.166748046875, -1117.826416015625, 29.18460273742675781, 4.4453887939453125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+195, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2337.864501953125, -1120.3646240234375, 18.89354896545410156, 1.527927398681640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+196, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2324.48095703125, -1133.3055419921875, 37.65663528442382812, 6.242236614227294921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+197, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2341.625, -1143.0347900390625, 25.55169486999511718, 4.434883594512939453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+198, 197763, 2444, 13644, 0, '0', '0', 0, 0, 0, 2332.55029296875, -1144.4132080078125, 26.24619483947753906, 5.087962627410888671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Glittery Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+199, 190363, 2444, 13644, 0, '0', '0', 0, 0, 0, 2389.8525390625, -1099.40625, 37.83253860473632812, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+200, 190363, 2444, 13644, 0, '0', '0', 0, 0, 0, 2321.177001953125, -1125.1007080078125, 32.49819564819335937, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+201, 191796, 2444, 13644, 0, '0', '0', 0, 0, 0, 2331.91552734375, -1133.256103515625, 22.28202247619628906, 2.483618497848510742, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Drop (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+202, 190363, 2444, 13644, 0, '0', '0', 0, 0, 0, 2341.7900390625, -1147.48095703125, 39.83568191528320312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+203, 190363, 2444, 13644, 0, '0', '0', 0, 0, 0, 2338.1806640625, -1150.46533203125, 37.82595443725585937, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- (Bunny) Sessile (Area: 0 - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+204, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2444.9345703125, -888.1285400390625, 4.723107337951660156, 5.338314056396484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+205, 192186, 2444, 13644, 0, '0', '0', 0, 0, 0, 2431.8603515625, -920.93255615234375, 48.03902435302734375, 3.669508934020996093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Territorial Axebeak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+206, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2448.669189453125, -889.856201171875, 4.568794727325439453, 4.274043083190917968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+207, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2498.882080078125, -863.982666015625, 4.532250404357910156, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+208, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2437.3271484375, -890.703125, 5.137714385986328125, 2.980777740478515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+209, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2449.8037109375, -887.487548828125, 4.600437164306640625, 0.281262904405593872, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+210, 187948, 2444, 13644, 0, '0', '0', 0, 0, 0, 2443.741943359375, -823.5946044921875, 4.341794967651367187, 3.427700996398925781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Diverted Stream (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+211, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2372.211669921875, -840.12139892578125, 4.710305213928222656, 2.622198343276977539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+212, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2520.8134765625, -895.27008056640625, 10.52266979217529296, 0.054167330265045166, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+213, 191817, 2444, 13644, 0, '0', '0', 0, 0, 0, 2447.325927734375, -821.90093994140625, 4.551776409149169921, 2.17250680923461914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shores Snake (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+214, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2505.5654296875, -871.2723388671875, 2.344237089157104492, 0.864316046237945556, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+215, 191696, 2444, 13644, 0, '0', '0', 0, 0, 0, 2583.86572265625, -869.45916748046875, 3.316653728485107421, 5.817065238952636718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mature Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+216, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2417.082275390625, -816.5491943359375, 43.87494659423828125, 0.600157022476196289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+217, 191817, 2444, 13644, 0, '0', '0', 0, 0, 0, 2405.86279296875, -834.1407470703125, 8.112456321716308593, 5.548044204711914062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shores Snake (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+218, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2522.195556640625, -846.38079833984375, 4.056042671203613281, 3.45514082908630371, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+219, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2488.69140625, -863.75628662109375, 4.185084342956542968, 3.541087865829467773, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+220, 187393, 2444, 13644, 0, '0', '0', 0, 0, 0, 2471.553955078125, -776.326416015625, 51.4290618896484375, 1.490525484085083007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Displaced Earth (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+221, 187393, 2444, 13644, 0, '0', '0', 0, 0, 0, 2397.717041015625, -786.717041015625, 38.68494796752929687, 4.38812255859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Displaced Earth (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+222, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2508.3251953125, -865.78057861328125, 32.64255523681640625, 1.874289155006408691, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+223, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2506.416259765625, -867.46142578125, 3.367192506790161132, 0.171479389071464538, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+224, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2502.046630859375, -878.148681640625, 10.14076137542724609, 5.4262847900390625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+225, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2520.677734375, -888.1324462890625, 7.960054874420166015, 4.361230850219726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+226, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2513.7724609375, -864.49273681640625, 7.866270065307617187, 5.323262214660644531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+227, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2501.208251953125, -871.8507080078125, 3.899744510650634765, 5.02658700942993164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+228, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2528.84912109375, -869.3502197265625, 5.098353862762451171, 3.073498725891113281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+229, 187745, 2444, 13644, 0, '0', '0', 0, 0, 0, 2434.9658203125, -721.1971435546875, 32.93615341186523437, 3.319704771041870117, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Disoriented Watcher (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+230, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2541.511962890625, -852.16900634765625, 4.700037479400634765, 4.042265892028808593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+231, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2574.697998046875, -860.363037109375, 3.316653728485107421, 5.76471710205078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+232, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2484.983154296875, -810.96942138671875, 4.351706504821777343, 4.780758857727050781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+233, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2526.393310546875, -888.60308837890625, 9.599456787109375, 0.730285465717315673, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+234, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2576.89111328125, -861.05316162109375, 3.316653728485107421, 0.684883713722229003, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+235, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2583.433349609375, -831.84466552734375, 5.077470779418945312, 1.600153803825378417, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+236, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2523.88232421875, -798.99969482421875, 9.209360122680664062, 2.240514993667602539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+237, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2512.755126953125, -802.42242431640625, 8.02483367919921875, 3.532573938369750976, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+238, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2562.97998046875, -852.69097900390625, 5.166307449340820312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+239, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2528.968994140625, -787.3502197265625, 4.455370426177978515, 2.768671751022338867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+240, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2581.06689453125, -864.601806640625, 7.883211135864257812, 3.357942581176757812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+241, 192013, 2444, 13644, 0, '0', '0', 0, 0, 0, 2582.5859375, -854.8211669921875, 4.459531784057617187, 3.105386972427368164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+242, 192013, 2444, 13644, 0, '0', '0', 0, 0, 0, 2580.204345703125, -859.8846435546875, 3.316653728485107421, 5.281879425048828125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+243, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2577.097900390625, -860.26953125, 10.04618358612060546, 1.12087249755859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+244, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2521.55322265625, -792.61029052734375, 10.746978759765625, 4.987046718597412109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+245, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2616.02783203125, -887.85467529296875, 5.988818168640136718, 2.591036796569824218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+246, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2596.616455078125, -869.98614501953125, 5.730516433715820312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+247, 191696, 2444, 13644, 0, '0', '0', 0, 0, 0, 2681.30126953125, -875.578125, 4.220772266387939453, 2.396818876266479492, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mature Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+248, 191696, 2444, 13644, 0, '0', '0', 0, 0, 0, 2654.45263671875, -779.92828369140625, 3.954841136932373046, 2.804566144943237304, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mature Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+249, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2653.421142578125, -859.17681884765625, 5.287380695343017578, 0.932239711284637451, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+250, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2604.260498046875, -827.6007080078125, 4.999925613403320312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+251, 192047, 2444, 13644, 0, '0', '0', 0, 0, 0, 2610.0673828125, -829.07470703125, 4.52422189712524414, 2.199071884155273437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Scruffy Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+252, 191696, 2444, 13644, 0, '0', '0', 0, 0, 0, 2647.311767578125, -738.8507080078125, 3.83254861831665039, 3.636638402938842773, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Mature Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+253, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2654.161376953125, -894.84149169921875, 4.499983787536621093, 2.741928815841674804, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+254, 192047, 2444, 13644, 0, '0', '0', 0, 0, 0, 2616.970458984375, -817.91436767578125, 3.895146846771240234, 3.811858654022216796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Scruffy Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+255, 191697, 2444, 13644, 0, '0', '0', 0, 0, 0, 2696.7666015625, -912.32989501953125, 9.916110992431640625, 2.268427848815917968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+256, 192047, 2444, 13644, 0, '0', '0', 0, 0, 0, 2607.7216796875, -814.50225830078125, 4.151257514953613281, 5.545835494995117187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Scruffy Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+257, 191697, 2444, 13644, 0, '0', '0', 0, 0, 0, 2678.515625, -769.73785400390625, 2.121527671813964843, 5.101063251495361328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ancient Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+258, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2654.142822265625, -895.14739990234375, 4.55777597427368164, 3.178521156311035156, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+259, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 2617.05419921875, -852.27276611328125, 52.12514114379882812, 4.85128641128540039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+260, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2656.83203125, -772.10107421875, 3.466024160385131835, 5.217741012573242187, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+261, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2585.73681640625, -932.8875732421875, 51.63729095458984375, 1.980649709701538085, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+262, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2650, -766.666015625, 3.885334968566894531, 4.965888023376464843, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+263, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2645.044677734375, -864.7763671875, 6.496558189392089843, 0.680232048034667968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+264, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2577.101806640625, -758.22393798828125, 7.172797203063964843, 0.014351485297083854, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+265, 191792, 2444, 13644, 0, '0', '0', 0, 0, 0, 2597.005859375, -759.23236083984375, 4.242955207824707031, 1.755549550056457519, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+266, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2655.330322265625, -827.79547119140625, 9.251074790954589843, 5.705699920654296875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+267, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 2642.93310546875, -868.63616943359375, 53.12514114379882812, 2.637399196624755859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+268, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 2639.59423828125, -873.155029296875, 53.12514114379882812, 2.472378730773925781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+269, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2648.9912109375, -827.4512939453125, 6.055902957916259765, 2.010426998138427734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+270, 189122, 2444, 13644, 0, '0', '0', 0, 0, 0, 2659.27685546875, -835.0867919921875, 7.438121795654296875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Palamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+271, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2693.722900390625, -875.99578857421875, 4.212206840515136718, 5.47097635269165039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+272, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2690.366943359375, -776.2352294921875, 2.164362192153930664, 5.103973388671875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+273, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2700.528564453125, -809.19189453125, 4.1669921875, 6.167938232421875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+274, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2710.867919921875, -807.224609375, 4.552896022796630859, 0.49685215950012207, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+275, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2690.625, -775, 2, 5.139110565185546875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+276, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2606.375732421875, -928.1939697265625, 49.85562896728515625, 4.09686899185180664, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+277, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2662.131103515625, -858.154541015625, 5.15631103515625, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+278, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2618.244140625, -920.5103759765625, 45.78028106689453125, 3.336116552352905273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+279, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2599.67578125, -933.779296875, 52.6575164794921875, 4.546598434448242187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+280, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2712.5, -895.833984375, 2.203408718109130859, 5.18114471435546875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+281, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2606.820556640625, -914.7442626953125, 63.14472198486328125, 1.280005335807800292, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+282, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2608.649658203125, -935.41741943359375, 53.1280670166015625, 0.310798794031143188, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+283, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2679.42626953125, -736.51416015625, 4.048961639404296875, 3.733489274978637695, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+284, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2667.139892578125, -774.50177001953125, 4.867391109466552734, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+285, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2611.107421875, -935.947265625, 53.49731826782226562, 1.200815916061401367, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+286, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2626.99072265625, -746.66217041015625, 6.435302734375, 6.057523250579833984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+287, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2629.72412109375, -749.80877685546875, 8.838413238525390625, 2.82053232192993164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+288, 187683, 2444, 13644, 0, '0', '0', 0, 0, 0, 2631.0712890625, -931.5538330078125, 48.32645416259765625, 0.429792642593383789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+289, 187863, 2444, 13644, 0, '0', '0', 0, 0, 0, 2597.850830078125, -936.91748046875, 53.43718719482421875, 3.832488775253295898, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Duckling (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+290, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2639.53857421875, -925.3961181640625, 47.18225479125976562, 1.622746706008911132, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+291, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2617.471923828125, -935.7733154296875, 56.27862548828125, 6.107507228851318359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+292, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2715.47705078125, -759.49407958984375, 3.861363172531127929, 0.790229022502899169, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+293, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2685.912353515625, -783.0694580078125, 5.358633995056152343, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+294, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2691.2509765625, -909.36114501953125, 10.97947120666503906, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+295, 192059, 2444, 13644, 0, '0', '0', 0, 0, 0, 2692.309814453125, -890.67706298828125, 6.212379932403564453, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Palamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+296, 192047, 2444, 13644, 0, '0', '0', 0, 0, 0, 2701.6474609375, -801.44732666015625, 4.293980121612548828, 2.281376361846923828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Scruffy Ottuk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+297, 191695, 2444, 13644, 0, '0', '0', 0, 0, 0, 2721.52490234375, -763.17657470703125, 3.709446907043457031, 2.829322338104248046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Stalking Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+298, 191694, 2444, 13644, 0, '0', '0', 0, 0, 0, 2671.5791015625, -707.599609375, 5.772485256195068359, 0.210615709424018859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Young Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+299, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 2707.98193359375, -805.305908203125, 58.99457550048828125, 2.145425081253051757, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+300, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2718.352783203125, -885.1121826171875, 7.108972072601318359, 1.499014854431152343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+301, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2714.488525390625, -817.78192138671875, 6.086970806121826171, 0.059144314378499984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+302, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2736.634521484375, -927.6805419921875, 6.510297775268554687, 1.045092105865478515, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+303, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2724.804443359375, -941.24603271484375, 29.32654762268066406, 4.31410980224609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+304, 191618, 2444, 13644, 0, '0', '0', 0, 0, 0, 2779.6337890625, -821.93231201171875, 4.88741302490234375, 2.956079006195068359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+305, 187442, 2444, 13644, 0, '0', '0', 0, 0, 0, 2723.6259765625, -808.20794677734375, 58.99457550048828125, 6.256827354431152343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+306, 191797, 2444, 13644, 0, '0', '0', 0, 0, 0, 2708.811767578125, -910.95660400390625, 13.13225269317626953, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Steam Drip (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+307, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2735.310791015625, -849.2698974609375, 7.350016117095947265, 2.987244129180908203, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+308, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2781.953857421875, -928.500732421875, 4.041923046112060546, 2.365610122680664062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+309, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2740.7841796875, -898.92919921875, 5.323538780212402343, 4.761920928955078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+310, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2775.0869140625, -991.24652099609375, 6.551600456237792968, 5.439899444580078125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+311, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2768.83154296875, -860.985595703125, 8.987873077392578125, 5.859490394592285156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+312, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2776.7353515625, -971.66143798828125, 5.632613182067871093, 1.590808391571044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 391254 - Hearty)
(@CGUID+313, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2730.80517578125, -955.92620849609375, 29.50928688049316406, 0.383326917886734008, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+314, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2744.37890625, -933.341796875, 3.965018272399902343, 5.51806640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+315, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2768.220703125, -939.283447265625, 5.300523757934570312, 2.373744964599609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+316, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2742.074462890625, -925.68634033203125, 5.548491954803466796, 5.798342704772949218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+317, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2777.321044921875, -984.066650390625, 8.68011474609375, 2.312248468399047851, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+318, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2822.049560546875, -965.50177001953125, 15.950164794921875, 0.06204313039779663, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+319, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2801.031982421875, -948.34759521484375, 4.146519660949707031, 5.279328346252441406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+320, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2778.16015625, -967.9967041015625, 5.155136585235595703, 3.96185922622680664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+321, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2801.561279296875, -956.46990966796875, 4.191227912902832031, 0.419123381376266479, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+322, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2802.16357421875, -887.15863037109375, 12.94532203674316406, 1.570796370506286621, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+323, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2782.67578125, -981.232421875, 7.361967086791992187, 2.30901336669921875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+324, 191624, 2444, 13644, 0, '0', '0', 0, 0, 0, 2834.83154296875, -921.30206298828125, 29.23309707641601562, 5.275863170623779296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+325, 186576, 2444, 13644, 0, '0', '0', 0, 0, 0, 2862.21533203125, -957.359375, 27.81363105773925781, 0.143227994441986083, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Watcher (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 86603 - Stealth)
(@CGUID+326, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2820.53466796875, -966.84552001953125, 16.33159828186035156, 0.508725523948669433, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+327, 188296, 2444, 13644, 0, '0', '0', 0, 0, 1, 2900.506103515625, -1014.13372802734375, 45.3618927001953125, 3.455976486206054687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+328, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2785.276123046875, -1075.1822509765625, 0.679540216922760009, 0.34610334038734436, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+329, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2823.18310546875, -1012.86798095703125, 4.55584716796875, 4.386857986450195312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+330, 191833, 2444, 13644, 0, '0', '0', 0, 0, 1, 2911.609375, -984.37677001953125, 45.39093780517578125, 0.453948587179183959, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+331, 188296, 2444, 13644, 0, '0', '0', 0, 0, 1, 2910.279541015625, -953.43402099609375, 33.98114776611328125, 3.015063762664794921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+332, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2789.628662109375, -1021.9674072265625, 4.81590127944946289, 0.649985432624816894, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+333, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2816.326171875, -1019.2662353515625, -0.04336503893136978, 3.447651624679565429, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+334, 191833, 2444, 13644, 0, '0', '0', 0, 0, 1, 2941.9931640625, -931.96527099609375, 38.77661895751953125, 5.751988887786865234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+335, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2832.76171875, -1078.3458251953125, -0.15713398158550262, 0.368852436542510986, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+336, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2827.22119140625, -1031.105224609375, -0.16900718212127685, 4.310479164123535156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+337, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2861.0888671875, -847.90557861328125, 75.9981842041015625, 4.070090293884277343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+338, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2786.083251953125, -786.78125, 3.849022388458251953, 2.505356550216674804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+339, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2853.5400390625, -846.80328369140625, 73.9327392578125, 2.151406526565551757, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+340, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2774.418212890625, -831.0723876953125, 4.121698379516601562, 5.799857139587402343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+341, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2830.730712890625, -804.55914306640625, 37.76016998291015625, 1.492525219917297363, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+342, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2794.9423828125, -807.56146240234375, 11.89212608337402343, 5.337564945220947265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+343, 192069, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2825.7080078125, -829.6656494140625, 36.07486343383789062, 0.962222874164581298, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Runt (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+344, 191323, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2819.080078125, -833.5074462890625, 34.89223861694335937, 2.660027265548706054, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Runt (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+345, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2859.53564453125, -768.3680419921875, 36.8578033447265625, 5.275863170623779296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+346, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2789.182373046875, -748.8038330078125, 3.838371753692626953, 2.402677774429321289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+347, 193217, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2669.543212890625, -820.92633056640625, 17.28539276123046875, 5.817708969116210937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Drakewing (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+348, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2827.670654296875, -803.86456298828125, 37.1663818359375, 1.516056537628173828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+349, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2782.116455078125, -767.68115234375, 5.240264892578125, 3.79213714599609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+350, 189093, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2829.643310546875, -784.372314453125, 37.47730255126953125, 2.001696348190307617, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+351, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2830.380126953125, -739.826416015625, 5.234446048736572265, 1.707850575447082519, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+352, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2790.154052734375, -771.4051513671875, 4.113916397094726562, 5.485826015472412109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+353, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2826.0068359375, -790.5660400390625, 37.47126007080078125, 0.408922851085662841, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+354, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2787.643310546875, -757.3480224609375, 3.755038738250732421, 1.108447670936584472, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+355, 187442, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2708.124267578125, -792.62689208984375, 57.99457168579101562, 4.522768020629882812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Waking Duck (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+356, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2768.08740234375, -739.86083984375, 9.25539398193359375, 3.236822128295898437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+357, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2766.721435546875, -703.7725830078125, 4.858408451080322265, 4.754987716674804687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+358, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2779.08935546875, -697.734375, 4.87114572525024414, 5.574651241302490234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+359, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2743.910400390625, -738.22320556640625, 5.410830497741699218, 2.088993072509765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+360, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2802.18212890625, -752.1510009765625, 9.626532554626464843, 5.369736671447753906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+361, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2814.63134765625, -735.2420654296875, 8.464591026306152343, 4.394536018371582031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+362, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2822.45556640625, -742.47119140625, 5.29109954833984375, 2.544105052947998046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+363, 192069, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2857.294189453125, -773.77777099609375, 38.46837615966796875, 2.529478788375854492, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Runt (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+364, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2857.392333984375, -771.97918701171875, 37.89333343505859375, 3.42676854133605957, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+365, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2855.236083984375, -772.65625, 38.13347244262695312, 0.674166977405548095, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+366, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2735.53076171875, -700.92889404296875, 5.77679300308227539, 0.507022440433502197, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+367, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2764.00146484375, -699.74346923828125, 9.410673141479492187, 2.445250511169433593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+368, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2765.506103515625, -694.9224853515625, 6.345433712005615234, 5.617506027221679687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+369, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2795.5185546875, -716.368408203125, 9.203342437744140625, 4.119496822357177734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+370, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2782.924560546875, -695.9853515625, 4.177394866943359375, 2.956234216690063476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+371, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2695.18359375, -735.86212158203125, 6.261821269989013671, 5.412207603454589843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+372, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2726.312744140625, -715.92486572265625, 8.507973670959472656, 1.891670703887939453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+373, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2835.08349609375, -710.73809814453125, 9.975211143493652343, 1.961207032203674316, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+374, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2858.9248046875, -732.435791015625, 7.770284175872802734, 3.374944686889648437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+375, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2887.5224609375, -758.06787109375, 34.04994964599609375, 0.967220842838287353, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+376, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2883.799072265625, -722.54443359375, 8.145962715148925781, 1.951443076133728027, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+377, 189093, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2869.536376953125, -685.26251220703125, 33.56336212158203125, 5.87769937515258789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+378, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2803.257568359375, -652.04718017578125, 45.39794158935546875, 0.38686525821685791, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+379, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2775.882568359375, -672.20037841796875, 15.86100578308105468, 0.256434351205825805, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+380, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2760.453125, -673.1544189453125, 15.46347427368164062, 6.211495876312255859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+381, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2906.243896484375, -717.5242919921875, 5.695939064025878906, 4.30268716812133789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+382, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2911.048583984375, -723.05877685546875, 2.246282815933227539, 0.334771513938903808, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+383, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2924.494140625, -695.30859375, 28.45401382446289062, 4.497747421264648437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+384, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2898.369140625, -753.98974609375, 33.09401702880859375, 1.588681578636169433, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+385, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2910.8818359375, -721.5357666015625, 8.352959632873535156, 5.848581790924072265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+386, 191553, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2793.878173828125, -640.0445556640625, 48.09119796752929687, 5.761858940124511718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+387, 191553, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2902.30859375, -647.31964111328125, 35.21379852294921875, 4.718248367309570312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 391254 - Hearty)
(@CGUID+388, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2886.978515625, -712.5, 4.300523757934570312, 0.319947361946105957, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+389, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2948.746826171875, -746.64459228515625, 7.500525474548339843, 3.206388235092163085, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+390, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3003.366455078125, -752.1492919921875, 5.45989227294921875, 4.268346309661865234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+391, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2956.033447265625, -753.82745361328125, 2.235886335372924804, 6.200408935546875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+392, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2979.86474609375, -708.3602294921875, 19.95564651489257812, 0.613312423229217529, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+393, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2963.080078125, -768.17950439453125, 7.956820964813232421, 1.435711503028869628, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+394, 191639, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3016.51611328125, -687.73931884765625, 72.4907989501953125, 0.163880810141563415, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vibrant Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+395, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2997.5810546875, -728.41571044921875, 16.7662506103515625, 2.976765155792236328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+396, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2995.6943359375, -742.70538330078125, 7.708638191223144531, 3.394934654235839843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+397, 191553, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2884.8896484375, -629.962890625, 41.495086669921875, 4.128697395324707031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Argali (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+398, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3003.30078125, -792.2762451171875, 7.70194244384765625, 0.946601390838623046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+399, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3061.046142578125, -756.37677001953125, 28.75663948059082031, 2.921557903289794921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+400, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3005.834228515625, -794.82220458984375, 3.876398563385009765, 2.570056915283203125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+401, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3004.32958984375, -772.6580810546875, 7.236270427703857421, 5.694620132446289062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+402, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3050.612060546875, -849.62847900390625, 11.25384712219238281, 0.307751685380935668, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+403, 191620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3025, -785.416015625, 5.26429605484008789, 3.768157243728637695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Swoglet (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+404, 191619, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3071.3291015625, -613.6649169921875, 23.21394920349121093, 4.769616127014160156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Mature Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+405, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3004.056396484375, -685.5306396484375, 17.48430824279785156, 2.33872842788696289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+406, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3009.77001953125, -883.21527099609375, 42.01642227172851562, 2.40634775161743164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+407, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3013.446533203125, -854.81353759765625, 45.839385986328125, 0.677129626274108886, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+408, 191639, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3074.381591796875, -658.4993896484375, 39.1016082763671875, 2.409332752227783203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vibrant Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+409, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3057.428955078125, -752.43402099609375, 28.30768585205078125, 0.049843188375234603, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+410, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3050.11328125, -839.5045166015625, 3.002436161041259765, 0.639944851398468017, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+411, 192069, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3058.435791015625, -751.3055419921875, 28.07573509216308593, 4.897690296173095703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Runt (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+412, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3059.67529296875, -752.17706298828125, 28.23029136657714843, 3.08346104621887207, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+413, 191624, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3138.51904296875, -747.76739501953125, 30.020660400390625, 3.187853813171386718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Vorquin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+414, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3066.70068359375, -802.56878662109375, 3.878933429718017578, 1.651946306228637695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+416, 191618, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3106.85595703125, -678.19268798828125, 25.80711555480957031, 6.188411712646484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Hornswog (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+417, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3050.11376953125, -690.6640625, 17.87054634094238281, 2.333100080490112304, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+418, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3035.248291015625, -822.54168701171875, 4.41876220703125, 1.801016211509704589, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+419, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3121.037109375, -824.234375, 12.47132205963134765, 3.12596893310546875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+420, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3004.172119140625, -884.71502685546875, 43.17263031005859375, 5.215704917907714843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+421, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3094.9189453125, -841.7486572265625, 6.509301662445068359, 5.841832160949707031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+422, 195853, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3195.522216796875, -793.9423828125, 30.60482406616210937, 4.47884368896484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Trainee (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+423, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3084.29443359375, -878.06182861328125, 3.277899980545043945, 2.766997337341308593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+424, 194231, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3065.81640625, -870.1397705078125, 41.09309005737304687, 3.365959405899047851, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Whimpering Whelpling (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 393301 - Whimpering)
(@CGUID+425, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3036.619140625, -891.4814453125, 35.5820159912109375, 2.246634244918823242, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+426, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3101.599853515625, -806.1251220703125, 3.221737861633300781, 1.931154251098632812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+427, 188296, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3004.096435546875, -969.029541015625, 32.0706634521484375, 6.096005439758300781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+428, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3022.080322265625, -905.04534912109375, 35.67211151123046875, 5.468607902526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+429, 191639, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3080.428955078125, -685.12762451171875, 97.6157989501953125, 4.251270294189453125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vibrant Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+430, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3124.8935546875, -748.38507080078125, 28.75650215148925781, 6.194747447967529296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+431, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3060.1953125, -900.401123046875, 35.15877532958984375, 4.62575387954711914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+432, 191809, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3079.441162109375, -710.84027099609375, 48.55913543701171875, 1.553610086441040039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+433, 186684, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3065.841796875, -894.7142333984375, 118.0328216552734375, 5.548147201538085937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Phoenix (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+434, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3155.8720703125, -868.80078125, 28.88953208923339843, 5.197867393493652343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+435, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3041.79052734375, -937.90753173828125, 37.73502731323242187, 5.295180797576904296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+436, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3013.690185546875, -1007.93231201171875, 33.97342681884765625, 1.978208780288696289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+437, 191809, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3157.246337890625, -908.175537109375, 32.70479202270507812, 3.971804141998291015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+438, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3087.26416015625, -917.87066650390625, 0.49924623966217041, 0.16791728138923645, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+439, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3102.92822265625, -935.66082763671875, 3.561475992202758789, 4.361295223236083984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+440, 191809, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3162.982177734375, -895.28533935546875, 31.23499870300292968, 4.300152301788330078, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+441, 195853, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3245.623291015625, -825.0225830078125, 35.19739151000976562, 3.443324089050292968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Trainee (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+442, 191809, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3135.73486328125, -866.1607666015625, 32.80914688110351562, 2.41664290428161621, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+443, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3116.3876953125, -890.699951171875, 4.43079996109008789, 3.202424049377441406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+444, 186684, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3182.903564453125, -851.28704833984375, 80.35880279541015625, 1.154138088226318359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lava Phoenix (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+445, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2982.7509765625, -917.44439697265625, 33.89801025390625, 4.070332527160644531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
-- (@CGUID+446, 186593, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3112.778564453125, -1001.52947998046875, 36.31367111206054687, 5.4474639892578125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ruby Watcher (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 70628 - Permanent Feign Death) - !!! already present in database !!!
(@CGUID+447, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2974.3349609375, -931.75, 32.9911346435546875, 0.431316226720809936, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+448, 186684, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3044.908447265625, -994.1348876953125, 112.9184951782226562, 1.558901667594909667, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Phoenix (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+449, 194231, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2962.396728515625, -919.71875, 35.00797271728515625, 5.350468635559082031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Whimpering Whelpling (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 393301 - Whimpering)
(@CGUID+450, 192059, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3121.950439453125, -943.91668701171875, 2.526788711547851562, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Palamanther (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+451, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3046.100830078125, -978.5819091796875, 35.30127334594726562, 4.86407470703125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+452, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2989.022705078125, -962.619873046875, 31.98733139038085937, 4.694334030151367187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+453, 186684, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2957.08203125, -893.6495361328125, 124.8579254150390625, 0.315295785665512084, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Phoenix (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+454, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3083.2919921875, -986.060791015625, 6.038462162017822265, 5.40361642837524414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+455, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2947.4326171875, -946.33984375, 33.22153472900390625, 5.617637157440185546, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+456, 186684, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2935.407470703125, -996.76220703125, 136.94122314453125, 5.794621467590332031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Lava Phoenix (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+457, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2967.80517578125, -994.20880126953125, 35.0090484619140625, 2.916706323623657226, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+458, 4075, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2924.463134765625, -874.73724365234375, 72.82653045654296875, 3.361983060836791992, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+459, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2981.348876953125, -1002.464599609375, 34.401275634765625, 0.852931141853332519, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+460, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2870.3623046875, -930.910888671875, 75.3661346435546875, 5.904758453369140625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+461, 192103, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2896.347900390625, -922.99432373046875, 76.9556427001953125, 4.958705902099609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+462, 191812, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2897.248046875, -990.99609375, 46.4462432861328125, 3.757135868072509765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Crumbling Pebbles (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+463, 4075, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2901.0419921875, -878.125, 64.462188720703125, 1.929746866226196289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rat (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+464, 192069, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2857.3203125, -847.83331298828125, 75.11583709716796875, 6.007027149200439453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Runt (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+465, 194231, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2891.733642578125, -1007.9132080078125, 62.68054962158203125, 4.15732431411743164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Whimpering Whelpling (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 393301 - Whimpering)
(@CGUID+466, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2861.68115234375, -851.96807861328125, 76.05265045166015625, 3.702534675598144531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+467, 191625, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2860.56396484375, -843.50299072265625, 75.8367767333984375, 2.973622322082519531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Vorquin Foal (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+468, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2941.64208984375, -1031.581298828125, 47.86084747314453125, 1.114562749862670898, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+469, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3025.44677734375, -1013.71881103515625, 38.97938919067382812, 2.726998567581176757, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+470, 194231, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2997.670166015625, -1039.59375, 36.59902572631835937, 2.666920423507690429, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Whimpering Whelpling (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 393301 - Whimpering)
-- (@CGUID+471, 190144, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3054.743896484375, -1120.7742919921875, -2.50023221969604492, 4.339985847473144531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fretful Riverbeast Elder (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 - !!! already present in database !!!
(@CGUID+472, 191615, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2923.680419921875, -1173.8829345703125, 4.535349845886230468, 2.878999948501586914, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
-- (@CGUID+473, 194695, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3382.8916015625, -1318.892333984375, 177.0308837890625, 0.95704740285873413, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Dragon Glyph (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 384378 - Visual) - !!! already present in database !!!
(@CGUID+474, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3059.91259765625, -1040.48828125, 3.237955808639526367, 3.67989969253540039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+475, 187467, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3015.62939453125, -1236.4461669921875, 16.261016845703125, 2.392214298248291015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+476, 189703, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2991.463623046875, -1149.435791015625, 7.960124969482421875, 5.286236286163330078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+477, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2996.766845703125, -1144.888427734375, 7.655634403228759765, 1.284619808197021484, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+478, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3057.3173828125, -1108.5546875, 4.441660404205322265, 4.70381021499633789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+479, 189307, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2981.181640625, -1143.2757568359375, 4.642636299133300781, 2.349806785583496093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
-- (@CGUID+480, 198622, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3382.8916015625, -1318.892333984375, 177.0308837890625, 0.95704740285873413, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tracker Dragon Glyph (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 - !!! already present in database !!!
(@CGUID+481, 189703, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2990.868896484375, -1150.24658203125, 8.219992637634277343, 0.003389671444892883, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+482, 189992, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3014.671142578125, -1139.22705078125, 1.106098055839538574, 4.635349750518798828, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+483, 190301, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3046.030517578125, -1117.1302490234375, -1.13932204246520996, 4.086518764495849609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fretful Riverbeast Calf (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+484, 190301, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3050.354248046875, -1112.5208740234375, -0.74244534969329833, 4.039308071136474609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Fretful Riverbeast Calf (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+485, 187620, 2444, 13644, 13723, '0', '0', 0, 0, 0, 3073.2109375, -1211.8055419921875, 16.39722251892089843, 0.715880870819091796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Disgruntled Riverbeast Matriarch (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 371440 - Winded!)
(@CGUID+486, 191615, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2861.72998046875, -1104.453125, 9.811113357543945312, 4.218302726745605468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+487, 201845, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2882.372314453125, -850.45660400390625, 281.437255859375, 5.922542572021484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Enchanted Tuskling (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+488, 201840, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2881.7119140625, -851.33856201171875, 281.44287109375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Feral Frogduck (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+489, 201842, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2883.228271484375, -847.38018798828125, 281.438323974609375, 5.560553550720214843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lord Flappinsby (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+490, 201802, 2444, 13644, 13723, '0', '0', 0, 0, 0, 2883.514892578125, -849.701416015625, 281.4307861328125, 5.840122699737548828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Excavator Morgrum Emberflint (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1
(@CGUID+491, 191615, 2444, 13644, 0, '0', '0', 0, 0, 0, 2883.91650390625, -1151.493896484375, 0.231527864933013916, 1.273014545440673828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+492, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2889.148681640625, -1154.1331787109375, 0.267541855573654174, 6.083205223083496093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+493, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2901.95263671875, -1172.5137939453125, -0.14492064714431762, 0.989884555339813232, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+494, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2876.85791015625, -1146.7369384765625, 3.586026191711425781, 5.16668558120727539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+495, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2873.934326171875, -1141.59521484375, -0.183854341506958, 0.008630075491964817, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+496, 192013, 2444, 13644, 0, '0', '0', 0, 0, 0, 2875.512939453125, -1208.143310546875, 2.524196863174438476, 3.497524023056030273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+497, 189756, 2444, 13644, 0, '0', '0', 0, 0, 0, 2947.43310546875, -1219.4478759765625, 3.317510128021240234, 5.056216716766357421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lazy Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 358422 - Channel: Sleep Zzz (With Aggro Change) - Head)
(@CGUID+498, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2877.682861328125, -1195.5567626953125, 7.14775848388671875, 3.990804672241210937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+499, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2907.395263671875, -1185.1632080078125, 4.063044548034667968, 4.073113918304443359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+500, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2841.46044921875, -1148.5478515625, 2.20827484130859375, 5.177804946899414062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+501, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2918.47509765625, -1174.497802734375, 2.509959697723388671, 4.941556930541992187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+502, 191616, 2444, 13644, 0, '0', '0', 0, 0, 0, 2812.51953125, -1109.544921875, 6.095040321350097656, 2.976566791534423828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Young Ottuk (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+503, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 2943.131103515625, -1174.5242919921875, 4.846527099609375, 0.003389671444892883, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+504, 189756, 2444, 13644, 0, '0', '0', 0, 0, 0, 2967.453125, -1252.4635009765625, 0.874518990516662597, 2.065800189971923828, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lazy Basilisk (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 358422 - Channel: Sleep Zzz (With Aggro Change) - Head)
(@CGUID+505, 187493, 2444, 13644, 0, '0', '0', 0, 0, 0, 2825.5078125, -1351.048583984375, 2.407913684844970703, 3.867741346359252929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+506, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2951.1435546875, -1205.7952880859375, 3.413984537124633789, 3.023302078247070312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+507, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 2957.762939453125, -1252.828125, 1.43858492374420166, 4.827927112579345703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+508, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 2963.12939453125, -1247.3975830078125, 1.169163703918457031, 0.51823890209197998, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+509, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2948.493408203125, -1222.246826171875, 7.883672237396240234, 1.486598968505859375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+510, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 2953.078125, -1207.51220703125, 0.487613171339035034, 1.548247337341308593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+511, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2928.720947265625, -1253.2633056640625, 4.50728464126586914, 6.012538909912109375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+512, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2906.004150390625, -1256.5238037109375, 4.524638175964355468, 4.373938560485839843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+513, 187494, 2444, 13644, 0, '0', '0', 0, 0, 0, 3032.923583984375, -1213.282958984375, 9.533304214477539062, 4.034448146820068359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+514, 187467, 2444, 13644, 0, '0', '0', 0, 0, 0, 3054.299560546875, -1282.9166259765625, 19.0025482177734375, 5.037801265716552734, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+515, 187467, 2444, 13644, 0, '0', '0', 0, 0, 0, 3027.127685546875, -1332.0103759765625, 16.92237472534179687, 4.070223808288574218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+516, 189688, 2444, 13644, 0, '0', '0', 0, 0, 0, 2985.960205078125, -1269.4774169921875, 26.01884841918945312, 0.123154155910015106, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+517, 187494, 2444, 13644, 0, '0', '0', 0, 0, 0, 3010.6181640625, -1274.8125, 9.037804603576660156, 4.82367706298828125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+518, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 2983.962646484375, -1262.342041015625, 9.033635139465332031, 2.255284070968627929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+519, 189688, 2444, 13644, 0, '0', '0', 0, 0, 0, 2986.069580078125, -1266.623291015625, 28.07371902465820312, 0.123154155910015106, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+520, 60761, 2444, 13644, 0, '0', '0', 0, 0, 0, 2983.653076171875, -1195.8973388671875, 0.008145458996295928, 5.876742362976074218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+521, 188267, 2444, 13644, 0, '0', '0', 0, 0, 0, 3005.45556640625, -1259.04443359375, 35.5897369384765625, 2.923225879669189453, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+522, 188267, 2444, 13644, 0, '0', '0', 0, 0, 0, 3001.993896484375, -1262.6143798828125, 35.52349090576171875, 3.022495985031127929, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+523, 191809, 2444, 13644, 0, '0', '0', 0, 0, 0, 2993.300048828125, -1275.2637939453125, 24.75740432739257812, 2.122384548187255859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: 0 - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+524, 189307, 2444, 13644, 0, '0', '0', 0, 0, 0, 2998.774658203125, -1190.9427490234375, 5.42742013931274414, 5.563243389129638671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+525, 189703, 2444, 13644, 0, '0', '0', 0, 0, 0, 3010.595703125, -1216.841796875, 10.72544670104980468, 1.211584925651550292, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+526, 187462, 2444, 13644, 0, '0', '0', 0, 0, 0, 3026.455810546875, -1218.986083984375, 16.44678688049316406, 1.049570560455322265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+527, 187494, 2444, 13644, 0, '0', '0', 0, 0, 0, 3000.233642578125, -1348.314208984375, 6.704651355743408203, 2.235823869705200195, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: 0 - Difficulty: 0) CreateObject1
(@CGUID+528, 187462, 2444, 13644, 0, '0', '0', 0, 0, 0, 3011.8994140625, -1286.27783203125, 15.9069976806640625, 1.558231353759765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: 0 - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+529, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3003.095458984375, -1310.296875, 19.81617164611816406, 5.588712692260742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+530, 187462, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3059.0390625, -1311.060791015625, 19.6669158935546875, 2.25578618049621582, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+531, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3069.30126953125, -1314.263916015625, 14.04734611511230468, 2.839046478271484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+532, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3050.397705078125, -1172.3385009765625, 3.195045232772827148, 4.860133171081542968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+533, 187462, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3046.107666015625, -1261.513916015625, 18.60209083557128906, 2.236813783645629882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+534, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3065.017333984375, -1169.1357421875, 0.917249977588653564, 5.125559806823730468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+535, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3062.93310546875, -1248.736083984375, 16.15216255187988281, 5.588712692260742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+536, 191809, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3048.4521484375, -1242.83935546875, 14.25041007995605468, 0.025500053539872169, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+537, 186428, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3128.822021484375, -1290.7413330078125, 6.411026954650878906, 2.030606031417846679, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ecologist Tharu (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+538, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3007.840576171875, -1156.766845703125, 2.40626072883605957, 3.65951395034790039, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+539, 191809, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3010.50732421875, -1321.532958984375, 14.9600677490234375, 5.829771041870117187, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+540, 191809, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3056.9287109375, -1239.8023681640625, 10.72863101959228515, 4.199416160583496093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+541, 189307, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3048.26171875, -1157.15185546875, 4.481777667999267578, 0.619582772254943847, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+542, 189613, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3136.22314453125, -1295.0242919921875, 6.060932159423828125, 0.610853493213653564, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Riverbeast (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+543, 186410, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3130.83251953125, -1283.96875, 6.535239219665527343, 3.397988080978393554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ecologist Iskha (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+544, 189619, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3123.9462890625, -1294.80908203125, 7.59373331069946289, 3.796953439712524414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+545, 189659, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3127.607666015625, -1287.0867919921875, 7.541249752044677734, 4.199791908264160156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+546, 189619, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3124.14404296875, -1292.7708740234375, 7.831061840057373046, 0.681021928787231445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+547, 189619, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3124.83251953125, -1293.765625, 7.6808624267578125, 6.22666025161743164, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+548, 191809, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3127.21337890625, -1164.8753662109375, 11.56301116943359375, 3.232785701751708984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tiny Butterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+549, 189307, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3078.836181640625, -1135.411865234375, 5.79210519790649414, 2.957797050476074218, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Skitterfly (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+550, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3145.0419921875, -1243.266357421875, 9.3186187744140625, 5.255273818969726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+551, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3118.376220703125, -1311.723388671875, 0.302654504776000976, 3.204869031906127929, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+552, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3117.8681640625, -1320.8958740234375, 14.33016109466552734, 2.133156776428222656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+553, 191818, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3139.24462890625, -1159.478759765625, 12.04913520812988281, 4.196263313293457031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shaggy Rabbit (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+554, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3169.765625, -1231.8038330078125, 29.4421844482421875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+555, 189659, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3138.46533203125, -1296.9879150390625, 9.140445709228515625, 5.327054977416992187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tragically Deceased Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune))
(@CGUID+556, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3152.5634765625, -1287.12158203125, 28.46075248718261718, 2.128539562225341796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+557, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3067.84716796875, -1388.423583984375, 8.794800758361816406, 2.832478523254394531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
-- (@CGUID+558, 190753, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3567.443603515625, -1185.7708740234375, 214.8105010986328125, 4.499518394470214843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bronze Timekeeper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370243 - Cosmetic Race Flag Overhead) - !!! already present in database !!!
-- (@CGUID+559, 187322, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3268.0322265625, -1339.6510009765625, 91.08709716796875, 3.492854833602905273, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 375014 - Channel: Earthquake Punch [DNT]) - !!! already present in database !!!
-- (@CGUID+560, 187322, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3252.6025390625, -1380.1666259765625, 73.09549713134765625, 1.280156493186950683, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 375029 - Channel: Earthquake Tremors [DNT]) - !!! already present in database !!!
(@CGUID+561, 187322, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3267.259033203125, -1310.51318359375, 90.65570831298828125, 3.59521794319152832, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Restless Wetlands - Difficulty: 0) CreateObject1
-- (@CGUID+562, 187322, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3265.236083984375, -1291.4722900390625, 91.75008392333984375, 5.121929168701171875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Primal Earth Elemental (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 375029 - Channel: Earthquake Tremors [DNT]) - !!! already present in database !!!
-- (@CGUID+563, 192266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3281.100830078125, -1319.8941650390625, 73.01239013671875, 4.597472667694091796, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baron Crustcore (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 375412 - Channel: Earth Spikes [DNT]) - !!! already present in database !!!
(@CGUID+564, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3126.677734375, -1378.2454833984375, 44.02239227294921875, 0.56438988447189331, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+565, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3008.98291015625, -1446.560546875, 2.706633806228637695, 2.679693222045898437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+566, 187462, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3028.087646484375, -1373.41845703125, 13.40348148345947265, 3.942700147628784179, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+567, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3012.775146484375, -1402.7447509765625, 4.238367557525634765, 4.0572662353515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+568, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3021.05712890625, -1291.8597412109375, 55.75280380249023437, 5.232923507690429687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+569, 187462, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3057.578125, -1389.5103759765625, 15.67316341400146484, 5.145928859710693359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+570, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3011.37158203125, -1410.03125, 3.370350837707519531, 3.8453521728515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+571, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2971.555908203125, -1349.2052001953125, 0.586516082286834716, 3.400995492935180664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+572, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2981.86962890625, -1354.10546875, 1.622171282768249511, 5.02039957046508789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+573, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2965.197998046875, -1389.1129150390625, 1.022375345230102539, 1.554713010787963867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+574, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2961.32275390625, -1337.3695068359375, 0.507224082946777343, 4.429780960083007812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+575, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2960.169189453125, -1379.5208740234375, 0.169228866696357727, 3.8453521728515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+576, 187462, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2993.44873046875, -1341.75, 12.83864021301269531, 0.65973520278930664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Distressed Riverbeast Calf (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371460 - Winded!)
(@CGUID+577, 190249, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2936.929443359375, -1455.3944091796875, 9.999904632568359375, 4.242789745330810546, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Frazzled Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373690 - Blown Away!) (possible waypoints or random movement)
(@CGUID+578, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3021.855712890625, -1440.6275634765625, 1.844223737716674804, 1.766867876052856445, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+579, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2987.262939453125, -1476.279541015625, 4.261417388916015625, 0.40996861457824707, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+580, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3016.46484375, -1453.9610595703125, 1.9058074951171875, 0.074360676109790802, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+581, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2970.53271484375, -1424.677001953125, 0.655900776386260986, 3.974761486053466796, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+582, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3091.26611328125, -1422.941162109375, 1.618684649467468261, 1.532928109169006347, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+583, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3008.507080078125, -1442.701416015625, 2.815023422241210937, 6.268488883972167968, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+584, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2943.732421875, -1412.62158203125, 1.738091230392456054, 1.047540068626403808, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+585, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3079.505859375, -1423.6495361328125, 0.95131230354309082, 5.80704498291015625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+586, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2872.16748046875, -1387.6146240234375, 8.359571456909179687, 6.18572092056274414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+587, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2924.265625, -1457.2916259765625, 6.887561798095703125, 4.5255889892578125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+588, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3037.35302734375, -1457.82666015625, 0.841203212738037109, 0.375814795494079589, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+589, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2974.8046875, -1452.4132080078125, -0.41200959682464599, 5.799776554107666015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+590, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2881.632080078125, -1421.9427490234375, 8.718578338623046875, 0.408473670482635498, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+591, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2927.645751953125, -1398.0103759765625, 15.16118526458740234, 4.090723037719726562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+592, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2949.494140625, -1424.3839111328125, 1.904005050659179687, 5.100824356079101562, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+593, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3025.8212890625, -1474.111083984375, -0.3312264084815979, 1.530455827713012695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+594, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2992.917724609375, -1470.347412109375, 4.381143569946289062, 3.783321619033813476, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+595, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3077.977294921875, -1458.9180908203125, 0.62905353307723999, 5.166525840759277343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+596, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3048.7763671875, -1476.1986083984375, 0.737840473651885986, 6.181939125061035156, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+597, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3046.14404296875, -1467.999267578125, 1.275424718856811523, 4.809701442718505859, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+598, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2982.5869140625, -1508.6632080078125, 4.789529323577880859, 4.345740795135498046, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+599, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3115.081787109375, -1413.3095703125, 1.026523113250732421, 3.530075788497924804, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+600, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3045.843017578125, -1508.6180419921875, 0.398702293634414672, 2.117852687835693359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+601, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3073.431396484375, -1496.1807861328125, 1.419441461563110351, 1.174501776695251464, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
(@CGUID+602, 190249, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2892.451171875, -1424.062255859375, 15.05635929107666015, 1.601907610893249511, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Frazzled Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373690 - Blown Away!) (possible waypoints or random movement)
(@CGUID+603, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2943.56689453125, -1468.2987060546875, 1.080094575881958007, 2.16656494140625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+604, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2945.064208984375, -1460.90576171875, 1.55323028564453125, 4.818219661712646484, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+605, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2988.50341796875, -1516.310791015625, 3.271538257598876953, 1.332157373428344726, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+606, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2974.481689453125, -1515.376708984375, 3.976028919219970703, 5.953234672546386718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+607, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3010.55810546875, -1534.8714599609375, 23.8040313720703125, 0.056986726820468902, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+608, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3017.199462890625, -1532.4442138671875, 23.8040313720703125, 0.100269734859466552, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+609, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3030.80029296875, -1544.84033203125, 6.61895608901977539, 2.622315645217895507, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+610, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3029.3115234375, -1547.44482421875, 6.708520889282226562, 2.622315645217895507, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+611, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3092.25244140625, -1516.20263671875, 1.018235683441162109, 1.021067619323730468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+612, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3067.915771484375, -1552.640625, 7.153736591339111328, 1.145723819732666015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+613, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3065.182861328125, -1551.4034423828125, 7.137163162231445312, 1.145723819732666015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+614, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3052.718017578125, -1555.123291015625, 6.698030471801757812, 2.155791282653808593, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
-- (@CGUID+615, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3050.13916015625, -1620.2095947265625, 32.7022247314453125, 3.658411026000976562, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!! (possible waypoints or random movement)
(@CGUID+616, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3128.559814453125, -1475.69970703125, 3.730318307876586914, 2.316264629364013671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+617, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3126.35546875, -1477.734619140625, 3.362269163131713867, 2.316264629364013671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+618, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2995.74658203125, -1596.9757080078125, 6.259807586669921875, 3.281943559646606445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+619, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2939.6845703125, -1527.723876953125, 0.464146316051483154, 4.216139793395996093, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+620, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2935.278564453125, -1491.8160400390625, -0.52074325084686279, 2.41243290901184082, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+621, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2949.00439453125, -1523.8072509765625, -0.48936375975608825, 3.804093360900878906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+622, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2917.970458984375, -1526.267333984375, 17.85333251953125, 5.588712692260742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+623, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2992.2412109375, -1602.638671875, 6.249373912811279296, 0.858407378196716308, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+624, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2962.248291015625, -1570.6180419921875, 16.21105766296386718, 0.011641742661595344, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+625, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2981.296142578125, -1596.279541015625, 35.73346710205078125, 4.509024620056152343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+626, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2987.544189453125, -1604.41259765625, 5.584589958190917968, 0.470743536949157714, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+627, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3000.916748046875, -1599.77783203125, 6.232452869415283203, 1.494807720184326171, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+628, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2933.144775390625, -1566.396728515625, -0.04206335544586181, 2.131426572799682617, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+629, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2995.8701171875, -1660.62109375, -0.6450972557067871, 1.625871896743774414, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+630, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3087.600830078125, -1575.1197509765625, 1.178977370262145996, 1.551585316658020019, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+631, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2943.591552734375, -1574.31787109375, 0.241824567317962646, 1.65997171401977539, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+632, 190249, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2856.61572265625, -1471.671142578125, 11.22419452667236328, 0.289272576570510864, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Frazzled Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373690 - Blown Away!) (possible waypoints or random movement)
(@CGUID+633, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2853.257080078125, -1462, 5.091644287109375, 1.696471452713012695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+634, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2881.473876953125, -1590.545166015625, 2.572933435440063476, 3.357136011123657226, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+635, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2902.19091796875, -1483.779541015625, 14.76879215240478515, 1.721031665802001953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+636, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2891.44970703125, -1459.4254150390625, 8.482061386108398437, 1.069098830223083496, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+637, 190249, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2859.818603515625, -1390.1907958984375, 15.56595897674560546, 2.040386438369750976, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Frazzled Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373690 - Blown Away!)
(@CGUID+638, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2909.45751953125, -1415.3941650390625, 33.74570465087890625, 5.650857925415039062, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+639, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2890.220458984375, -1444.5191650390625, 6.867571830749511718, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+640, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2835.808349609375, -1626.8553466796875, 4.062921524047851562, 5.135866165161132812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+641, 190249, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2813.094482421875, -1472.684814453125, 9.133059501647949218, 2.054362297058105468, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Frazzled Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373690 - Blown Away!) (possible waypoints or random movement)
(@CGUID+642, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2908.25341796875, -1417.842041015625, 35.45996856689453125, 5.630991935729980468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+643, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2820.319580078125, -1482.49658203125, 5.330999374389648437, 2.266956806182861328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+644, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2808.06689453125, -1387.8541259765625, 2.78178572654724121, 3.357136011123657226, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+645, 189757, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2757.151123046875, -1378.12158203125, 1.968918085098266601, 0.253646910190582275, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Snoozing Basilisk Bull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 358422 - Channel: Sleep Zzz (With Aggro Change) - Head)
(@CGUID+646, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2834.526123046875, -1414.51220703125, -0.47251179814338684, 0.796368241310119628, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+647, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2833.892333984375, -1459.1353759765625, 6.566576480865478515, 1.069098830223083496, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+648, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2804.59716796875, -1453.467041015625, -0.43353614211082458, 6.124768733978271484, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+649, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2910.260498046875, -1371.0052490234375, 16.88539886474609375, 1.211584925651550292, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+650, 61158, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2833.216796875, -1430.0787353515625, 0.106466174125671386, 2.923365354537963867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+651, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2835.22216796875, -1402.5416259765625, -0.5296177864074707, 5.778690338134765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+652, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2784.9453125, -1422.8228759765625, 1.525599837303161621, 0.911062061786651611, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+653, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2807.844970703125, -1464.351806640625, 0.515065491199493408, 1.743008613586425781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+654, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2804.900390625, -1496.205078125, 0.511635184288024902, 3.206082582473754882, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+655, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2754.434814453125, -1483.24658203125, 0.448409527540206909, 2.94036412239074707, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+656, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2813.256103515625, -1396.880126953125, 1.819336771965026855, 5.862381458282470703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+657, 189756, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2773.0078125, -1369.111083984375, 0.771249890327453613, 3.019832849502563476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lazy Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 358422 - Channel: Sleep Zzz (With Aggro Change) - Head)
(@CGUID+658, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2805.0126953125, -1496.4176025390625, 0.568334221839904785, 2.056946039199829101, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+659, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2821.11181640625, -1361.429443359375, 1.79674685001373291, 3.771082878112792968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+660, 189756, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2755.2431640625, -1399.8975830078125, 1.28108382225036621, 1.136273384094238281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Lazy Basilisk (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 358422 - Channel: Sleep Zzz (With Aggro Change) - Head)
(@CGUID+661, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2795.223876953125, -1470.9791259765625, -0.52103960514068603, 0.311019927263259887, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+662, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2785.272216796875, -1411.9805908203125, 1.57471466064453125, 5.484106063842773437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+663, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2811.498291015625, -1511.4097900390625, 0.731980085372924804, 1.905307412147521972, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+664, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2829.166015625, -1341.666015625, 1.442075371742248535, 6.034778118133544921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+665, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2775.0341796875, -1419.8319091796875, 0.388486534357070922, 3.853781700134277343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+666, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2736.951416015625, -1512.296875, 3.778534412384033203, 5.335457324981689453, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+667, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2777.91845703125, -1503.4913330078125, -0.51997363567352294, 3.395013809204101562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+668, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2746.27001953125, -1481.8450927734375, 4.492589473724365234, 1.49256753921508789, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+669, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2807.943115234375, -1317.008056640625, 0.835187256336212158, 1.656314730644226074, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+670, 192013, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2806.864990234375, -1320.3328857421875, 0.853599846363067626, 1.011582374572753906, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+671, 189131, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2693.085205078125, -1446.09228515625, 0.062419652938842773, 5.135550498962402343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 69641 - Gryphon/Wyvern Pet - Mounting Check Aura)
(@CGUID+672, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2685.758056640625, -1486.3533935546875, 0.594005286693572998, 5.41319131851196289, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+673, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2705.429931640625, -1478.1800537109375, 0.44162142276763916, 0.9520416259765625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+674, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2741.88671875, -1520.270751953125, 7.29420328140258789, 3.623404264450073242, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+675, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2771.849365234375, -1526.84619140625, 5.627460956573486328, 1.791269302368164062, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+676, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2724.7431640625, -1490.0399169921875, 11.54046630859375, 5.588712692260742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+677, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2748.85302734375, -1503.9591064453125, 5.388808250427246093, 4.145299911499023437, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+678, 192013, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2704.42822265625, -1432.1085205078125, 3.255688905715942382, 0.369627386331558227, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1
-- (@CGUID+679, 193226, UNKNOWN, 13644, 13703, '0', '0', 0, 0, 0, 0.171110942959785461, 0, 1.442219853401184082, 0, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Gorjo the Crab Shackler (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 46598 - Ride Vehicle Hardcoded) - !!! on transport - transport template not found !!! (possible waypoints or random movement)
(@CGUID+680, 189093, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2733.55908203125, -1548.015625, 58.06381607055664062, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+681, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2640.3740234375, -1470.4482421875, 2.170262813568115234, 1.776430726051330566, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+682, 193228, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2642.00830078125, -1637.9720458984375, 59.3101348876953125, 1.305493116378784179, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Snappy (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+683, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2656.323974609375, -1449.58740234375, 3.164673089981079101, 3.208031177520751953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+684, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2672.570068359375, -1493.039306640625, 2.09528350830078125, 4.14723062515258789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+685, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2655.893310546875, -1575.092041015625, 4.47941446304321289, 4.477283000946044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+686, 192013, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2656.15625, -1573.6285400390625, 4.828886985778808593, 4.374607086181640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+687, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2639.38720703125, -1621.90283203125, 1.485405564308166503, 2.560136079788208007, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+688, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2599.87939453125, -1538.8521728515625, 1.108695149421691894, 2.798831462860107421, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+689, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2575.3330078125, -1547.8094482421875, 0.651132941246032714, 3.877646684646606445, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
-- (@CGUID+690, 1860, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2464.78515625, -1408.7236328125, 346.780548095703125, 1.198784232139587402, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Voidwalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 119904 - Override Command Demon, 32233 - Avoidance, 264993 - Shadow Shield) - !!! might be temporary spawn !!!
(@CGUID+691, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2635.66845703125, -1611.9617919921875, 0.801110386848449707, 5.6212005615234375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+692, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2645.310791015625, -1668.5191650390625, 4.26271820068359375, 0.813524305820465087, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+693, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2456.884521484375, -1602.5379638671875, 0.810687661170959472, 1.61178898811340332, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+694, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2538.77978515625, -1648.554931640625, -0.03956615179777145, 0.549001276493072509, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+695, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2417.9404296875, -1643.52734375, -0.26863223314285278, 0.288767606019973754, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+696, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2392.074951171875, -1706.095947265625, -7.48707532882690429, 0.835014283657073974, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+697, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2391.6669921875, -1672.916015625, 1.760794758796691894, 1.165686249732971191, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+698, 61158, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2508.333984375, -1733.333984375, 0.510992348194122314, 2.461855411529541015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+699, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2624.776611328125, -1641.816650390625, 1.556438446044921875, 4.225465774536132812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+700, 61158, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2573.0263671875, -1662.17578125, 0.50481957197189331, 2.978771686553955078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+701, 193236, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2652.831298828125, -1623.755859375, 58.32674407958984375, 0.419898450374603271, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shackled Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+702, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2656.951416015625, -1727.24658203125, 2.209698200225830078, 5.963219642639160156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+703, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2643.050537109375, -1679.0850830078125, 4.465402603149414062, 1.567048072814941406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+704, 193236, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2649.344482421875, -1619.175048828125, 58.3227386474609375, 0.698089599609375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shackled Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+705, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2777.075927734375, -1677.3018798828125, 1.106448650360107421, 4.925792217254638671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+706, 189093, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2714.692626953125, -1601.717041015625, 59.42158889770507812, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+707, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2663.240966796875, -1684.63330078125, 0.674311161041259765, 5.961125850677490234, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+708, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2658.515380859375, -1704.2054443359375, 0.581015229225158691, 1.584701299667358398, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+709, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2694.966064453125, -1723.9010009765625, 0.586153149604797363, 0.813524305820465087, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+710, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2675.339111328125, -1690.2850341796875, 0.285013020038604736, 3.124695301055908203, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+711, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2687.489990234375, -1649.8759765625, 6.519938945770263671, 0.005250194109976291, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+712, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2748.59375, -1662.7569580078125, 4.834724903106689453, 1.689170598983764648, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+713, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2761.767333984375, -1640.8177490234375, 1.331319570541381835, 5.662501335144042968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+714, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2751.927001953125, -1622.6597900390625, 59.88823699951171875, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+715, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2739.903564453125, -1628.1978759765625, 60.43634796142578125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+716, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2741.666748046875, -1655.5260009765625, 4.458514690399169921, 5.6212005615234375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+717, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2749.59326171875, -1629.520751953125, 2.347783088684082031, 5.248672962188720703, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+718, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2764.080322265625, -1627.8958740234375, 0.646842062473297119, 2.923532009124755859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+719, 189093, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2764.241455078125, -1564.123291015625, 52.46684646606445312, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+720, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2760.416015625, -1625, 1.468400478363037109, 5.386855125427246093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+721, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2772.40283203125, -1611.673583984375, -0.37494716048240661, 0.311019927263259887, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+722, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2841.93408203125, -1619.232666015625, 4.223361492156982421, 4.648295402526855468, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+723, 187493, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2830.34375, -1674.8958740234375, 0.451049625873565673, 4.868886947631835937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Water (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+724, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2829.2841796875, -1617.29248046875, 4.253641605377197265, 5.286707401275634765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+725, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2874.807373046875, -1594.767333984375, 2.659662485122680664, 0.924789071083068847, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+726, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2829.416748046875, -1632.4478759765625, 3.933920145034790039, 4.648295402526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+727, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2866.98095703125, -1634.109375, -0.47097900509834289, 1.331328630447387695, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+728, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2810.564208984375, -1648.0382080078125, 9.339569091796875, 5.588712692260742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+729, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2768.2119140625, -1645.07470703125, 0.560519576072692871, 5.6212005615234375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+730, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2855.66064453125, -1634.55908203125, -0.37599685788154602, 2.501488447189331054, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+731, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2879.611083984375, -1654.2847900390625, 0.244512543082237243, 3.203115701675415039, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+732, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2826.065185546875, -1669.52783203125, 10.9665079116821289, 0.460170269012451171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+733, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2887.3076171875, -1652.82568359375, 0.017859905958175659, 0.99310159683227539, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
-- (@CGUID+734, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2882.88916015625, -1696.194091796875, 5.153832912445068359, 2.826267004013061523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+735, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2915.9521484375, -1607.583251953125, 0.691221058368682861, 3.581625223159790039, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+736, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2923.181640625, -1576.5078125, 0.151734113693237304, 3.175969362258911132, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+737, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2900.84765625, -1640.152587890625, 48.70649337768554687, 5.708941936492919921, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+738, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2829.14404296875, -1685.4359130859375, 0.244555726647377014, 6.241772174835205078, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!) (possible waypoints or random movement)
(@CGUID+739, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2908.3330078125, -1643.75, -0.12759184837341308, 3.18584442138671875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+740, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2778.533935546875, -1697.104248046875, 0.413316905498504638, 2.193104982376098632, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+741, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2992.158203125, -1746.7657470703125, -0.64024823904037475, 2.72489476203918457, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+742, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2902.8828125, -1671.1649169921875, 2.251470565795898437, 4.985513210296630859, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+743, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2859.924560546875, -1688.970458984375, -0.44974514842033386, 0.140686273574829101, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+744, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2767.48876953125, -1677.62158203125, 3.002142190933227539, 4.648295402526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+745, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2756.158935546875, -1686.9791259765625, 6.758737564086914062, 3.007154226303100585, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+746, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2781.436767578125, -1681.376708984375, 1.018329739570617675, 4.648295402526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+747, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2777.5556640625, -1667.2117919921875, 0.501759886741638183, 4.648295402526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+748, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2883.819580078125, -1693.342041015625, 5.094285488128662109, 2.826267004013061523, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+749, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2831.61279296875, -1715.4132080078125, -0.51817500591278076, 4.055417537689208984, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+750, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2754.858154296875, -1719.6517333984375, 0.026811439543962478, 5.998205184936523437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+751, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2768.15576171875, -1709.83251953125, 0.027752518653869628, 2.90302276611328125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+752, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2872.093017578125, -1711.0850830078125, 0.878844261169433593, 0.464153647422790527, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+753, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2815.612548828125, -1742.4833984375, 8.643797874450683593, 1.495478630065917968, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+754, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2874.21533203125, -1710.0225830078125, 1.358212947845458984, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+755, 187494, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2712.4609375, -1791.345458984375, 2.408162832260131835, 4.638721466064453125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Rampaging Wind (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+756, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2732.54345703125, -1722.9288330078125, 2.081196546554565429, 4.477283000946044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+757, 189136, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2731.67626953125, -1720.826416015625, 2.26394200325012207, 4.374607086181640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+758, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2700.189208984375, -1734.845458984375, 5.150288581848144531, 5.286236286163330078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+759, 189136, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2733.529541015625, -1720.74658203125, 2.424672126770019531, 5.174991607666015625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+760, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2781.17822265625, -1766.90478515625, 5.980681419372558593, 4.739951133728027343, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+761, 187468, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2704.565185546875, -1716.3072509765625, 0.215001046657562255, 5.6212005615234375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Helpless Waterfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371505 - Whelmed!)
(@CGUID+762, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2844.00439453125, -1774.769775390625, 3.803099870681762695, 2.88908243179321289, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+763, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2830.408935546875, -1759.1207275390625, 4.944377899169921875, 5.016468048095703125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+764, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2713.537353515625, -1775.3333740234375, 11.38379764556884765, 5.286236286163330078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+765, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2800.846435546875, -1796.92431640625, 6.586567878723144531, 3.889883041381835937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+766, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2889.655517578125, -1723.4635009765625, 34.55918502807617187, 0.709286630153656005, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+767, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2890.564208984375, -1724.7603759765625, 35.78923416137695312, 0.709286630153656005, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+768, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2756.25732421875, -1772.328125, 6.948537349700927734, 5.645356655120849609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+769, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2720.55859375, -1780.6273193359375, 2.340907096862792968, 4.847677230834960937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+770, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2727.8046875, -1771.2100830078125, 1.171366810798645019, 3.667076349258422851, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
-- (@CGUID+771, 188859, UNKNOWN, 13644, 13703, '0', '0', 0, 0, 0, -0.02809072658419609, -0.0003985894145444, 4.812167167663574218, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sogglmoggl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 46598 - Ride Vehicle Hardcoded) - !!! on transport - transport template not found !!!
(@CGUID+772, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2912.312744140625, -1656.740478515625, 0.24262230098247528, 3.784164905548095703, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!) (possible waypoints or random movement)
(@CGUID+773, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2933.674560546875, -1684.0208740234375, 2.76670384407043457, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+774, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2896.0703125, -1729.548583984375, 11.71106719970703125, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+775, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2924.703125, -1748.7447509765625, 23.03534889221191406, 3.371996879577636718, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+776, 187410, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3030.80126953125, -1733.8941650390625, 1.641666293144226074, 3.729437828063964843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Tsunami (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+777, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3001.805908203125, -1767.6815185546875, -0.64058941602706909, 3.764247417449951171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+778, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2935.701416015625, -1682.7100830078125, 2.236165046691894531, 3.715652942657470703, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+779, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2903.553955078125, -1673.560791015625, 2.523473262786865234, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+780, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3025.3076171875, -1753.6431884765625, -0.64407604932785034, 2.638562917709350585, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+781, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3016.330810546875, -1757.78857421875, -0.6358845829963684, 3.247902631759643554, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+782, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2933.32421875, -1759.98828125, 26.66077041625976562, 4.836941719055175781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
-- (@CGUID+783, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2971.619384765625, -1768.7762451171875, 31.69738197326660156, 5.691141605377197265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+784, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2946.3056640625, -1642.5009765625, 4.723009586334228515, 5.134121894836425781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
-- (@CGUID+785, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2977.431396484375, -1782.8968505859375, 33.12246322631835937, 6.238507747650146484, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!! (possible waypoints or random movement)
(@CGUID+786, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3044.516845703125, -1719.934326171875, -0.58462351560592651, 5.971129417419433593, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+787, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2959.418701171875, -1694.7537841796875, 0.848566174507141113, 4.411570549011230468, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+788, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2957.111083984375, -1715.748291015625, 20.313873291015625, 0.875444412231445312, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+789, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2975.33154296875, -1729.015625, 22.14513206481933593, 0.75235682725906372, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+790, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3056.02392578125, -1749.428466796875, -0.49433240294456481, 4.272749900817871093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+791, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2966.94189453125, -1665.4114990234375, 5.169215202331542968, 0.421312600374221801, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+792, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2961.0986328125, -1690.9835205078125, 1.137360572814941406, 3.983638525009155273, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+793, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2967.155517578125, -1700.0260009765625, 0.917627274990081787, 2.172199726104736328, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+794, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2955.90673828125, -1701.9781494140625, 0.954255402088165283, 5.37737131118774414, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+795, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2984.4453125, -1641.5382080078125, 0.366643190383911132, 5.483912944793701171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 391245 - Supply-Laden)
(@CGUID+796, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3015.0791015625, -1690.8333740234375, 15.21057796478271484, 1.721031665802001953, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+797, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3090.902587890625, -1765.606689453125, 8.229043006896972656, 5.162937164306640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
-- (@CGUID+798, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3042.065185546875, -1684.1275634765625, 31.69092750549316406, 4.618786811828613281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!! (possible waypoints or random movement)
(@CGUID+799, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3002.653564453125, -1683.8853759765625, 0.545938014984130859, 3.14344644546508789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+800, 180673, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3093.69482421875, -1771.3792724609375, 9.161081314086914062, 5.162937164306640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Turbulent Waters (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+801, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3012.693359375, -1628.9488525390625, 0.785329341888427734, 4.400021553039550781, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+802, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3033.522705078125, -1695.3211669921875, 1.91378021240234375, 3.802777290344238281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+803, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3045.052001953125, -1684.407958984375, 31.87884521484375, 4.618786811828613281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+804, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3042.165771484375, -1700.4930419921875, 1.762816905975341796, 4.569471359252929687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+805, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3045.13525390625, -1700.9202880859375, 1.782981157302856445, 4.569471359252929687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+806, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3051.62158203125, -1622.8177490234375, 32.81430816650390625, 3.658411026000976562, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+807, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3097.6328125, -1606.5885009765625, 35.96284866333007812, 3.498218774795532226, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+808, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3098.958251953125, -1626.357666015625, 1.743383646011352539, 1.323652267456054687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
(@CGUID+809, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3084.857666015625, -1607.1944580078125, 35.80150604248046875, 3.493998527526855468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+810, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3103.532958984375, -1569.045166015625, 0.55415654182434082, 0.152780219912528991, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+811, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3114.623291015625, -1627.5694580078125, 49.21640777587890625, 2.719494342803955078, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+812, 192095, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3107.90576171875, -1659.7274169921875, 1.027965188026428222, 1.744508266448974609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Ironbeak Duck (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
-- (@CGUID+813, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3139.06494140625, -1654.8272705078125, 46.29555130004882812, 0.079493746161460876, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!! (possible waypoints or random movement)
(@CGUID+814, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3081.26025390625, -1688.6978759765625, 44.54524612426757812, 3.640076398849487304, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+815, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3117.29248046875, -1640.217041015625, 40.61702728271484375, 5.001100063323974609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+816, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3171.55224609375, -1637.9254150390625, 49.70098495483398437, 5.688028812408447265, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+817, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3100.267333984375, -1696.2589111328125, 44.51583099365234375, 3.148491621017456054, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
-- (@CGUID+818, 187414, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3252.794189453125, -1711.3697509765625, 45.24289703369140625, 2.97872018814086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Typhoon (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) - !!! already present in database !!!
(@CGUID+819, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3140.15283203125, -1783.666748046875, 18.99941253662109375, 3.22999119758605957, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+820, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3146.126953125, -1774.300537109375, 22.6467132568359375, 5.175884246826171875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+821, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3176.779541015625, -1631.298583984375, 39.97388458251953125, 3.715925216674804687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 391245 - Supply-Laden)
(@CGUID+822, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3137.291748046875, -1663.2239990234375, 1.205647826194763183, 0.16762562096118927, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+823, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3145.855224609375, -1654.8126220703125, -0.19189310073852539, 1.689332485198974609, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+824, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3196.70263671875, -1710.5550537109375, 40.97563934326171875, 4.086555004119873046, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+825, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3161.697998046875, -1610.38720703125, 5.136723041534423828, 4.207778453826904296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+826, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3159.8837890625, -1648.4951171875, 46.08478546142578125, 0.373519301414489746, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+827, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3148.61865234375, -1657.66943359375, -0.23826634883880615, 1.2613908052444458, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+828, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3144.126220703125, -1650.70849609375, -0.65580368041992187, 2.747120618820190429, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+829, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3160.014892578125, -1671.423583984375, 48.93267822265625, 5.567859172821044921, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+830, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3185.281982421875, -1736.7325439453125, 37.21206283569335937, 4.504045486450195312, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+831, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3125.754150390625, -1624.53515625, 1.400920271873474121, 1.230616092681884765, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
-- (@CGUID+832, 188860, UNKNOWN, 13644, 13703, '0', '0', 0, 0, 0, 0.257961243391036987, 0, 4.920794010162353515, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Whirglgurgl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 46598 - Ride Vehicle Hardcoded) - !!! on transport - transport template not found !!!
(@CGUID+833, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3157.62158203125, -1607.579833984375, 4.519151687622070312, 2.646300077438354492, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 391245 - Supply-Laden)
-- (@CGUID+834, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3156.193359375, -1610.212890625, 3.948707342147827148, 2.646300077438354492, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+835, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3193.248046875, -1715.337646484375, 40.91628646850585937, 4.086857795715332031, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+836, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3099.318115234375, -1694.9110107421875, 44.48483657836914062, 3.323638916015625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+837, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3219.150390625, -1703.3770751953125, 45.42670059204101562, 3.05395674705505371, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+838, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3094.2744140625, -1697.90283203125, 35.81838607788085937, 0.384028911590576171, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+839, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3187.70556640625, -1635.3375244140625, 53.4289703369140625, 5.348523139953613281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+840, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3226.080810546875, -1703.986083984375, 45.720001220703125, 3.053903818130493164, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+841, 188205, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3225.362060546875, -1703.9228515625, 45.82857131958007812, 3.05395674705505371, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Whirling Updraft (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+842, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3189.28173828125, -1632.74169921875, 53.42702865600585937, 5.43337106704711914, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+843, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3207.967041015625, -1645.185791015625, 41.12314605712890625, 3.638403654098510742, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
-- (@CGUID+844, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3097.529052734375, -1714.03759765625, 4.685872077941894531, 5.18416452407836914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+845, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3165.677001953125, -1700.0079345703125, 45.29546737670898437, 1.227004051208496093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+846, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3153.65625, -1711.873291015625, 39.98031234741210937, 2.92096567153930664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+847, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3094.856689453125, -1715.4010009765625, 4.678520679473876953, 5.18416452407836914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+848, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3112.35400390625, -1710.797119140625, 27.46362113952636718, 1.616163015365600585, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+849, 188267, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3107.81787109375, -1705.23388671875, 27.45474624633789062, 1.626996994018554687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Unsettled Seagull (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+850, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3063.689208984375, -1717.2379150390625, 0.664588212966918945, 2.517061471939086914, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+851, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3129.820068359375, -1730.7977294921875, 5.857763290405273437, 5.193502426147460937, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
(@CGUID+852, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3085.193603515625, -1720.1163330078125, 4.947530746459960937, 4.651896953582763671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+853, 187439, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3092.197021484375, -1738.5867919921875, 7.711025714874267578, 0.463580697774887084, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bubbled Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374347 - Bubbled!)
(@CGUID+854, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3126.6181640625, -1747.24658203125, 8.05506134033203125, 1.973892927169799804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+855, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3123.858642578125, -1748.42333984375, 8.003066062927246093, 1.973892927169799804, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+856, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3213.26123046875, -1690.4132080078125, 44.87955856323242187, 1.306718349456787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+857, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3224.87158203125, -1703.6129150390625, 10.73680496215820312, 2.150488138198852539, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+858, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3109.646728515625, -1774.8055419921875, 12.93127632141113281, 5.4953765869140625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+859, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3112.020751953125, -1777.1910400390625, 12.87856197357177734, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+860, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3219.741455078125, -1688.1944580078125, 45.22775650024414062, 5.791825771331787109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 391245 - Supply-Laden)
(@CGUID+861, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3179.50830078125, -1773.2978515625, 0.533531785011291503, 1.242795586585998535, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
(@CGUID+862, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3083.069580078125, -1771.0364990234375, 8.061955451965332031, 5.745539188385009765, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+863, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3215.846435546875, -1728.6961669921875, 38.25165557861328125, 3.312436103820800781, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
-- (@CGUID+864, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3100.15966796875, -1833.59033203125, 22.08099365234375, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+865, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3040.673583984375, -1771.9735107421875, 1.126457691192626953, 4.413428306579589843, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+866, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3144.027587890625, -1811.689697265625, 10.44439029693603515, 5.604885578155517578, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+867, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3166.213134765625, -1802.025146484375, 1.237438678741455078, 5.247691154479980468, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+868, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3002.65234375, -1741.943359375, 26.5491943359375, 5.590830326080322265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+869, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3093.204833984375, -1791.751708984375, 12.01826953887939453, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+870, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3146.1005859375, -1813.3602294921875, 9.362721443176269531, 2.463292837142944335, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+871, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3043.66064453125, -1795.6788330078125, 26.0807342529296875, 0.983316302299499511, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+872, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3055.48095703125, -1812.49951171875, 29.95470619201660156, 2.823205471038818359, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 370983 - [DNT] Gorloc Shells - On Back) (possible waypoints or random movement)
(@CGUID+873, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3035.411376953125, -1788.642333984375, 3.512309789657592773, 4.207778453826904296, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+874, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3091.302978515625, -1790.12158203125, 11.47937965393066406, 5.5745697021484375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+875, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3010.0869140625, -1780.392333984375, 0.751245498657226562, 2.305742979049682617, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+876, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2994.221435546875, -1762.951416015625, 29.76894950866699218, 0.536813914775848388, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+877, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2988.953857421875, -1784.3929443359375, 33.19139862060546875, 2.730383634567260742, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+878, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2969.9453125, -1771.265625, 31.99460601806640625, 5.691141605377197265, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371389 - [DNT] Gorloc Shells - Blowing Conch)
(@CGUID+879, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2975.181396484375, -1799.4600830078125, 32.7920684814453125, 4.312297821044921875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+880, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2998.770751953125, -1817.8975830078125, 33.35794448852539062, 3.49187636375427246, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+881, 187431, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2912.45751953125, -1776.5816650390625, 23.21529006958007812, 6.040134429931640625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Skybasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+882, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2862.448974609375, -1833.4813232421875, 0.863889336585998535, 6.008080959320068359, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+883, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2950.0234375, -1838.671875, 4.453534126281738281, 1.925962448120117187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+884, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2947.210693359375, -1839.715087890625, 4.28240966796875, 1.925962448120117187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+885, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3014.3046875, -1836.092041015625, 33.96084213256835937, 0.736163914203643798, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+886, 189737, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2908.635498046875, -1862.60595703125, -0.50074964761734008, 5.799776554107666015, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Kelp Nibbler (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+887, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3000.5048828125, -1823.856689453125, 39.80121231079101562, 1.197525620460510253, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+888, 189703, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2941.923583984375, -1854.5, 14.734771728515625, 1.211584925651550292, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Sunning Salamanther (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+889, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2998.0966796875, -1825.6458740234375, 39.80121231079101562, 1.466047883033752441, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+890, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2980.098876953125, -1837.7413330078125, 0.392850041389465332, 0.049051165580749511, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+891, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2923.17236328125, -1844.7684326171875, 0.256492286920547485, 1.873951911926269531, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+892, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2821.551025390625, -1813.17138671875, 7.391186714172363281, 3.755406379699707031, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+893, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2965.880126953125, -1872.015625, 0.730859756469726562, 5.033440589904785156, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+894, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2862.002685546875, -1877.63232421875, 7.006094932556152343, 2.559861660003662109, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+895, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2855.68701171875, -1856.802490234375, 8.31896209716796875, 3.697270870208740234, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!) (possible waypoints or random movement)
(@CGUID+896, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2852.358154296875, -1886.4625244140625, 7.178735733032226562, 3.852442741394042968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+897, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2855.671875, -1873.6170654296875, 7.12185525894165039, 1.79386305809020996, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+898, 187471, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2820.729736328125, -1843.145263671875, 5.409454822540283203, 2.30202794075012207, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Turtle Hatchling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+899, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2762.552978515625, -1836.419921875, 1.283464431762695312, 1.350433945655822753, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+900, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2777.4140625, -1840.3096923828125, 0.510045289993286132, 0.401666998863220214, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+901, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2767.804931640625, -1830.3204345703125, 0.273120373487472534, 5.011939048767089843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+902, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2829.1298828125, -1925.1011962890625, 1.28064429759979248, 4.346472740173339843, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+903, 187469, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2722.865234375, -1802.140380859375, 8.432710647583007812, 1.34187626838684082, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Trapped Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371436 - Bubbled!)
(@CGUID+904, 192148, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2631.34033203125, -1953.4127197265625, -3.499863862991333, 2.396607160568237304, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+905, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2643.211669921875, -1951.3753662109375, -10.0367374420166015, 5.893156051635742187, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+906, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2598.50537109375, -1990.000732421875, -18.1640377044677734, 1.136404037475585937, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+907, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2763.633056640625, -2110.230224609375, -36.1684036254882812, 5.30060434341430664, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+908, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2828.6435546875, -2079.493408203125, -26.2963447570800781, 0.147587746381759643, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+909, 192148, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2844.162841796875, -2037.8653564453125, -3.75099444389343261, 1.121064543724060058, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+910, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2899.920166015625, -1933.40283203125, 0.005296684801578521, 4.819593429565429687, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+911, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2940.59912109375, -1933.2108154296875, 4.812871932983398437, 0.318347275257110595, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+912, 192013, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2955.62744140625, -1967.4473876953125, 0.584145665168762207, 5.912082672119140625, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+913, 192013, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2950.397705078125, -1977.25390625, 0.662360250949859619, 4.887042999267578125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Wild Duckling (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+914, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2893.517578125, -2075.382568359375, -25.3201656341552734, 3.194985389709472656, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+915, 192153, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2883.81298828125, -2039.66064453125, -9.27555370330810546, 4.1565093994140625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+916, 189992, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2926.351318359375, -1917.59033203125, 3.915799140930175781, 5.725544452667236328, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Restless Wildfowl (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+917, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 2996.6103515625, -1893.267333984375, 0.508447527885437011, 2.89228677749633789, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+918, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3011.0556640625, -1941.96875, -0.02088865637779235, 5.761612415313720703, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
-- (@CGUID+919, 190193, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3024.686279296875, -1965.8526611328125, 43.85345458984375, 4.536427497863769531, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Bound Shoresnapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!! (possible waypoints or random movement)
(@CGUID+920, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3028.236572265625, -1985.764404296875, -0.05375325679779052, 4.442351818084716796, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+921, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3023.222412109375, -1976.5914306640625, 40.68060684204101562, 1.247418642044067382, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+922, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3020.932373046875, -2004.986083984375, 35.79415512084960937, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+923, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3032.55029296875, -1898.3992919921875, 57.74476242065429687, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+924, 192148, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3072.020751953125, -2027.918212890625, -3.78222870826721191, 4.177076339721679687, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+925, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3091.601806640625, -2096.997802734375, -20.2919692993164062, 5.912282466888427734, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+926, 195796, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3442.530517578125, -1933.8150634765625, 71.90631103515625, 3.933471918106079101, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Primal Proto-Drake (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373750 - Dragonriding: Anim Replacements [DNT]) (possible waypoints or random movement)
(@CGUID+927, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3030.32177734375, -2111.099365234375, -27.1675662994384765, 2.521008968353271484, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+928, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3092.936767578125, -1980.9427490234375, 55.36487579345703125, 4.238923072814941406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+929, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3075.7666015625, -1930.837646484375, 0.099714018404483795, 3.624676704406738281, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+930, 189093, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3082.552978515625, -1935.7569580078125, 58.52089309692382812, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+931, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3099.465087890625, -2029.2122802734375, -15.5972480773925781, 0.463275074958801269, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+932, 189688, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3065.51123046875, -1840.1944580078125, 63.30120086669921875, 1.40595245361328125, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Bemused Axebeak (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+933, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3080.22265625, -1863.140625, 69.07033538818359375, 3.213119029998779296, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+934, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3110.389892578125, -1913.6822509765625, 0.164304137229919433, 5.577213287353515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+935, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3091.544189453125, -1858.546875, 57.17066574096679687, 3.527049064636230468, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+936, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3078.358154296875, -1860.7904052734375, 69.07033538818359375, 3.035341978073120117, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+937, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3005.71484375, -1847.302978515625, 43.61240386962890625, 3.1796722412109375, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+938, 187432, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3122.89501953125, -1947.4410400390625, 54.76857376098632812, 0.127499371767044067, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Windbringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 373357 - Gorloc Wind Cast [DNT])
(@CGUID+939, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3193.999755859375, -2029.49560546875, -21.597970962524414, 4.3014373779296875, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+940, 192153, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3079.77783203125, -2022.9971923828125, -4.96265935897827148, 1.792713046073913574, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Baby Octopus (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+941, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3131.185791015625, -1888.55908203125, 0.461220324039459228, 5.577213287353515625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+942, 192148, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3198.376953125, -1992.43994140625, -4.69191408157348632, 1.277621269226074218, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Tranquil Tideskipper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+943, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3216.09814453125, -2046.994873046875, -25.296875, 1.059930205345153808, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+944, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3080.905517578125, -1852.30419921875, 66.43023681640625, 4.229175567626953125, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+945, 60761, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3159.636474609375, -1857.250732421875, 0.654483497142791748, 0.13354349136352539, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Shore Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+946, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3227.601318359375, -1905.1728515625, -7.60687685012817382, 5.201827049255371093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+947, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3193.091064453125, -2092.958984375, -37.1524734497070312, 5.323966026306152343, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+948, 187320, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3141.81689453125, -1870.578125, 0.642864525318145751, 5.867250442504882812, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Seabasher (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+949, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3208.8759765625, -1785.267333984375, 1.208840131759643554, 3.501049757003784179, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+950, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3199.868896484375, -1783.7269287109375, 1.290360093116760253, 4.390544891357421875, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+951, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3115.186279296875, -1843.2364501953125, 13.93733501434326171, 1.559432029724121093, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+952, 187433, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3100.15966796875, -1836.59033203125, 22.13904762268066406, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Windyfin Squallstalker (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+953, 187971, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3220.361083984375, -1838.1475830078125, 1.857835769653320312, 1.149670600891113281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Crabtrapper (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: )
-- (@CGUID+954, 190133, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3217.623291015625, -1836.9212646484375, 1.802780628204345703, 1.149670600891113281, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Conscripted Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 166615 - Pet Active) - !!! might be temporary spawn !!!
(@CGUID+955, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3115.2275390625, -1839.60595703125, 14.37645626068115234, 4.334193229675292968, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+956, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3188.53125, -1847.826416015625, 0.724486887454986572, 1.731635212898254394, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 374208 - Gorloc Water Cast [DNT])
(@CGUID+957, 192142, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3233.591552734375, -1900.118408203125, -7.04883480072021484, 0.716298162937164306, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Sea Turtle (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (possible waypoints or random movement)
(@CGUID+958, 188266, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3216.1728515625, -1855.35595703125, 1.035763263702392578, 4.651896953582763671, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Cowering Crab (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: 371842 - Terrified!)
(@CGUID+959, 187263, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3207.74658203125, -1791.548583984375, 1.592406511306762695, 1.328741908073425292, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Soggymaw Wavebringer (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+960, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3240.059814453125, -1801.282958984375, 2.94852757453918457, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+961, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3231.413330078125, -1776.4149169921875, 3.09313058853149414, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+962, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3237.658935546875, -1802.513916015625, 2.27172708511352539, 0.473764628171920776, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+963, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3227.983642578125, -1777.0504150390625, 1.652460694313049316, 0.183215335011482238, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+964, 192103, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3053.9931640625, -1822.26220703125, 30.25472450256347656, 0, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Pricklefury Hare (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+965, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3202.72265625, -1782.6595458984375, 1.608664393424987792, 3.055531263351440429, 120, 10, 0, 1, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1 (Auras: ) (possible waypoints or random movement)
(@CGUID+966, 192151, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3155.51708984375, -2113.623779296875, -24.731149673461914, 2.221593856811523437, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Smoothfin Mantacorn (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+967, 192149, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3133.2998046875, -2056.0634765625, -15.823643684387207, 2.271139860153198242, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- River Frillfish (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+968, 187542, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3224.9150390625, -1751.982666015625, 1.676348686218261718, 0.725753068923950195, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Ripple (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+969, 187543, 2444, 13644, 13703, '0', '0', 0, 0, 0, 3226.987060546875, -1750.1441650390625, 2.167559385299682617, 2.585080385208129882, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Summoned Zephyr (Area: Restless Wetlands - Difficulty: 0) CreateObject1
(@CGUID+970, 195032, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3066.13134765625, -994.1778564453125, 36.1587677001953125, 0.851422011852264404, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+971, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 2986.86376953125, -1016.83160400390625, 35.82025909423828125, 1.800965785980224609, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+972, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 2953.288330078125, -950.998291015625, 33.14762115478515625, 3.877289772033691406, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+973, 188296, 2444, 13644, 13723, '0', '0', 0, 0, 1, 2985.11376953125, -919.36456298828125, 33.74261474609375, 2.988751649856567382, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Djaradin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+974, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3052.538330078125, -918.295166015625, 34.66402435302734375, 3.647217273712158203, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )
(@CGUID+975, 191833, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3032.94189453125, -925.5625, 34.69394683837890625, 0.462080806493759155, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299), -- Qalashi Scavenger (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: 375853 - Channel: Carry Dragon Crystal [DNT])
(@CGUID+976, 188296, 2444, 13644, 13723, '0', '0', 0, 0, 1, 3069.170166015625, -874.701416015625, 34.139617919921875, 0.832864224910736083, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 65299); -- Qalashi Djaradin (Area: Dragonheart Outpost - Difficulty: 0) CreateObject1 (Auras: )

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+980;
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+1, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'), -- Cautious Drakerider - 383247 - Conversation Aura: Talk/Roar/Laugh [DNT]
(@CGUID+5, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+6, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383348'), -- Swashbuckling Drakerider - 383348 - Swashbuckling Dragonrider Rider
(@CGUID+8, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph
(@CGUID+9, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+10, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383348'), -- Swashbuckling Drakerider - 383348 - Swashbuckling Dragonrider Rider
(@CGUID+11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Bronze Timekeeper
(@CGUID+12, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+14, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph
(@CGUID+15, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383319'), -- Cavalier Drakerider - 383319 - Cavalier Dragonrider Rider
(@CGUID+16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 3, ''), -- Rostrum of Transformation
(@CGUID+19, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '393906'), -- Dragon Glyph - 393906 - Visual
(@CGUID+22, 0, 0, 0, 0, 0, 1, 0, 713, 0, 0, 0, 0, ''), -- Saddled Proto-Drake
(@CGUID+23, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'), -- Saddled Proto-Drake - 383247 - Conversation Aura: Talk/Roar/Laugh [DNT]
(@CGUID+24, 0, 0, 0, 0, 0, 1, 0, 5001, 0, 0, 0, 0, ''), -- Saddled Proto-Drake
(@CGUID+25, 0, 0, 0, 0, 0, 1, 0, 455, 0, 0, 0, 0, ''), -- Saddled Proto-Drake
(@CGUID+26, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '376874'), -- Dragon Glyph - 376874 - Visual
(@CGUID+29, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383326'), -- Reckless Drakerider - 383326 - Reckless Dragonrider Rider
(@CGUID+31, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+32, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Saddled Proto-Drake
(@CGUID+33, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Inventive Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+34, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Cautious Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+36, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'), -- Saddled Proto-Drake - 383247 - Conversation Aura: Talk/Roar/Laugh [DNT]
(@CGUID+39, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+41, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Touring Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+42, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Reckless Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+44, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+48, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'), -- Cautious Drakerider - 383247 - Conversation Aura: Talk/Roar/Laugh [DNT]
-- (@CGUID+49, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Wind Eagle - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+51, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+52, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Hope Kite
(@CGUID+55, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+56, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383348'), -- Swashbuckling Drakerider - 383348 - Swashbuckling Dragonrider Rider
(@CGUID+57, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Swashbuckling Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+58, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Reckless Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+60, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+61, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+63, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Cautious Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+64, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Touring Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+66, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+68, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
-- (@CGUID+71, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '385038'), -- Dragon Glyph - 385038 - Visual - !!! already present in database !!!
-- (@CGUID+72, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph - !!! already present in database !!!
-- (@CGUID+75, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383319'), -- Cavalier Drakerider - 383319 - Cavalier Dragonrider Rider - !!! might be temporary spawn !!!
(@CGUID+76, 0, 0, 0, 0, 3, 1, 0, 5001, 0, 0, 0, 0, '383319'), -- Cavalier Drakerider - 383319 - Cavalier Dragonrider Rider
-- (@CGUID+77, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383319'), -- Cavalier Drakerider - 383319 - Cavalier Dragonrider Rider - !!! might be temporary spawn !!!
(@CGUID+78, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Touring Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+80, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- Swashbuckling Drakerider - 370693 - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(@CGUID+85, 0, 0, 0, 0, 0, 1, 0, 0, 2560, 0, 0, 0, ''), -- Ancient Waygate
(@CGUID+87, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '257448'), -- Mature Basilisk - 257448 - Cosmetic - Sleep Zzz
(@CGUID+88, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '257448'), -- Stalking Basilisk - 257448 - Cosmetic - Sleep Zzz
(@CGUID+91, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '257448'), -- Stalking Basilisk - 257448 - Cosmetic - Sleep Zzz
(@CGUID+94, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Seagull
(@CGUID+95, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Seagull
(@CGUID+101, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Seagull
(@CGUID+103, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Seagull
(@CGUID+136, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- Waking Duck - 368927 - Channel: Sleep Zzz (With Aggro Change) - Breath
(@CGUID+139, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Adventurous Argali
(@CGUID+141, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Territorial Axebeak
(@CGUID+145, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Territorial Axebeak
(@CGUID+146, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+153, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+170, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '367419'), -- Glittery Stream - 367419 - Channel: Push Water Current [DNT]
(@CGUID+171, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '367419'), -- Glittery Stream - 367419 - Channel: Push Water Current [DNT]
(@CGUID+173, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+189, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Territorial Axebeak
(@CGUID+205, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Territorial Axebeak
(@CGUID+212, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+216, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+221, 0, 0, 0, 0, 0, 1, 0, 438, 0, 0, 0, 0, ''), -- Displaced Earth
(@CGUID+222, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+224, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+233, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+236, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+237, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+240, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+243, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+244, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+259, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+266, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+267, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+268, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+269, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+281, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+286, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+287, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+290, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+291, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+299, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+300, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+301, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+302, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+305, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+307, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+309, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+310, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+311, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+312, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391254'), -- River Ottuk - 391254 - Hearty
(@CGUID+315, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+317, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+318, 0, 0, 0, 0, 0, 1, 0, 27, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+322, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+324, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Tranquil Vorquin
(@CGUID+325, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '86603'), -- Ruby Watcher - 86603 - Stealth
(@CGUID+328, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+329, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+330, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+331, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Djaradin
(@CGUID+332, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+334, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+342, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+345, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Tranquil Vorquin
(@CGUID+347, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Drakewing
(@CGUID+349, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+355, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Waking Duck
(@CGUID+356, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+359, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+360, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+361, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+367, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+369, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+371, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+372, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+373, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+374, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+376, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+379, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+385, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+387, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391254'), -- Wild Argali - 391254 - Hearty
(@CGUID+389, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+392, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+394, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Vibrant Butterfly
(@CGUID+398, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+399, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Tranquil Vorquin
(@CGUID+401, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+402, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+405, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+406, 0, 0, 0, 0, 0, 1, 0, 567, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+408, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Vibrant Butterfly
(@CGUID+413, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Tranquil Vorquin
(@CGUID+414, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+417, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+418, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+421, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+423, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+424, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '393301'), -- Whimpering Whelpling - 393301 - Whimpering
(@CGUID+429, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Vibrant Butterfly
(@CGUID+432, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+433, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Lava Phoenix
(@CGUID+435, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+436, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+437, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+438, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+439, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+440, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+441, 0, 0, 0, 0, 0, 1, 0, 333, 0, 0, 0, 0, ''), -- Qalashi Trainee
(@CGUID+442, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+443, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+444, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Lava Phoenix
-- (@CGUID+446, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '70628'), -- Ruby Watcher - 70628 - Permanent Feign Death - !!! already present in database !!!
(@CGUID+448, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Lava Phoenix
(@CGUID+449, 0, 0, 0, 0, 0, 1, 0, 615, 0, 0, 0, 0, '393301'), -- Whimpering Whelpling - 393301 - Whimpering
(@CGUID+451, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+453, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Lava Phoenix
(@CGUID+454, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+456, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Lava Phoenix
(@CGUID+457, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+459, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+465, 0, 0, 0, 0, 0, 1, 0, 615, 0, 0, 0, 0, '393301'), -- Whimpering Whelpling - 393301 - Whimpering
(@CGUID+468, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+469, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+470, 0, 0, 0, 0, 0, 1, 0, 615, 0, 0, 0, 0, '393301'), -- Whimpering Whelpling - 393301 - Whimpering
-- (@CGUID+473, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '384378'), -- Dragon Glyph - 384378 - Visual - !!! already present in database !!!
(@CGUID+474, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+475, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast - 371460 - Winded!
(@CGUID+477, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+478, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+479, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
-- (@CGUID+480, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- Tracker Dragon Glyph - !!! already present in database !!!
(@CGUID+482, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Restless Wildfowl
(@CGUID+485, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371440'), -- Disgruntled Riverbeast Matriarch - 371440 - Winded!
(@CGUID+486, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- River Ottuk
(@CGUID+494, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+497, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- Lazy Basilisk - 358422 - Channel: Sleep Zzz (With Aggro Change) - Head
(@CGUID+498, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+499, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+504, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- Lazy Basilisk - 358422 - Channel: Sleep Zzz (With Aggro Change) - Head
(@CGUID+506, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+509, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+511, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+512, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+514, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast - 371460 - Winded!
(@CGUID+515, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast - 371460 - Winded!
(@CGUID+516, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+519, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+521, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+522, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+523, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+524, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+526, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+528, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+530, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+533, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+536, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+537, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Ecologist Tharu
(@CGUID+539, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+540, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+541, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+542, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Riverbeast - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+543, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Ecologist Iskha
(@CGUID+544, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Crab - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+545, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Waterfowl - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+546, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Crab - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+547, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Crab - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+548, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Tiny Butterfly
(@CGUID+549, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Skitterfly
(@CGUID+552, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+555, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- Tragically Deceased Waterfowl - 159474 - Permanent Feign Death (NO Stun, Untrackable, Immune)
(@CGUID+556, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
-- (@CGUID+558, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, '370243'), -- Bronze Timekeeper - 370243 - Cosmetic Race Flag Overhead - !!! already present in database !!!
-- (@CGUID+559, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375014'), -- Primal Earth Elemental - 375014 - Channel: Earthquake Punch [DNT] - !!! already present in database !!!
-- (@CGUID+560, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375029'), -- Primal Earth Elemental - 375029 - Channel: Earthquake Tremors [DNT] - !!! already present in database !!!
-- (@CGUID+562, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375029'), -- Primal Earth Elemental - 375029 - Channel: Earthquake Tremors [DNT] - !!! already present in database !!!
-- (@CGUID+563, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '375412'), -- Baron Crustcore - 375412 - Channel: Earth Spikes [DNT] - !!! already present in database !!!
(@CGUID+564, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+566, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+568, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+569, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+570, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+571, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+572, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+574, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+575, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+576, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- Distressed Riverbeast Calf - 371460 - Winded!
(@CGUID+577, 0, 0, 0, 3, 0, 1, 0, 438, 0, 0, 0, 0, '373690'), -- Frazzled Basilisk - 373690 - Blown Away!
(@CGUID+578, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+580, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+581, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+582, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+584, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+588, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+592, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+594, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+596, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+597, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+601, 0, 0, 0, 0, 0, 0, 0, 173, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
(@CGUID+602, 0, 0, 0, 3, 0, 1, 0, 438, 0, 0, 0, 0, '373690'), -- Frazzled Basilisk - 373690 - Blown Away!
(@CGUID+603, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+604, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+607, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+608, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
-- (@CGUID+610, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
-- (@CGUID+613, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+614, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
-- (@CGUID+615, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
-- (@CGUID+617, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+619, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+624, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+625, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+628, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+631, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+632, 0, 0, 0, 3, 0, 1, 0, 438, 0, 0, 0, 0, '373690'), -- Frazzled Basilisk - 373690 - Blown Away!
(@CGUID+637, 0, 0, 0, 3, 0, 1, 0, 438, 0, 0, 0, 0, '373690'), -- Frazzled Basilisk - 373690 - Blown Away!
(@CGUID+638, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+641, 0, 0, 0, 3, 0, 1, 0, 438, 0, 0, 0, 0, '373690'), -- Frazzled Basilisk - 373690 - Blown Away!
(@CGUID+642, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- Snoozing Basilisk Bull - 358422 - Channel: Sleep Zzz (With Aggro Change) - Head
(@CGUID+654, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+656, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+657, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- Lazy Basilisk - 358422 - Channel: Sleep Zzz (With Aggro Change) - Head
(@CGUID+658, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+659, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+660, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- Lazy Basilisk - 358422 - Channel: Sleep Zzz (With Aggro Change) - Head
(@CGUID+662, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+663, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+668, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+669, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Restless Wildfowl
(@CGUID+671, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '69641'), -- Ironbeak Duck - 69641 - Gryphon/Wyvern Pet - Mounting Check Aura
(@CGUID+672, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+673, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+674, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+675, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+677, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
-- (@CGUID+679, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- Gorjo the Crab Shackler - 46598 - Ride Vehicle Hardcoded - !!! on transport - transport template not found !!!
(@CGUID+683, 0, 0, 0, 0, 0, 1, 0, 418, 0, 0, 0, 0, ''), -- Restless Wildfowl
(@CGUID+684, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+688, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Restless Wildfowl
-- (@CGUID+690, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '119904 32233 264993'), -- Voidwalker - 119904 - Override Command Demon, 32233 - Avoidance, 264993 - Shadow Shield - !!! might be temporary spawn !!!
(@CGUID+691, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+699, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+703, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+707, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+708, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+710, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+716, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+717, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+718, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+720, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+724, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+725, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+726, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+729, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+732, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+733, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
-- (@CGUID+734, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+737, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+738, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+739, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+740, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+744, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+747, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+750, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+751, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+753, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+760, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+761, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- Helpless Waterfowl - 371505 - Whelmed!
(@CGUID+762, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+763, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+765, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+766, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+767, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+768, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+769, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
-- (@CGUID+771, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- Sogglmoggl - 46598 - Ride Vehicle Hardcoded - !!! on transport - transport template not found !!!
(@CGUID+772, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+775, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+776, 0, 0, 0, 0, 0, 1, 0, 469, 0, 0, 0, 0, ''), -- Summoned Tsunami
(@CGUID+782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '370983'), -- Windyfin Skybasher - 370983 - [DNT] Gorloc Shells - On Back
-- (@CGUID+783, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+784, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
-- (@CGUID+785, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+788, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+789, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+791, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
(@CGUID+795, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, '391245'), -- Soggymaw Seabasher - 391245 - Supply-Laden
-- (@CGUID+798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+799, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+802, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
-- (@CGUID+805, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+808, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
(@CGUID+809, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+810, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+811, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
-- (@CGUID+813, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+814, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+816, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+817, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
-- (@CGUID+818, 0, 0, 0, 0, 0, 1, 0, 469, 0, 0, 0, 0, ''), -- Summoned Typhoon - !!! already present in database !!!
(@CGUID+821, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391245'), -- Windyfin Windbringer - 391245 - Supply-Laden
(@CGUID+825, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+829, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
-- (@CGUID+832, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- Whirglgurgl - 46598 - Ride Vehicle Hardcoded - !!! on transport - transport template not found !!!
(@CGUID+833, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391245'), -- Soggymaw Crabtrapper - 391245 - Supply-Laden
-- (@CGUID+834, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+836, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+839, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+842, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '370983'), -- Windyfin Skybasher - 370983 - [DNT] Gorloc Shells - On Back
-- (@CGUID+844, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+846, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+848, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+849, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Unsettled Seagull
(@CGUID+850, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
(@CGUID+851, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
(@CGUID+852, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+853, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '374347'), -- Bubbled Duckling - 374347 - Bubbled!
-- (@CGUID+855, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+856, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+857, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+860, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, '391245'), -- Windyfin Skybasher - 391245 - Supply-Laden
(@CGUID+861, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370983'), -- Soggymaw Seabasher - 370983 - [DNT] Gorloc Shells - On Back
(@CGUID+862, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+863, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
-- (@CGUID+864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+868, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+871, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
(@CGUID+872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '370983'), -- Windyfin Skybasher - 370983 - [DNT] Gorloc Shells - On Back
(@CGUID+873, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+875, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+878, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371389'), -- Windyfin Squallstalker - 371389 - [DNT] Gorloc Shells - Blowing Conch
(@CGUID+879, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+880, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Windyfin Skybasher
-- (@CGUID+884, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+887, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+889, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+890, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
(@CGUID+892, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+893, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+894, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+895, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+896, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+897, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+898, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Turtle Hatchling - 371436 - Bubbled!
(@CGUID+899, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+900, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+901, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+903, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- Trapped Sea Turtle - 371436 - Bubbled!
(@CGUID+916, 0, 0, 0, 0, 0, 1, 0, 69, 0, 0, 0, 0, ''), -- Restless Wildfowl
(@CGUID+917, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
-- (@CGUID+919, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Bound Shoresnapper - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+926, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '373750'), -- Primal Proto-Drake - 373750 - Dragonriding: Anim Replacements [DNT]
(@CGUID+928, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+932, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Bemused Axebeak
(@CGUID+933, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+934, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
(@CGUID+936, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+937, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+938, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- Windyfin Windbringer - 373357 - Gorloc Wind Cast [DNT]
(@CGUID+941, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
(@CGUID+944, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Summoned Zephyr
(@CGUID+948, 0, 0, 0, 0, 0, 1, 0, 173, 0, 0, 0, 0, ''), -- Soggymaw Seabasher
-- (@CGUID+954, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- Conscripted Crab - 166615 - Pet Active - !!! might be temporary spawn !!!
(@CGUID+956, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- Soggymaw Wavebringer - 374208 - Gorloc Water Cast [DNT]
(@CGUID+958, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- Cowering Crab - 371842 - Terrified!
(@CGUID+971, 0, 0, 0, 0, 0, 1, 0, 567, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+972, 0, 0, 0, 0, 0, 1, 0, 567, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+973, 0, 0, 0, 0, 0, 1, 0, 567, 0, 0, 0, 0, ''), -- Qalashi Scavenger
(@CGUID+975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '375853'); -- Qalashi Scavenger - 375853 - Channel: Carry Dragon Crystal [DNT]

DELETE FROM `creature_template_addon` WHERE `entry` IN (187433 /*187433 (Windyfin Squallstalker) - [DNT] Gorloc Shells - Blowing Conch*/, 187439 /*187439 (Bubbled Duckling) - Bubbled!*/, 187971 /*187971 (Soggymaw Crabtrapper) - Supply-Laden*/, 187543 /*187543 (Summoned Zephyr)*/, 187432 /*187432 (Windyfin Windbringer) - Gorloc Wind Cast [DNT]*/, 187431 /*187431 (Windyfin Skybasher) - [DNT] Gorloc Shells - On Back*/, 188859 /*188859 (Sogglmoggl) - Ride Vehicle Hardcoded*/, 1860 /*1860 (Voidwalker) - Override Command Demon, Avoidance, Shadow Shield*/, 193226 /*193226 (Gorjo the Crab Shackler) - Ride Vehicle Hardcoded*/, 187471 /*187471 (Trapped Turtle Hatchling) - Bubbled!*/, 189131 /*189131 (Ironbeak Duck) - Gryphon/Wyvern Pet - Mounting Check Aura*/, 187469 /*187469 (Trapped Sea Turtle) - Bubbled!*/, 189757 /*189757 (Snoozing Basilisk Bull) - Channel: Sleep Zzz (With Aggro Change) - Head*/, 190193 /*190193 (Bound Shoresnapper) - Pet Active*/, 190133 /*190133 (Conscripted Crab) - Pet Active*/, 187320 /*187320 (Soggymaw Seabasher) - [DNT] Gorloc Shells - On Back*/, 187263 /*187263 (Soggymaw Wavebringer) - Gorloc Water Cast [DNT]*/, 190249 /*190249 (Frazzled Basilisk) - Blown Away!*/, 188266 /*188266 (Cowering Crab) - Terrified!*/, 187468 /*187468 (Helpless Waterfowl) - Whelmed!*/, 189659 /*189659 (Tragically Deceased Waterfowl) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 189619 /*189619 (Tragically Deceased Crab) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 189613 /*189613 (Tragically Deceased Riverbeast) - Permanent Feign Death (NO Stun, Untrackable, Immune)*/, 187462 /*187462 (Distressed Riverbeast Calf) - Winded!*/, 188267 /*188267 (Unsettled Seagull)*/, 189688 /*189688 (Bemused Axebeak)*/, 189756 /*189756 (Lazy Basilisk) - Channel: Sleep Zzz (With Aggro Change) - Head*/, 187620 /*187620 (Disgruntled Riverbeast Matriarch) - Winded!*/, 187467 /*187467 (Distressed Riverbeast) - Winded!*/, 186684 /*186684 (Lava Phoenix)*/, 194231 /*194231 (Whimpering Whelpling) - Whimpering*/, 191639 /*191639 (Vibrant Butterfly)*/, 191553 /*191553 (Wild Argali) - Hearty*/, 193217 /*193217 (Drakewing)*/, 186576 /*186576 (Ruby Watcher) - Stealth*/, 191615 /*191615 (River Ottuk)*/, 187442 /*187442 (Waking Duck)*/, 197763 /*197763 (Glittery Stream) - Channel: Push Water Current [DNT]*/, 192186 /*192186 (Territorial Axebeak)*/, 187683 /*187683 (Waking Duck) - Channel: Sleep Zzz (With Aggro Change) - Breath*/, 182646 /*182646 (Seagull)*/, 191695 /*191695 (Stalking Basilisk) - Cosmetic - Sleep Zzz*/, 191696 /*191696 (Mature Basilisk) - Cosmetic - Sleep Zzz*/, 189578 /*189578 (Ancient Waygate)*/, 194204 /*194204 (Swashbuckling Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]*/, 198100 /*198100 (Hope Kite)*/, 194607 /*194607 (Wind Eagle) - Pet Active*/, 194203 /*194203 (Reckless Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]*/, 194201 /*194201 (Touring Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]*/, 194202 /*194202 (Inventive Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]*/, 194243 /*194243 (Saddled Proto-Drake)*/, 194279 /*194279 (Reckless Drakerider) - Reckless Dragonrider Rider*/, 191989 /*191989 (Dragon Glyph) - Visual*/, 194247 /*194247 (Saddled Proto-Drake) - Conversation Aura: Talk/Roar/Laugh [DNT]*/, 198454 /*198454 (Dragon Glyph) - Visual*/, 194274 /*194274 (Cavalier Drakerider) - Cavalier Dragonrider Rider*/, 198623 /*198623 (Tracker Dragon Glyph)*/, 196583 /*196583 (Bronze Timekeeper)*/, 198624 /*198624 (Tracker Dragon Glyph)*/, 194288 /*194288 (Swashbuckling Drakerider) - Swashbuckling Dragonrider Rider*/, 194196 /*194196 (Cautious Drakerider) - Conversation Aura: Talk/Roar/Laugh [DNT]*/);
INSERT INTO `creature_template_addon` (`entry`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(187433, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371389'), -- 187433 (Windyfin Squallstalker) - [DNT] Gorloc Shells - Blowing Conch
(187439, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '374347'), -- 187439 (Bubbled Duckling) - Bubbled!
(187971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391245'), -- 187971 (Soggymaw Crabtrapper) - Supply-Laden
(187543, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 187543 (Summoned Zephyr)
(187432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '373357'), -- 187432 (Windyfin Windbringer) - Gorloc Wind Cast [DNT]
(187431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '370983'), -- 187431 (Windyfin Skybasher) - [DNT] Gorloc Shells - On Back
(188859, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- 188859 (Sogglmoggl) - Ride Vehicle Hardcoded
(1860, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '119904 32233 264993'), -- 1860 (Voidwalker) - Override Command Demon, Avoidance, Shadow Shield
(193226, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '46598'), -- 193226 (Gorjo the Crab Shackler) - Ride Vehicle Hardcoded
(187471, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- 187471 (Trapped Turtle Hatchling) - Bubbled!
(189131, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '69641'), -- 189131 (Ironbeak Duck) - Gryphon/Wyvern Pet - Mounting Check Aura
(187469, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371436'), -- 187469 (Trapped Sea Turtle) - Bubbled!
(189757, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- 189757 (Snoozing Basilisk Bull) - Channel: Sleep Zzz (With Aggro Change) - Head
(190193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- 190193 (Bound Shoresnapper) - Pet Active
(190133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- 190133 (Conscripted Crab) - Pet Active
(187320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '370983'), -- 187320 (Soggymaw Seabasher) - [DNT] Gorloc Shells - On Back
(187263, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '374208'), -- 187263 (Soggymaw Wavebringer) - Gorloc Water Cast [DNT]
(190249, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '373690'), -- 190249 (Frazzled Basilisk) - Blown Away!
(188266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371842'), -- 188266 (Cowering Crab) - Terrified!
(187468, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '371505'), -- 187468 (Helpless Waterfowl) - Whelmed!
(189659, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 189659 (Tragically Deceased Waterfowl) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(189619, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 189619 (Tragically Deceased Crab) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(189613, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, '159474'), -- 189613 (Tragically Deceased Riverbeast) - Permanent Feign Death (NO Stun, Untrackable, Immune)
(187462, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- 187462 (Distressed Riverbeast Calf) - Winded!
(188267, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 188267 (Unsettled Seagull)
(189688, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 189688 (Bemused Axebeak)
(189756, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '358422'), -- 189756 (Lazy Basilisk) - Channel: Sleep Zzz (With Aggro Change) - Head
(187620, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371440'), -- 187620 (Disgruntled Riverbeast Matriarch) - Winded!
(187467, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '371460'), -- 187467 (Distressed Riverbeast) - Winded!
(186684, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 186684 (Lava Phoenix)
(194231, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '393301'), -- 194231 (Whimpering Whelpling) - Whimpering
(191639, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 191639 (Vibrant Butterfly)
(191553, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '391254'), -- 191553 (Wild Argali) - Hearty
(193217, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 193217 (Drakewing)
(186576, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '86603'), -- 186576 (Ruby Watcher) - Stealth
(191615, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 191615 (River Ottuk)
(187442, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 187442 (Waking Duck)
(197763, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '367419'), -- 197763 (Glittery Stream) - Channel: Push Water Current [DNT]
(192186, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 192186 (Territorial Axebeak)
(187683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '368927'), -- 187683 (Waking Duck) - Channel: Sleep Zzz (With Aggro Change) - Breath
(182646, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 182646 (Seagull)
(191695, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '257448'), -- 191695 (Stalking Basilisk) - Cosmetic - Sleep Zzz
(191696, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '257448'), -- 191696 (Mature Basilisk) - Cosmetic - Sleep Zzz
(189578, 0, 0, 0, 0, 0, 1, 0, 0, 2560, 0, 0, 0, ''), -- 189578 (Ancient Waygate)
(194204, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- 194204 (Swashbuckling Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(198100, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 198100 (Hope Kite)
(194607, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '166615'), -- 194607 (Wind Eagle) - Pet Active
(194203, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- 194203 (Reckless Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(194201, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- 194201 (Touring Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(194202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '370693'), -- 194202 (Inventive Drakerider) - Conversation Aura: Talk/Point/Question/Yes/No/Cry/Cheer [DNT]
(194243, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 194243 (Saddled Proto-Drake)
(194279, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383326'), -- 194279 (Reckless Drakerider) - Reckless Dragonrider Rider
(191989, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '376874'), -- 191989 (Dragon Glyph) - Visual
(194247, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'), -- 194247 (Saddled Proto-Drake) - Conversation Aura: Talk/Roar/Laugh [DNT]
(198454, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, '393906'), -- 198454 (Dragon Glyph) - Visual
(194274, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383319'), -- 194274 (Cavalier Drakerider) - Cavalier Dragonrider Rider
(198623, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 198623 (Tracker Dragon Glyph)
(196583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 196583 (Bronze Timekeeper)
(198624, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 4, ''), -- 198624 (Tracker Dragon Glyph)
(194288, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 0, '383348'), -- 194288 (Swashbuckling Drakerider) - Swashbuckling Dragonrider Rider
(194196, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '383247'); -- 194196 (Cautious Drakerider) - Conversation Aura: Talk/Roar/Laugh [DNT]

UPDATE `creature_template_addon` SET `auras`='375014' WHERE `entry`=187322; -- 187322 (Primal Earth Elemental) - Channel: Earthquake Punch [DNT]

UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187439 AND `DifficultyID`=0); -- 187439 (Bubbled Duckling) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188205 AND `DifficultyID`=0); -- 188205 (Whirling Updraft) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187432 AND `DifficultyID`=0); -- 187432 (Windyfin Windbringer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187410 AND `DifficultyID`=0); -- 187410 (Summoned Tsunami) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187431 AND `DifficultyID`=0); -- 187431 (Windyfin Skybasher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=188859 AND `DifficultyID`=0); -- 188859 (Sogglmoggl) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189136 AND `DifficultyID`=0); -- 189136 (Wild Duckling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187543 AND `DifficultyID`=0); -- 187543 (Summoned Zephyr) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187433 AND `DifficultyID`=0); -- 187433 (Windyfin Squallstalker) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=2294, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193236 AND `DifficultyID`=0); -- 193236 (Shackled Crab) - CanSwim
UPDATE `creature_template_difficulty` SET `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `ContentTuningID`=2523, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193228 AND `DifficultyID`=0); -- 193228 (Snappy) - CanSwim
UPDATE `creature_template_difficulty` SET `LevelScalingDeltaMin`=2, `LevelScalingDeltaMax`=2, `ContentTuningID`=2652, `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=193226 AND `DifficultyID`=0); -- 193226 (Gorjo the Crab Shackler) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187471 AND `DifficultyID`=0); -- 187471 (Trapped Turtle Hatchling) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189131 AND `DifficultyID`=0); -- 189131 (Ironbeak Duck) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187469 AND `DifficultyID`=0); -- 187469 (Trapped Sea Turtle) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189757 AND `DifficultyID`=0); -- 189757 (Snoozing Basilisk Bull) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187542 AND `DifficultyID`=0); -- 187542 (Summoned Ripple) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190193 AND `DifficultyID`=0); -- 190193 (Bound Shoresnapper) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190133 AND `DifficultyID`=0); -- 190133 (Conscripted Crab) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187971 AND `DifficultyID`=0); -- 187971 (Soggymaw Crabtrapper) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187320 AND `DifficultyID`=0); -- 187320 (Soggymaw Seabasher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187263 AND `DifficultyID`=0); -- 187263 (Soggymaw Wavebringer) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189737 AND `DifficultyID`=0); -- 189737 (Kelp Nibbler) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=190249 AND `DifficultyID`=0); -- 190249 (Frazzled Basilisk) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188266 AND `DifficultyID`=0); -- 188266 (Cowering Crab) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187468 AND `DifficultyID`=0); -- 187468 (Helpless Waterfowl) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=180673 AND `DifficultyID`=0); -- 180673 (Turbulent Waters) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=189659 AND `DifficultyID`=0); -- 189659 (Tragically Deceased Waterfowl) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=189619 AND `DifficultyID`=0); -- 189619 (Tragically Deceased Crab) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186410 AND `DifficultyID`=0); -- 186410 (Ecologist Iskha) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000100, `VerifiedBuild`=65299 WHERE (`Entry`=189613 AND `DifficultyID`=0); -- 189613 (Tragically Deceased Riverbeast) - Sessile, CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192095 AND `DifficultyID`=0); -- 192095 (Ironbeak Duck) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186428 AND `DifficultyID`=0); -- 186428 (Ecologist Tharu) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187462 AND `DifficultyID`=0); -- 187462 (Distressed Riverbeast Calf) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=188267 AND `DifficultyID`=0); -- 188267 (Unsettled Seagull) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189688 AND `DifficultyID`=0); -- 189688 (Bemused Axebeak) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187494 AND `DifficultyID`=0); -- 187494 (Rampaging Wind) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187493 AND `DifficultyID`=0); -- 187493 (Rampaging Water) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189756 AND `DifficultyID`=0); -- 189756 (Lazy Basilisk) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=373, `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=201802 AND `DifficultyID`=0); -- 201802 (Excavator Morgrum Emberflint) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=371, `VerifiedBuild`=65299 WHERE (`Entry`=201842 AND `DifficultyID`=0); -- 201842 (Lord Flappinsby) - 
UPDATE `creature_template_difficulty` SET `ContentTuningID`=371, `VerifiedBuild`=65299 WHERE (`Entry`=201840 AND `DifficultyID`=0); -- 201840 (Feral Frogduck) - 
UPDATE `creature_template_difficulty` SET `ContentTuningID`=371, `VerifiedBuild`=65299 WHERE (`Entry`=201845 AND `DifficultyID`=0); -- 201845 (Enchanted Tuskling) - 
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187620 AND `DifficultyID`=0); -- 187620 (Disgruntled Riverbeast Matriarch) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190301 AND `DifficultyID`=0); -- 190301 (Fretful Riverbeast Calf) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189992 AND `DifficultyID`=0); -- 189992 (Restless Wildfowl) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=187467 AND `DifficultyID`=0); -- 187467 (Distressed Riverbeast) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=186684 AND `DifficultyID`=0); -- 186684 (Lava Phoenix) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194231 AND `DifficultyID`=0); -- 194231 (Whimpering Whelpling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=195853 AND `DifficultyID`=0); -- 195853 (Qalashi Trainee) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191812 AND `DifficultyID`=0); -- 191812 (Crumbling Pebbles) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191619 AND `DifficultyID`=0); -- 191619 (Mature Hornswog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=191639 AND `DifficultyID`=0); -- 191639 (Vibrant Butterfly) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191625 AND `DifficultyID`=0); -- 191625 (Vorquin Foal) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=193217 AND `DifficultyID`=0); -- 193217 (Drakewing) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191323 AND `DifficultyID`=0); -- 191323 (Vorquin Runt) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192069 AND `DifficultyID`=0); -- 192069 (Vorquin Runt) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191620 AND `DifficultyID`=0); -- 191620 (River Swoglet) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191833 AND `DifficultyID`=0); -- 191833 (Qalashi Scavenger) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188296 AND `DifficultyID`=0); -- 188296 (Qalashi Djaradin) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=186576 AND `DifficultyID`=0); -- 186576 (Ruby Watcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191624 AND `DifficultyID`=0); -- 191624 (Tranquil Vorquin) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191618 AND `DifficultyID`=0); -- 191618 (River Hornswog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189122 AND `DifficultyID`=0); -- 189122 (Palamanther) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191697 AND `DifficultyID`=0); -- 191697 (Ancient Basilisk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192013 AND `DifficultyID`=0); -- 192013 (Wild Duckling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191797 AND `DifficultyID`=0); -- 191797 (Steam Drip) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191694 AND `DifficultyID`=0); -- 191694 (Young Basilisk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187745 AND `DifficultyID`=0); -- 187745 (Disoriented Watcher) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187393 AND `DifficultyID`=0); -- 187393 (Displaced Earth) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191616 AND `DifficultyID`=0); -- 191616 (Young Ottuk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191615 AND `DifficultyID`=0); -- 191615 (River Ottuk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=190363 AND `DifficultyID`=0); -- 190363 ((Bunny) Sessile) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187617 AND `DifficultyID`=0); -- 187617 (Acequian) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=196820 AND `DifficultyID`=0); -- 196820 (Zikkori) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191817 AND `DifficultyID`=0); -- 191817 (Shores Snake) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192059 AND `DifficultyID`=0); -- 192059 (Palamanther) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192047 AND `DifficultyID`=0); -- 192047 (Scruffy Ottuk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=197763 AND `DifficultyID`=0); -- 197763 (Glittery Stream) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191796 AND `DifficultyID`=0); -- 191796 (Tiny Drop) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=192186 AND `DifficultyID`=0); -- 192186 (Territorial Axebeak) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=197582 AND `DifficultyID`=0); -- 197582 (Adventurous Argali) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187683 AND `DifficultyID`=0); -- 187683 (Waking Duck) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187948 AND `DifficultyID`=0); -- 187948 (Diverted Stream) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191792 AND `DifficultyID`=0); -- 191792 (Frog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=187863 AND `DifficultyID`=0); -- 187863 (Duckling) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190608 AND `DifficultyID`=0); -- 190608 (Carefree Hornswog) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=188174 AND `DifficultyID`=0); -- 188174 (Destructive Flames) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191798 AND `DifficultyID`=0); -- 191798 (Stray Gust) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192133 AND `DifficultyID`=0); -- 192133 (Coastal Eel) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=192126 AND `DifficultyID`=0); -- 192126 (Ancient Hydra) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x30000000, `VerifiedBuild`=65299 WHERE (`Entry`=182646 AND `DifficultyID`=0); -- 182646 (Seagull) - CanSwim, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191695 AND `DifficultyID`=0); -- 191695 (Stalking Basilisk) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=191696 AND `DifficultyID`=0); -- 191696 (Mature Basilisk) - CanSwim
UPDATE `creature_template_difficulty` SET `ContentTuningID`=881, `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=189578 AND `DifficultyID`=0); -- 189578 (Ancient Waygate) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x100, `VerifiedBuild`=65299 WHERE (`Entry`=194432 AND `DifficultyID`=0); -- 194432 (Meehran Highlock) - CannotSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193477 AND `DifficultyID`=0); -- 193477 (Azerastrasz) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193411 AND `DifficultyID`=0); -- 193411 (Celormu) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198115 AND `DifficultyID`=0); -- 198115 (Hope Kite) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194293 AND `DifficultyID`=0); -- 194293 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194204 AND `DifficultyID`=0); -- 194204 (Swashbuckling Drakerider) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194605 AND `DifficultyID`=0); -- 194605 (Bron) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=198100 AND `DifficultyID`=0); -- 198100 (Hope Kite) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194607 AND `DifficultyID`=0); -- 194607 (Wind Eagle) - CanSwim
UPDATE `creature_template_difficulty` SET `VerifiedBuild`=65299 WHERE (`DifficultyID`=0 AND `Entry` IN (198060,4075,198464,196583));
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194606 AND `DifficultyID`=0); -- 194606 (Matthias Darkwall) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194203 AND `DifficultyID`=0); -- 194203 (Reckless Drakerider) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194201 AND `DifficultyID`=0); -- 194201 (Touring Drakerider) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194202 AND `DifficultyID`=0); -- 194202 (Inventive Drakerider) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=193364 AND `DifficultyID`=0); -- 193364 (Lithragosa) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=194279 AND `DifficultyID`=0); -- 194279 (Reckless Drakerider) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=191989 AND `DifficultyID`=0); -- 191989 (Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194248 AND `DifficultyID`=0); -- 194248 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194243 AND `DifficultyID`=0); -- 194243 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194247 AND `DifficultyID`=0); -- 194247 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194244 AND `DifficultyID`=0); -- 194244 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags3`=0x2000000, `VerifiedBuild`=65299 WHERE (`Entry`=194246 AND `DifficultyID`=0); -- 194246 (Saddled Proto-Drake) - CannotTurn
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198454 AND `DifficultyID`=0); -- 198454 (Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=199684 AND `DifficultyID`=0); -- 199684 (Relastrasza) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=194274 AND `DifficultyID`=0); -- 194274 (Cavalier Drakerider) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198623 AND `DifficultyID`=0); -- 198623 (Tracker Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000100, `VerifiedBuild`=65299 WHERE (`Entry`=198624 AND `DifficultyID`=0); -- 198624 (Tracker Dragon Glyph) - Sessile, Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=189703 AND `DifficultyID`=0); -- 189703 (Sunning Salamanther) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x20000000, `VerifiedBuild`=65299 WHERE (`Entry`=194288 AND `DifficultyID`=0); -- 194288 (Swashbuckling Drakerider) - Floating
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=194196 AND `DifficultyID`=0); -- 194196 (Cautious Drakerider) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=65299 WHERE (`Entry`=190839 AND `DifficultyID`=0); -- 190839 (Glensera) - CanSwim

DELETE FROM `creature_model_info` WHERE `DisplayID`=103423;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(103423, 2.108340978622436523, 2.75, 0, 65299);

UPDATE `creature_model_info` SET `VerifiedBuild`=65299 WHERE `DisplayID` IN (103358, 104001, 103972, 103931, 103860, 102573, 103363, 107062, 103357, 103364, 103465, 103415, 106632, 102569, 106085, 103361, 103317, 103326, 108119, 104680, 103984, 102524, 102523, 103983, 103316, 103359, 103323, 103325, 103280, 103850, 103981, 103985, 103846, 103852, 101794, 103847, 104676, 106301, 103536, 106634, 102678, 104679, 103552, 104167, 103538, 102511, 103524, 111504, 109789, 111511, 111512, 103545, 103550, 103548, 104677, 103534, 102500, 101808, 102140, 104533, 106307, 104534, 104532, 103563, 106306, 106708, 103923, 106674, 104657, 103580, 104648, 106308, 101809, 106309, 101806, 102774, 104646, 103566, 103569, 103568, 103565, 103523, 103527, 102562, 82113, 103587, 103561, 106614, 103340, 103558, 104537, 106636, 104536, 103845, 103338, 103562, 103844, 103560, 5379, 106688, 106523, 104516, 103557, 103567, 104519, 78847, 103526, 104168, 102546, 109525, 103832, 103842, 104517, 106622, 78846, 80919, 104530, 104674, 104669, 106623, 22469, 106610, 102509, 103841, 104170, 104531, 104169, 102510, 104673, 78833, 104672, 102504, 104538, 104497, 103887, 103904, 103929, 103342, 103559, 108905, 108559, 108420, 108201, 108170, 109912, 2176, 104665, 108419, 104043, 108643, 1141, 104666, 108644, 1418, 104667, 108409, 108404, 104663, 108403, 108405, 108424, 108179, 108426, 108423, 108429, 108430, 108425, 108427, 107204, 108428, 104042, 103794, 104041, 104664, 108431, 104040, 108421, 108178);
UPDATE `creature_model_info` SET `BoundingRadius`=0.287501066923141479, `CombatReach`=0.375 WHERE `DisplayID` IN (32790, 45880);
UPDATE `creature_model_info` SET `BoundingRadius`=0.843754053115844726, `CombatReach`=0.60000002384185791, `VerifiedBuild`=65299 WHERE `DisplayID`=103279;
UPDATE `creature_model_info` SET `BoundingRadius`=0.599362134933471679, `VerifiedBuild`=65299 WHERE `DisplayID` IN (106705, 106707, 106706);
UPDATE `creature_model_info` SET `BoundingRadius`=0.303333312273025512, `CombatReach`=0.866666615009307861, `VerifiedBuild`=65299 WHERE `DisplayID` IN (104047, 104049);
UPDATE `creature_model_info` SET `BoundingRadius`=1.466563701629638671, `CombatReach`=3.20000004768371582, `VerifiedBuild`=65299 WHERE `DisplayID`=101438;

DELETE FROM `creature_template_gossip` WHERE (`CreatureID`=186428 AND `MenuID`=29178) OR (`CreatureID`=186410 AND `MenuID`=27741) OR (`CreatureID`=196820 AND `MenuID`=29902) OR (`CreatureID`=194432 AND `MenuID`=28948) OR (`CreatureID`=193477 AND `MenuID`=6944) OR (`CreatureID`=196583 AND `MenuID`=28001) OR (`CreatureID`=193411 AND `MenuID`=28615) OR (`CreatureID`=194605 AND `MenuID`=28953) OR (`CreatureID`=190839 AND `MenuID`=28200) OR (`CreatureID`=193364 AND `MenuID`=28607);
INSERT INTO `creature_template_gossip` (`CreatureID`, `MenuID`, `VerifiedBuild`) VALUES
(186428, 29178, 65299), -- Ecologist Tharu
(186410, 27741, 65299), -- Ecologist Iskha
(196820, 29902, 65299), -- Zikkori
(194432, 28948, 65299), -- Meehran Highlock
(193477, 6944, 65299), -- Azerastrasz
(196583, 28001, 65299), -- Bronze Timekeeper
(193411, 28615, 65299), -- Celormu
(194605, 28953, 65299), -- Bron
(190839, 28200, 65299), -- Glensera
(193364, 28607, 65299); -- Lithragosa


DELETE FROM `npc_vendor` WHERE (`entry`=194606 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194606 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194606 AND `item`=10498 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194606 AND `item`=6219 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194606 AND `item`=201832 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194606 AND `item`=190452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=194681 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197854 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=194688 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=194684 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197848 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197853 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=194691 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197849 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=194694 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197851 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=197852 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163411 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163407 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163395 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163388 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163207 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163192 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163158 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163157 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163156 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163155 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163154 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163153 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163152 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163151 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163150 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163149 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163147 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163145 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163143 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163140 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163138 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=225996 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194432 AND `item`=163137 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=194605 AND `item`=37460 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(194606, 6, 2901, 0, 0, 1, 0, 0, 65299), -- Mining Pick
(194606, 5, 5956, 0, 0, 1, 0, 0, 65299), -- Blacksmith Hammer
(194606, 4, 10498, 0, 0, 1, 0, 0, 65299), -- Gyromatic Micro-Adjustor
(194606, 3, 6219, 0, 0, 1, 0, 0, 65299), -- Arclight Spanner
(194606, 2, 201832, 0, 0, 1, 0, 0, 65299), -- Smudged Lens
(194606, 1, 190452, 0, 0, 1, 0, 0, 65299), -- Primal Flux
(194432, 34, 194681, 0, 0, 1, 0, 0, 65299), -- Sugarwing Cupcake
(194432, 33, 197854, 0, 0, 1, 0, 0, 65299), -- Enchanted Argali Tenderloin
(194432, 32, 194688, 0, 0, 1, 0, 0, 65299), -- Vorquin Filet
(194432, 31, 194684, 0, 0, 1, 0, 0, 65299), -- Azure Leywine
(194432, 30, 197848, 0, 0, 1, 0, 0, 65299), -- Hearty Squash Stew
(194432, 29, 197853, 0, 0, 1, 0, 0, 65299), -- Critter Kebab
(194432, 28, 194691, 0, 0, 1, 0, 0, 65299), -- Artisanal Berry Juice
(194432, 27, 197849, 0, 0, 1, 0, 0, 65299), -- Ancient Firewine
(194432, 26, 194694, 0, 0, 1, 0, 0, 65299), -- Seasoned Hornswog Steak
(194432, 25, 197851, 0, 0, 1, 0, 0, 65299), -- Extra Crispy Mutton
(194432, 24, 197852, 0, 0, 1, 0, 0, 65299), -- Goat Brisket
(194432, 23, 163411, 0, 0, 1, 0, 0, 65299), -- Briartini
(194432, 22, 163407, 0, 0, 1, 0, 0, 65299), -- Drustvine
(194432, 21, 163395, 0, 0, 1, 0, 0, 65299), -- Sunken Pylon
(194432, 20, 163388, 0, 0, 1, 0, 0, 65299), -- Shellini
(194432, 19, 163207, 0, 0, 1, 0, 0, 65299), -- Gral's Growler
(194432, 18, 163192, 0, 0, 1, 0, 0, 65299), -- Leviathan Tears
(194432, 17, 163158, 0, 0, 1, 0, 0, 65299), -- White Tortollan
(194432, 16, 163157, 0, 0, 1, 0, 0, 65299), -- Musket Muddler
(194432, 15, 163156, 0, 0, 1, 0, 0, 65299), -- Grapeshot
(194432, 14, 163155, 0, 0, 1, 0, 0, 65299), -- Cannon Shot
(194432, 13, 163154, 0, 0, 1, 0, 0, 65299), -- The Dark Below
(194432, 12, 163153, 0, 0, 1, 0, 0, 65299), -- Debby Drowner
(194432, 11, 163152, 0, 0, 1, 0, 0, 65299), -- Te'kill'u
(194432, 10, 163151, 0, 0, 1, 0, 0, 65299), -- Salvaged Flagon
(194432, 9, 163150, 0, 0, 1, 0, 0, 65299), -- Oil Drum
(194432, 8, 163149, 0, 0, 1, 0, 0, 65299), -- Anchor Drop
(194432, 7, 163147, 0, 0, 1, 0, 0, 65299), -- Rum Fatigue
(194432, 6, 163145, 0, 0, 1, 0, 0, 65299), -- Throatkiller
(194432, 5, 163143, 0, 0, 1, 0, 0, 65299), -- The Burning Black Beverage
(194432, 4, 163140, 0, 0, 1, 0, 0, 65299), -- Viscous Ooze
(194432, 3, 163138, 0, 0, 1, 0, 0, 65299), -- Snorkle Dropper
(194432, 2, 225996, 0, 0, 1, 0, 0, 65299), -- Clam Digger
(194432, 1, 163137, 0, 0, 1, 0, 0, 65299), -- Oyster Shot
(194605, 1, 37460, 0, 0, 1, 0, 0, 65299); -- Rope Pet Leash


DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+13;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 229954, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186410 (Ecologist Iskha)
(@NPCTEXTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 226696, 0, 0, 0, 0, 0, 0, 0, 65299), -- 194432 (Meehran Highlock)
(@NPCTEXTID+2, 1, 0, 0, 0, 0, 0, 0, 0, 226713, 0, 0, 0, 0, 0, 0, 0, 65299), -- 194605 (Bron)
(@NPCTEXTID+3, 1, 0, 0, 0, 0, 0, 0, 0, 224423, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193364 (Lithragosa)
(@NPCTEXTID+4, 1, 0, 0, 0, 0, 0, 0, 0, 224431, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190839 (Glensera)
(@NPCTEXTID+5, 1, 0, 0, 0, 0, 0, 0, 0, 224426, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190839 (Glensera)
(@NPCTEXTID+6, 1, 0, 0, 0, 0, 0, 0, 0, 218580, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186410 (Ecologist Iskha)
(@NPCTEXTID+7, 1, 0, 0, 0, 0, 0, 0, 0, 219719, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193411 (Celormu)
(@NPCTEXTID+8, 1, 0, 0, 0, 0, 0, 0, 0, 224459, 0, 0, 0, 0, 0, 0, 0, 65299), -- 193411 (Celormu)
(@NPCTEXTID+9, 1, 0, 0, 0, 0, 0, 0, 0, 230064, 0, 0, 0, 0, 0, 0, 0, 65299), -- 196583 (Bronze Timekeeper)
(@NPCTEXTID+10, 1, 0, 0, 0, 0, 0, 0, 0, 218581, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186410 (Ecologist Iskha)
(@NPCTEXTID+11, 1, 0, 0, 0, 0, 0, 0, 0, 227888, 0, 0, 0, 0, 0, 0, 0, 65299), -- 186428 (Ecologist Tharu)
(@NPCTEXTID+12, 1, 0, 0, 0, 0, 0, 0, 0, 224417, 0, 0, 0, 0, 0, 0, 0, 65299), -- 190839 (Glensera)
(@NPCTEXTID+13, 1, 0, 0, 0, 0, 0, 0, 0, 231657, 0, 0, 0, 0, 0, 0, 0, 65299); -- 196820 (Zikkori)

DELETE FROM `gossip_menu` WHERE (`MenuID`=29552 AND `TextID`=@NPCTEXTID+0) OR (`MenuID`=28948 AND `TextID`=@NPCTEXTID+1) OR (`MenuID`=28953 AND `TextID`=@NPCTEXTID+2) OR (`MenuID`=28607 AND `TextID`=@NPCTEXTID+3) OR (`MenuID`=28608 AND `TextID`=@NPCTEXTID+4) OR (`MenuID`=28609 AND `TextID`=@NPCTEXTID+5) OR (`MenuID`=28078 AND `TextID`=@NPCTEXTID+6) OR (`MenuID`=28615 AND `TextID`=@NPCTEXTID+7) OR (`MenuID`=28616 AND `TextID`=@NPCTEXTID+8) OR (`MenuID`=28001 AND `TextID`=@NPCTEXTID+9) OR (`MenuID`=27741 AND `TextID`=@NPCTEXTID+10) OR (`MenuID`=29178 AND `TextID`=@NPCTEXTID+11) OR (`MenuID`=28200 AND `TextID`=@NPCTEXTID+12) OR (`MenuID`=29902 AND `TextID`=@NPCTEXTID+13);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(29552, @NPCTEXTID+0, 65299), -- 186410 (Ecologist Iskha)
(28948, @NPCTEXTID+1, 65299), -- 194432 (Meehran Highlock)
(28953, @NPCTEXTID+2, 65299), -- 194605 (Bron)
(28607, @NPCTEXTID+3, 65299), -- 193364 (Lithragosa)
(28608, @NPCTEXTID+4, 65299), -- 190839 (Glensera)
(28609, @NPCTEXTID+5, 65299), -- 190839 (Glensera)
(28078, @NPCTEXTID+6, 65299), -- 186410 (Ecologist Iskha)
(28615, @NPCTEXTID+7, 65299), -- 193411 (Celormu)
(28616, @NPCTEXTID+8, 65299), -- 193411 (Celormu)
(28001, @NPCTEXTID+9, 65299), -- 196583 (Bronze Timekeeper)
(27741, @NPCTEXTID+10, 65299), -- 186410 (Ecologist Iskha)
(29178, @NPCTEXTID+11, 65299), -- 186428 (Ecologist Tharu)
(28200, @NPCTEXTID+12, 65299), -- 190839 (Glensera)
(29902, @NPCTEXTID+13, 65299); -- 196820 (Zikkori)


DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (29178,28607,28609,27741,28608,28948,28200,29552,28078,28953,28616)) OR (`OptionID`=1 AND `MenuID` IN (28948,27741,28200,28615));
INSERT INTO `gossip_menu_option` (`MenuID`, `GossipOptionID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `Flags`, `ActionMenuID`, `ActionPoiID`, `GossipNpcOptionID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `SpellID`, `OverrideIconID`, `VerifiedBuild`) VALUES
(29178, 56386, 0, 0, 'Aren\'t you concerned about the attack on Dragonheart Outpost?', 0, 0, 0, 29178, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28948, 56145, 1, 1, 'I would like to buy from you.', 2583, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 2583 - 6399 - 7142 - 9992 - 14967
(28607, 55584, 0, 51, 'I\'m ready. [Open Dragonriding Skill Track.]', 0, 0, 0, 0, 0, 32485, 0, 0, NULL, 0, NULL, NULL, 65299),
(28609, 55587, 0, 0, 'Let\'s talk about something else.', 172206, 0, 0, 28200, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 172206 - 174968
(27741, 54599, 0, 0, 'Why are there so many deceased animals here?', 0, 0, 0, 28078, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28608, 55586, 0, 0, 'Let\'s talk about something else.', 172206, 0, 0, 28200, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 172206 - 174968
(28948, 56144, 0, 5, 'Bind your hearthstone to this inn.', 2822, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(27741, 106822, 1, 0, 'What can you tell me about these wetlands?', 0, 0, 0, 29552, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28200, 54921, 0, 0, 'How do I customize my drake?', 0, 0, 0, 28608, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(29552, 106821, 0, 0, 'Thank you for the wetlands facts.', 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28078, 107574, 0, 0, 'I want to ask about something else.', 149761, 0, 0, 27741, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28953, 56147, 0, 1, 'I\'m looking for a lost companion.', 56613, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28616, 55590, 0, 0, 'Let\'s talk about something else.', 172206, 0, 0, 28615, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299), -- OptionBroadcastTextID: 172206 - 174968
(28200, 54922, 1, 0, 'Tell me about the Rostrum of Transformation.', 0, 0, 0, 28609, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299),
(28615, 55589, 1, 0, 'Tell me about dragon races.', 0, 0, 0, 28616, 0, NULL, 0, 0, NULL, 0, NULL, NULL, 65299);

UPDATE `creature_template` SET `faction`=188, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187439; -- Bubbled Duckling
UPDATE `creature_template` SET `faction`=2757, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800 WHERE `entry`=188205; -- Whirling Updraft
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187432; -- Windyfin Windbringer
UPDATE `creature_template` SET `faction`=3308, `BaseAttackTime`=2000, `unit_flags2`=0x800, `VehicleId`=7634 WHERE `entry`=187410; -- Summoned Tsunami
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187431; -- Windyfin Skybasher
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=188859; -- Sogglmoggl
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=189136; -- Wild Duckling
UPDATE `creature_template` SET `faction`=3305, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187543; -- Summoned Zephyr
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187433; -- Windyfin Squallstalker
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=193236; -- Shackled Crab
UPDATE `creature_template` SET `BaseAttackTime`=1875 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `VehicleId`=7854 WHERE `entry`=193228; -- Snappy
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=193226; -- Gorjo the Crab Shackler
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187471; -- Trapped Turtle Hatchling
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=189131; -- Ironbeak Duck
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187469; -- Trapped Sea Turtle
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=189757; -- Snoozing Basilisk Bull
UPDATE `creature_template` SET `faction`=3308, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187542; -- Summoned Ripple
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=190193; -- Bound Shoresnapper
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=190133; -- Conscripted Crab
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187971; -- Soggymaw Crabtrapper
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187320; -- Soggymaw Seabasher
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187263; -- Soggymaw Wavebringer
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=189737; -- Kelp Nibbler
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=190249; -- Frazzled Basilisk
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x100, `unit_flags2`=0x800 WHERE `entry`=188266; -- Cowering Crab
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187468; -- Helpless Waterfowl
UPDATE `creature_template` SET `faction`=2757, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `VehicleId`=7582 WHERE `entry`=180673; -- Turbulent Waters
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=189659; -- Tragically Deceased Waterfowl
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=189619; -- Tragically Deceased Crab
UPDATE `creature_template` SET `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=186410; -- Ecologist Iskha
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x340, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=189613; -- Tragically Deceased Riverbeast
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=192095; -- Ironbeak Duck
UPDATE `creature_template` SET `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=186428; -- Ecologist Tharu
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=187462; -- Distressed Riverbeast Calf
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=188267; -- Unsettled Seagull
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=189688; -- Bemused Axebeak
UPDATE `creature_template` SET `faction`=3305, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187494; -- Rampaging Wind
UPDATE `creature_template` SET `faction`=3308, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187493; -- Rampaging Water
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=189756; -- Lazy Basilisk
UPDATE `creature_template` SET `faction`=3270, `npcflag`=129, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=201802; -- Excavator Morgrum Emberflint
UPDATE `creature_template` SET `faction`=35, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=201842; -- Lord Flappinsby
UPDATE `creature_template` SET `faction`=35, `speed_walk`=0.86666804552078247, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=201840; -- Feral Frogduck
UPDATE `creature_template` SET `faction`=35, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=201845; -- Enchanted Tuskling
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x340, `unit_flags2`=0x800 WHERE `entry`=187620; -- Disgruntled Riverbeast Matriarch
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=190301; -- Fretful Riverbeast Calf
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=189992; -- Restless Wildfowl
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x340, `unit_flags2`=0x800 WHERE `entry`=187467; -- Distressed Riverbeast
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=186684; -- Lava Phoenix
UPDATE `creature_template` SET `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194231; -- Whimpering Whelpling
UPDATE `creature_template` SET `faction`=3295, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=195853; -- Qalashi Trainee
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191812; -- Crumbling Pebbles
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191619; -- Mature Hornswog
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191639; -- Vibrant Butterfly
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191625; -- Vorquin Foal
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=193217; -- Drakewing
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=191323; -- Vorquin Runt
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191620; -- River Swoglet
UPDATE `creature_template` SET `faction`=3295, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191833; -- Qalashi Scavenger
UPDATE `creature_template` SET `faction`=3295, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=188296; -- Qalashi Djaradin
UPDATE `creature_template` SET `faction`=3277, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=186576; -- Ruby Watcher
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191624; -- Tranquil Vorquin
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191618; -- River Hornswog
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191697; -- Ancient Basilisk
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=192013; -- Wild Duckling
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191797; -- Steam Drip
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191694; -- Young Basilisk
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=187745; -- Disoriented Watcher
UPDATE `creature_template` SET `faction`=3306, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187393; -- Displaced Earth
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191616; -- Young Ottuk
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191615; -- River Ottuk
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x40000001 WHERE `entry`=190363; -- (Bunny) Sessile
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=187617; -- Acequian
UPDATE `creature_template` SET `faction`=3270, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=196820; -- Zikkori
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191817; -- Shores Snake
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=192047; -- Scruffy Ottuk
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=197763; -- Glittery Stream
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191796; -- Tiny Drop
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=192186; -- Territorial Axebeak
UPDATE `creature_template` SET `faction`=2575, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=197582; -- Adventurous Argali
UPDATE `creature_template` SET `faction`=2136, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=187683; -- Waking Duck
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187948; -- Diverted Stream
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191792; -- Frog
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=187863; -- Duckling
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=190608; -- Carefree Hornswog
UPDATE `creature_template` SET `faction`=3307, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=188174; -- Destructive Flames
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=191798; -- Stray Gust
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192133; -- Coastal Eel
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=192126; -- Ancient Hydra
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191695; -- Stalking Basilisk
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800, `unit_flags3`=0x4000000 WHERE `entry`=191696; -- Mature Basilisk
UPDATE `creature_template` SET `faction`=35, `npcflag`=8192, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=189578; -- Ancient Waygate
UPDATE `creature_template` SET `faction`=35, `npcflag`=65665, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194432; -- Meehran Highlock
UPDATE `creature_template` SET `faction`=3276, `npcflag`=8193, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=193477; -- Azerastrasz
UPDATE `creature_template` SET `faction`=35, `npcflag`=2199023255555, `BaseAttackTime`=2000, `unit_flags`=0x200, `unit_flags2`=0x800 WHERE `entry`=193411; -- Celormu
UPDATE `creature_template` SET `faction`=35, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry`=198115; -- Hope Kite
UPDATE `creature_template` SET `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry` IN (194293, 194248, 194243, 194247, 194244, 194246); -- Saddled Proto-Drake
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194204; -- Swashbuckling Drakerider
UPDATE `creature_template` SET `faction`=35, `npcflag`=4194433, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194605; -- Bron
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x4000800, `unit_flags3`=0x1000000 WHERE `entry`=198100; -- Hope Kite
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194607; -- Wind Eagle
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000000, `unit_flags2`=0x4000800, `unit_flags3`=0x1 WHERE `entry`=198060; -- Skytop Observatory
UPDATE `creature_template` SET `faction`=35, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194606; -- Matthias Darkwall
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194203; -- Reckless Drakerider
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194201; -- Touring Drakerider
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194202; -- Inventive Drakerider
UPDATE `creature_template` SET `faction`=3276, `npcflag`=2199023255553, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=193364; -- Lithragosa
UPDATE `creature_template` SET `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194279; -- Reckless Drakerider
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry` IN (191989, 198454); -- Dragon Glyph
UPDATE `creature_template` SET `faction`=3276, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x340, `unit_flags2`=0x800, `VehicleId`=8024 WHERE `entry`=199684; -- Relastrasza
UPDATE `creature_template` SET `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194274; -- Cavalier Drakerider
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x2000300, `unit_flags2`=0x4000800, `unit_flags3`=0x41000000 WHERE `entry` IN (198623, 198624); -- Tracker Dragon Glyph
UPDATE `creature_template` SET `faction`=35, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=196583; -- Bronze Timekeeper
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=0x800 WHERE `entry`=189703; -- Sunning Salamanther
UPDATE `creature_template` SET `faction`=35, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194288; -- Swashbuckling Drakerider
UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=194196; -- Cautious Drakerider
UPDATE `creature_template` SET `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=0x40, `unit_flags2`=0x800 WHERE `entry`=190839; -- Glensera

-- Quest
UPDATE `quest_poi` SET `VerifiedBuild`=65299 WHERE (`QuestID`=69874 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=65299 WHERE (`QuestID`=69874 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID`=78113;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(78113, 0, 0, 0, 0, 0, 0, 0, 0, 65299); -- The Challenge Tour

UPDATE `quest_details` SET `VerifiedBuild`=65299 WHERE `ID` IN (66107, 66105, 72481);

DELETE FROM `ui_map_quest_line` WHERE (`UIMapId`=2022 AND `QuestLineId` IN (6214,6024,6009,6008,6007,6006,5965,5957,5955,1107));
INSERT INTO `ui_map_quest_line` (`UIMapId`, `QuestLineId`, `VerifiedBuild`) VALUES
(2022, 6214, 65299),
(2022, 6024, 65299),
(2022, 6009, 65299),
(2022, 6008, 65299),
(2022, 6007, 65299),
(2022, 6006, 65299),
(2022, 5965, 65299),
(2022, 5957, 65299),
(2022, 5955, 65299),
(2022, 1107, 65299);

UPDATE `ui_map_quest_line` SET `VerifiedBuild`=65299 WHERE (`UIMapId`=2022 AND `QuestLineId` IN (5570,5569,5568,5538,5511,5476,5462,5458,5455,5381,5368,5354,1413,1398,1397,1396,1395,1394,1392,1377,1376,1375,1374,1368,1367,1364,1362,1333,1331,1325,1324,1310,1303,1302,1301,1300,1299,1289,926));

DELETE FROM `creature_queststarter` WHERE (`id`=186428 AND `quest`=66107) OR (`id`=186410 AND `quest`=66105) OR (`id`=193411 AND `quest` IN (72481,78113));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(186428, 66107, 65299), -- Wildlife Rescue offered by Ecologist Tharu
(186410, 66105, 65299), -- A Scalpel of a Solution offered by Ecologist Iskha
(193411, 72481, 65299), -- The Waking Shores Tour offered by Celormu
(193411, 78113, 65299); -- The Challenge Tour offered by Celormu