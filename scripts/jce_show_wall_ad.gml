///jce_show_wall_ad (seconds)

if (global.DEVICE_IS_TOUCH){
    ctr_screen.alarm[3] = argument0*room_speed;
    jchtml5_show_ad_wall();
}
