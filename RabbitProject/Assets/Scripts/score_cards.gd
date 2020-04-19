extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var scoreboard = $scoreCard 
onready var age = $ageCard

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scoreboard.text = str(global_operations.score)
	age.text = str(global_operations.age)
