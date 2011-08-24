class CommentsController < ApplicationController
  before_filter :load_article
  
  def create
    @comment = @articles.comment.new(params[:comment])
    if @comment.save
      redirect_to @article, :notice => 'Thanks for your comment'
    else
      redirect_to @article, :alert => 'Unable to add comment'
    end
  end
  
  def destroy
    @comment = @articles.comment.find(params[:id])
    @comment.destroy
    redirect_to @article, :notice => 'Comment deleted'
  end
  
  private
    def load_articles
      @article = Articles.find(params[:article_id])
    end
end