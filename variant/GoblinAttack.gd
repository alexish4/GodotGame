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
var arrow_scene := load("res://variant/GoblinAttack.tscn")

func shoot():
	var enemy_attack = arrow_scene.instance()
	enemy_attack.global_position = self.global_position
	get_node("/root/VariantMain").add_child(enemy_attack)
