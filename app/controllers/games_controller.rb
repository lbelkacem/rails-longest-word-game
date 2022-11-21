class GamesController < ApplicationController
  def new
    @letters = 10.times.map { [*'a'..'z'].sample }
  end

  def score
  end
end
