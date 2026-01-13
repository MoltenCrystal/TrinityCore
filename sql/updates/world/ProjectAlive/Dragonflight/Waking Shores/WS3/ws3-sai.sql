 -- Qalashi Ragetamer smart ai
SET @ENTRY := 190766;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `Difficulties`) VALUES
(@ENTRY, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 0, 11, 375941, 0, 0, 0, 0, 0, 0, 10, 62000168, 0, 0, 0, 0, 0, 0, 'On AI initialize - Self: Cast spell  Channel: Lava Beam  (375941) on Creature with guid 62000168 (fetching)', ''),
(@ENTRY, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 11, 375941, 0, 0, 0, 0, 0, 0, 10, 62000168, 0, 0, 0, 0, 0, 0, 'On respawn - Self: Cast spell  Channel: Lava Beam  (375941) on Creature with guid 62000168 (fetching)', '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 190766 AND `SourceId` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ConditionStringValue1`, `NegativeCondition`, `Comment`) VALUES 
(22, 1, 190766, 0, 0, 51, 0, 0, 0, 62000276, '', 0, 'Action invoker is TYPEID_OBJECT and guid is 62000276'),
(22, 2, 190766, 0, 0, 51, 0, 0, 0, 62000276, '', 0, 'Action invoker is TYPEID_OBJECT and guid is 62000276');
