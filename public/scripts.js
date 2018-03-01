$(function() {
  $('.parallax').parallax();
  $('#copy').append(new Date().getFullYear())
  $('#message').trigger('autoresize');
});
