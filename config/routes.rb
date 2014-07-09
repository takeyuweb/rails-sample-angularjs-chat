Rails.application.routes.draw do
  root 'welcome#index'
  resources :messages
end
