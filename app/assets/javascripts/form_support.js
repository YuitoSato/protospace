$(window).on("load", function() {
  $("#main-preview").hide();
  $("#sub1-preview").hide();
  $("#sub2-preview").hide();
});

$(function() {
    $('#main-image').uploadThumbs({
        position : '#main-preview.thumbnail',
    });
    $('#sub1-image').uploadThumbs({
        position : '#sub1-preview.thumbnail',
    });
    $('#sub2-image').uploadThumbs({
        position : '#sub2-preview.thumbnail',
    });

});

function main_image_preview() {
  $(".cover-image-upload").hide();
  $("#main-preview").show();
}

function sub1_image_preview() {
  $("#sub1-upload").hide();
  $("#sub1-preview").show();
}

function sub2_image_preview() {
  $("#sub2-upload").hide();
  $("#sub2-preview").show();
}
