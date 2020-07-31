class CommentsController < ApplicationController

    def index 
        @comments = Comment.all 

        render json: @comments
    end 

    def create 
        @comment = Comment.new 
        @comment.comment = params[:comment]
        @comment.user_id = params[:user_id]
        @comment.post_id = params[:post_id]
        @comment.save

        render json: @comment, status: :created
    end 

    def destroy 
        @comment = Comment.find_by(id: params[:id])
        if @comment
            @comment.destroy
            render json: { messages: ["Comment was deleted!"] }, status: :ok
        else
            render json: { errors: ['Comment not found.'] }, status: :not_found
        end
    end 

    private 

    # def comment_params 
    #     params.require(:comment).permit(:comment, :user_id, :post_id)
    # end 
    
end
