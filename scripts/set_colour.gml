//decide the colour of the space

space = argument0;

switch (space.colour){
    case 0: 
        space.image_blend = -1;
        break;
    case 1: 
        space.image_blend = c_red;
        break;
    case 2:
        space.image_blend = c_blue;
        break;
    case 3: 
        space.image_blend = c_green;
        break;
    case 4:
        space.image_blend = c_yellow;
        break;
    case 5: 
        space.image_blend = c_gray;
        break;
    case 6:
        space.image_blend = c_purple;
        break;
    case 7: 
        space.image_blend = c_orange;
        break;
    case 8:
        space.image_blend = c_white;
        break;
     case 9: 
        space.image_blend = c_olive;
        break;
    case 10:
        space.image_blend = c_lime;
        break;
}
