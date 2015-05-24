$(document).on('page:change', function(){
  $.ajax({
    url: 'http://localhost:4000',
    type: 'get'
  }).done(function(response){
    console.log(response);
  }).fail(function(response){
    console.log("WHYYYYYYY");
  });
  // bindEvents();
});