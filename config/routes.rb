Rails.application.routes.draw do
  get("/",                  { :controller => "calculations", :action => "instructions" })
  get("/square/:num",       { :controller => "calculations", :action => "square_number"})
  get("/square_root/:num", { :controller => "calculations", :action => "square_root"})
  get("/payment/:rate/:payments/:principal", { :controller => "calculations", :action => "loan_payment"})
end
