Rails.application.routes.draw do
  devise_for :users
  resources :projetos
  root to: 'projetos#index'
  resources :tarefas
  post '/tarefas/finish/:id', to: 'tarefas#finish', as: 'finish_tarefa'
  post '/projetos/finish/:id', to: 'projetos#finish', as: 'finish_projeto'
end
