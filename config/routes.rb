Alik::Application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root :to => "questions#index"

  match "/delayed_job" => DelayedJobWeb, :anchor => false

  resources :contacts, :path => "contato"
  resources :questions, :path => "perguntas" do
    get 'pagina/:page', :action => :index, :on => :collection
  end

  controller :site do
    get "/quem-somos", :action => :about, :as => :about
  end
end
