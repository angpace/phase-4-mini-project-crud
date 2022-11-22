Rails.application.routes.draw do
  
  #Get 
  get '/spices', to: 'spices#index'

  #post 
  post '/spices', to: 'spices#create'

  #patch 
  patch '/spices/:id', to: 'spices#update'

  #destroy 
  delete '/spices/:id', to: 'spices#destroy'


end
