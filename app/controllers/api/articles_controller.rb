class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all 
    render json: {articles: articles}
  end
  
  def show
    article = Article.find(params[:id])
    render json: { article: article}
  end

  def create
  end
  
  def delete 
  end

  def update
  end

end
