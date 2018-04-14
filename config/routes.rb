Rails.application.routes.draw do
  root 'static#index'
  get 'search' => 'search#index', as: :search
  get 'search_term' => 'search_term#index', as: :search_term
end
