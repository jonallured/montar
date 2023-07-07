Rails.application.routes.draw do
  resources :shortcuts
  mount Montar::Engine => "/montar"
end
