@tool
extends Node2D

func _on_Button_pressed():
	var texture: ViewportTexture = $SubViewport.get_texture()
	var image: Image = texture.get_image()
	image.save_png("skybox.png")
