//check if two spaces on grid are neighbour

space1 = argument0; 
space2 = argument1;

//check neightbour up
if(space1.index_y - space2.index_y == -1 ){
    if(space1.index_x == space2.index_x){
        return true;
    }
}

//check neightbour down
if(space1.index_y - space2.index_y == 1){
    if(space1.index_x == space2.index_x){
        return true;
    }
}

//check neightbour side
if(space1.index_y = space2.index_y ){    
    //left
    if(space1.index_x - space2.index_x == 1){
        return true;
    }
    
    //right
    if(space1.index_x - space2.index_x == -1){
        return true;
    }
}

//they arent neighbour
return false;

