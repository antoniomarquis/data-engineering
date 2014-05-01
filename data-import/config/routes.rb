DataImport::Application.routes.draw do
  resources :purchasers

  root to: 'purchasers#index'
end
