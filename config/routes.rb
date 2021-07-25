Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  get '/picks/:id', to: 'picks#show'
end
