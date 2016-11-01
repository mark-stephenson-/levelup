Rails.application.routes.draw do
  resources :events, except: [:new, :edit]
  resources :schedules, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  resources :api_users, except: [:new, :edit]
  # Endpoint to allow the issue of tokens
  get :token, controller: 'application'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

end
