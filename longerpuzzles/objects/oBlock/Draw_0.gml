/// @description Insert description here
// You can write your code in this editor

draw_sprite(sBlock,0,x,y);
draw_set_alpha(0.5);
if (source) {draw_sprite(sBlockSource, 0, x,y)}
if (powered) {draw_sprite(sBlockPowered, 0, x,y)}
if (sticky) {draw_sprite(sBlockSticky, 0, x,y);}
if (conductive) {draw_sprite(sBlockConductive, 0, x,y)}
if (immovable) {draw_sprite(sBlockImmovable, 0, x,y);}
draw_set_alpha(1);