extends Area2D

signal pipehit

signal score

func _on_body_entered(body: Node2D):
	if body.is_in_group("shield"):
		$PipeTiles.visible = false
		get_node("PipeDown").set_deferred("disabled", true)
		get_node("PipeUp").set_deferred("disabled", true)
		body.disable_shield()
	else:
		pipehit.emit()

func _on_score_hitbox_body_exited(body: Node2D) -> void:
	score.emit()
	print("SCORE")
