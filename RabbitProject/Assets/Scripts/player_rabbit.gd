extends KinematicBody2D

var tile_size = 32
var inputs = {"ui_right": Vector2.RIGHT,
			"ui_left": Vector2.LEFT,
			"ui_up": Vector2.UP,
			"ui_down": Vector2.DOWN}
onready var tween = $Tween
export var sped = 2
var velo = Vector2()



func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _process(_delta):
	if tween.is_active():
		return
	for dir in inputs.keys():
		if Input.is_action_pressed(dir):
			#print("Moving: ", dir)
			move(dir)		

func move_tween(dir):
	tween.interpolate_property(self, "position",
		position, (position + dir * tile_size),
		1.0/sped, Tween.TRANS_SINE, Tween.EASE_IN_OUT, 0)
	tween.start()
func move(dir):
	#print(position)
	#print(inputs[dir] * (tile_size))
	#position += inputs[dir] * (tile_size/2)
	move_tween(inputs[dir])
	#print(position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
