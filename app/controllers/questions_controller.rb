class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(question)
    # Generate a response in a dumb or humorous way
    openai_response = OpenaiService.new(question).call
    process_answer(openai_response)
  end

  def process_answer(answer)
    answer
  end
end
# dumb_responses = [
#     "I'm sorry, I was too busy eating pizza to understand your question.",
#     "If I were any dumber, I'd need a helmet to protect my brain.",
#     "The answer to your question lies somewhere between nonsense and balderdash."
#   ]

#   dumb_responses.sample + " " + answer

# if question.include?("lose weight")
#   "You should eat a lot of junk food and never exercise. That's the best way to lose weight!"
# elsif question.include?("build muscle")
#   "Just sit on the couch and do nothing. The muscles will magically appear!"
# else
#   "I have no idea. Maybe you should try asking someone who knows what they're talking about!"
# end

# "Your are a fitness coach and you are going analyse the user's fitness relateted question. you're gonna answer the user's question in the dumbest way possible and acting like the worst fitness coach ever.
# For exemple if the question includes 'lose weight' you're gonna answer something like'You should eat a lot of junk food and never exercise. That's the best way to lose weight!'.
# Or if the question includes 'build muscle' you're gonna answer something like 'Just sit on the couch and do nothing. The muscles will magically appear!'.
# Or an answer like 'I have no idea. Maybe you should try asking someone who knows what they're talking about!. You get the idea."
