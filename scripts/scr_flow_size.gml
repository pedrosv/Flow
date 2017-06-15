//return the path size from a given space

var space = argument0;
var flow_size = 0

var has_next = (space.next_path != noone); //know if has a next

if(has_next){
    flow_size = scr_flow_size(space.next_path);
}

return flow_size + 1;

