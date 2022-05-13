extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var mage_shock_scene := load("res://variant/MageShock.tscn")

func shoot():
	var mage_shock = mage_shock_scene.instance()
	mage_shock.global_position = self.global_position
	get_node("/root/VariantMain").add_child(mage_shock)




func _on_VisibilityNotifier2D_screen_exited():
	pass # Replace with function body.


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	pass # Replace with function body.
