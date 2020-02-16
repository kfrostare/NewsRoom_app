class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def delete
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update #save
    @article = Article.find(params[:id])
    if @article.update(params)
      redirect_to @articles
    else
      render 'edit'
    end
  end

end