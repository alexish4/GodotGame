extends Node


func _process(delta):
	if Vglobaldata.health == 5:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = true
		$Heart5.visible = true
	elif Vglobaldata.health == 4:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = true
		$Heart5.visible = false
	elif Vglobaldata.health == 3:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = false
		$Heart5.visible = false
	elif Vglobaldata.health == 2:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = false
		$Heart4.visible = false
		$Heart5.visible = false
	elif Vglobaldata.health == 1:
		$Heart.visible = true
		$Heart2.visible = false
		$Heart3.visible = false
		$Heart4.visible = false
		$Heart5.visible = false
	elif Vglobaldata.health == 0:
		Vglobaldata.score = 0
		Vglobaldata.enemiesKilled = 0
		get_tree().change_scene("res://Menu.tscn")
