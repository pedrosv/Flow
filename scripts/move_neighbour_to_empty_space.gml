//receive a dot and a empty space, and move the dot to this empty space 

var dot_to_move = argument0;
var empty_space = noone;

//seek a empty next space
for(var i = -1; i <= 1; i++){
    for(var j = -1; j <= 1; j ++){
    
        var valid =(dot_to_move.index_x + i >= 0 and dot_to_move.index_x + i < ds_grid_height(grid)    
                    and dot_to_move.index_y + j >= 0 and dot_to_move.index_y + j < ds_grid_height(grid) );
    
        if(i != j)  and (i == 0 or j == 0) and valid {        
            var s = ds_grid_get(grid, dot_to_move.index_x + i, dot_to_move.index_y + j);
            if(s.type == "empty"){
                empty_space = s;
            }
        }
    }
}


//change places
empty_space.type = "dot";
empty_space.colour = dot_to_move.colour;
set_colour(empty_space);

dot_to_move.type = "line"

if(dot_to_move.next_path != noone){
    //transform empty to dot
    empty_space.next_path = dot_to_move;

    //transform dot in a line
    dot_to_move.last_path = empty_space;
}

else if(dot_to_move.last_path != noone){
    //transform empty to dot
    empty_space.last_path = dot_to_move;

    //transform dot in a line
    dot_to_move.next_path = empty_space;
}

//add new dot to heads
ds_list_add(heads, empty_space);
