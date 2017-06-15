//destroy a path from the given point

var space = argument0;
            
if(space.next_path != noone){
    
    destroy_path(space.next_path);
}

if(space.type != "dot"){
    space.type = "empty";           //set to empty
}

space.last_path.next_path = noone; //destroy the reference of last to him
space.last_path = noone;           //destroy reference to last
space.next_path = noone;           //destroy reference to next
