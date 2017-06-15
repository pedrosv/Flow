//this script set which sprite a line should have, and its angle

line = argument0;
line.sprite_index = spr_line;

//set colour
self.colour = self.last_path.colour;


var has_next = (line.next_path != noone); //know if has a next
var direction_last = point_direction(line.x, line.y, line.last_path.x, line.last_path.y) //direction of last


         //set image of sprite
         
//Half line if dont have next
if(!has_next){
    image_index = 0;
    line.image_angle  = direction_last;
}


//complete line
else{
    var direction_next = point_direction(line.x, line.y, line.next_path.x, line.next_path.y)
    
    //sprite now is a complete line
    if(direction_last - direction_next == 180 or direction_last - direction_next == -180){
        line.image_index = 1;
        line.image_angle = direction_last;
    }
    
    //sprite is a "L"
    else{
        line.image_index = 2;
        // "L" up
        if(line.last_path.index_y < line.index_y or line.next_path.index_y < line.index_y){
        
            //show_message("last Y: "+ string(last_path.index_y) + "#next Y: "+ string(next_path.index_y));
            
            // "L" left
            if(line.last_path.index_x < line.index_x) or (line.next_path.index_x < line.index_x){
                line.image_angle = 90;
            }
            
            //"L" right
            else{
                line.image_angle = 0;
            }
        }
        
        // "L" down
        else{
            
            //show_message("last Y: "+ string(last_path.index_y) + "#next Y: "+ string(next_path.index_y));
        
            // "L" left
            if(line.last_path.index_x < line.index_x) or (line.next_path.index_x < line.index_x){
                line.image_angle = 180;   
            }
            
            //"L" right
            else{
                line.image_angle = 270;
            }
        }
    }
}

