document.getElementById( "main-image" ).onchange = function main_image_preview(){
  console.log("show preview!")
  var fileList , file , fr , result ;
  console.log(this)
  fileList = this.files ;
  console.log(fileList)
  result = document.getElementById( "main-image" ) ;
  result.innerHTML = "" ;
  for( var i=0 ; i<=0 ; i++){
    file = fileList[i] ;
    src = window.URL.createObjectURL( file ) ;
    result.innerHTML += '<img src="' + src + '" width="auto" height="100">' ;
  }
}
