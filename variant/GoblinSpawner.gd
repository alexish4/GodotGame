extends Node2D


var enemy = preload("res://variant/enemy-goblin.tscn")
onready var spawnTimer := $SpawnTimer
var nextSpawnTime := 7.0


# Called when the node enters the scene tree for the first time.
func _ready():
	#spawnTimer.start(nextSpawnTime)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.


"""
func _on_SpawnTimer_timeout():
	#Spawn an enemy
	var enemySpawned = enemy.instance()
	enemySpawned.position = Vector2(position.x, position.y)
	get_tree().current_scene.add_child(enemySpawned)
	#Restart the timer
	spawnTimer.start(nextSpawnTime) 
"""
