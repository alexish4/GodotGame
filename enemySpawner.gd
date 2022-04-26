extends Node2D

export (PackedScene) var spawned_enemies
export var spawn_time = 5.0
var time = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	if time > spawn_time:
		time -+ spawn_time
		#var new_enemy = spawned_enemies.instance()
		#add_child(new_enemy)	
