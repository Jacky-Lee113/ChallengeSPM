require 'open-uri'

class HomeController < ApplicationController
  def index
  end

  def search_by_name
    @name = params[:name]
    @cocktails = URI.open('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=' + @name)

    if @cocktails
      @cocktails = JSON.parse(@cocktails.read)
    end

  #  render json: @cocktails['drinks']
  end

  def random
  end
end
