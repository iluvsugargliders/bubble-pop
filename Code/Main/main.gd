extends Node
class_name Main

const BUBBLE = preload("res://Bubble/bubble.tscn")
var bubbletimer

func SpawnBubble():
	print("Spawning bubble.")
	var bubble_instance = BUBBLE.instantiate()
	bubble_instance.position = Vector2(randf()*300, randf()*300)
	add_child(bubble_instance)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bubbletimer = Timer.new()
	bubbletimer.wait_time = 3
	bubbletimer.start()
	SpawnBubble()

func _on_timer_timeout():
	var instance = BUBBLE.instantiate()
	instance.position = Vector2(get_viewport().size.x * randf(), get_viewport().size.y * randf())
	add_child(instance)
