class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
  end
  
  def create
   @comment = current_user.comments.new(content_params)
   if @comment.save
     redirect_to topics_path, success: 'コメントしました'
   else
     flash.now[:danger] = "コメントに失敗しました"
     render :new
   end
  end
  
  private
    def content_params
      params.require(:comment).permit(:content,:user_id,:topic_id)
    end
end
