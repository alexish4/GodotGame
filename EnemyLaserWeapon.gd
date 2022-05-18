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
var enemy_laser_scene := load("res://EnemyLaser.tscn")

func shoot():
	var enemy_laser = enemy_laser_scene.instance()
	enemy_laser.global_position = self.global_position
	get_node("/root/Game").add_child(enemy_laser)


