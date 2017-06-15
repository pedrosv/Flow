//check if the given space has a neighbour dot

var dot = argument0;

//show_message("verificando"+ string(dot.index_x) + ", " + string(dot.index_y));

for(var i = -1; i <= 1; i++){
    for(var j = -1; j <= 1; j ++){
        
        //show_message(string(dot.index_x + i) + ", " + string(dot.index_y + j));
    
        var valid =(dot.index_x + i >= 0 and dot.index_x + i < ds_grid_height(grid)    
                    and dot.index_y + j >= 0 and dot.index_y + j < ds_grid_height(grid) );
    
        if(i != j) and (i == 0 or j == 0) and  valid {        
            var s = ds_grid_get(grid, dot.index_x + i, dot.index_y + j);
            if(s.type == "dot"){
                //show_message("Vizinho: " + string(s.index_x) + ", " + string(s.index_y));
                return s;
            }
        }
    }
}
return noone;
