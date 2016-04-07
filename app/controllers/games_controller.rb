class GamesController < ApplicationController
  include GamesHelper

  before_action :item_params, only: :create
  def index
  end

  def new
    #render :new2  #new2 template is to use images for rock, paper, and scissors
  end

  def create
    @player_choice = params[:rps]
    game = Game.new(@player_choice)
    game.play
    @computer_choice = game.computer_choice
    @winner = game.winner
  end

  private
    def item_params
      params.require(:rps)
    end
end
