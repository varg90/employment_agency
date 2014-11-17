Rails.application.routes.draw do
  get 'cv/show'
  get 'cv/suitable_for_vacancy'
  get 'vacancy/show'
  get 'vacancy/suitable_for_cv'

  get '/cvs', to: 'cv#index', as: :cvs
  get '/vacancies', to: 'vacancy#index', as: :vacancies


  get 'cv/new', to: 'cv#new', as: :new_cv
  post 'cv/new', to: 'cv#create', as: :create_cv
  get 'vacancy/new', to: 'vacancy#new', as: :new_vacancy
  post 'vacancy/new', to: 'vacancy#create', as: :create_vacancy

  root to: 'main#index'
end
