class QuestionsController < ApplicationController
  def ask
  end

  def coach_answer(message)
    if message.downcase == 'I am going to work'
      'Great!'
    elsif message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end
end
