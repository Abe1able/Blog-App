class CommentsController < ApplicationController
	def new
		@comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { comment: @comment } }
    end
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.post_id = params[:post_id]
		if @comment.save
			flash[:notice] = 'Comment successfully created!'
			redirect_to user_post_path(current_user, params[:post_id])
		else
			flash.now[:error] = 'Error: Error occurred when creating comment'
			render :new
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:text)
	end
end