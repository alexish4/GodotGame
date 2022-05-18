extends Area2D

var direction := Vector2(0, 1)
var projectile_speed := 1000
var accessPlayer = load("res://variant/vplayer.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _process(delta: float) -> void:
	self.position += direction * projectile_speed * delta
	



func _on_VisibilityNotifier2D_viewport_exited(viewport):
	queue_free()


func _on_Hurtbox_area_entered(area):
	if area.is_in_group("VPlayer"): 
		print("hit")
		Vglobaldata.health -= 1
		queue_free()
		
		



func _on_Hurtbox_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	pass # Replace with function body.
