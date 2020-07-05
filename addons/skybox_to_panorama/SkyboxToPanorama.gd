tool
extends ColorRect

export (Texture) var FrontTexture setget set_front_texture
export (Texture) var LeftTexture setget set_left_texture
export (Texture) var BackTexture setget set_back_texture
export (Texture) var RightTexture setget set_right_texture
export (Texture) var TopTexture setget set_top_texture
export (Texture) var BottomTexture setget set_bottom_texture

var is_ready = false

func set_front_texture(new_texture : Texture):
	FrontTexture = new_texture
	if is_ready:
		material.set_shader_param('FrontTexture', FrontTexture)

func set_left_texture(new_texture : Texture):
	LeftTexture = new_texture
	if is_ready:
		material.set_shader_param('LeftTexture', LeftTexture)

func set_back_texture(new_texture : Texture):
	BackTexture = new_texture
	if is_ready:
		material.set_shader_param('BackTexture', BackTexture)

func set_right_texture(new_texture : Texture):
	RightTexture = new_texture
	if is_ready:
		material.set_shader_param('RightTexture', RightTexture)

func set_top_texture(new_texture : Texture):
	TopTexture = new_texture
	if is_ready:
		material.set_shader_param('TopTexture', TopTexture)

func set_bottom_texture(new_texture : Texture):
	BottomTexture = new_texture
	if is_ready:
		material.set_shader_param('BottomTexture', BottomTexture)

# Called when the node enters the scene tree for the first time.
func _ready():
	# we are ready
	is_ready = true
	
	# assign textures to shader
	set_front_texture(FrontTexture)
	set_left_texture(LeftTexture)
	set_back_texture(BackTexture)
	set_right_texture(RightTexture)
	set_top_texture(TopTexture)
	set_bottom_texture(BottomTexture)

