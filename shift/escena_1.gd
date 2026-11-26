extends Node2D

@onready var chica= get_node("LaChicaDePeloMorado") as CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start(load("res://dialogue/timeline.dtl"))
	chica.get_node("Chicapelomorado").self_modulate = Color(0.5, 0.5, 0.5, 1.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var t = clamp((chica.position.y - 380) / (550 - 380), 0, 1)
	chica.scale = Vector2(0.32 + t * (0.4 - 0.32),0.32 + t * (0.4 - 0.32))
