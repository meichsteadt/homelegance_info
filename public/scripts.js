$(function() {
  $('.parallax').parallax();
  $('#copy').append(new Date().getFullYear())
  $('#message').trigger('autoresize');
  $("#scroll_to").click(function() {
    $('html, body').animate({
        scrollTop: $("#contact").offset().top
    }, 1000);
  });
});
