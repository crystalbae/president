class MainController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @user = User.find(session[:user_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    @comment.writer = @user.name
    @comment.agree = 0
    @comment.disagree = 0
    @comment.save
    redirect_to :controller => "main", :action => "index"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :controller => "main", :action => "index"
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :writer, :agree, :disagree)
    end
end
