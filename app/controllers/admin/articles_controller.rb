class Admin::ArticlesController < Admin::AdminBaseController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def set_article
      @article = Article.find params[:id]
    end
end
