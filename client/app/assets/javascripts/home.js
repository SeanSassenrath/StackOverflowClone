$(document).on('page:change', function(){
  var source = $('#question_list_template').html();
  var template = Handlebars.compile(source);
  $.ajax({
    url: 'http://localhost:4000',
    type: 'get'
  }).done(function(response){
    $('#question_list').append(template({question: response}));
  }).fail(function(response){
    console.log("WHYYYYYYY");
  });
  // bindEvents();
});