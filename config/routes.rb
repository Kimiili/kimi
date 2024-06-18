Rails.application.routes.draw do
  devise_for :users

  get 'songs/hourock' => 'songs#hourock'
  get 'songs/kpop' => 'songs#kpop'
  get 'songs/yougakupop' => 'songs#yougakupop'
  get 'songs/yougakurock' => 'songs#yougakurock'
  get 'songs/anison' => 'songs#anison'
  get 'songs/classic' => 'songs#classic'
  get 'songs/hiphop' => 'songs#hiphop'
  get 'songs/randb' => 'songs#randb'
  get 'songs/jpop' => 'songs#jpop'
  get 'songs/vocaloid' => 'songs#vocaloid'
  get 'songs/search' => 'songs#search'

  resources :users, only: [:show]
  resources :perfumes

  resources :songs do
    resources :likes, only: [:create, :destroy]
  end
  root 'songs#index'
end
