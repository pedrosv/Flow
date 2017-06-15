//randomize the grid

var g = argument0;

//round to up the length min
var len_min = round((ds_grid_width(g)/2) + 0.4);

//create list of heads
heads = ds_list_create();

//fill the head list
for(var i = 0; i < ds_grid_width(g); i ++ ){
    var h = ds_grid_get(g, i, 0);
    ds_list_add(heads, h);
    var t = ds_grid_get(g, i, ds_grid_width(g) -1);
    ds_list_add(heads, t);
}

//run the algorith n times
number_of_iteration = 2000;
for(var n = 0; n < number_of_iteration; n++ ){
    
    //select a rand dot head
    var rand_index = irandom(ds_list_size(heads)-1);
    head_chosen = ds_list_find_value(heads, rand_index);
    
    //check if has neighbour
    var neighbour = has_a_neighbour_dot(head_chosen);
    
    if( neighbour != noone){
          
    
        if(scr_flow_size(head_chosen) > len_min or scr_flow_back_size(head_chosen) > len_min){
            
            //delete the dots which will move 
            ds_list_delete(heads, rand_index);
            var neigbour_index = ds_list_find_index(heads, neighbour)
            ds_list_delete(heads, neigbour_index);
            
            scr_shrink(head_chosen);
            move_neighbour_to_empty_space(neighbour);
        }
        
        else{
            //show_message("head: " + string(head_chosen.index_x) + ", " + string(head_chosen.index_y) + 
            //"#neighbour: " + string(neighbour.index_x) + ", " + string(neighbour.index_y) );
        }
    }
}

//to finish the algorithim clear all lines
for(var i = 0; i < ds_grid_width(g); i ++ ){
    for(var j = 0; j < ds_grid_height(g); j ++){
        var new_line = ds_grid_get(g, i, j);
        if(new_line.type == "line"){
            transform_to_empty(new_line);
        }
    }
}

