extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time_in_run = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#moving left or right
	if Input.is_action_pressed("ui__right"):
			time_in_run += delta
	elif Input.is_action_pressed("ui_left"):
			time_in_run -= delta
