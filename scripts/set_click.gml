//set the last space clicked 

space = argument0;

//set the button which was clicked
space.is_clicked = true;
global.last_clicked.is_clicked = false;

//set "last" and "next" pointers

//if last is valid (this also dont let create a loop path)
if(last_clicked.last_path != noone or last_clicked.type == "dot"){
    space.last_path = global.last_clicked; 
    global.last_clicked.next_path = space;
}
else if(space.type != "dot"){
    space.last_path.next_path = space.id;
}

//in the end, set last clicked to the new line
global.last_clicked = space;
