class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
  end

  def delete
  end

  def edit
  end

end