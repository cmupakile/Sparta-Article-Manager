class PicturesController < ApplicationController
  def index
    # load all the article pictures
    @pictures = Picture.all

    render :'picture/index'
  end

  def show
    # show all the article pictures
    @picture = Picture.find params[:id]
    render :'picture/index'
  end

  def create
    # create picture
    picture = Picture.new(picture_params)

    picture.save

    redirect_to picture
  end

  private
  def picture_params
    params.require(:picture).permit(:image , :article)
  end
end
