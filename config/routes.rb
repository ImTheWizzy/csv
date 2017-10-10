Rails.application.routes.draw do
  get 'sums' => 'sums#index'
  post 'sums' => 'sums#create'

  get 'filters' => 'filters#index'
  post 'filters' => 'filters#create'

  get 'intervals' => 'intervals#index'
  post 'intervals' => 'intervals#create'

end
