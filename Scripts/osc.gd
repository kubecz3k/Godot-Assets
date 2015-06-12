
extends Spatial

var tran
var osc_t = 0
export var osc = false
export(int, 0 , 2) var osc_axis = 0
export var osc_distance = 10.0
export var osc_speed = 2.0

export var rotate = false
export(int, 0 , 2) var rot_axis = 0
export var rot_speed = 2.0

func _ready():
	tran = get_translation()
	set_process(true)
	pass
func _process(delta):
	if(osc):
		var tr = get_translation()
		tr[osc_axis] = sin(osc_t) * osc_distance + tran[osc_axis]
		set_translation(tr)
		osc_t += osc_speed*delta
	if(rotate):
		var r = get_rotation()
		r[rot_axis] += rot_speed * delta
		set_rotation(r)
	


