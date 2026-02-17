extends Node2D

# Node references
@onready var block: ColorRect = $Block	#get child node "Block"
@onready var fall_timer: Timer = $FallTimer

# Parameters
var cell_size: int = 32
var current_x: int = 4
var current_y: int = 0

# Called when the node enters the scene tree for the first time
func _ready() -> void:
	print("Game started")
	fall_timer.timeout.connect(_on_fall)
	spawn_block()
	fall_timer.start()

func spawn_block():
	current_x = 4
	current_y = 0
	update_block_position()

func _on_fall():
	current_y += 1
	update_block_position()

func update_block_position():
	block.position = Vector2(current_x * cell_size, current_y * cell_size)
