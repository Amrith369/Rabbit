extends Node


onready var score = 0
var evo_stage=0
var age = 60
var time =0
var playing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if playing == true:
		age-=delta
		if age <= 0:
			get_tree().change_scene("res://Scenes/Game_Over.tscn")
		
