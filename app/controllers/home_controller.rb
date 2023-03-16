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

  def search_by_ingredient
    @ingredient = params[:name]
    @ingredients = JSON.parse(URI.open("https://www.thecocktaildb.com/api/json/v1/1/search.php?i=" + @ingredient).read)
  end

  def random
    @cocktails = JSON.parse(URI.open("https://www.thecocktaildb.com/api/json/v1/1/random.php").read)

    render @cocktails
  end
end
