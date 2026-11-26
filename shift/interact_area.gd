extends interactarea

@onready var mybtn=get_node("MyButton") as Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mybtn.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		mybtn.show()


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		mybtn.hide()


func _on_button_pressed() -> void:
	Dialogic.start(load(tlstr))
