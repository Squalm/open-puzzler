/// @desc movement
blocked = false;

global.block_type_in_question = oBlock0;
input_control = 0;

if (input_control == 0) {
	
	if (keyboard_check_pressed(ord("W"))) {
		
		var _ids_to_push = blockPushUp(grid_coords[0], grid_coords[1], []);
		for (var _i = 0; _i < array_length_1d(_ids_to_push); _i++) {
			_ids_to_push[_i].push_up = true;
		}
		
		y -= global.grid_size
		
	}
	
} else {input_control -= 1}

x = grid_coords[0] *global.grid_size;
y = grid_coords[1] *global.grid_size;