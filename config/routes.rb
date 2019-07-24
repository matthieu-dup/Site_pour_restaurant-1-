Rails.application.routes.draw do
 
  resources :itemis
 
  root to: "home#index"
 
  get "home/csalee"
  get "home/csucree"
  get "home/milkshake"
  get "home/smoothie"

  get "order/panier"
  get "order/command"
  get "order/sendmail"

end
