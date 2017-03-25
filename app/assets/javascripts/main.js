// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {

  // 코멘트 글자수 제한
  $("#comment-content").keyup(function (e){
      var content = $(this).val();
      $("#counter").html(content.length + " / 300");
  });
  $("#comment-content").keyup();


  // 코멘트 정렬
  $(".sort").click(function() {
    if ( $(this).hasClass("best") ) {
      // 호감순 정렬 클릭
      if ( $(this).attr("class") == "best sort" ) {
        $(this).addClass("on");
        $(".latest").removeClass("on");
      }
    } else {
      // 최신순 정렬 클릭
      if ( $(this).attr("class") == "latest sort" ) {
        $(this).addClass("on");
        $(".best").removeClass("on");
      }
    }
  });

});
