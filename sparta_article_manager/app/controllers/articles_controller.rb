class ArticlesController < ApplicationController
before_action :authenticate_admin!, except: [:index, :show]
before_action :find_article, only: [:edit, :update, :show, :delete]

# display all the posts (articles)
def index
  @articles = Article.all
end

# Create an article (create a post)
def  new
  @article = Article.new
end

# Save the article (save the post)
def create
  @article = Article.new(article_params)
  if @article.save
    flash[:notice] = "Successfully Created Article Post."
    redirect_to article_path(@article)
  else
    flash[:alert] = "Error. Not Created."
    render :new
  end
end

# Edit func? get the post and render the edit page
def edit
end

# Update the article with new information
def update
  if @article.update_attributes(article_params)
    flash[:notice] = "Article Updated."
    redirect_to articles_path(@articles)
  else
    flash[:alert] = "Error Updating the Article."
    render :edit
  end
end

# display the individual articles after getting the ID (SHOW)
def show
end

# Destroy action. Delete the article permanently from the db
def destroy
  @article = Article.find(params[:id])
  if @article.destroy
    #  @article = Article.find(paramss[:id])
     flash[:notice] = "Article Deleted."
     redirect_to articles_path
  else
     flash[:alert] = "Error Deleting Article."
  end
end

private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end
