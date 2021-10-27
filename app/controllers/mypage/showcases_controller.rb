class Mypage::ShowcasesController < ApplicationController
  def new
    @showcase　= Showcase.new
  end
  
  def index
    @showcases = Showcase.where(user_id: current_user.id).includes(:user)
  end
  
  def create
    @showcase = current_user.showcases.new(showcase_params)
    
    if @showcase.save
      redirect_to mypage_showcases_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  def current_showcase
    @current_shocase ||= Showcase.find_by(id: session[:shocase_id])
  end

  def posted_in?
    !current_showcase.nil?
  end
  
  private
  def showcase_params
    params.require(:showcase).permit(:title)
  end
end
