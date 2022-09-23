extends Node




func _process(delta):
	if $"..//../Player".health == 5:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = true
		$Health4.visible = true
		$Health5.visible = true
	elif $"..//../Player".health == 4:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = true
		$Health4.visible = true
		$Health5.visible = false
	elif $"..//../Player".health == 3:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = true
		$Health4.visible = false
		$Health5.visible = false
	elif $"..//../Player".health == 2:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = false
		$Health4.visible = false
		$Health5.visible = false
	elif $"..//../Player".health == 1:
		$Health1.visible = true
		$Health2.visible = false
		$Health3.visible = false
		$Health4.visible = false
		$Health5.visible = false
	elif $"..//../Player".health == 0:
		GlobalData.score = 0
		GlobalData.enemiesKilled = 0
		get_tree().change_scene("res://Menu.tscn")
	
	

