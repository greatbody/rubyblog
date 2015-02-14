class ArticlesController < ApplicationController
  def index
    @mt = Article.all
  end

  def new
  end

  def create
    #render plain: params[:article].inspect
    @mt = Article.new(article_params)
    @mt.save
    redirect_to @mt
  end

  def show
    @mt = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title,:text)
    end
end
