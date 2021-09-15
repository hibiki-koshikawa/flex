class ShowcasesController < ApplicationController
  def index
    if params[:order].present?
      if params[:order] == "arrival"
        @shocase = Showcase.order(created_at: :desc)
      end
    else
      @showcases = Showcase.all
    end
  end 
  
  def new
    @showcase = Showcase.new
    @treasure = Treasure.new
  end
  
  def create
    @showcase = current_user.showcases.new(showcase_params)
    
    if @showcase.save
      redirect_to showcases_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def showcase_params
    params.require(:showcase).permit(:title)
  end

  def arrival_params
    params.order(":created_at :desc")
  end
  
  def favorite_params
    params.order
  end
end
