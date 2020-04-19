extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var final_score = $"Start/High Score/Score"

# Called when the node enters the scene tree for the first time.
func _ready():
	global_operations.playing =false
	$Start.grab_focus()
	final_score.text=str(global_operations.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	global_operations.age=61
	global_operations.playing=true
	get_tree().change_scene("res://Scenes/MainScene.tscn")


func _on_Quit_pressed():
	get_tree().quit()
