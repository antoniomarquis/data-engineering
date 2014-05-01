DataImport::Application.routes.draw do

  resources :purchasers do
     collection { post :import }
   end

  root to: 'purchasers#new'
end
