class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.create photo_params
    @current_user.photos << photo
    redirect_to photo
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def show
    @photo = Photo.find params[:id]
  end

  def update
    photo = Photo.find params[:id]
    @current_user.photos << photo
    photo.update photo_params
    redirect_to photo
  end

  def destroy
    photo = Photo.find params[:id]
    photo.destroy
    redirect_to photos_path
  end

  def photo_params
    params.require(:photo).permit(:caption, :image, :user_id)
  end
end
