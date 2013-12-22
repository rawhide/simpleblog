class Articles::CommentsController < ApplicationController
  def new
  end

  def create
    @article = Article.find params[:article_id]
    @comment = @article.comments.build(comment_params)
    @comment.save 
    redirect_to(article_url(@article))
  end
  
  def comment_params
    params.require(:comment).permit(:body, :name)
  end
end
