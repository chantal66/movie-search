Rails.application.routes.draw do
  root 'static#index'
  get 'search' => 'search#index', as: :search
end
