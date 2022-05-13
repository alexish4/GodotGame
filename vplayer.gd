extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var xspeed : int = 600
var yspeed : int = 300
var vel : Vector2 = Vector2()
func _physics_process(delta):
	vel.x = 0
	vel.y = 0
	
	if Input.is_action_pressed("ui_left"):
		vel.x -= xspeed
	if Input.is_action_pressed("ui_right"):
		vel.x += xspeed

	if Input.is_action_pressed("ui_up"):
		vel.y -= yspeed
	if Input.is_action_pressed("ui_down"):
		vel.y += yspeed
	move_and_slide(vel, Vector2.UP)
