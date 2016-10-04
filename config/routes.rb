Rails.application.routes.draw do

  resources :patients

  root 'welcome#index'
end
