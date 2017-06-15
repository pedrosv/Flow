///jce_angle_in_fov(direction,target_dir,fov_angle)

/*
Returns whether an object is in my angle of view

argument0 = direction i am looking
argument2 = direction to look at
argument3 = FOV
*/

//scr_can_see(direction_looking,angle_to_object,view_vision)

var angletotheobject = (((((argument0-argument1)mod 360)+540)mod 360) -180)

if ((angletotheobject <argument2 && angletotheobject >= 0) or (angletotheobject >-argument2  && angletotheobject < 0))return YES else return NO
