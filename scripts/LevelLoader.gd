extends Node

var levels: Array = []
var current := 0

func _ready() -> void:
	var file := FileAccess.open("res://data/levels.json", FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	levels = data["levels"]

func get_level() -> Dictionary:
	return levels[current]

func next_level() -> bool:
	current += 1
	return current < levels.size()
