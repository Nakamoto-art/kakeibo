Rails.application.routes.draw do
  devise_for :users
  root "top#index"

  get "balance_chart", to: "balance_chart#index"
  post "balance_chart/show_year", to: "balance_chart#show_year"

  resources :incomes
  resources :costs
end
