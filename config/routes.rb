Rails.application.routes.draw do
 
 
  root to: "home#index"
 
  get "home/csalee"
  get "home/csucree"
  get "home/milkshake"
  get "home/smoothie"
end
