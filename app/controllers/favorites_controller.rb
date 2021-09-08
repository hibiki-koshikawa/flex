class FavoritesController < ApplicationController
  def index
    @favorite_showcases = current_user.favorite_showcases
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.showcase_id = params[:showcase_id]

    if favorite.save
      redirect_to showcases_path, success: 'お気に入りに登録しました'
    else
      redirect_to showcases_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
end
