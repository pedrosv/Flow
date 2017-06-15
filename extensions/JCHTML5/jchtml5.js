// **********************************************************************************************************************
// Copyright (C) 2014, Sam Whillance
//
// File:			jchtml5.js
// Author:			Sam Whillance
// Description:		Extension for the JCHTML5 Engine
//
// **********************************************************************************************************************

//This is used to make loading bars load smoothly, rather than jump
var loading_bar_smoother = 0;

// Change the title of the game
function jchtml5_rename_title(argument0){
	document.title = argument0;
}

// Change the background color
function jchtml5_set_background_color(argument0){
	document.body.style.background = argument0;
}

// Show banner ad
function jchtml5_show_ad_banner() {
   var e = document.getElementById('ad_banner_div');
    e.style.display = 'block';
}

// Hide banner ad
function jchtml5_hide_ad_banner() {
   var e = document.getElementById('ad_banner_div');
    e.style.display = 'none';
}

// Show wall ad
function jchtml5_show_ad_wall() {
   var e = document.getElementById('ad_wall_div');
    e.style.display = 'block';
}

// Hide wall ad
function jchtml5_hide_ad_wall() {
   var e = document.getElementById('ad_wall_div');
    e.style.display = 'none';
}

// Show a div
function jchtml5_show_div(id) {
	var e = document.getElementById(id);
	e.style.display = 'block';
}

// Hide a div
function jchtml5_hide_div(id) {
	var e = document.getElementById(id);
	e.style.display = 'none';
}

// Toggle a div
function jchtml5_toggle_div(id) {
	var e = document.getElementById(id);
	if (e.style.display == 'block')
	  e.style.display = 'none';
	else
	  e.style.display = 'block';
}

// Set cookie
function jchtml5_cookie_set(cname,cvalue,exdays){
	var d = new Date();
	d.setTime(d.getTime()+(exdays*24*60*60*1000));
	var expires = "expires="+d.toGMTString();
	document.cookie = cname + "=" + cvalue + "; " + expires;
}

// Return cookie
function jchtml5_cookie_get(cname){
	var name = cname + "=";
	var ca = document.cookie.split(';');
	for(var i=0; i<ca.length; i++) 
	  {
	  var c = ca[i].trim();
	  if (c.indexOf(name)==0) return c.substring(name.length,c.length);
	  }
	return "";
}

// Check if cookie exists
function jchtml5_cookie_exists(cname){
	var exists=jchtml5_cookie_get(cname);
	if (exists!="" && exists!=null)
	  return 1;
	else 
	  return 0;
}

// Delete cookie
function jchtml5_cookie_delete(cname){
	document.cookie = cname + '=;expires=Thu, 01 Jan 1234 00:00:01 GMT;';
}

// Show an alert (message)
function jchtml5_alert(message){
	alert(message);
}

// Prompt user for input
function jchtml5_prompt(message, default_text){
	value = prompt(message,default_text);
	if (value!="" && value!=null)
		return value;
	else
		return default_text;
}