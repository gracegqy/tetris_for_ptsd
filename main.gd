extends Node

var current_scene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_tetris()

func load_tetris():
	var tetris_scene = preload("res://Tetris.tscn")
	current_scene = tetris_scene.instantiate()
	$GameContainer.add_child(current_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
