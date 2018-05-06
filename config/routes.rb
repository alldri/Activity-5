Rails.application.routes.draw do
  resources :gadgets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get 'gadgets/decrease_stock/:id' => 'gadgets#decrease_stock'
end
