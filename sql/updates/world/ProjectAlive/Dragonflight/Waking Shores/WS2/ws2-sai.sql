 -- Glittery Stream smart ai
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `action_param7`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `Difficulties`) VALUES
(61000170, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 0, 11, 367419, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On AI initialize - Self: Cast spell  Channel: Push Water Current  (367419) on Self', ''),
(61000171, 0, 0, 0, 37, 0, 100, 0, 0, 0, 0, 0, 0, 11, 367419, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On AI initialize - Self: Cast spell  Channel: Push Water Current  (367419) on Self', '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 197763 AND `SourceId` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ConditionStringValue1`, `NegativeCondition`, `Comment`) VALUES 
(22, 1, 197763, 0, 0, 51, 0, 0, 0, 61000171, '', 0, 'Action invoker is TYPEID_OBJECT and guid is 61000171'),
(22, 1, 197763, 0, 0, 51, 0, 0, 0, 61000170, '', 0, 'Action invoker is TYPEID_OBJECT and guid is 61000170');
