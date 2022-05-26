class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end 
    
  def index
    @articles = Article.all
  end

  def new
    
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to article_path(@article) #yahn pur (@article) by defualt id dy ga, or hm ny isy waja sy use kia ha ku k hamein show path main id chahiye
    # rediret_to article_path(@article) can also be written as
    # redirect_to @article it will perfom the same function

  end


end