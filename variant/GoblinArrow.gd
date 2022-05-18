extends Area2D

var direction := Vector2(0, 1)
var projectile_speed := 1000
var accessPlayer = load("res://variant/vplayer.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta: float) -> void:
	self.position += direction * projectile_speed * delta
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if area.is_in_group("VPlayer"): 
		print("hit")
		Vglobaldata.health -= 1
		queue_free()
