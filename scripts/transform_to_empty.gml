//set a line space to empty

var new_empty = argument0;

new_empty.type = "empty";
new_empty.colour = 0;


if(new_empty.next_path != noone){
    new_empty.next_path.last_path = noone;
}
if(new_empty.last_path != noone){
    new_empty.last_path.next_path = noone;
}


new_empty.next_path = noone;
new_empty.last_path = noone;
