#' Removes the conda virtual enviroment.
cms_deinit<-function(){
  reticulate::conda_remove("copernicus_data_retrieval")
}
