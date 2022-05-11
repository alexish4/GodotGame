extends KinematicBody2D

var speed : int = 100
var vel : Vector2 = Vector2()
export var spawn_time = 5.0
var time = 0
var time2 = 0
export var shootTime = 1.5

	
func _physics_process(delta):
	time += delta
	if time > spawn_time:
		time -= spawn_time
		vel.y += speed
	move_and_slide(vel, Vector2.UP)
	time2 += delta
	if time2 > shootTime:
		time2 -= shootTime
		$EnemyLaserWeapon.shoot()
		vel.y = 0
