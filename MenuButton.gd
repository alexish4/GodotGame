extends Control

export(PackedScene) var MainMenu

func _ready():
	pass

func _on_MainMenu_pressed():
	get_tree().change_scene_to(MainMenu)
