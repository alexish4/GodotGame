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

var fire_scene := load("res://variant/PlayerFire.tscn")

func shoot():
	var fire = fire_scene.instance()
	fire.global_position = self.global_position
	get_node("/root/VariantMain").add_child(fire)
