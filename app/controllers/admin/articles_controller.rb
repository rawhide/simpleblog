class Admin::ArticlesController < ApplicationController
  before_action :set_artcle, only: [:show, :edit, :update, :destroy]

  # GET /artcles
  # GET /artcles.json
  def index
    @artcles = Artcle.all
  end

  # GET /artcles/1
  # GET /artcles/1.json
  def show
  end

  # GET /artcles/new
  def new
    @artcle = Artcle.new
  end

  # GET /artcles/1/edit
  def edit
  end

  # POST /artcles
  # POST /artcles.json
  def create
    @artcle = Artcle.new(artcle_params)

    if @article.save
      redirect_to @artcle, notice: 'Artcle was successfully created.'
      render action: 'show', status: :created, location: @artcle
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /artcles/1
  # PATCH/PUT /artcles/1.json
  def update
    respond_to do |format|
      if @artcle.update(artcle_params)
        redirect_to @artcle, notice: 'Artcle was successfully updated.'
      else
        render action: 'edit'
      end
    end
  end

  # DELETE /artcles/1
  # DELETE /artcles/1.json
  def destroy
    @artcle.destroy
    respond_to do |format|
      format.html { redirect_to artcles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artcle
      @artcle = Artcle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artcle_params
      params.require(:artcle).permit(:title, :body, :pv)
    end
end
