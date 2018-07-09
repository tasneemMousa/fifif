$(document).ready(function(){
"use strict";
$("html").niceScroll({
  cursorcolor: "#46c0e5",
  cursorwidth:"6px",
  cursorborder:"1px solid aquamarine",
cursorborderradius:"10%",
zindex:"99999"
});
var scrollUp=$("#scroll-top");
   $(window).scroll(function(){
     "use strict";
    $(window).scrollTop()>= $(window).height() ? scrollUp.fadeIn(500) :scrollUp.fadeOut(500);
   });
    scrollUp.click(function()
    {
      "use strict";
    	$("html,body").animate({scrollTop:0},600);
    });
    $(".gear-box").click(function(){
      "use strict";
      $(this).fadeOut(500);
      $(".option-box").animate({right:0},500);
      $('.fa-angle-right').fadeIn(500);
});
$(".fa-angle-right").click(function(){
  "use strict";
  $(this).fadeOut(500);
  $(".option-box").animate({right:'-220px'},500);
  $('.gear-box').fadeIn(500);
});
});
$(function(){
"use strict";
var winH = $(window).height();
$('.option-box .option-color').height(winH);
});
