class MonstersController < ApplicationController

  def index

  end
  def show
    @monster = Monster.find(params[:id])
  end
  def new
    @monster = Monster.new
  end
  def create
    @monster = Monster.new(params.require(:monster).permit(:name,:attr,:category,:hp,:atk,:rcv,:askill,:icon))
    @monster.save
    redirect_to(:root)
  end
end
