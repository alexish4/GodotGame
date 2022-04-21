extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 50.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x += speed*delta
	elif Input.is_key_pressed(KEY_LEFT):
		self.position.x += -speed*delta
