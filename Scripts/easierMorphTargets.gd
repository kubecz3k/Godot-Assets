#Made for mesh instances
extends MeshInstance
#Set morph targets

func get_morph_target_names():
	var mesh = get_mesh()
	var names = mesh.get("morph_target/names")
	if(typeof(names) == TYPE_STRING_ARRAY):
		#turn it into a regular array, so values can be found
		return Array(names)
	return Array()

func get_morph_target(i):
	if(typeof(i) == TYPE_STRING):
		return get("morph/"+i)
	elif(typeof(i) == TYPE_INT):
		var name = get_mesh().get_morph_target_name(i)
		return get("morph/"+name)

func set_morph_target(i,val):
	if(typeof(i) == TYPE_STRING):
		set("morph/"+i,val)
	elif(typeof(i) == TYPE_INT):
		var name = get_mesh().get_morph_target_name(i)
		set("morph/"+name,val)
	return false


