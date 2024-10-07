extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.timeout.connect(OnTimeOut)
	timer.wait_time = 0.25

func OnTimeOut():
	SpawnBubble()

func SpawnBubble():
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(randf_range(0, get_viewport().size.x), get_viewport().size.y)
	add_child(bubble_instance)
