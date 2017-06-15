//start to create a new grid, this script generate the spaces

var difficulty = obj_grid.difficulty;

//set size os spaces
var w = sprite_width/difficulty;
var h = sprite_height/difficulty;

//create spaces on grid
for(var i = 0; i < difficulty; i ++ ){
    for(var j = 0; j < difficulty; j ++){
    
        var scale = w/sprite_get_width(object_get_sprite(obj_space));
        var deslocation = (64 * scale) /2; //this 64 is the width of obj_space
        
        var new_space = instance_create(x + (w * i)+ deslocation, y+ (h * j)+ deslocation, obj_space);
        
        //resize image
        new_space.image_xscale = w/ sprite_get_width(object_get_sprite(obj_space));
        new_space.image_yscale = h/ sprite_get_height(object_get_sprite(obj_space));
        
        if(j == 0){
            new_space.type = "dot";
            //set colour
            new_space.colour = i+1;
            set_colour(new_space);
        }
        
        else if(j == difficulty-1){
            new_space.type = "dot";
            //set colour
            new_space.colour = i+1;
            set_colour(new_space);
            space_above = ds_grid_get(grid, i, j-1);
            new_space.last_path = space_above; 
            space_above.next_path = new_space.id
        }
        
        else{
            new_space.type = "line";
            space_above = ds_grid_get(grid, i, j-1);
            new_space.last_path = space_above;
            space_above.next_path = new_space.id
        }
        
        //add to grid
        ds_grid_set(grid, i, j, new_space);
        new_space.index_x = i;
        new_space.index_y = j;    
    }
}
