class PagesController < ApplicationController
  def ask
  end

  def answer
    @youranswer = params['answer']
    if @youranswer == 'I am going to work'
      @coachanswer = 'Great!'
    elsif @youranswer.include? '?'
      @coachanswer = 'Silly question, get dressed and go to work!'
    else
      @coachanswer = "I don't care, get dressed and go to work! "
    end
  end
end
