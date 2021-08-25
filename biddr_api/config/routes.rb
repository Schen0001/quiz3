Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  # config/routes.rb
  resource :sessions, only: [:new, :destroy, :create]

  resources :auctions do
    resources :bids, only: [:show, :create]
  end

  # resources :answers, only: [:show, :create]

  root 'auctions#home'

  # # index
  # get '/auctions' => 'auctions#index', as: :auctions


  # # new
  # get '/auctions/new' => 'auctions#new', as: :new_auction
  # post '/auctions' => 'auctions#create'

  # post '/auctions/:auction_id/bids' => 'bids#create'
  # get '/auctions/:auction_id/bids/:id' => 'bids#show'
  

  # # show
  # get '/auctions/:id' => 'auctions#show', as: :auction

  # # delete
end
