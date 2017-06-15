///jce_show_banner_ad (seconds)

if (global.DEVICE_IS_TOUCH){
    ctr_screen.alarm[2] = argument0*room_speed;
    jchtml5_show_ad_banner();
}
