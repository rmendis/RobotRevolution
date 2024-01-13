-- MapConfig
-- Author: blkbutterfly74
-- DateCreated: 1/13/2024 1:04:24 PM
--------------------------------------------------------------

INSERT INTO Maps
		(Domain,				File,																			Name,								Description,							Image,				StaticMap,	RequiresUniqueLeaders,	SortIndex)
VALUES	('Maps:Expansion2Maps', '{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LOC_CHALLENGE_ROBOT_REVOLUTION_NAME',			'LOC_CHALLENGE_ROBOT_REVOLUTION_DESCRIPTION',	'Map_TiltedAxis',		1,				0,						10);

-- Replace the Domain above with 'Maps:Expansion1Maps' to enable the map for Rise and Fall.
-- Replace the Domain above with 'StandardMaps' to enable the map for the base game.
-- If using TSL, change the 0 under RequiresUniqueLeaders to a 1.

INSERT INTO MapSizes
		(Domain,																			MapSizeType,		Name,						Description,						MinPlayers,	MaxPlayers,	DefaultPlayers,	MinCityStates,	MaxCityStates,	DefaultCityStates,	SortIndex)
VALUES	('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',		'MAPSIZE_STANDARD',	'LOC_MAPSIZE_STANDARD_NAME',	'LOC_MAPSIZE_STANDARD_DESCRIPTION',					6,			6,			6,				0,				9,				0,					0);

-- The official MapSizeType entries are below. The Name and Description entries follow the same pattern.
-- 'MAPSIZE_DUEL'
-- 'MAPSIZE_TINY'
-- 'MAPSIZE_STANDARD'
-- 'MAPSIZE_STANDARD'
-- 'MAPSIZE_LARGE'
-- 'MAPSIZE_HUGE'
-- Edit the player and city-state counts as desired.

INSERT INTO MapDomainOverrides
		(Map,																				ParameterId,		Domain)
VALUES	('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',		'MapSize',			'{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map');

-- This ensures that you can't change the map size; it locks it to whatever the map's size is.

INSERT INTO ParameterDependencies
		(ParameterId,		ConfigurationGroup,		ConfigurationId,		Operator,		ConfigurationValue)
VALUES	('Resources',		'Map',					'MAP_SCRIPT',			'NotEquals',	'{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map'),
		('StartPosition',	'Map',					'MAP_SCRIPT',			'NotEquals',	'{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map');

-- This removes the StartPosition and Resources options from the menu, which are useless anyway.


-- ========================================================================================================
-- TSL BELOW THIS POINT

-- Delete the /* and */ to enable the section below.
-- MapLeaders requires rows for each Leader you want to be playable on this map, including city-states.
-- MapStartPositions requires rows for each Leader you want to have a TSL spawn position, including city-states.
-- MapSUpportedValues requires rows for each city-state that will appear on this map - IMPORTANT: use the CivilizationType here instead of the LeaderType!!

INSERT INTO MapLeaders
		(Map,																			LeaderType)
VALUES	('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'RANDOM'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'RANDOM_POOL1'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'RANDOM_POOL2'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_LAURIER'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_ABRAHAM_LINCOLN'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_VICTORIA'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_JOHN_CURTIN'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_SEONDEOK'),
		('{220fd11e-51db-4def-8e04-46d99856a122}Maps/CustomMap.Civ6Map',	'LEADER_SIMON_BOLIVAR');