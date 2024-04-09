cms_login<-function(username,password){
  clist <- reticulate::conda_list()
  path<-clist$python[clist$name == "copernicus_data_retrieval"]
  path<-stringr::str_replace(path,".python","/copernicusmarine")
  system2(path,args = "login", input = c(username,password,"y"))
}
