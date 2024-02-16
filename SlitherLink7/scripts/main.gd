extends Node2D

const N_HORZ = 7
const N_VERT = 7
const CELL_WIDTH = 64

var num_labels = []			# 線分数表示用ラベル

func _ready():
	init_labels()
	pass # Replace with function body.
func init_labels():
	for y in range(N_VERT):
		for x in range(N_HORZ):
			var px = x * CELL_WIDTH
			var py = y * CELL_WIDTH
			# 線分数表示用ラベル
			var label = Label.new()
			num_labels.push_back(label)
			label.add_theme_color_override("font_color", Color.BLACK)
			label.add_theme_font_size_override("font_size", 50)
			label.position = Vector2(px+18, py-3)
			label.text = str((x+y)%4)
			$Board/Grid.add_child(label)

func _process(delta):
	pass
