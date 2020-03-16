Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips   = true --markers visible on the map? (false to hide the markers on the map)

Config.RequiredCopsKoda  = 2

Config.TimeToFarm    = 1 * 1000
Config.TimeToProcess = 1 * 1000
Config.TimeToSell    = 1  * 1000

Config.Locale = 'es'

Config.Zones = {
	KodaField =		{x = -25.00,	y = -1427.00,	z = 29.66,	name = _U('koda_field'),		sprite = 51,	color = 60},
	KodaProcessing =	{x = -231.26,	y = -2654.64,	z = 5.2,	name = _U('koda_processing'),	sprite = 51,	color = 60},
	KodaDealer =		{x = 1943.2,	y = 4657.89,	z = 39.50,	name = _U('koda_dealer'),		sprite = 500,	color = 75}
}
