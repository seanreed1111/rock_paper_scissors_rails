class GamesController < ApplicationController
  
  before_action :item_params, only: :create
  def index
  end

  def new
  end

  def create
    @choice = params[:rps]
  end

  private
    def item_params
      params.require(:rps)
    end
end
