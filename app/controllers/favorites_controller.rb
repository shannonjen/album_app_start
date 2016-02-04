class FavoritesController < ApplicationController
	def create
		@album = Album.find(params[:album_id])
		current_user.favalbums << @album
		redirect_to :back
	end

	def destroy
		@album = Album.find(params[:album_id])
		current_user.favorites.find_by(album_id: @album.id).destroy
		redirect_to :back
	end
end
