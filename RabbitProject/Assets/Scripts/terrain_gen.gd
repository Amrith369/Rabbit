extends Node2D

enum Cell {GRASS_TILE, GRASS, DIRT}
const timer = 1
var time=0

#export (float, 0, 1) var dirt_spawning = 0.1
#export (float, 0, 1) var grass_spawning = 0.2
export var map_size_in_tiles = Vector2(1,1)
onready var _tilemap: TileMap = $TileMap
onready var holder =0
onready var playerloc = $RabbitPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	map_size_in_tiles = map_size_in_tiles*Vector2(32,32)
	print(map_size_in_tiles/32)
	gen_side()
	pass
func gen_side():
	for x in [0]:
			for y in range(0,6):
				_tilemap.set_cell(x+holder,y, -1)
	for x in [6]:
		for y in range(0, 6):
			_tilemap.set_cell(x+holder, y, randi()%3)
	_tilemap.position.x-=32
	holder+=1
func _process(delta):
	time += delta
	if time >= timer:
		gen_side()
		time = 0
	
		
