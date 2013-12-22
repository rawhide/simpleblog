class ArticlesController < ApplicationController
  def index
  end
  def comment
    @articles = []
  end
  def show
    @article = []
    @comments = []
  end
end
