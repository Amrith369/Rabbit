extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var animNode
# Called when the node enters the scene tree for the first time.
func _ready():
	var anim = get_node(animNode).get_animation("Bounce")
	anim.set_loop(true)
	get_node(animNode).play("Bounce")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
