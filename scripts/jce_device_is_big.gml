///jce_device_is_big : bool

//Returns whether the device is large
//(You can also just check the screen height for a specific cut-off dimension)

ret = NO;

switch (os_device)
{
    case device_ios_ipad: ret = YES; break;
    case device_ios_ipad_retina: ret = YES; break;
    default: ret = NO;
}

switch (os_type)
{
    case os_windows: ret = YES; break;
    case os_macosx: ret = YES; break;
    case os_linux: ret = YES; break;
}
 
return ret;
