require 'open-uri'
class GamesController < ApplicationController
  def new
    @letters = 10.times.map { [*'a'..'z'].sample }
  end

  def score
    @letters = params[:initial_letters]
    @opt = params[:word].split('').map do |char|
      @letters.include? char
    end
    # parser
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    words_serialized = URI.parse(url).read
    @words = JSON.parse(words_serialized)

  end
end
