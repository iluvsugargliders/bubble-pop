extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	randomize()
	#spawnBubble()
	timer.timeout.connect(OnTimedOut)
func spawnBubble():
	var screenLen = randi_range(0, get_viewport().size.x)
	var spawnHeight = get_viewport().size.y + 100
	var bubble_instance = BUBBLE.instantiate()
	
	bubble_instance.position = Vector2(screenLen, spawnHeight)
	SizeOfBubble(bubble_instance)
	add_child(bubble_instance)

func OnTimedOut():
	spawnBubble()

func SizeOfBubble(bubble_instance):
	var randNum = randi_range(1,3)
	
	if (randNum == 1):
		bubble_instance.scale = Vector2(0.5, 0.5)
	elif (randNum == 2):
		bubble_instance.scale = Vector2(0.333, 0.333)
	else:
		bubble_instance.scale = Vector2(0.25, 0.25)
	
