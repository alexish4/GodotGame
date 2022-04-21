extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 50
export var jump_impulse = 500
export var jump_gravity_decrease = 0.5
export var gravity = 50
export var attack_time = 0.5
export(Curve) var run_attack
var velocity = Vector2(0,0)
export var max_jumps = 2
export var jump_decay = 0.8
var current_jump_counter = 0

var time_in_run = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		time_in_run += delta
	elif Input.is_action_pressed("ui_left"):
		time_in_run -= delta
	else:
		time_in_run -= delta*sign(time_in_run)
		if abs(time_in_run) < 0.02:
			time_in_run = 0
	time_in_run = clamp(time_in_run,-attack_time,attack_time)
	velocity.x = speed*sign(time_in_run)*run_attack.interpolate(abs(time_in_run)/attack_time)
	
	if is_on_floor():
		current_jump_counter = 0
		velocity.y = 0
		if abs(velocity.x) < 10:
			$PlayerSprite/AnimationPlayer.play("Idle")
		else:
			$PlayerSprite/AnimationPlayer.play("Run")
				
				
	else:
		if velocity.y > 0:
			$PlayerSprite/AnimationPlayer.play("Fall")
		if Input.is_action_pressed("jump") and velocity.y < 0:
			velocity.y += jump_gravity_decrease*gravity*delta	
		else:
			velocity.y += gravity*delta
	
	if Input.is_action_just_pressed("jump") and current_jump_counter < max_jumps:
		velocity.y  =  -jump_impulse*pow(jump_decay,current_jump_counter)
		$PlayerSprite/AnimationPlayer.play("Jump")	
		$JumpSound.play()
		$JumpSound.volume_db -= pow(3,current_jump_counter)
		current_jump_counter += 1
	print(current_jump_counter)
	$PlayerSprite.flip_h = velocity.x < 0
	move_and_slide(velocity,Vector2(0,-1))

