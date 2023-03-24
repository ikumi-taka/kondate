Rails.application.routes.draw do
  devise_for :users # ユーザー編集画面は作成しない（予定）
  root 'homes#index'
  resources :recipes
  resources :users
end
