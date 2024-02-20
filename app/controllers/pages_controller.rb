class PagesController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''

    if @question == @question.upcase
      if @question.include?('?')
         @answer = 'Silly question, get dressed and go to work!'
       elsif @question == 'I am going to work right now!'
         @answer = ''
       else
         @answer = "I don't care, get dressed and go to work!"
       end
    else
      @question.include?('PIZZA?') ? @answer = 'I can feel your motivation! Silly question, get dressed and go to work!' : nil
      @question.include?('pizza!') ? @answer = "I don't care, get dressed and go to work!" : nil
      @question.include?('?') ? @answer = 'Silly question, get dressed and go to work!' : nil
      @question.include?('PIZZA!') ? @answer = "I can feel your motivation! I don't care, get dressed and go to work!" : nil
      @question.include?('NOW') || @question.include?('now') ? @answer = '' : nil
      @question == @question.upcase ? @answer = '' : nil
    end
  end
end
