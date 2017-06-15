///jce_button_group_event(button_group,event)

//Calls an event for all buttons who belong to a group

global.ARG_HANDLE = argument0;
global.ARG_HANDLE2 = argument1;

with(par_button){
    if (my_group == global.ARG_HANDLE)event_user(global.ARG_HANDLE2);
}
