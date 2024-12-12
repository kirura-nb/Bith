Rails.application.routes.draw do
  # 初期画面のルート設定
  # root 'home#index'
  root :to => 'users#new'

  resource :users, only: [:new, :sign_up, :show, :edith, :create, :update]

  # ログイン機能のルーティング設定
  get 'login', to: 'sessions#new', as: 'new_sessions'
  post 'login', to: 'sessions#create', as: 'create_sessions'
  delete 'logout', to: 'sessions#destroy', as: 'destroy_sessions'

  get 'users/sign_up1'
  get 'users/sign_up2'
  get 'users/sign_up3'
  get 'users/sign_up4'
  get 'users/sign_in'

  # ログイン後のパスを取得
  get 'home/index'
end
