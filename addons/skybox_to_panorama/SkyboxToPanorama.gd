@tool
extends ColorRect

@export var BackTexture: Texture2D: set = set_back_texture
@export var BottomTexture: Texture2D: set = set_bottom_texture
@export var FrontTexture: Texture2D: set = set_front_texture
@export var LeftTexture: Texture2D: set = set_left_texture
@export var RightTexture: Texture2D: set = set_right_texture
@export var TopTexture: Texture2D: set = set_top_texture

var is_ready = false

func set_front_texture(new_texture : Texture2D):
	FrontTexture = new_texture
	if is_ready:
		material.set_shader_parameter('FrontTexture', FrontTexture)

func set_left_texture(new_texture : Texture2D):
	LeftTexture = new_texture
	if is_ready:
		material.set_shader_parameter('LeftTexture', LeftTexture)

func set_back_texture(new_texture : Texture2D):
	BackTexture = new_texture
	if is_ready:
		material.set_shader_parameter('BackTexture', BackTexture)

func set_right_texture(new_texture : Texture2D):
	RightTexture = new_texture
	if is_ready:
		material.set_shader_parameter('RightTexture', RightTexture)

func set_top_texture(new_texture : Texture2D):
	TopTexture = new_texture
	if is_ready:
		material.set_shader_parameter('TopTexture', TopTexture)

func set_bottom_texture(new_texture : Texture2D):
	BottomTexture = new_texture
	if is_ready:
		material.set_shader_parameter('BottomTexture', BottomTexture)

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
