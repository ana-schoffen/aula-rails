Rails.application.routes.draw do
  scope '/api' do
    resources :tarefas
  end
end
