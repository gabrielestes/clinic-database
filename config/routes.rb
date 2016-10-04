Rails.application.routes.draw do

  resources :patients do
    resources :notes
  end

  root 'welcome#index'
end
