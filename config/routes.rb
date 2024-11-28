Rails.application.routes.draw do
  # Routes for the Unit resource:

  # CREATE
  post("/insert_unit", { :controller => "units", :action => "create" })
          
  # READ
  get("/units", { :controller => "units", :action => "index" })
  
  get("/units/:path_id", { :controller => "units", :action => "show" })
  
  # UPDATE
  
  post("/modify_unit/:path_id", { :controller => "units", :action => "update" })
  
  # DELETE
  get("/delete_unit/:path_id", { :controller => "units", :action => "destroy" })

  #------------------------------

  devise_for :alums
  get "/" => "universities#index"

  # Routes for the University resource:

  # CREATE
  post("/insert_university", { :controller => "universities", :action => "create" })
          
  # READ
  get("/universities", { :controller => "universities", :action => "index" })
  
  get("/universities/:path_id", { :controller => "universities", :action => "show" })
  
  # UPDATE
  
  post("/modify_university/:path_id", { :controller => "universities", :action => "update" })
  
  # DELETE
  get("/delete_university/:path_id", { :controller => "universities", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:


  
end
