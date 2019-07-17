#' Hello World
#' 
#' Basic hello world function to be called from the demo app
#' 
#' @export
#' @param myname your name. Required.

require(Seurat)

hello <- function(myname = ""){
  
  pbmc.data <- Read10X(data.dir = "C:\\hg19")
  
  if(myname == ""){
    stop("Tell me your name!")
  }
  list(
    message = paste("hello", myname, "! This is", R.Version()$version.string)
  )
}
