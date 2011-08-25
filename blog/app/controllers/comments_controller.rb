class CommentsController < ApplicationController
  #before_filter :load_article
  
  def create
    comment = Comment.new(params[:comment])
    comment.article = Article.find(params[:article_id])
    if comment.save
      redirect_to comment.article, :notice => 'Thanks for your comment'
    else
      redirect_to comment.article, :alert => 'Unable to add comment'
    end
  end
  
  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article, :notice => 'Comment deleted'
  end
  
  #private
  #  def load_article
  #    @article = Article.find(params[:article_id])
  #  end
end