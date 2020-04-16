extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tilemap = get_node("TileMap")
onready var playerloc = get_node("RabbitPlayer")
onready var active_cells = []

# Called when the node enters the scene tree for the first time.
func _ready():
	active_cells = tilemap.get_used_cells()
	print(playerloc.position - tilemap.map_to_world(active_cells[0]))
	pass # Replace with function body.



func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		print(playerloc.position - tilemap.map_to_world(active_cells[1]))
	#print(tilemap.get_used_cells(playerloc.position))
	pass
