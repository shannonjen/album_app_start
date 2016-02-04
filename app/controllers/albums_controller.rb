class AlbumsController < ApplicationController

	def index
    @albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	
	end	
	def create
		@album = current_user.albums.build(album_params)
		if @album.save
			redirect_to :back
		else
			redirect_to :back
		end
	end

	private

	def album_params
		params.require(:album).permit(:title)
	end
end
