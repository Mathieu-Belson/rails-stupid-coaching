class ChatController < ApplicationController

  def create
    # puts "params: #{params}"
    @text = params[:question] # Récupérer le texte de l'utilisateur depuis les paramètres avec la clé :question
    # response = OpenAI::Completion.create(
    # engine: 'text-davinci-003', # moteur GPT-3
    # prompt: @text, # texte de l'utilisateur
    # max_tokens: 30 # suffisant ?
    # )
    response = OpenaiService.new(@text).call
    @answer = response # .choices[0].text.strip # réponse de GPT-3
    redirect_to answer_path(question: @text)
  end
end
