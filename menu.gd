extends Control

export(PackedScene) var clone
export(PackedScene) var variant
export(PackedScene) var credits

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Vglobaldata.health = 5
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Clone_pressed():
	get_tree().change_scene_to(clone)


func _on_Variant_pressed():
	get_tree().change_scene_to(variant)

func _on_Credits_pressed():
	get_tree().change_scene_to(credits)
