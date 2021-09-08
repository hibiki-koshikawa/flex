class TreasuresController < ApplicationController
  def index
    @treasures = Treasure.all
  end  
  
  def new
    @treasure = Treasure.new
  end
  
   private
  def treasure_params
    params.require(:treasure).permit(:image, :description)
  end
end
