class ArticlesController < ApplicationController
  def new
  end

  def index
    @articles = Articles.all
  end

  def create
    #creates a new article object based on the form
    @article = Article.new(article_params)
    #saves the new article object to the database
    @article.save
    #redirects to the show action
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
