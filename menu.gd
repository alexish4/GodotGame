extends Control

export(PackedScene) var clone
export(PackedScene) var variant

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_StartGame_pressed():
	get_tree().change_scene_to(clone)
	
func _onVariantGame_pressed():
	get_tree().change_scene_to(variant)


func _on_Clone_pressed():
	get_tree().change_scene_to(clone)
