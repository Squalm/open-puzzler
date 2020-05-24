/// @description Insert description here
// You can write your code in this editor

push_up = false;
push_down = false;
push_left = false;
push_right = false;

mass = 1;
sticky = irandom_range(0,5); //Is a boolean
if (sticky == 0) {sticky = true;} else
if (sticky >= 1) {sticky = false;}
immovable = false;
conductive = 1//irandom_range(0,1); // bool
powered = false;
source = irandom_range(0,2);// bool
if (source == 0) {source = true;} else
if (source >= 1) {source = false;}
source_id = 0;
if (source) {source_id = id}

stay_depowered = 0;

alarm[0] = 1;