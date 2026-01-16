 -- Qalashi Ragetamer smart ai
SET @ENTRY := 190766;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 190766 AND `SourceId` = 0;

 -- Qalashi Drakeflayer smart ai
SET @ENTRY := 192341;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 192341 AND `SourceId` = 0;
