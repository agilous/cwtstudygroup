class PhotosController < ApplicationController

  def index
    @user = User.find(params[:id])
  end
end
