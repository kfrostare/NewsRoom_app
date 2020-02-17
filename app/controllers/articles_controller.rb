class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def update #save
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
    
  end

  def create
    @article = Article.new(params[:id])
 
    @article.update(article_params)
    redirect_to @article
  end

  def new
  end

  def delete
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end