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


func _on_Carrot_body_entered(body):
	if body.name == "RabbitPlayer":
		match global_operations.evo_stage:
			0:
				if global_operations.score >=150:
					print("Rabbit Shinka!")
					global_operations.evo_stage =1
					global_operations.age +=60
				else:
					global_operations.score +=50
			1:
				if global_operations.score >=300:
					print("Rabbit Shinka!")
					global_operations.evo_stage =2
					global_operations.age +=60
				else:
					global_operations.score +=50
					print(global_operations.score)
			2:
				if global_operations.score >=450:
					print("Rabbit Shinka!")
					global_operations.age +=1
				else:
					pass
		get_node(".").queue_free()
	else:
		pass
	
