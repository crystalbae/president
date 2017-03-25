class MainController < ApplicationController
  def index
    @comments = Comment.all.sort_by(&:created_at).reverse!
    # @comments = Comment.order(:created_at).page(params[:page])
  end

  def create
    if current_user
      @user = User.find(session[:user_id])
      @comment = Comment.new(comment_params)
      @comment.user_id = session[:user_id]
      @comment.writer = @user.name
      @comment.agree = 0
      @comment.disagree = 0
      @comment.image_id = params[:image_id]

      if @comment.save
        respond_to do |format|
          format.html { redirect_to @comment }
          format.js
        end
      else
        render js: "alert('5자 이상 적어야 이용가능합니다');"
      end
    else
      render js: "alert('로그인 후 이용해주세요.');"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  def like
    if current_user
      @comment = Comment.find(params[:id])
      @like = Like.new(params.permit(:user_id, :comment_id))
      @like.user_id = session[:user_id]
      @like.comment_id = @comment.id

      if @like.save
        params[:vote] == "like" ? @comment.agree += 1 : @comment.disagree += 1
        if @comment.save
          respond_to do |format|
            format.html { redirect_to :back }
            format.js
          end
        end
      else
        render js: "alert('이미 투표에 참여하셨습니다.');"
      end
    else
      render js: "alert('로그인 후 이용해주세요.');"
    end
  end

  def sort_by
    if params[:sort] == "latest"
      @comments = Comment.all.sort_by(&:created_at).reverse!
    else
      @comments = Comment.all.sort_by(&:agree).reverse!
    end
    respond_to do |format|
      format.html { redirect_to @comments }
      format.js
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :writer, :agree, :disagree, :user_id, :image_id)
    end
end
