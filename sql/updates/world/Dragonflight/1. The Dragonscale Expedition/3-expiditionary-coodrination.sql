-- Phases
DELETE FROM `phase_name` WHERE `ID` IN (19258, 24300);
INSERT INTO `phase_name` (`ID`, `Name`) VALUES
(19258, 'Cataloguing Enthusiasts in Stormwind Harbor'),
(24300, 'Toddy Whiskers in Stormwind Harbor');

DELETE FROM `phase_area` WHERE `AreaId`=4411 AND `PhaseId` IN (19258, 24300);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES 
(4411, 19258, 'Cosmetic phase for Cataloguing Enthusiasts in Stormwind Harbor'),
(4411, 24300, 'Cosmetic phase for Toddy Whiskers in Stormwind Harbor');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 26 AND `SourceGroup` IN (19125, 19258, 24300);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(26, 19258, 0, 0, 2, 9,  0, 66589, 0, 0, 0, 0, 0, '', 'Phase 19821: Player has quest 66589 taken/in progress'),
(26, 24300, 0, 0, 2, 9,  0, 66589, 0, 0, 0, 0, 0, '', 'Phase 24300: Player has quest 66589 taken/in progress'),
(26, 24300, 0, 0, 1, 28, 0, 72240, 0, 0, 1, 0, 0, '', 'Phase 24300: Player has NOT completed quest 72240');

-- Expiditionary Coordination (66589)
SET @CGUID := 50000400;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+7;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 189765, 0, 1519, 4411, '0', '19133', 0, 0, 0, -8396.69140625, 1151.3507080078125, 18.02757453918457031, 5.461757659912109375, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloger Wulferd (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+1, 193786, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8397.7412109375, 1147.15283203125, 18.02760124206542968, 1.251290440559387207, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloguing Enthusiast (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+2, 193786, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8397.8369140625, 1149.49658203125, 18.02758026123046875, 0.991713225841522216, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloguing Enthusiast (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+3, 193786, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8393.267578125, 1147.1353759765625, 18.027587890625, 2.198490142822265625, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloguing Enthusiast (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+4, 193786, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8392.4619140625, 1148.84033203125, 18.02758026123046875, 2.561306238174438476, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloguing Enthusiast (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+5, 193786, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8393.7919921875, 1150.19970703125, 18.02757453918457031, 2.992355585098266601, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Cataloguing Enthusiast (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+6, 198384, 0, 1519, 4411, '0', '19258', 0, 0, 0, -8390.986328125, 1146.625, 18.02758979797363281, 2.562739133834838867, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978), -- Intrigued Dracthyr (Area: Stormwind Harbor - Difficulty: 0) CreateObject1
(@CGUID+7, 189077, 0, 1519, 4411, '0', '24300', 0, 0, 1, -8640.56, 1328.11, 5.31581, 5.0487, 120, 0, 0, 0, NULL, NULL, NULL, NULL, 64978); -- Toddy Whiskers (Area: Stormwind Harbor - Difficulty: 0) CreateObject1

-- Cleanup old creature spawns
DELETE FROM `creature` WHERE `guid` IN (9000005, 9000006, 9000007); -- Dwarven District, Thaelin and Dracthyr Smiths
DELETE FROM `creature` WHERE `guid` IN (9000008, 9000015, 9000016, 9000017, 9000018, 9000019, 9000020); -- Trade District, Cataloger Wulfherd and Enthusiasts

DELETE FROM `creature_text` WHERE `CreatureID` IN (189602 /*189602 (Toddy Whiskers)*/, 189765 /*189765 (Cataloger Wulferd)*/, 189767 /*189767 (Thaelin Darkanvil)*/) AND Comment IN ('Toddy Whiskers to Player', 'Cataloger Wulferd to Player', 'Thaelin Darkanvil to Player');
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(189602, 0, 0, 'Spotted some promisin\' crew members as I was flyin\' over the city. Round \'em up and let\'s get to it!', 12, 0, 100, 1, 0, 204309, 225059, 0, 'Toddy Whiskers to Player'),
(189765, 0, 0, 'A-hem. Duty calls! Now if you\'ll excuse me, I must be off to make a name for myself in the splendiferous Dragon Isles!', 12, 0, 100, 5, 0, 202283, 224954, 0, 'Cataloger Wulferd to Player'),
(189767, 0, 0, 'New adventures? I\'m game. When there\'s work tae be done, my hammer\'s always ready tae be put tae good use! See ye at the docks!', 12, 0, 100, 1, 0, 204311, 224956, 0, 'Thaelin Darkanvil to Player');

DELETE FROM `creature_template_addon` WHERE `entry` IN (193786 /*193786 (Cataloguing Enthusiast)*/, 189765 /*189765 (Cataloger Wulferd)*/);
INSERT INTO `creature_template_addon` (`entry`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(193786, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- 193786 (Cataloguing Enthusiast)
(189765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- 189765 (Cataloger Wulferd)

UPDATE `creature_template` SET `faction`=35, `BaseAttackTime`=2000, `unit_flags`=0x300, `unit_flags2`=0x800 WHERE `entry`=198384; -- Intrigued Dracthyr

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+6;
INSERT INTO `creature_addon` (`guid`, `PathId`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- Cataloger Wulferd
(@CGUID+1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Cataloguing Enthusiast
(@CGUID+2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Cataloguing Enthusiast
(@CGUID+3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Cataloguing Enthusiast
(@CGUID+4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Cataloguing Enthusiast
(@CGUID+5, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''), -- Cataloguing Enthusiast
(@CGUID+6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- Intrigued Dracthyr

UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=64978 WHERE (`Entry`=189765 AND `DifficultyID`=0); -- 189765 (Cataloger Wulferd) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=64978 WHERE (`Entry`=198384 AND `DifficultyID`=0); -- 198384 (Intrigued Dracthyr) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=64978 WHERE (`Entry`=193786 AND `DifficultyID`=0); -- 193786 (Cataloguing Enthusiast) - CanSwim
UPDATE `creature_template_difficulty` SET `StaticFlags1`=0x10000000, `VerifiedBuild`=64978 WHERE (`Entry`=198384 AND `DifficultyID`=0); -- 198384 (Intrigued Dracthyr) - CanSwim

 -- Pathfinder Jeb smart ai
SET @ENTRY := 189763;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `Difficulties`) VALUES
(@ENTRY, 0, 0, 0, 62, 0, 100, 0, 28056, 0, 0, 0, 0, 33, 189763, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On gossip action 0 from menu 28056 selected - Gossip player: Give kill credit Pathfinder Jeb (189763)', '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 189763 AND `SourceId` = 0;