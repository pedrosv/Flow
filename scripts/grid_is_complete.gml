//check if the grid is complete

for(var i = 0; i < obj_grid.difficulty; i ++ ){
    for(var j = 0; j < obj_grid.difficulty; j ++){
        var space = ds_grid_get(grid, i, j);
        
        if(space.type == "empty"){
            return false;
        }
        
        var has_next = (space.next_path != noone); //know if has a next
        var has_last = (space.last_path != noone); //know if has a last
            
        if(space.type == "line"){            
            if(!has_next or !has_last){
                return false;
            }
        }
        if(space.type == "dot"){
            if(!has_next and !has_last){
                return false;
            }
        }
    }
}

return true;
