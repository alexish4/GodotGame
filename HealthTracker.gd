extends Node




func _process(delta):
	if $"..//../Player".health == 3:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = true
	elif $"..//../Player".health == 2:
		$Health1.visible = true
		$Health2.visible = true
		$Health3.visible = false
	elif $"..//../Player".health == 1:
		$Health1.visible = true
		$Health2.visible = false
		$Health3.visible = false
	
	

