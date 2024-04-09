cms_init<-function(){
  if(! "copernicus_data_retrieval" %in% reticulate::conda_list()$name){
    reticulate::conda_create(envname = "copernicus_data_retrieval",
                             packages = "copernicusmarine")
  }
  cat("You'll have to login to retrieve data from Copernicus Marine.\nYou can allways login in later or change you login by calling cms_login().")
  answer <- readline("Do you wish to login now?  [Y/n]")
  if(answer %in% c("Y","y","")){
    cms_login()
  }
}
