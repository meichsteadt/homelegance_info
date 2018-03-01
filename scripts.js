$(function() {
  $('.parallax').parallax();
  $('#copy').append(new Date().getFullYear())
  $('#message').trigger('autoresize');
  $("#contact_form").submit(function(event) {
    event.preventDefault();
    var first_name = $("#first_name").val();
    var last_name = $("#last_name").val();
    var name = first_name + " " + last_name
    var email = $("#email").val();
    var store_name = $("#store_name").val();
    var sales_rep = $("#sales_rep").val();
    var message = $("#message").val();

    $.ajax({
      url: "./contact_me.php",
      type: "POST",
      data: {
          name: name,
          email: email,
          store_name: store_name,
          sales_rep: sales_rep,
          message: message
      }
    });
  });
});
