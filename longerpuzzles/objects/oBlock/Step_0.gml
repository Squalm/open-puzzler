/// @description Insert description here
// You can write your code in this editor

// energy rules
//powered = false;
//source_id = 0;
/*if (source) {powered = true; source_id = id;}

var _c = 0, _b = true;
if (place_meeting(x+global.grid_size,y,oBlock)) {
	_c = instance_place(x+global.grid_size,y,oBlock);
	if (_c.powered && _c.conductive && _c.source_id != id) {
		_b = false;
		powered = true;
		if (!source) {
			
			if (source_id == _c && _c.source_id == id) {
				powered = false;
			}
			source_id = _c;
		}
	}
}
if (place_meeting(x-global.grid_size,y,oBlock)) {
	_c = instance_place(x-global.grid_size,y,oBlock);
	if (_c.powered && _c.conductive && _c.source_id != id) {
		_b = false;
		powered = true;
		if (!source) {
			
			if (source_id == _c && _c.source_id == id) {
				powered = false;
			}
			source_id = _c;
		}
	}
}
if (place_meeting(x,y+global.grid_size,oBlock)) {
	_c = instance_place(x,y+global.grid_size,oBlock);
	if (_c.powered && _c.conductive && _c.source_id != id) {
		_b = false;
		powered = true;
		if (!source) {
			if (source_id == _c && _c.source_id == id) {
				powered = false;
			}
			source_id = _c;
		}
	}
}
if (place_meeting(x,y-global.grid_size,oBlock)) {
	_c = instance_place(x,y-global.grid_size,oBlock);
	if (_c.powered && _c.conductive && _c.source_id != id) {
		_b = false;
		powered = true;
		if (!source) {
			
			if (source_id == _c && _c.source_id == id) {
				powered = false;
			}
			source_id = _c;
		}
	}
}
if (_b) {powered = false}

if (!source) {
	var _id = source_id;
	//show_debug_message("Do Loop check...")
	for (var _i = 0; _i <= instance_number(oBlock); _i++) {
		if (powered && source_id != 0) {
			_id = _id.source_id;
			if (_id = id) {
				show_debug_message("Found a loop.")
				powered = false;
				break;
				//stay_depowered = _i * _i;
			}
		}
	}
}

if (source) {powered = true;}*/


if (push_up) {
	
	grid_coords[1] -= 1;
	
	push_up = false;
}

if (push_down) {
	
	grid_coords[1] += 1;
	
	push_down = false;
}

if (push_left) {
	
	grid_coords[0] -= 1;
	
	push_left = false;
}

if (push_right) {
	
	grid_coords[1] += 1;
	
	push_right = false;
}

x = grid_coords[0] *global.grid_size;
y = grid_coords[1] *global.grid_size;

if (sticky) {
	sprite_index = sBlockSticky;
} else {sprite_index = sBlock}

if (keyboard_check_pressed(ord("R"))) {
	sticky = irandom_range(0,1);
	if (sticky == 0) {sticky = false;} else
	if (sticky == 1) {sticky = true;}
}

//if (stay_depowered > 0) {powered = false; stay_depowered -= 1;}