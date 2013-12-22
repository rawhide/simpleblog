class ArticlesController < ApplicationController
  def index
    @articles = []
  end

  def show
    @article = []
    @comments = []
  end
end
