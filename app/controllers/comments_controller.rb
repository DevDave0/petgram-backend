class CommentsController < ApplicationController

    def index 
        @comments = Comment.all 

        render json: @comments, include: :users, status: :ok
    end 

    def create 
        @comment = Comment.create(comment_params)

        render json: @comment, status: :created
    end 

    private 

    def comment_params 
        params.require(:comment).permit(:comment, :user_id, :post_id)
    end 
    
end
