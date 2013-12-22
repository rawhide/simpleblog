class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def comment
    @articles = []
  end

  def show
    @article = Article.find params[:id]
    @comments = @article.comments
  end
end
