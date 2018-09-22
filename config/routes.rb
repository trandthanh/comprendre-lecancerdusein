Rails.application.routes.draw do
  root "pages#enter"

  get 'home', to: 'pages#home', as: :home
end
