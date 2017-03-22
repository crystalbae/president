class MainController < ApplicationController
  def index
    # @comments = Comment.all
    @comments = Comment.order(:created_at).page(params[:page])
  end

  def create
    @user = User.find(session[:user_id])
    @comment = Comment.new(comment_params)
    @comment.user_id = session[:user_id]
    @comment.writer = @user.name
    @comment.agree = 0
    @comment.disagree = 0
    # redirect_to :controller => "main", :action => "index"

    if @comment.save
      respond_to do |format|
        format.html { redirect_to @comment }
        format.js
      end
    else
      #
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js
      end
      # redirect_to :controller => "main", :action => "index"
    end
  end

  def like
    if current_user
      @comment = Comment.find(params[:id])
      @comment.agree += 1
      if @comment.save
        respond_to do |format|
          format.html { redirect_to :back }
          format.js
        end
      end
    else
      format.html { redirect_to :back, :notice => "로그인 후 이용해주세요." }
    end
  end

  def unlike
    @comment = Comment.find(params[:id])
    @comment.disagree += 1

    if @comment.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render :template => "main/like.js.erb" }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :writer, :agree, :disagree)
    end
end
