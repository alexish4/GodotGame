extends Area2D

var direction := Vector2(0, -1)
var projectile_speed := 1000
var tExplosion := preload("res://Explosion.tscn")

func _process(delta: float) -> void:
	self.position += direction * projectile_speed * delta


func _on_VisibilityNotifier2D_viewport_exited(viewport: Viewport) -> void:
	queue_free()





func _on_Hurtbox_area_entered(area):
	if area.is_in_group("enemy1"):
		print("Enemy fired")
		var explodeAnimation := tExplosion.instance()
		explodeAnimation.position = position
		get_parent().add_child(explodeAnimation)
		GlobalData.score += 100
		area.get_parent().queue_free()
		
