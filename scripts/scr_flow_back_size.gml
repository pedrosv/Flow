//return the size of the path that go to behind

var space = argument0;
var flow_back_size = 0;

var has_last = (space.last_path != noone); //know if has a last

if(has_last){
    flow_back_size = scr_flow_back_size(space.last_path);
}

return flow_back_size + 1;

