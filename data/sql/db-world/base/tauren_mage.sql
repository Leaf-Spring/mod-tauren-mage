-- ===========================================================
-- Parche Base acore_world: Tauren Mage (Raza 6 / Clase 8)
-- ===========================================================

-- 1. Posición e información de inicio (Mulgore / Cima del Campamento Narache)
DELETE FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 8;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT 6, 8, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM `playercreateinfo` WHERE `race` = 6 AND `class` = 1 LIMIT 1;

-- 2. Barras de acción iniciales (Copiadas de Mago Troll, raza 8 clase 8)
DELETE FROM `playercreateinfo_action` WHERE `race` = 6 AND `class` = 8;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT 6, 8, `button`, `action`, `type`
FROM `playercreateinfo_action`
WHERE `race` = 8 AND `class` = 8;