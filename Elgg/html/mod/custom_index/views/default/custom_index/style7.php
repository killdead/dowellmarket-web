<?php 

/**
 * Custom Index Menu CSS
 *
 */
?>

@font-face {
    font-family: 'WebSymbolsRegular';
    src: url('websymbols/websymbols-regular-webfont.eot');
    src: url('websymbols/websymbols-regular-webfont.eot?#iefix') format('embedded-opentype'),
        url('websymbols/websymbols-regular-webfont.woff') format('woff'),
        url('websymbols/websymbols-regular-webfont.ttf') format('truetype'),
        url('websymbols/websymbols-regular-webfont.svg#WebSymbolsRegular') format('svg');
    font-weight: normal;
    font-style: normal;
}
 .ca-menu{
    padding:0;
   /* margin:20px auto;
    width: 1020px;*/
}
 .ca-menu li{
    width: 100px;
    height: 100px;
    overflow: hidden;
    position: relative;
    float:left;
    background: #fff;
    padding:0;
    -webkit-box-shadow: 2px 2px 5px #432279;
    -moz-box-shadow: 2px 2px 5px #432279;
    box-shadow: 2px 2px 5px #432279;
    margin-right: 7px;
    -webkit-transition: all 300ms linear;
    -moz-transition: all 300ms linear;
    -o-transition: all 300ms linear;
    -ms-transition: all 300ms linear;
    transition: all 300ms linear;
    border:2px solid #432279;
    -moz-border-radius:10px 0;
-webkit-border-radius:10px 0;
border-radius:10px 0;
text-align:center;
}
 .ca-menu li:last-child{
    margin-right: 0px;
}
 .ca-menu li a{
    text-align: left;
    width: 100%;
    height: 100%;
    display: block;
    color: #432279;
    position: relative;
    margin:0;
    padding:0;
}
 .ca-icon{
    font-family: 'WebSymbolsRegular', cursive;
    font-size: 60px;
    color: #333;
    text-shadow: 0px 0px 1px #333;
    line-height: 150px;
    position: absolute;
    width: 100%;
    height: 50%;
    left: 0px;
    top: 0px;
    text-align: center;
    -webkit-transition: all 400ms linear;
    -moz-transition: all 400ms linear;
    -o-transition: all 400ms linear;
    -ms-transition: all 400ms linear;
    transition: all 400ms linear;
}
 .ca-content{
    position: absolute;
    width:100%;
    top: 30%;
       
}
 .ca-main {
    font-size: 1.0em;
    text-align: center;
    -webkit-transition: all 300ms linear;
    -moz-transition: all 300ms linear;
    -o-transition: all 300ms linear;
    -ms-transition: all 300ms linear;
    transition: all 300ms linear;
}
 .ca-sub{
    text-align:center;
    font-size: 14px;
    color: #666;
    line-height: 40px;
    opacity: 0.8;
    position: absolute;
    bottom: 0;
    width: 100%; 
    -webkit-transition: all 200ms linear;
    -moz-transition: all 200ms linear;
    -o-transition: all 200ms linear;
    -ms-transition: all 200ms linear;
    transition: all 200ms linear;
}
 .ca-menu li:hover{
    background-color: #000;
}
 .ca-menu li:hover .ca-icon{
    color: #ff2020;
    -webkit-animation: moveFromBottom 400ms ease;
    -moz-animation: moveFromBottom 400ms ease;
    -ms-animation: moveFromBottom 400ms ease;
}
 .ca-menu li:hover .ca-main{
    color: #ffffff;
    -webkit-animation: smallToBig 400ms ease;
    -moz-animation: smallToBig 400ms ease;
    -ms-animation: smallToBig 400ms ease;
}
 .ca-menu li:hover .ca-sub{
    color: #000;
    background-color: #ff2020;
    -webkit-animation: moveFromBottom 500ms ease;
    -moz-animation: moveFromBottom 500ms ease;
    -ms-animation: moveFromBottom 500ms ease;
}
@-webkit-keyframes smallToBig{
    from {
        -webkit-transform: scale(0.1);
    }
    to {
        -webkit-transform: scale(1);
    }
}
@-moz-keyframes smallToBig{
    from {
        -moz-transform: scale(0.1);
    }
    to {
        -moz-transform: scale(1);
    }
}
@-ms-keyframes smallToBig{
    from {
        -ms-transform: scale(0.1);
    }
    to {
        -ms-transform: scale(1);
    }
}

@-webkit-keyframes moveFromBottom {
    from {
        -webkit-transform: translateY(100%);
    }
    to {
        -webkit-transform: translateY(0%);
    }
}
@-moz-keyframes moveFromBottom {
    from {
        -moz-transform: translateY(100%);
    }
    to {
        -moz-transform: translateY(0%);
    }
}
@-ms-keyframes moveFromBottom {
    from {
        -ms-transform: translateY(100%);
    }
    to {
        -ms-transform: translateY(0%);
    }
}