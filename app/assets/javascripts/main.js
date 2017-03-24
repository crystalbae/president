// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $('#comment-content').keyup(function (e){
      var content = $(this).val();
      // $(this).height((content.split('\n').length + 1) + 'em');
      $('#counter').html(content.length + '/300');
  });
  $('#comment-content').keyup();
});
