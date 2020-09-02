class Api::MoviesController < ApplicationController
  require "http"
  
  def index
    response = HTTP.get("https://api.themoviedb.org/3/trending/all/day?api_key=94501edb10357d1c1abe2f5458f1e868")
    @movies = response.parse
    @movies = @movies["results"]
    

    render "index.json.jb"
  end
  
end
