class ImagesController < ApplicationController
  def index
    @images = Images.all
    render :index
  end
end
