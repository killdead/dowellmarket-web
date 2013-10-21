<?php
/**
 * Custom Index CSS
 *
 */


/*******************************
	Custom Index
********************************/
?>

.custom-index {
	padding: 10px 0;
}
.elgg-module-highlight {
	-webkit-box-shadow: 1px 1px 5px #CCC;
	-moz-box-shadow: 1px 1px 5px #CCC;
	box-shadow: 1px 1px 5px #CCC;
}
.elgg-module-highlight:hover {
	-webkit-box-shadow: 1px 1px 6px #AAA;
	-moz-box-shadow: 1px 1px 6px #AAA;
	box-shadow: 1px 1px 6px #AAA;
}

/***** TOPBAR ******/
.elgg-page-topbar {
	background: #432279 url(http://localhost/elgg/_graphics/dwm_toptoolbar_background.gif) repeat-x top left;
	border-bottom: 1px solid #000000;
	position: relative;
	height: 24px;
	z-index: 9000;
}

/***** PAGE HEADER ******/

.elgg-page-header {
	position: relative;
	backgourd-color: white;
	background: #FFFFFF url(http://localhost/elgg/_graphics/header_shadow.png) repeat-x bottom left;
}

.elgg-page-default .elgg-page-header > .elgg-inner {
	width: 100%;
	float:left;
	height: 130px;
}


.elgg-page-default .elgg-page-footer > .elgg-inner {
width: 100%;
padding: 5px 0;
height:130px;
background-color:#432279;
border-top: 1px solid #000;
box-shadow:0px 3px 10px black inset;
-moz-box-shadow:0px 3px 10px black inset;
-webkit-box-shadow:0px 3px 10px black inset;
}




body {
	background-color: #fbf8ff; 
	/*background-color:#c9d7e4;*/
	font-family: "Century Gothic","Helvetica Neue",Helvetica,Arial,sans-serif;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: bold;
	color: #432279;
}

.elgg-inner > .dwm_head_separator
 {
 	width: 100%;
	backgourd-color:  #432279;
	height: 20px;
 
 }


/* Featured */
.elgg-module-featured {
	border: 1px solid #432279;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	background-color: white;
}

/* ***************************************
	SITE MENU
*************************************** */
.elgg-menu-site {
	z-index: 1;
	margin-top:10px;
}

.elgg-heading-site {
margin-bottom:10px;
}

.elgg-menu-site > li > a {
	font-weight: bold;
	padding: 3px 13px 0px 13px;
	height: 20px;
}

.elgg-menu-site > li > a:hover {
	text-decoration: none;
}

.elgg-menu-site-default {
	position: relative;
/*	top:80px;
	height: 30px;
*/}

.elgg-menu-site-default > li {
	float: left;
	margin-right: 1px;
}

.elgg-menu-site-default > li > a {
	color: #432279;
}

.elgg-menu-site > li > ul {
	display: none;
	background-color: #432279;
}

.elgg-menu-site > li:hover > ul {
	display: block;
}

.elgg-menu-site-default > .elgg-state-selected > a,
.elgg-menu-site-default > li:hover > a {
	background: #432279;
	color: white;

	-webkit-box-shadow: 2px -1px 1px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 2px -1px 1px rgba(0, 0, 0, 0.25);
	box-shadow: 2px -1px 1px rgba(0, 0, 0, 0.25);

	-webkit-border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
}

.elgg-menu-site-more {
	position: relative;
	left: -1px;
	width: 100%;
	min-width: 150px;
	border: 1px solid #999;
	border-top: 0;

	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;

	-webkit-box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
	box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.25);
}

.profile .elgg-inner {
-webkit-box-shadow: 3px 1px 1px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 3px 1px 1px rgba(0, 0, 0, 0.25);
	box-shadow: 3px 1px 1px rgba(0, 0, 0, 0.25);
}

.box-shadow5 {
-webkit-box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.25);
}

.box-corner {
    -moz-border-radius:10px;
-webkit-border-radius:10px;
border-radius:10px;
}

.elgg-menu-site-more > li > a {
	background-color: white;
	color: #555;

	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;

	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}

.elgg-menu-site-more > li > a:hover {
	background: #4690D6;
	color: white;
}

.elgg-menu-site-more > li:last-child > a,
.elgg-menu-site-more > li:last-child > a:hover {
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}

.elgg-more > a:before {
	content: "\25BC";
	font-size: smaller;
	margin-right: 4px;
}

.dwm-inputregister {
font-size:0.9em;
margin:8px;
}
.dwm-inputregister label {
color: #432279;
}

.top_resume {
font-size:1.8em;
line-height:30px;
	color:#432279;

}

.dwm-inputregister h3 {
border: 1px thin #432279;
	background-color: #F9F9FB;
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 4px 4px;
	line-height:15px;
	padding:4px;
	color:#432279;
	margin-bottom:8px;
	-webkit-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.25);
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.25);
}


.elgg-button-submit {
	color: white;
	text-shadow: 1px 1px 0px black;
	text-decoration: none;
	border: 1px solid #fff;
	background-color: #432279;
	background-image:none;
	 -webkit-box-shadow: 2px 2px 5px #432279;
    -moz-box-shadow: 2px 2px 5px #432279;
    box-shadow: 2px 2px 5px #432279;
}

.elgg-button-submit:hover {
	border-color: #0054a7;
	text-decoration: none;
	color: white;
	  background-image:none;
  background-color:#0054a7;
   -webkit-box-shadow: 2px 2px 5px #432279;
    -moz-box-shadow: 2px 2px 5px #432279;
    box-shadow: 2px 2px 5px #432279;
}

.dwm-button-register {
width:150px;
height:40px;
}


dl {clear:both;}
dt {float:left; text-align:left; width:200px; line-height:25px; margin:0 10px 10px 0;}
dd {float:left; line-height:25px; margin:0 0 10px 0;}

textarea.adresse {
height:100px;
}

input, textarea {
	border: 1px solid #ccc;
	color: #666;
	font: 120% Arial, Helvetica, sans-serif;
	padding: 5px;
	width:180px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

input[type=text]:focus, textarea:focus, select:focus {
	border: solid 1px #4690d6;
	background: #e4ecf5;
	color:#333;
}

.joinus {
color:white;
background-color:#33CC33;
text-align:center;
font-size:2.0em;
width:400px;
font-weight:bold;
padding:20px;
border:2px solid white; 
}

.elgg-layout-one-sidebar {
	background: transparent;
}

.elgg-sidebar {
background-color:#BCC0C3;
background: linear-gradient( to bottom, #432279 30%, white 100%);
height:900px;
}

.elgg-menu-page a:hover {
	background-color: #E6E1ED;
	/*color: white;*/
	text-decoration: none;
}

.accroche  ul {
	list-style: circle;
}



.footer {
height: auto;
line-height: 12px;
padding-top: 35px;
position: relative;
z-index: 999;
margin:auto;
width:980px;
}
.footer ul {
padding-left: 10px;
width: 195px;
float: left;
}

.footer h2 {
color:white;
font-size:1.4em;
}



