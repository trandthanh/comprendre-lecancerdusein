Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "pages#home"

  # get 'home', to: 'pages#home', as: :home
  get 'project', to: 'pages#project', as: :project


  # Questions
  get 'questions/:url', to: 'questions#show', as: :question
  resources :questions, only: [:index, :show]

  get 'quotidiens/:url', to: 'quotidiens#show', as: :quotidien
  resources :quotidiens, only: [:index, :show]

  get 'entendus/:url', to: 'entendus#show', as: :entendu
  resources :entendus, only: [:index, :show]

  # Contact Page
  resources :contacts, only: [:new, :create]
end
