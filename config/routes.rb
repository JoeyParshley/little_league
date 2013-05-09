LittleLeague::Application.routes.draw do
  get "players/new"

  root to: 'static_pages#home'

  match '/signup',      to: 'players#new'

  match '/help',        to: 'static_pages#help'
  match '/about',       to: 'static_pages#about'
  match '/contact_us',  to: 'static_pages#contact_us'


end
