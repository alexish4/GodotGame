extends Area2D

var direction := Vector2(0, 1)
var projectile_speed := 1000
var accessPlayer = load("res://Player.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta: float) -> void:
	self.position += direction * projectile_speed * delta
	



func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()


func _on_Hurtbox_area_entered(area):
	if area.is_in_group("Player"): 
		queue_free()
		
		

