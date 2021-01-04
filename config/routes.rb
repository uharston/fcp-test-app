Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#home"
  post '/', to: 'subscribers#create', as: "subscribers"
  resources :chats, only: %i[index]
end
