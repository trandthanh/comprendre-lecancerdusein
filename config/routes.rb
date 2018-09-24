Rails.application.routes.draw do
  root "pages#enter"

  get 'home', to: 'pages#home', as: :home


  # Questions
  get 'questions/:url', to: 'questions#show', as: :question
  resources :questions, only: [:index, :show]

  get 'quotidiens/:url', to: 'quotidiens#show', as: :quotidien
  resources :quotidien, only: [:index, :show]
end
