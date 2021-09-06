class FavoritesController < ApplicationController
  def create
    author = Author.find(params[:author_id])
    favorite = current_user.favorites.new(author_id: author.id)
    favorite.save
    redirect_to author_path(author.id)
  end

  def destroy
    author = Author.find(params[:author_id])
    favorite = current_user.favorites.find_by(author_id: author.id)
    favorite.destroy
    redirect_to author_path(author.id)
  end
end
