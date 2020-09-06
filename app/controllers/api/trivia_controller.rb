class Api::TriviaController < ApplicationController
  def index
    response =  HTTP.get("https://opentdb.com/api.php?amount=1&category=11&difficulty=medium&type=boolean")
    @trivia = response.parse
    @trivia = @trivia["results"][0]
    
    render "index.json.jb"
  end
end
