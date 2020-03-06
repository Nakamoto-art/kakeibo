Rails.application.routes.draw do
  root "top#index"

  resources :incomes
  resources :costs
  resources :balance_chart, only: [:index]
end
