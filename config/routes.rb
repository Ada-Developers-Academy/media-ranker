MediaRanker::Application.routes.draw do
  resources :albums, :movies, :books
  root to: "home#index"
end
