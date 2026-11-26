extends CharacterBody2D

@export var speed = 300

@onready var target = position

func _ready() -> void:
	Dialogic.timeline_started.connect(set_physics_process.bind(false))
	Dialogic.timeline_ended.connect(set_physics_process.bind(true))

func _unhandled_input(event):
	# Use is_action_pressed to only accept single taps as input instead of mouse drags.
	if event.is_action_pressed(&"click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 10:
		move_and_slide()
		if target.x < position.x:
			get_node("Chicapelomorado").flip_h=true
		else:
			get_node("Chicapelomorado").flip_h=false
