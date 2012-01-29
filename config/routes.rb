Loggy::Application.routes.draw do
  resources :systemevents
  
  get "systemevents/index"
  
  root :to => "systemevents#index"
end
