class Articles::CommentController < ApplicationController
  def new
  end
  def create
    @article = Article.find params[:article_id]
    @comment = @article.comments.build
  end
end
