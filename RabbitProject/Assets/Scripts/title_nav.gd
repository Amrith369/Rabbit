extends Control


onready var grab = $Title/Begin


# Called when the node enters the scene tree for the first time.
func _ready():
	grab.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Begin_pressed():
	global_operations.age=61
	global_operations.playing=true
	get_tree().change_scene("res://Scenes/MainScene.tscn")


func _on_Credits_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")


func _on_Quit_pressed():
	get_tree().quit()
