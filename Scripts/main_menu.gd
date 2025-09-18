extends Node2D

func _ready():
	pass

func _process(_delta):
	pass

func start():
	if not has_node("Current_Scene"):
		var scene = preload("res://Scenes/Main.tscn").instantiate()
		scene.name = "Current_Scene"
		add_child(scene)
		for child in get_children():
			if child.name != "Current_Scene":
				child.hide()

func quit():
	get_tree().quit()
