extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var overpass =1
onready var eatNoise = get_node("/root/MusicControl/Eat")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	overpass +=(delta)


func _on_Grass_body_entered(body):
#	if global_operations.mapLock.x >= global_operations.playerPos.x-30&& global_operations.mapLock.x<=global_operations.playerPos.x+30&&global_operations.mapLock.y >= global_operations.playerPos.y-30&& global_operations.mapLock.y<=global_operations.playerPos.y+30:
	if body.name == "RabbitPlayer":
		global_operations.score +=10
		eatNoise.play()
#		print(global_operations.score)
#		print("Position Is: ",get_node(".").position.x)
	else: pass
	get_node(".").queue_free()
