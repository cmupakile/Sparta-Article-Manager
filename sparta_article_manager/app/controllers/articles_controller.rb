class ArticleController < ApplicationController
  def create
    # creating the article
    # and adding the picture
    article = Article.new(article_params)

    picture = Picture.find params[:picture_id]

    article.picture = picture
    article.save

    redirect_to picture
  end

  private
    def article_params
      params.require(:article).permit(:body)

    end
end
