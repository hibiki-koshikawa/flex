class Mypage::ShowcasesController < ApplicationController
  def new
    @showcase= Showcase.new
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
end
