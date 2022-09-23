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
var speed : int = 600
var health : int = 5
var vel : Vector2 = Vector2()
func _physics_process(delta):
	vel.x = 0
	GlobalData.playerPosition = position.x
	
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
	move_and_slide(vel, Vector2.UP)
	
func _unhandled_key_input(event: InputEventKey) -> void:
	if (event.is_action_pressed("shoot")):
		$LaserWeapon.shoot()


func _on_Hitbox_area_entered(area):
	if area.is_in_group("EnemyLaser"):
		health -= 1
		
		
