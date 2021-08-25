class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_path, notice: "post ajouté aux favoris"
  end

  def destroy
    Favorite.find_by(id: params[:id]).destroy
    redirect_to posts_path "Post retiré des favoris"
  end
end
