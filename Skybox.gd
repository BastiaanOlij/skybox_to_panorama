tool
extends Node2D

func _on_Button_pressed():
	var texture = $Viewport.get_texture()
	var image = texture.get_data()
	image.save_png("skybox.png")
