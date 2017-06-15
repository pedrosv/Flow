//shrink a path

var dot = argument0;
var next_space = noone;

//has a next
if(dot.next_path != noone){
    next_space = dot.next_path;
    
    //change the new dot
    next_space.type = "dot";
    next_space.last_path = noone;
    next_space.colour = dot.colour;
    set_colour(next_space);
    
    //change the last dot
    dot.type = "empty";
    dot.next_path = noone
}

//has a last
else if(dot.last_path != noone){
    next_space = dot.last_path;
    
    //change the new dot
    next_space.type = "dot";
    next_space.next_path = noone;
    next_space.colour = dot.colour;
    set_colour(next_space);
    
    //change the last dot
    dot.type = "empty";
    dot.last_path = noone
}


//add new dot to heads
ds_list_add(heads, next_space);

