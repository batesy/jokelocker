# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

`$("#joke_title").on("keyup", function(){
  var knockSetup = $(this).val() + " ";
  $("#knocksetup").text(knockSetup);
});`


`$("#knock").click(function(){
  $("#jokeprompt").hide();
  $("#oneliner_form").hide();
  $("#knockform").slideDown();
});`

`$("#oneliner").click(function(){
  $("#jokeprompt").hide();
  $("#knockform").hide();
  $("#oneliner_form").slideDown();
})`

`$(".panel").click(function(){
  window.location=$(this).find("a").attr("href");
  return false;
})` 

`$(".panel").hover(function(){
  $(this).css('cursor', 'pointer');
})`

`$(".setup").fadeIn();`

`$(".punchline").fadeIn(1000);`

`$(".submitted_by").fadeIn(1500);`

`$(".knock").fadeIn();`

`$(".whosthere").fadeIn(600);`

`$(".knock-setup").fadeIn(800);`

`$(".knock-who").fadeIn(1000);`
  
`$(".knockpunch").fadeIn(1200);`