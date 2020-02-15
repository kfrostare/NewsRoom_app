
Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
end

# Rails.application.routes.draw do
#   get 'articles/index'
#   root controller: :articles, action: :index
# end
