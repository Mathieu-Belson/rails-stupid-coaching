Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'questions#ask'

  get "ask", to: "questions#ask", as: :ask
  post "chat", to: "chat#create", as: :chat
  get "answer", to: "questions#answer", as: :answer
end
