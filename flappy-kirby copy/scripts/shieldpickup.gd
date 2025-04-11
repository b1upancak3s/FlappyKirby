extends Area2D

signal shieldhit

signal s_activate

#function that triggers when Kirby touches the powerup -> grants powerup
func _on_body_entered(body: Node2D):
	shieldhit.emit()
	s_activate.emit()

func get_type():
	return "bubble"

func _on_s_activate():
	self.visible = false
	print("This is working right???")
