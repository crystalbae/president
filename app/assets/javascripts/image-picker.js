$(function() {
  var selectedImage;

  $(".image-picker").click(function() {
    // 이미지 선택
    var divThumbnail = $(this).parent(".thumbnail");
    if ( selectedImage == undefined ) {
      // 처음 후보를 선택
      divThumbnail.addClass("selected");
      selectedImage = divThumbnail;
    } else {
      // 후보를 변경할 때
      selectedImage.removeClass("selected");
      divThumbnail.addClass("selected");
      selectedImage = divThumbnail;
    }

    // 이미지 선택시 옵션 네임 변경
    $(".select-box").val($(this)[0].alt);
  });

  // 네임 선택시 이미지 변경
  $(".select-box").change(function(){
    $(".select-box option:selected").each(function() {
      if ( selectedImage == undefined ) {
        $("#image-"+$(this).val()).addClass("selected");
        selectedImage = $("#image-"+$(this).val());
      } else {
        selectedImage.removeClass("selected");
        $("#image-"+$(this).val()).addClass("selected");
        selectedImage = $("#image-"+$(this).val());
      }
    });
  });

});
