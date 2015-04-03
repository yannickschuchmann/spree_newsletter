Spree::Core::Engine.routes.draw do
  namespace :spree do
  get 'newsletter_recipients/create'
  end

  # Add your extension routes here
  resources :newsletter_recipients
end
