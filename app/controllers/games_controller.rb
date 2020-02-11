require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      letter = ('a'..'z').to_a.sample
      @letters << letter
    end
  end

  def score
    @word = params[:word]
    f = open("https://wagon-dictionary.herokuapp.com/#{@word}").read
      @huhu = f
      # if f.found = true
      #   @word.split(//).each do |wow|
      #     if params[:letters].include?(wow)
      #       @taga = "Congratulation ! #{params[:word].capitalize} is a valid word!👏"
      #     else
      #       @taga = "Tricheur ! Utilise les lettres du jeu..😠"
      #     end
      #   end
      # else
      #   @taga = "Ce mot n'existe pas"
      # end

  end
end

# <ActionController::Parameters
#   "word"=>"hello", "controller"=>"games", "action"=>"score"}
#    permitted: false>

# <% if @letters.join.include?(@word) %>
# <%= @tagada = 'well done' %>
#   <% else %>
#   <%= @tagada = 'sorry' %>
#     <% end %>
