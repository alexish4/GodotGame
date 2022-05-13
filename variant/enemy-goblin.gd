extends KinematicBody2D

var speed : int = 100
var horizontalSpeed : int = 100
var vel : Vector2 = Vector2()
export var spawn_time = 5.0
var time = 0
var time2 = 0
var time3 = 0
var horizontalTime = 1.0
export var shootTime = 1.5
var flipBoolean = true

	
func _physics_process(delta):
	time += delta
	if flipBoolean:
		vel.x = -horizontalSpeed
	if time > spawn_time:
		time -= spawn_time
		vel.y += speed
		#vel.x = speed
	move_and_slide(vel, Vector2.UP)
	time2 += delta
	if time2 > shootTime:
		time2 -= shootTime
		#$EnemyLaserWeapon.shoot()
		vel.y = 0
		#vel.x *= -1
	time3 += delta
	if time3 > horizontalTime:
		vel.x *= -1
		if flipBoolean:
			flipBoolean = false
		else:
			flipBoolean = true
		time3 -= horizontalTime
		#vel.x = speed
		
	


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()


